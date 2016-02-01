                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  1 19:09:17 2016
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
                             19 	.globl _drawTile
                             20 	.globl _generateWorld
                             21 	.globl _drawCursor
                             22 	.globl _drawWindow
                             23 	.globl _drawMenu
                             24 	.globl _drawMenuEntry
                             25 	.globl _EraseMenuEntry
                             26 	.globl _drawBoxM2
                             27 	.globl _drawBoxM0
                             28 	.globl _putM2
                             29 	.globl _putM1
                             30 	.globl _putM0
                             31 	.globl _strlen
                             32 	.globl _cpct_setRandomSeedUniform_u8
                             33 	.globl _cpct_getRandomUniform_u8_f
                             34 	.globl _cpct_getScreenPtr
                             35 	.globl _cpct_setPALColour
                             36 	.globl _cpct_setPalette
                             37 	.globl _cpct_fw2hw
                             38 	.globl _cpct_setVideoMode
                             39 	.globl _cpct_drawStringM2
                             40 	.globl _cpct_drawSolidBox
                             41 	.globl _cpct_drawSprite
                             42 	.globl _cpct_px2byteM1
                             43 	.globl _cpct_px2byteM0
                             44 	.globl _cpct_isKeyPressed
                             45 	.globl _cpct_scanKeyboard
                             46 	.globl _cpct_memset
                             47 	.globl _cpct_disableFirmware
                             48 	.globl _cpct_reenableFirmware
                             49 	.globl _CURSOR_MODE
                             50 	.globl _p_world
                             51 	.globl _station_large_ew
                             52 	.globl _station_large_ns
                             53 	.globl _station_medium_ew
                             54 	.globl _station_medium_ns
                             55 	.globl _station_small_ew
                             56 	.globl _station_small_ns
                             57 	.globl _livestock
                             58 	.globl _farm2
                             59 	.globl _farm1
                             60 	.globl _water
                             61 	.globl _dwellings3
                             62 	.globl _dwellings2
                             63 	.globl _dwellings1
                             64 	.globl _forest
                             65 	.globl _grass2
                             66 	.globl _grass1
                             67 	.globl _paletteMenusM2
                             68 	.globl _paletteMenusM1
                             69 	.globl _paletteTrains
                             70 ;--------------------------------------------------------
                             71 ; special function registers
                             72 ;--------------------------------------------------------
                             73 ;--------------------------------------------------------
                             74 ; ram data
                             75 ;--------------------------------------------------------
                             76 	.area _DATA
   5CA1                      77 _p_world::
   5CA1                      78 	.ds 3840
                             79 ;--------------------------------------------------------
                             80 ; ram data
                             81 ;--------------------------------------------------------
                             82 	.area _INITIALIZED
   6BA1                      83 _CURSOR_MODE::
   6BA1                      84 	.ds 1
                             85 ;--------------------------------------------------------
                             86 ; absolute external ram data
                             87 ;--------------------------------------------------------
                             88 	.area _DABS (ABS)
                             89 ;--------------------------------------------------------
                             90 ; global & static initialisations
                             91 ;--------------------------------------------------------
                             92 	.area _HOME
                             93 	.area _GSINIT
                             94 	.area _GSFINAL
                             95 	.area _GSINIT
                             96 ;--------------------------------------------------------
                             97 ; Home
                             98 ;--------------------------------------------------------
                             99 	.area _HOME
                            100 	.area _HOME
                            101 ;--------------------------------------------------------
                            102 ; code
                            103 ;--------------------------------------------------------
                            104 	.area _CODE
                            105 ;src/includes/gui.h:1: void putM0(void)
                            106 ;	---------------------------------
                            107 ; Function putM0
                            108 ; ---------------------------------
   4000                     109 _putM0::
                            110 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]  111 	xor	a, a
   4001 F5            [11]  112 	push	af
   4002 33            [ 6]  113 	inc	sp
   4003 CD C7 5A      [17]  114 	call	_cpct_setVideoMode
   4006 33            [ 6]  115 	inc	sp
                            116 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  117 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  118 	ld	bc,#0x0010
   400D C5            [11]  119 	push	bc
   400E E5            [11]  120 	push	hl
   400F CD DF 58      [17]  121 	call	_cpct_setPalette
   4012 C9            [10]  122 	ret
   4013                     123 _paletteTrains:
   4013 00                  124 	.db #0x00	; 0
   4014 1A                  125 	.db #0x1A	; 26
   4015 0D                  126 	.db #0x0D	; 13
   4016 03                  127 	.db #0x03	; 3
   4017 0F                  128 	.db #0x0F	; 15
   4018 06                  129 	.db #0x06	; 6
   4019 10                  130 	.db #0x10	; 16
   401A 09                  131 	.db #0x09	; 9
   401B 0A                  132 	.db #0x0A	; 10
   401C 14                  133 	.db #0x14	; 20
   401D 02                  134 	.db #0x02	; 2
   401E 01                  135 	.db #0x01	; 1
   401F 13                  136 	.db #0x13	; 19
   4020 18                  137 	.db #0x18	; 24
   4021 0B                  138 	.db #0x0B	; 11
   4022 19                  139 	.db #0x19	; 25
   4023                     140 _paletteMenusM1:
   4023 00                  141 	.db #0x00	; 0
   4024 0F                  142 	.db #0x0F	; 15
   4025 09                  143 	.db #0x09	; 9
   4026 16                  144 	.db #0x16	; 22
   4027                     145 _paletteMenusM2:
   4027 00                  146 	.db #0x00	; 0
   4028 14                  147 	.db #0x14	; 20
   4029                     148 _grass1:
   4029 0F                  149 	.db #0x0F	; 15
   402A 0F                  150 	.db #0x0F	; 15
   402B 0F                  151 	.db #0x0F	; 15
   402C 8F                  152 	.db #0x8F	; 143
   402D 0F                  153 	.db #0x0F	; 15
   402E 0F                  154 	.db #0x0F	; 15
   402F 0F                  155 	.db #0x0F	; 15
   4030 0F                  156 	.db #0x0F	; 15
   4031 1F                  157 	.db #0x1F	; 31
   4032 0F                  158 	.db #0x0F	; 15
   4033 2F                  159 	.db #0x2F	; 47
   4034 0F                  160 	.db #0x0F	; 15
   4035 0F                  161 	.db #0x0F	; 15
   4036 0F                  162 	.db #0x0F	; 15
   4037 0F                  163 	.db #0x0F	; 15
   4038 0F                  164 	.db #0x0F	; 15
   4039 0F                  165 	.db #0x0F	; 15
   403A 0F                  166 	.db #0x0F	; 15
   403B 0F                  167 	.db #0x0F	; 15
   403C 0F                  168 	.db #0x0F	; 15
   403D 0F                  169 	.db #0x0F	; 15
   403E 0F                  170 	.db #0x0F	; 15
   403F 0F                  171 	.db #0x0F	; 15
   4040 0F                  172 	.db #0x0F	; 15
   4041 0F                  173 	.db #0x0F	; 15
   4042 0F                  174 	.db #0x0F	; 15
   4043 0F                  175 	.db #0x0F	; 15
   4044 0F                  176 	.db #0x0F	; 15
   4045 4F                  177 	.db #0x4F	; 79	'O'
   4046 0F                  178 	.db #0x0F	; 15
   4047 0F                  179 	.db #0x0F	; 15
   4048 8F                  180 	.db #0x8F	; 143
   4049 0F                  181 	.db #0x0F	; 15
   404A 4F                  182 	.db #0x4F	; 79	'O'
   404B 0F                  183 	.db #0x0F	; 15
   404C 0F                  184 	.db #0x0F	; 15
   404D 0F                  185 	.db #0x0F	; 15
   404E 0F                  186 	.db #0x0F	; 15
   404F 0F                  187 	.db #0x0F	; 15
   4050 0F                  188 	.db #0x0F	; 15
   4051 0F                  189 	.db #0x0F	; 15
   4052 0F                  190 	.db #0x0F	; 15
   4053 0F                  191 	.db #0x0F	; 15
   4054 0F                  192 	.db #0x0F	; 15
   4055 0F                  193 	.db #0x0F	; 15
   4056 1F                  194 	.db #0x1F	; 31
   4057 0F                  195 	.db #0x0F	; 15
   4058 0F                  196 	.db #0x0F	; 15
   4059 0F                  197 	.db #0x0F	; 15
   405A 0F                  198 	.db #0x0F	; 15
   405B 0F                  199 	.db #0x0F	; 15
   405C 8F                  200 	.db #0x8F	; 143
   405D 0F                  201 	.db #0x0F	; 15
   405E 0F                  202 	.db #0x0F	; 15
   405F 0F                  203 	.db #0x0F	; 15
   4060 0F                  204 	.db #0x0F	; 15
   4061 0F                  205 	.db #0x0F	; 15
   4062 0F                  206 	.db #0x0F	; 15
   4063 0F                  207 	.db #0x0F	; 15
   4064 0F                  208 	.db #0x0F	; 15
   4065 4F                  209 	.db #0x4F	; 79	'O'
   4066 0F                  210 	.db #0x0F	; 15
   4067 8F                  211 	.db #0x8F	; 143
   4068 0F                  212 	.db #0x0F	; 15
   4069                     213 _grass2:
   4069 0F                  214 	.db #0x0F	; 15
   406A 0F                  215 	.db #0x0F	; 15
   406B 0F                  216 	.db #0x0F	; 15
   406C 0F                  217 	.db #0x0F	; 15
   406D 0F                  218 	.db #0x0F	; 15
   406E 0F                  219 	.db #0x0F	; 15
   406F 0F                  220 	.db #0x0F	; 15
   4070 2F                  221 	.db #0x2F	; 47
   4071 0F                  222 	.db #0x0F	; 15
   4072 8F                  223 	.db #0x8F	; 143
   4073 0F                  224 	.db #0x0F	; 15
   4074 0F                  225 	.db #0x0F	; 15
   4075 0F                  226 	.db #0x0F	; 15
   4076 0F                  227 	.db #0x0F	; 15
   4077 0F                  228 	.db #0x0F	; 15
   4078 0F                  229 	.db #0x0F	; 15
   4079 0F                  230 	.db #0x0F	; 15
   407A 0F                  231 	.db #0x0F	; 15
   407B 0F                  232 	.db #0x0F	; 15
   407C 0F                  233 	.db #0x0F	; 15
   407D 4F                  234 	.db #0x4F	; 79	'O'
   407E 0F                  235 	.db #0x0F	; 15
   407F 0F                  236 	.db #0x0F	; 15
   4080 0F                  237 	.db #0x0F	; 15
   4081 0F                  238 	.db #0x0F	; 15
   4082 0F                  239 	.db #0x0F	; 15
   4083 2F                  240 	.db #0x2F	; 47
   4084 0F                  241 	.db #0x0F	; 15
   4085 0F                  242 	.db #0x0F	; 15
   4086 0F                  243 	.db #0x0F	; 15
   4087 0F                  244 	.db #0x0F	; 15
   4088 0F                  245 	.db #0x0F	; 15
   4089 0F                  246 	.db #0x0F	; 15
   408A 4F                  247 	.db #0x4F	; 79	'O'
   408B 0F                  248 	.db #0x0F	; 15
   408C 0F                  249 	.db #0x0F	; 15
   408D 0F                  250 	.db #0x0F	; 15
   408E 0F                  251 	.db #0x0F	; 15
   408F 0F                  252 	.db #0x0F	; 15
   4090 0F                  253 	.db #0x0F	; 15
   4091 0F                  254 	.db #0x0F	; 15
   4092 0F                  255 	.db #0x0F	; 15
   4093 0F                  256 	.db #0x0F	; 15
   4094 0F                  257 	.db #0x0F	; 15
   4095 0F                  258 	.db #0x0F	; 15
   4096 0F                  259 	.db #0x0F	; 15
   4097 0F                  260 	.db #0x0F	; 15
   4098 8F                  261 	.db #0x8F	; 143
   4099 0F                  262 	.db #0x0F	; 15
   409A 0F                  263 	.db #0x0F	; 15
   409B 0F                  264 	.db #0x0F	; 15
   409C 0F                  265 	.db #0x0F	; 15
   409D 2F                  266 	.db #0x2F	; 47
   409E 1F                  267 	.db #0x1F	; 31
   409F 0F                  268 	.db #0x0F	; 15
   40A0 0F                  269 	.db #0x0F	; 15
   40A1 0F                  270 	.db #0x0F	; 15
   40A2 0F                  271 	.db #0x0F	; 15
   40A3 0F                  272 	.db #0x0F	; 15
   40A4 2F                  273 	.db #0x2F	; 47
   40A5 0F                  274 	.db #0x0F	; 15
   40A6 0F                  275 	.db #0x0F	; 15
   40A7 0F                  276 	.db #0x0F	; 15
   40A8 0F                  277 	.db #0x0F	; 15
   40A9                     278 _forest:
   40A9 0F                  279 	.db #0x0F	; 15
   40AA 0F                  280 	.db #0x0F	; 15
   40AB 0E                  281 	.db #0x0E	; 14
   40AC 03                  282 	.db #0x03	; 3
   40AD 0E                  283 	.db #0x0E	; 14
   40AE 03                  284 	.db #0x03	; 3
   40AF 0E                  285 	.db #0x0E	; 14
   40B0 EF                  286 	.db #0xEF	; 239
   40B1 0E                  287 	.db #0x0E	; 14
   40B2 EF                  288 	.db #0xEF	; 239
   40B3 0F                  289 	.db #0x0F	; 15
   40B4 EF                  290 	.db #0xEF	; 239
   40B5 0E                  291 	.db #0x0E	; 14
   40B6 FF                  292 	.db #0xFF	; 255
   40B7 0F                  293 	.db #0x0F	; 15
   40B8 0F                  294 	.db #0x0F	; 15
   40B9 07                  295 	.db #0x07	; 7
   40BA 6F                  296 	.db #0x6F	; 111	'o'
   40BB 0C                  297 	.db #0x0C	; 12
   40BC 0F                  298 	.db #0x0F	; 15
   40BD CF                  299 	.db #0xCF	; 207
   40BE 0F                  300 	.db #0x0F	; 15
   40BF 19                  301 	.db #0x19	; 25
   40C0 8F                  302 	.db #0x8F	; 143
   40C1 CE                  303 	.db #0xCE	; 206
   40C2 03                  304 	.db #0x03	; 3
   40C3 3B                  305 	.db #0x3B	; 59
   40C4 8F                  306 	.db #0x8F	; 143
   40C5 CE                  307 	.db #0xCE	; 206
   40C6 CF                  308 	.db #0xCF	; 207
   40C7 3B                  309 	.db #0x3B	; 59
   40C8 0F                  310 	.db #0x0F	; 15
   40C9 0E                  311 	.db #0x0E	; 14
   40CA EF                  312 	.db #0xEF	; 239
   40CB 3F                  313 	.db #0x3F	; 63
   40CC 0F                  314 	.db #0x0F	; 15
   40CD 0F                  315 	.db #0x0F	; 15
   40CE EF                  316 	.db #0xEF	; 239
   40CF 0F                  317 	.db #0x0F	; 15
   40D0 0F                  318 	.db #0x0F	; 15
   40D1 0E                  319 	.db #0x0E	; 14
   40D2 07                  320 	.db #0x07	; 7
   40D3 03                  321 	.db #0x03	; 3
   40D4 0F                  322 	.db #0x0F	; 15
   40D5 1D                  323 	.db #0x1D	; 29
   40D6 CE                  324 	.db #0xCE	; 206
   40D7 EF                  325 	.db #0xEF	; 239
   40D8 09                  326 	.db #0x09	; 9
   40D9 3B                  327 	.db #0x3B	; 59
   40DA 8F                  328 	.db #0x8F	; 143
   40DB CE                  329 	.db #0xCE	; 206
   40DC 67                  330 	.db #0x67	; 103	'g'
   40DD 3B                  331 	.db #0x3B	; 59
   40DE 8F                  332 	.db #0x8F	; 143
   40DF 1D                  333 	.db #0x1D	; 29
   40E0 EF                  334 	.db #0xEF	; 239
   40E1 2F                  335 	.db #0x2F	; 47
   40E2 0F                  336 	.db #0x0F	; 15
   40E3 1D                  337 	.db #0x1D	; 29
   40E4 EF                  338 	.db #0xEF	; 239
   40E5 0F                  339 	.db #0x0F	; 15
   40E6 0F                  340 	.db #0x0F	; 15
   40E7 0F                  341 	.db #0x0F	; 15
   40E8 CF                  342 	.db #0xCF	; 207
   40E9                     343 _dwellings1:
   40E9 0F                  344 	.db #0x0F	; 15
   40EA 0F                  345 	.db #0x0F	; 15
   40EB 0F                  346 	.db #0x0F	; 15
   40EC 0F                  347 	.db #0x0F	; 15
   40ED 08                  348 	.db #0x08	; 8
   40EE 03                  349 	.db #0x03	; 3
   40EF 0C                  350 	.db #0x0C	; 12
   40F0 07                  351 	.db #0x07	; 7
   40F1 38                  352 	.db #0x38	; 56	'8'
   40F2 E1                  353 	.db #0xE1	; 225
   40F3 1C                  354 	.db #0x1C	; 28
   40F4 C3                  355 	.db #0xC3	; 195
   40F5 3C                  356 	.db #0x3C	; 60
   40F6 E1                  357 	.db #0xE1	; 225
   40F7 1C                  358 	.db #0x1C	; 28
   40F8 C3                  359 	.db #0xC3	; 195
   40F9 0F                  360 	.db #0x0F	; 15
   40FA 0F                  361 	.db #0x0F	; 15
   40FB 1E                  362 	.db #0x1E	; 30
   40FC C3                  363 	.db #0xC3	; 195
   40FD 0F                  364 	.db #0x0F	; 15
   40FE 0F                  365 	.db #0x0F	; 15
   40FF 0F                  366 	.db #0x0F	; 15
   4100 0F                  367 	.db #0x0F	; 15
   4101 0F                  368 	.db #0x0F	; 15
   4102 0F                  369 	.db #0x0F	; 15
   4103 0E                  370 	.db #0x0E	; 14
   4104 03                  371 	.db #0x03	; 3
   4105 0F                  372 	.db #0x0F	; 15
   4106 0E                  373 	.db #0x0E	; 14
   4107 06                  374 	.db #0x06	; 6
   4108 E1                  375 	.db #0xE1	; 225
   4109 0F                  376 	.db #0x0F	; 15
   410A 0E                  377 	.db #0x0E	; 14
   410B C2                  378 	.db #0xC2	; 194
   410C E1                  379 	.db #0xE1	; 225
   410D 0F                  380 	.db #0x0F	; 15
   410E 0E                  381 	.db #0x0E	; 14
   410F C2                  382 	.db #0xC2	; 194
   4110 E1                  383 	.db #0xE1	; 225
   4111 0F                  384 	.db #0x0F	; 15
   4112 0E                  385 	.db #0x0E	; 14
   4113 C3                  386 	.db #0xC3	; 195
   4114 E1                  387 	.db #0xE1	; 225
   4115 0F                  388 	.db #0x0F	; 15
   4116 0E                  389 	.db #0x0E	; 14
   4117 C3                  390 	.db #0xC3	; 195
   4118 0F                  391 	.db #0x0F	; 15
   4119 0F                  392 	.db #0x0F	; 15
   411A 0F                  393 	.db #0x0F	; 15
   411B C3                  394 	.db #0xC3	; 195
   411C 0F                  395 	.db #0x0F	; 15
   411D 08                  396 	.db #0x08	; 8
   411E 07                  397 	.db #0x07	; 7
   411F 0F                  398 	.db #0x0F	; 15
   4120 0F                  399 	.db #0x0F	; 15
   4121 38                  400 	.db #0x38	; 56	'8'
   4122 C3                  401 	.db #0xC3	; 195
   4123 0F                  402 	.db #0x0F	; 15
   4124 0F                  403 	.db #0x0F	; 15
   4125 3C                  404 	.db #0x3C	; 60
   4126 C3                  405 	.db #0xC3	; 195
   4127 0F                  406 	.db #0x0F	; 15
   4128 0F                  407 	.db #0x0F	; 15
   4129                     408 _dwellings2:
   4129 0F                  409 	.db #0x0F	; 15
   412A 0F                  410 	.db #0x0F	; 15
   412B 0F                  411 	.db #0x0F	; 15
   412C 0F                  412 	.db #0x0F	; 15
   412D 0F                  413 	.db #0x0F	; 15
   412E 01                  414 	.db #0x01	; 1
   412F 0F                  415 	.db #0x0F	; 15
   4130 0F                  416 	.db #0x0F	; 15
   4131 0F                  417 	.db #0x0F	; 15
   4132 70                  418 	.db #0x70	; 112	'p'
   4133 0C                  419 	.db #0x0C	; 12
   4134 0F                  420 	.db #0x0F	; 15
   4135 09                  421 	.db #0x09	; 9
   4136 78                  422 	.db #0x78	; 120	'x'
   4137 1C                  423 	.db #0x1C	; 28
   4138 87                  424 	.db #0x87	; 135
   4139 38                  425 	.db #0x38	; 56	'8'
   413A 0F                  426 	.db #0x0F	; 15
   413B 1C                  427 	.db #0x1C	; 28
   413C 87                  428 	.db #0x87	; 135
   413D 38                  429 	.db #0x38	; 56	'8'
   413E 0F                  430 	.db #0x0F	; 15
   413F 1E                  431 	.db #0x1E	; 30
   4140 87                  432 	.db #0x87	; 135
   4141 3C                  433 	.db #0x3C	; 60
   4142 0F                  434 	.db #0x0F	; 15
   4143 0F                  435 	.db #0x0F	; 15
   4144 0F                  436 	.db #0x0F	; 15
   4145 0F                  437 	.db #0x0F	; 15
   4146 0F                  438 	.db #0x0F	; 15
   4147 0F                  439 	.db #0x0F	; 15
   4148 0F                  440 	.db #0x0F	; 15
   4149 0E                  441 	.db #0x0E	; 14
   414A 07                  442 	.db #0x07	; 7
   414B 0F                  443 	.db #0x0F	; 15
   414C 0F                  444 	.db #0x0F	; 15
   414D 0E                  445 	.db #0x0E	; 14
   414E C3                  446 	.db #0xC3	; 195
   414F 00                  447 	.db #0x00	; 0
   4150 07                  448 	.db #0x07	; 7
   4151 0E                  449 	.db #0x0E	; 14
   4152 C3                  450 	.db #0xC3	; 195
   4153 70                  451 	.db #0x70	; 112	'p'
   4154 C3                  452 	.db #0xC3	; 195
   4155 0F                  453 	.db #0x0F	; 15
   4156 C3                  454 	.db #0xC3	; 195
   4157 70                  455 	.db #0x70	; 112	'p'
   4158 C3                  456 	.db #0xC3	; 195
   4159 03                  457 	.db #0x03	; 3
   415A 0F                  458 	.db #0x0F	; 15
   415B 78                  459 	.db #0x78	; 120	'x'
   415C C3                  460 	.db #0xC3	; 195
   415D 61                  461 	.db #0x61	; 97	'a'
   415E 0F                  462 	.db #0x0F	; 15
   415F 0F                  463 	.db #0x0F	; 15
   4160 0F                  464 	.db #0x0F	; 15
   4161 69                  465 	.db #0x69	; 105	'i'
   4162 0F                  466 	.db #0x0F	; 15
   4163 0F                  467 	.db #0x0F	; 15
   4164 0F                  468 	.db #0x0F	; 15
   4165 0F                  469 	.db #0x0F	; 15
   4166 0F                  470 	.db #0x0F	; 15
   4167 0F                  471 	.db #0x0F	; 15
   4168 0F                  472 	.db #0x0F	; 15
   4169                     473 _dwellings3:
   4169 0F                  474 	.db #0x0F	; 15
   416A 0F                  475 	.db #0x0F	; 15
   416B 09                  476 	.db #0x09	; 9
   416C 09                  477 	.db #0x09	; 9
   416D 0F                  478 	.db #0x0F	; 15
   416E 0F                  479 	.db #0x0F	; 15
   416F 38                  480 	.db #0x38	; 56	'8'
   4170 38                  481 	.db #0x38	; 56	'8'
   4171 0E                  482 	.db #0x0E	; 14
   4172 03                  483 	.db #0x03	; 3
   4173 38                  484 	.db #0x38	; 56	'8'
   4174 38                  485 	.db #0x38	; 56	'8'
   4175 0E                  486 	.db #0x0E	; 14
   4176 E1                  487 	.db #0xE1	; 225
   4177 3C                  488 	.db #0x3C	; 60
   4178 3C                  489 	.db #0x3C	; 60
   4179 0E                  490 	.db #0x0E	; 14
   417A E1                  491 	.db #0xE1	; 225
   417B 0F                  492 	.db #0x0F	; 15
   417C 0F                  493 	.db #0x0F	; 15
   417D 0E                  494 	.db #0x0E	; 14
   417E E1                  495 	.db #0xE1	; 225
   417F 08                  496 	.db #0x08	; 8
   4180 07                  497 	.db #0x07	; 7
   4181 0F                  498 	.db #0x0F	; 15
   4182 E1                  499 	.db #0xE1	; 225
   4183 38                  500 	.db #0x38	; 56	'8'
   4184 C3                  501 	.db #0xC3	; 195
   4185 0F                  502 	.db #0x0F	; 15
   4186 0F                  503 	.db #0x0F	; 15
   4187 3C                  504 	.db #0x3C	; 60
   4188 C3                  505 	.db #0xC3	; 195
   4189 0C                  506 	.db #0x0C	; 12
   418A 0F                  507 	.db #0x0F	; 15
   418B 0F                  508 	.db #0x0F	; 15
   418C 0F                  509 	.db #0x0F	; 15
   418D 1C                  510 	.db #0x1C	; 28
   418E 87                  511 	.db #0x87	; 135
   418F 0F                  512 	.db #0x0F	; 15
   4190 0F                  513 	.db #0x0F	; 15
   4191 1E                  514 	.db #0x1E	; 30
   4192 87                  515 	.db #0x87	; 135
   4193 0C                  516 	.db #0x0C	; 12
   4194 07                  517 	.db #0x07	; 7
   4195 0F                  518 	.db #0x0F	; 15
   4196 0F                  519 	.db #0x0F	; 15
   4197 1C                  520 	.db #0x1C	; 28
   4198 C3                  521 	.db #0xC3	; 195
   4199 0F                  522 	.db #0x0F	; 15
   419A 09                  523 	.db #0x09	; 9
   419B 1C                  524 	.db #0x1C	; 28
   419C C3                  525 	.db #0xC3	; 195
   419D 0F                  526 	.db #0x0F	; 15
   419E 38                  527 	.db #0x38	; 56	'8'
   419F 1C                  528 	.db #0x1C	; 28
   41A0 C3                  529 	.db #0xC3	; 195
   41A1 0F                  530 	.db #0x0F	; 15
   41A2 3C                  531 	.db #0x3C	; 60
   41A3 1E                  532 	.db #0x1E	; 30
   41A4 C3                  533 	.db #0xC3	; 195
   41A5 0F                  534 	.db #0x0F	; 15
   41A6 0F                  535 	.db #0x0F	; 15
   41A7 0F                  536 	.db #0x0F	; 15
   41A8 0F                  537 	.db #0x0F	; 15
   41A9                     538 _water:
   41A9 5F                  539 	.db #0x5F	; 95
   41AA 5F                  540 	.db #0x5F	; 95
   41AB 5F                  541 	.db #0x5F	; 95
   41AC 5F                  542 	.db #0x5F	; 95
   41AD AF                  543 	.db #0xAF	; 175
   41AE AF                  544 	.db #0xAF	; 175
   41AF AF                  545 	.db #0xAF	; 175
   41B0 AF                  546 	.db #0xAF	; 175
   41B1 5F                  547 	.db #0x5F	; 95
   41B2 5F                  548 	.db #0x5F	; 95
   41B3 5F                  549 	.db #0x5F	; 95
   41B4 5F                  550 	.db #0x5F	; 95
   41B5 AF                  551 	.db #0xAF	; 175
   41B6 AF                  552 	.db #0xAF	; 175
   41B7 AF                  553 	.db #0xAF	; 175
   41B8 AF                  554 	.db #0xAF	; 175
   41B9 5F                  555 	.db #0x5F	; 95
   41BA 5F                  556 	.db #0x5F	; 95
   41BB 5F                  557 	.db #0x5F	; 95
   41BC 5F                  558 	.db #0x5F	; 95
   41BD AF                  559 	.db #0xAF	; 175
   41BE AF                  560 	.db #0xAF	; 175
   41BF AF                  561 	.db #0xAF	; 175
   41C0 AF                  562 	.db #0xAF	; 175
   41C1 5F                  563 	.db #0x5F	; 95
   41C2 5F                  564 	.db #0x5F	; 95
   41C3 5F                  565 	.db #0x5F	; 95
   41C4 5F                  566 	.db #0x5F	; 95
   41C5 AF                  567 	.db #0xAF	; 175
   41C6 AF                  568 	.db #0xAF	; 175
   41C7 AF                  569 	.db #0xAF	; 175
   41C8 AF                  570 	.db #0xAF	; 175
   41C9 5F                  571 	.db #0x5F	; 95
   41CA 5F                  572 	.db #0x5F	; 95
   41CB 5F                  573 	.db #0x5F	; 95
   41CC 5F                  574 	.db #0x5F	; 95
   41CD AF                  575 	.db #0xAF	; 175
   41CE AF                  576 	.db #0xAF	; 175
   41CF AF                  577 	.db #0xAF	; 175
   41D0 AF                  578 	.db #0xAF	; 175
   41D1 5F                  579 	.db #0x5F	; 95
   41D2 5F                  580 	.db #0x5F	; 95
   41D3 5F                  581 	.db #0x5F	; 95
   41D4 5F                  582 	.db #0x5F	; 95
   41D5 AF                  583 	.db #0xAF	; 175
   41D6 AF                  584 	.db #0xAF	; 175
   41D7 AF                  585 	.db #0xAF	; 175
   41D8 AF                  586 	.db #0xAF	; 175
   41D9 5F                  587 	.db #0x5F	; 95
   41DA 5F                  588 	.db #0x5F	; 95
   41DB 5F                  589 	.db #0x5F	; 95
   41DC 5F                  590 	.db #0x5F	; 95
   41DD AF                  591 	.db #0xAF	; 175
   41DE AF                  592 	.db #0xAF	; 175
   41DF AF                  593 	.db #0xAF	; 175
   41E0 AF                  594 	.db #0xAF	; 175
   41E1 5F                  595 	.db #0x5F	; 95
   41E2 5F                  596 	.db #0x5F	; 95
   41E3 5F                  597 	.db #0x5F	; 95
   41E4 5F                  598 	.db #0x5F	; 95
   41E5 AF                  599 	.db #0xAF	; 175
   41E6 AF                  600 	.db #0xAF	; 175
   41E7 AF                  601 	.db #0xAF	; 175
   41E8 AF                  602 	.db #0xAF	; 175
   41E9                     603 _farm1:
   41E9 03                  604 	.db #0x03	; 3
   41EA 0F                  605 	.db #0x0F	; 15
   41EB 78                  606 	.db #0x78	; 120	'x'
   41EC F0                  607 	.db #0xF0	; 240
   41ED 61                  608 	.db #0x61	; 97	'a'
   41EE 01                  609 	.db #0x01	; 1
   41EF 5F                  610 	.db #0x5F	; 95
   41F0 5F                  611 	.db #0x5F	; 95
   41F1 61                  612 	.db #0x61	; 97	'a'
   41F2 70                  613 	.db #0x70	; 112	'p'
   41F3 78                  614 	.db #0x78	; 120	'x'
   41F4 F0                  615 	.db #0xF0	; 240
   41F5 69                  616 	.db #0x69	; 105	'i'
   41F6 78                  617 	.db #0x78	; 120	'x'
   41F7 2F                  618 	.db #0x2F	; 47
   41F8 AF                  619 	.db #0xAF	; 175
   41F9 0F                  620 	.db #0x0F	; 15
   41FA 0F                  621 	.db #0x0F	; 15
   41FB 78                  622 	.db #0x78	; 120	'x'
   41FC F0                  623 	.db #0xF0	; 240
   41FD 7A                  624 	.db #0x7A	; 122	'z'
   41FE 7A                  625 	.db #0x7A	; 122	'z'
   41FF 5F                  626 	.db #0x5F	; 95
   4200 5F                  627 	.db #0x5F	; 95
   4201 5A                  628 	.db #0x5A	; 90	'Z'
   4202 DA                  629 	.db #0xDA	; 218
   4203 78                  630 	.db #0x78	; 120	'x'
   4204 F0                  631 	.db #0xF0	; 240
   4205 7A                  632 	.db #0x7A	; 122	'z'
   4206 7A                  633 	.db #0x7A	; 122	'z'
   4207 0F                  634 	.db #0x0F	; 15
   4208 0F                  635 	.db #0x0F	; 15
   4209 5A                  636 	.db #0x5A	; 90	'Z'
   420A DA                  637 	.db #0xDA	; 218
   420B 0F                  638 	.db #0x0F	; 15
   420C 0F                  639 	.db #0x0F	; 15
   420D 7A                  640 	.db #0x7A	; 122	'z'
   420E 7A                  641 	.db #0x7A	; 122	'z'
   420F 78                  642 	.db #0x78	; 120	'x'
   4210 F0                  643 	.db #0xF0	; 240
   4211 5A                  644 	.db #0x5A	; 90	'Z'
   4212 DA                  645 	.db #0xDA	; 218
   4213 5F                  646 	.db #0x5F	; 95
   4214 5F                  647 	.db #0x5F	; 95
   4215 7A                  648 	.db #0x7A	; 122	'z'
   4216 7A                  649 	.db #0x7A	; 122	'z'
   4217 78                  650 	.db #0x78	; 120	'x'
   4218 F0                  651 	.db #0xF0	; 240
   4219 5A                  652 	.db #0x5A	; 90	'Z'
   421A DA                  653 	.db #0xDA	; 218
   421B 2F                  654 	.db #0x2F	; 47
   421C AF                  655 	.db #0xAF	; 175
   421D 7A                  656 	.db #0x7A	; 122	'z'
   421E 7A                  657 	.db #0x7A	; 122	'z'
   421F 78                  658 	.db #0x78	; 120	'x'
   4220 F0                  659 	.db #0xF0	; 240
   4221 5A                  660 	.db #0x5A	; 90	'Z'
   4222 DA                  661 	.db #0xDA	; 218
   4223 5F                  662 	.db #0x5F	; 95
   4224 5F                  663 	.db #0x5F	; 95
   4225 7A                  664 	.db #0x7A	; 122	'z'
   4226 7A                  665 	.db #0x7A	; 122	'z'
   4227 78                  666 	.db #0x78	; 120	'x'
   4228 F0                  667 	.db #0xF0	; 240
   4229                     668 _farm2:
   4229 0F                  669 	.db #0x0F	; 15
   422A 0F                  670 	.db #0x0F	; 15
   422B 0F                  671 	.db #0x0F	; 15
   422C 0F                  672 	.db #0x0F	; 15
   422D 7F                  673 	.db #0x7F	; 127
   422E FF                  674 	.db #0xFF	; 255
   422F FF                  675 	.db #0xFF	; 255
   4230 EF                  676 	.db #0xEF	; 239
   4231 2D                  677 	.db #0x2D	; 45
   4232 A5                  678 	.db #0xA5	; 165
   4233 A5                  679 	.db #0xA5	; 165
   4234 A5                  680 	.db #0xA5	; 165
   4235 7F                  681 	.db #0x7F	; 127
   4236 FF                  682 	.db #0xFF	; 255
   4237 FF                  683 	.db #0xFF	; 255
   4238 EF                  684 	.db #0xEF	; 239
   4239 5A                  685 	.db #0x5A	; 90	'Z'
   423A 5A                  686 	.db #0x5A	; 90	'Z'
   423B 5A                  687 	.db #0x5A	; 90	'Z'
   423C 4B                  688 	.db #0x4B	; 75	'K'
   423D 7F                  689 	.db #0x7F	; 127
   423E FF                  690 	.db #0xFF	; 255
   423F FF                  691 	.db #0xFF	; 255
   4240 EF                  692 	.db #0xEF	; 239
   4241 2D                  693 	.db #0x2D	; 45
   4242 A5                  694 	.db #0xA5	; 165
   4243 A5                  695 	.db #0xA5	; 165
   4244 A5                  696 	.db #0xA5	; 165
   4245 7F                  697 	.db #0x7F	; 127
   4246 FF                  698 	.db #0xFF	; 255
   4247 FF                  699 	.db #0xFF	; 255
   4248 EF                  700 	.db #0xEF	; 239
   4249 5A                  701 	.db #0x5A	; 90	'Z'
   424A 5A                  702 	.db #0x5A	; 90	'Z'
   424B 5A                  703 	.db #0x5A	; 90	'Z'
   424C 4B                  704 	.db #0x4B	; 75	'K'
   424D 7F                  705 	.db #0x7F	; 127
   424E FF                  706 	.db #0xFF	; 255
   424F FF                  707 	.db #0xFF	; 255
   4250 EF                  708 	.db #0xEF	; 239
   4251 0F                  709 	.db #0x0F	; 15
   4252 0F                  710 	.db #0x0F	; 15
   4253 0F                  711 	.db #0x0F	; 15
   4254 0F                  712 	.db #0x0F	; 15
   4255 0E                  713 	.db #0x0E	; 14
   4256 07                  714 	.db #0x07	; 7
   4257 AF                  715 	.db #0xAF	; 175
   4258 AF                  716 	.db #0xAF	; 175
   4259 02                  717 	.db #0x02	; 2
   425A C3                  718 	.db #0xC3	; 195
   425B AF                  719 	.db #0xAF	; 175
   425C AF                  720 	.db #0xAF	; 175
   425D 60                  721 	.db #0x60	; 96
   425E C3                  722 	.db #0xC3	; 195
   425F AF                  723 	.db #0xAF	; 175
   4260 AF                  724 	.db #0xAF	; 175
   4261 69                  725 	.db #0x69	; 105	'i'
   4262 C3                  726 	.db #0xC3	; 195
   4263 AF                  727 	.db #0xAF	; 175
   4264 AF                  728 	.db #0xAF	; 175
   4265 0F                  729 	.db #0x0F	; 15
   4266 0F                  730 	.db #0x0F	; 15
   4267 0F                  731 	.db #0x0F	; 15
   4268 0F                  732 	.db #0x0F	; 15
   4269                     733 _livestock:
   4269 03                  734 	.db #0x03	; 3
   426A 0F                  735 	.db #0x0F	; 15
   426B 0F                  736 	.db #0x0F	; 15
   426C 0F                  737 	.db #0x0F	; 15
   426D 61                  738 	.db #0x61	; 97	'a'
   426E F5                  739 	.db #0xF5	; 245
   426F F5                  740 	.db #0xF5	; 245
   4270 E5                  741 	.db #0xE5	; 229
   4271 61                  742 	.db #0x61	; 97	'a'
   4272 8F                  743 	.db #0x8F	; 143
   4273 0F                  744 	.db #0x0F	; 15
   4274 2F                  745 	.db #0x2F	; 47
   4275 69                  746 	.db #0x69	; 105	'i'
   4276 87                  747 	.db #0x87	; 135
   4277 0F                  748 	.db #0x0F	; 15
   4278 AD                  749 	.db #0xAD	; 173
   4279 0F                  750 	.db #0x0F	; 15
   427A 9F                  751 	.db #0x9F	; 159
   427B 0F                  752 	.db #0x0F	; 15
   427C 2F                  753 	.db #0x2F	; 47
   427D 7D                  754 	.db #0x7D	; 125
   427E 87                  755 	.db #0x87	; 135
   427F 0F                  756 	.db #0x0F	; 15
   4280 2D                  757 	.db #0x2D	; 45
   4281 4B                  758 	.db #0x4B	; 75	'K'
   4282 0F                  759 	.db #0x0F	; 15
   4283 2F                  760 	.db #0x2F	; 47
   4284 2F                  761 	.db #0x2F	; 47
   4285 4F                  762 	.db #0x4F	; 79	'O'
   4286 0F                  763 	.db #0x0F	; 15
   4287 0F                  764 	.db #0x0F	; 15
   4288 2D                  765 	.db #0x2D	; 45
   4289 5B                  766 	.db #0x5B	; 91
   428A 1F                  767 	.db #0x1F	; 31
   428B 0F                  768 	.db #0x0F	; 15
   428C 2F                  769 	.db #0x2F	; 47
   428D 4F                  770 	.db #0x4F	; 79	'O'
   428E 0F                  771 	.db #0x0F	; 15
   428F 1F                  772 	.db #0x1F	; 31
   4290 2D                  773 	.db #0x2D	; 45
   4291 4B                  774 	.db #0x4B	; 75	'K'
   4292 0F                  775 	.db #0x0F	; 15
   4293 0F                  776 	.db #0x0F	; 15
   4294 2F                  777 	.db #0x2F	; 47
   4295 4F                  778 	.db #0x4F	; 79	'O'
   4296 4F                  779 	.db #0x4F	; 79	'O'
   4297 0F                  780 	.db #0x0F	; 15
   4298 2D                  781 	.db #0x2D	; 45
   4299 4B                  782 	.db #0x4B	; 75	'K'
   429A 0F                  783 	.db #0x0F	; 15
   429B 2F                  784 	.db #0x2F	; 47
   429C 2F                  785 	.db #0x2F	; 47
   429D 4F                  786 	.db #0x4F	; 79	'O'
   429E 0F                  787 	.db #0x0F	; 15
   429F 0F                  788 	.db #0x0F	; 15
   42A0 2D                  789 	.db #0x2D	; 45
   42A1 7A                  790 	.db #0x7A	; 122	'z'
   42A2 FA                  791 	.db #0xFA	; 250
   42A3 FA                  792 	.db #0xFA	; 250
   42A4 EB                  793 	.db #0xEB	; 235
   42A5 0F                  794 	.db #0x0F	; 15
   42A6 0F                  795 	.db #0x0F	; 15
   42A7 0F                  796 	.db #0x0F	; 15
   42A8 0F                  797 	.db #0x0F	; 15
   42A9                     798 _station_small_ns:
   42A9 0F                  799 	.db #0x0F	; 15
   42AA 1E                  800 	.db #0x1E	; 30
   42AB 43                  801 	.db #0x43	; 67	'C'
   42AC 0F                  802 	.db #0x0F	; 15
   42AD 0F                  803 	.db #0x0F	; 15
   42AE 1E                  804 	.db #0x1E	; 30
   42AF 43                  805 	.db #0x43	; 67	'C'
   42B0 4F                  806 	.db #0x4F	; 79	'O'
   42B1 0F                  807 	.db #0x0F	; 15
   42B2 5E                  808 	.db #0x5E	; 94
   42B3 43                  809 	.db #0x43	; 67	'C'
   42B4 0F                  810 	.db #0x0F	; 15
   42B5 0F                  811 	.db #0x0F	; 15
   42B6 1E                  812 	.db #0x1E	; 30
   42B7 43                  813 	.db #0x43	; 67	'C'
   42B8 0F                  814 	.db #0x0F	; 15
   42B9 4F                  815 	.db #0x4F	; 79	'O'
   42BA 1E                  816 	.db #0x1E	; 30
   42BB 43                  817 	.db #0x43	; 67	'C'
   42BC 8F                  818 	.db #0x8F	; 143
   42BD 0F                  819 	.db #0x0F	; 15
   42BE 1E                  820 	.db #0x1E	; 30
   42BF 43                  821 	.db #0x43	; 67	'C'
   42C0 0F                  822 	.db #0x0F	; 15
   42C1 0F                  823 	.db #0x0F	; 15
   42C2 1E                  824 	.db #0x1E	; 30
   42C3 43                  825 	.db #0x43	; 67	'C'
   42C4 0F                  826 	.db #0x0F	; 15
   42C5 0E                  827 	.db #0x0E	; 14
   42C6 16                  828 	.db #0x16	; 22
   42C7 43                  829 	.db #0x43	; 67	'C'
   42C8 0F                  830 	.db #0x0F	; 15
   42C9 0E                  831 	.db #0x0E	; 14
   42CA D2                  832 	.db #0xD2	; 210
   42CB 43                  833 	.db #0x43	; 67	'C'
   42CC 0F                  834 	.db #0x0F	; 15
   42CD 4F                  835 	.db #0x4F	; 79	'O'
   42CE D2                  836 	.db #0xD2	; 210
   42CF 43                  837 	.db #0x43	; 67	'C'
   42D0 0F                  838 	.db #0x0F	; 15
   42D1 0F                  839 	.db #0x0F	; 15
   42D2 1E                  840 	.db #0x1E	; 30
   42D3 53                  841 	.db #0x53	; 83	'S'
   42D4 0F                  842 	.db #0x0F	; 15
   42D5 0F                  843 	.db #0x0F	; 15
   42D6 1E                  844 	.db #0x1E	; 30
   42D7 43                  845 	.db #0x43	; 67	'C'
   42D8 0F                  846 	.db #0x0F	; 15
   42D9 0F                  847 	.db #0x0F	; 15
   42DA 5E                  848 	.db #0x5E	; 94
   42DB 43                  849 	.db #0x43	; 67	'C'
   42DC 0F                  850 	.db #0x0F	; 15
   42DD 0F                  851 	.db #0x0F	; 15
   42DE 1E                  852 	.db #0x1E	; 30
   42DF 43                  853 	.db #0x43	; 67	'C'
   42E0 1F                  854 	.db #0x1F	; 31
   42E1 4F                  855 	.db #0x4F	; 79	'O'
   42E2 1E                  856 	.db #0x1E	; 30
   42E3 43                  857 	.db #0x43	; 67	'C'
   42E4 0F                  858 	.db #0x0F	; 15
   42E5 0F                  859 	.db #0x0F	; 15
   42E6 1E                  860 	.db #0x1E	; 30
   42E7 43                  861 	.db #0x43	; 67	'C'
   42E8 0F                  862 	.db #0x0F	; 15
   42E9                     863 _station_small_ew:
   42E9 0F                  864 	.db #0x0F	; 15
   42EA 2F                  865 	.db #0x2F	; 47
   42EB 0F                  866 	.db #0x0F	; 15
   42EC 0F                  867 	.db #0x0F	; 15
   42ED 0F                  868 	.db #0x0F	; 15
   42EE 0F                  869 	.db #0x0F	; 15
   42EF 0F                  870 	.db #0x0F	; 15
   42F0 4F                  871 	.db #0x4F	; 79	'O'
   42F1 0F                  872 	.db #0x0F	; 15
   42F2 0F                  873 	.db #0x0F	; 15
   42F3 0F                  874 	.db #0x0F	; 15
   42F4 0F                  875 	.db #0x0F	; 15
   42F5 2F                  876 	.db #0x2F	; 47
   42F6 0C                  877 	.db #0x0C	; 12
   42F7 0F                  878 	.db #0x0F	; 15
   42F8 0F                  879 	.db #0x0F	; 15
   42F9 0F                  880 	.db #0x0F	; 15
   42FA 1C                  881 	.db #0x1C	; 28
   42FB 87                  882 	.db #0x87	; 135
   42FC 8F                  883 	.db #0x8F	; 143
   42FD 0F                  884 	.db #0x0F	; 15
   42FE 1E                  885 	.db #0x1E	; 30
   42FF 87                  886 	.db #0x87	; 135
   4300 0F                  887 	.db #0x0F	; 15
   4301 0F                  888 	.db #0x0F	; 15
   4302 0F                  889 	.db #0x0F	; 15
   4303 0F                  890 	.db #0x0F	; 15
   4304 0F                  891 	.db #0x0F	; 15
   4305 F0                  892 	.db #0xF0	; 240
   4306 F0                  893 	.db #0xF0	; 240
   4307 F0                  894 	.db #0xF0	; 240
   4308 F0                  895 	.db #0xF0	; 240
   4309 00                  896 	.db #0x00	; 0
   430A 00                  897 	.db #0x00	; 0
   430B 00                  898 	.db #0x00	; 0
   430C 00                  899 	.db #0x00	; 0
   430D F0                  900 	.db #0xF0	; 240
   430E F0                  901 	.db #0xF0	; 240
   430F F0                  902 	.db #0xF0	; 240
   4310 F0                  903 	.db #0xF0	; 240
   4311 0F                  904 	.db #0x0F	; 15
   4312 0F                  905 	.db #0x0F	; 15
   4313 0F                  906 	.db #0x0F	; 15
   4314 0F                  907 	.db #0x0F	; 15
   4315 0F                  908 	.db #0x0F	; 15
   4316 8F                  909 	.db #0x8F	; 143
   4317 0F                  910 	.db #0x0F	; 15
   4318 8F                  911 	.db #0x8F	; 143
   4319 0F                  912 	.db #0x0F	; 15
   431A 0F                  913 	.db #0x0F	; 15
   431B 0F                  914 	.db #0x0F	; 15
   431C 0F                  915 	.db #0x0F	; 15
   431D 0F                  916 	.db #0x0F	; 15
   431E 0F                  917 	.db #0x0F	; 15
   431F 8F                  918 	.db #0x8F	; 143
   4320 0F                  919 	.db #0x0F	; 15
   4321 4F                  920 	.db #0x4F	; 79	'O'
   4322 0F                  921 	.db #0x0F	; 15
   4323 1F                  922 	.db #0x1F	; 31
   4324 0F                  923 	.db #0x0F	; 15
   4325 0F                  924 	.db #0x0F	; 15
   4326 0F                  925 	.db #0x0F	; 15
   4327 0F                  926 	.db #0x0F	; 15
   4328 1F                  927 	.db #0x1F	; 31
   4329                     928 _station_medium_ns:
   4329 0F                  929 	.db #0x0F	; 15
   432A 1E                  930 	.db #0x1E	; 30
   432B 70                  931 	.db #0x70	; 112	'p'
   432C 0F                  932 	.db #0x0F	; 15
   432D 2F                  933 	.db #0x2F	; 47
   432E 1E                  934 	.db #0x1E	; 30
   432F 50                  935 	.db #0x50	; 80	'P'
   4330 0F                  936 	.db #0x0F	; 15
   4331 0F                  937 	.db #0x0F	; 15
   4332 1E                  938 	.db #0x1E	; 30
   4333 50                  939 	.db #0x50	; 80	'P'
   4334 2F                  940 	.db #0x2F	; 47
   4335 0F                  941 	.db #0x0F	; 15
   4336 1E                  942 	.db #0x1E	; 30
   4337 50                  943 	.db #0x50	; 80	'P'
   4338 0F                  944 	.db #0x0F	; 15
   4339 0F                  945 	.db #0x0F	; 15
   433A 1E                  946 	.db #0x1E	; 30
   433B 50                  947 	.db #0x50	; 80	'P'
   433C 0F                  948 	.db #0x0F	; 15
   433D 0E                  949 	.db #0x0E	; 14
   433E 16                  950 	.db #0x16	; 22
   433F 50                  951 	.db #0x50	; 80	'P'
   4340 0F                  952 	.db #0x0F	; 15
   4341 0E                  953 	.db #0x0E	; 14
   4342 D2                  954 	.db #0xD2	; 210
   4343 50                  955 	.db #0x50	; 80	'P'
   4344 2F                  956 	.db #0x2F	; 47
   4345 0E                  957 	.db #0x0E	; 14
   4346 D2                  958 	.db #0xD2	; 210
   4347 50                  959 	.db #0x50	; 80	'P'
   4348 0F                  960 	.db #0x0F	; 15
   4349 0E                  961 	.db #0x0E	; 14
   434A D2                  962 	.db #0xD2	; 210
   434B 50                  963 	.db #0x50	; 80	'P'
   434C 0F                  964 	.db #0x0F	; 15
   434D 0E                  965 	.db #0x0E	; 14
   434E D2                  966 	.db #0xD2	; 210
   434F 50                  967 	.db #0x50	; 80	'P'
   4350 0F                  968 	.db #0x0F	; 15
   4351 0F                  969 	.db #0x0F	; 15
   4352 D2                  970 	.db #0xD2	; 210
   4353 50                  971 	.db #0x50	; 80	'P'
   4354 1F                  972 	.db #0x1F	; 31
   4355 4F                  973 	.db #0x4F	; 79	'O'
   4356 1E                  974 	.db #0x1E	; 30
   4357 50                  975 	.db #0x50	; 80	'P'
   4358 0F                  976 	.db #0x0F	; 15
   4359 0F                  977 	.db #0x0F	; 15
   435A 1E                  978 	.db #0x1E	; 30
   435B 50                  979 	.db #0x50	; 80	'P'
   435C 0F                  980 	.db #0x0F	; 15
   435D 0F                  981 	.db #0x0F	; 15
   435E 1E                  982 	.db #0x1E	; 30
   435F 50                  983 	.db #0x50	; 80	'P'
   4360 0F                  984 	.db #0x0F	; 15
   4361 0F                  985 	.db #0x0F	; 15
   4362 9E                  986 	.db #0x9E	; 158
   4363 21                  987 	.db #0x21	; 33
   4364 0F                  988 	.db #0x0F	; 15
   4365 0F                  989 	.db #0x0F	; 15
   4366 1E                  990 	.db #0x1E	; 30
   4367 43                  991 	.db #0x43	; 67	'C'
   4368 4F                  992 	.db #0x4F	; 79	'O'
   4369                     993 _station_medium_ew:
   4369 0F                  994 	.db #0x0F	; 15
   436A 0F                  995 	.db #0x0F	; 15
   436B 0F                  996 	.db #0x0F	; 15
   436C 0F                  997 	.db #0x0F	; 15
   436D 0F                  998 	.db #0x0F	; 15
   436E 2F                  999 	.db #0x2F	; 47
   436F 0F                 1000 	.db #0x0F	; 15
   4370 03                 1001 	.db #0x03	; 3
   4371 0F                 1002 	.db #0x0F	; 15
   4372 0F                 1003 	.db #0x0F	; 15
   4373 0E                 1004 	.db #0x0E	; 14
   4374 67                 1005 	.db #0x67	; 103	'g'
   4375 4F                 1006 	.db #0x4F	; 79	'O'
   4376 00                 1007 	.db #0x00	; 0
   4377 06                 1008 	.db #0x06	; 6
   4378 EF                 1009 	.db #0xEF	; 239
   4379 0F                 1010 	.db #0x0F	; 15
   437A 70                 1011 	.db #0x70	; 112	'p'
   437B C3                 1012 	.db #0xC3	; 195
   437C CF                 1013 	.db #0xCF	; 207
   437D 0F                 1014 	.db #0x0F	; 15
   437E 78                 1015 	.db #0x78	; 120	'x'
   437F C3                 1016 	.db #0xC3	; 195
   4380 0F                 1017 	.db #0x0F	; 15
   4381 0F                 1018 	.db #0x0F	; 15
   4382 0F                 1019 	.db #0x0F	; 15
   4383 0F                 1020 	.db #0x0F	; 15
   4384 0F                 1021 	.db #0x0F	; 15
   4385 F0                 1022 	.db #0xF0	; 240
   4386 F0                 1023 	.db #0xF0	; 240
   4387 F0                 1024 	.db #0xF0	; 240
   4388 F0                 1025 	.db #0xF0	; 240
   4389 00                 1026 	.db #0x00	; 0
   438A 00                 1027 	.db #0x00	; 0
   438B 00                 1028 	.db #0x00	; 0
   438C 00                 1029 	.db #0x00	; 0
   438D B0                 1030 	.db #0xB0	; 176
   438E F0                 1031 	.db #0xF0	; 240
   438F F0                 1032 	.db #0xF0	; 240
   4390 F0                 1033 	.db #0xF0	; 240
   4391 48                 1034 	.db #0x48	; 72	'H'
   4392 00                 1035 	.db #0x00	; 0
   4393 00                 1036 	.db #0x00	; 0
   4394 10                 1037 	.db #0x10	; 16
   4395 3C                 1038 	.db #0x3C	; 60
   4396 F0                 1039 	.db #0xF0	; 240
   4397 F0                 1040 	.db #0xF0	; 240
   4398 F0                 1041 	.db #0xF0	; 240
   4399 0F                 1042 	.db #0x0F	; 15
   439A 4F                 1043 	.db #0x4F	; 79	'O'
   439B 0F                 1044 	.db #0x0F	; 15
   439C 0F                 1045 	.db #0x0F	; 15
   439D 0F                 1046 	.db #0x0F	; 15
   439E 0F                 1047 	.db #0x0F	; 15
   439F 0F                 1048 	.db #0x0F	; 15
   43A0 0F                 1049 	.db #0x0F	; 15
   43A1 2F                 1050 	.db #0x2F	; 47
   43A2 0F                 1051 	.db #0x0F	; 15
   43A3 0F                 1052 	.db #0x0F	; 15
   43A4 4F                 1053 	.db #0x4F	; 79	'O'
   43A5 0F                 1054 	.db #0x0F	; 15
   43A6 0F                 1055 	.db #0x0F	; 15
   43A7 0F                 1056 	.db #0x0F	; 15
   43A8 0F                 1057 	.db #0x0F	; 15
   43A9                    1058 _station_large_ns:
   43A9 0F                 1059 	.db #0x0F	; 15
   43AA 1E                 1060 	.db #0x1E	; 30
   43AB 43                 1061 	.db #0x43	; 67	'C'
   43AC 4F                 1062 	.db #0x4F	; 79	'O'
   43AD 0E                 1063 	.db #0x0E	; 14
   43AE 16                 1064 	.db #0x16	; 22
   43AF 21                 1065 	.db #0x21	; 33
   43B0 0F                 1066 	.db #0x0F	; 15
   43B1 0E                 1067 	.db #0x0E	; 14
   43B2 D2                 1068 	.db #0xD2	; 210
   43B3 50                 1069 	.db #0x50	; 80	'P'
   43B4 0F                 1070 	.db #0x0F	; 15
   43B5 0E                 1071 	.db #0x0E	; 14
   43B6 D2                 1072 	.db #0xD2	; 210
   43B7 40                 1073 	.db #0x40	; 64
   43B8 87                 1074 	.db #0x87	; 135
   43B9 0E                 1075 	.db #0x0E	; 14
   43BA D2                 1076 	.db #0xD2	; 210
   43BB 50                 1077 	.db #0x50	; 80	'P'
   43BC 43                 1078 	.db #0x43	; 67	'C'
   43BD 0C                 1079 	.db #0x0C	; 12
   43BE D2                 1080 	.db #0xD2	; 210
   43BF 50                 1081 	.db #0x50	; 80	'P'
   43C0 21                 1082 	.db #0x21	; 33
   43C1 1C                 1083 	.db #0x1C	; 28
   43C2 D2                 1084 	.db #0xD2	; 210
   43C3 50                 1085 	.db #0x50	; 80	'P'
   43C4 50                 1086 	.db #0x50	; 80	'P'
   43C5 1C                 1087 	.db #0x1C	; 28
   43C6 D2                 1088 	.db #0xD2	; 210
   43C7 50                 1089 	.db #0x50	; 80	'P'
   43C8 50                 1090 	.db #0x50	; 80	'P'
   43C9 1C                 1091 	.db #0x1C	; 28
   43CA D2                 1092 	.db #0xD2	; 210
   43CB 50                 1093 	.db #0x50	; 80	'P'
   43CC 50                 1094 	.db #0x50	; 80	'P'
   43CD 1C                 1095 	.db #0x1C	; 28
   43CE D2                 1096 	.db #0xD2	; 210
   43CF 50                 1097 	.db #0x50	; 80	'P'
   43D0 50                 1098 	.db #0x50	; 80	'P'
   43D1 1C                 1099 	.db #0x1C	; 28
   43D2 D2                 1100 	.db #0xD2	; 210
   43D3 50                 1101 	.db #0x50	; 80	'P'
   43D4 50                 1102 	.db #0x50	; 80	'P'
   43D5 0E                 1103 	.db #0x0E	; 14
   43D6 D2                 1104 	.db #0xD2	; 210
   43D7 50                 1105 	.db #0x50	; 80	'P'
   43D8 50                 1106 	.db #0x50	; 80	'P'
   43D9 0E                 1107 	.db #0x0E	; 14
   43DA D2                 1108 	.db #0xD2	; 210
   43DB 50                 1109 	.db #0x50	; 80	'P'
   43DC 50                 1110 	.db #0x50	; 80	'P'
   43DD 4E                 1111 	.db #0x4E	; 78	'N'
   43DE D2                 1112 	.db #0xD2	; 210
   43DF 50                 1113 	.db #0x50	; 80	'P'
   43E0 50                 1114 	.db #0x50	; 80	'P'
   43E1 0F                 1115 	.db #0x0F	; 15
   43E2 D2                 1116 	.db #0xD2	; 210
   43E3 50                 1117 	.db #0x50	; 80	'P'
   43E4 50                 1118 	.db #0x50	; 80	'P'
   43E5 0F                 1119 	.db #0x0F	; 15
   43E6 1E                 1120 	.db #0x1E	; 30
   43E7 70                 1121 	.db #0x70	; 112	'p'
   43E8 F0                 1122 	.db #0xF0	; 240
   43E9                    1123 _station_large_ew:
   43E9 0F                 1124 	.db #0x0F	; 15
   43EA 0F                 1125 	.db #0x0F	; 15
   43EB 0F                 1126 	.db #0x0F	; 15
   43EC 0F                 1127 	.db #0x0F	; 15
   43ED 0F                 1128 	.db #0x0F	; 15
   43EE 0F                 1129 	.db #0x0F	; 15
   43EF 0F                 1130 	.db #0x0F	; 15
   43F0 0F                 1131 	.db #0x0F	; 15
   43F1 0F                 1132 	.db #0x0F	; 15
   43F2 08                 1133 	.db #0x08	; 8
   43F3 01                 1134 	.db #0x01	; 1
   43F4 0F                 1135 	.db #0x0F	; 15
   43F5 08                 1136 	.db #0x08	; 8
   43F6 30                 1137 	.db #0x30	; 48	'0'
   43F7 E0                 1138 	.db #0xE0	; 224
   43F8 01                 1139 	.db #0x01	; 1
   43F9 38                 1140 	.db #0x38	; 56	'8'
   43FA F0                 1141 	.db #0xF0	; 240
   43FB F0                 1142 	.db #0xF0	; 240
   43FC E1                 1143 	.db #0xE1	; 225
   43FD 3C                 1144 	.db #0x3C	; 60
   43FE F0                 1145 	.db #0xF0	; 240
   43FF F0                 1146 	.db #0xF0	; 240
   4400 E1                 1147 	.db #0xE1	; 225
   4401 0F                 1148 	.db #0x0F	; 15
   4402 0F                 1149 	.db #0x0F	; 15
   4403 0F                 1150 	.db #0x0F	; 15
   4404 0F                 1151 	.db #0x0F	; 15
   4405 F0                 1152 	.db #0xF0	; 240
   4406 F0                 1153 	.db #0xF0	; 240
   4407 F0                 1154 	.db #0xF0	; 240
   4408 F0                 1155 	.db #0xF0	; 240
   4409 00                 1156 	.db #0x00	; 0
   440A 00                 1157 	.db #0x00	; 0
   440B 00                 1158 	.db #0x00	; 0
   440C 00                 1159 	.db #0x00	; 0
   440D F0                 1160 	.db #0xF0	; 240
   440E F0                 1161 	.db #0xF0	; 240
   440F F0                 1162 	.db #0xF0	; 240
   4410 D0                 1163 	.db #0xD0	; 208
   4411 80                 1164 	.db #0x80	; 128
   4412 00                 1165 	.db #0x00	; 0
   4413 00                 1166 	.db #0x00	; 0
   4414 21                 1167 	.db #0x21	; 33
   4415 F0                 1168 	.db #0xF0	; 240
   4416 F0                 1169 	.db #0xF0	; 240
   4417 F0                 1170 	.db #0xF0	; 240
   4418 43                 1171 	.db #0x43	; 67	'C'
   4419 80                 1172 	.db #0x80	; 128
   441A 00                 1173 	.db #0x00	; 0
   441B 00                 1174 	.db #0x00	; 0
   441C 87                 1175 	.db #0x87	; 135
   441D F0                 1176 	.db #0xF0	; 240
   441E F0                 1177 	.db #0xF0	; 240
   441F D0                 1178 	.db #0xD0	; 208
   4420 0F                 1179 	.db #0x0F	; 15
   4421 80                 1180 	.db #0x80	; 128
   4422 00                 1181 	.db #0x00	; 0
   4423 21                 1182 	.db #0x21	; 33
   4424 0F                 1183 	.db #0x0F	; 15
   4425 F0                 1184 	.db #0xF0	; 240
   4426 F0                 1185 	.db #0xF0	; 240
   4427 C3                 1186 	.db #0xC3	; 195
   4428 0F                 1187 	.db #0x0F	; 15
                           1188 ;src/includes/gui.h:8: void putM1(void)
                           1189 ;	---------------------------------
                           1190 ; Function putM1
                           1191 ; ---------------------------------
   4429                    1192 _putM1::
                           1193 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   4429 3E 01         [ 7] 1194 	ld	a,#0x01
   442B F5            [11] 1195 	push	af
   442C 33            [ 6] 1196 	inc	sp
   442D CD C7 5A      [17] 1197 	call	_cpct_setVideoMode
   4430 33            [ 6] 1198 	inc	sp
                           1199 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   4431 21 23 40      [10] 1200 	ld	hl,#_paletteMenusM1
   4434 01 04 00      [10] 1201 	ld	bc,#0x0004
   4437 C5            [11] 1202 	push	bc
   4438 E5            [11] 1203 	push	hl
   4439 CD DF 58      [17] 1204 	call	_cpct_setPalette
   443C C9            [10] 1205 	ret
                           1206 ;src/includes/gui.h:15: void putM2(void)
                           1207 ;	---------------------------------
                           1208 ; Function putM2
                           1209 ; ---------------------------------
   443D                    1210 _putM2::
                           1211 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   443D 3E 02         [ 7] 1212 	ld	a,#0x02
   443F F5            [11] 1213 	push	af
   4440 33            [ 6] 1214 	inc	sp
   4441 CD C7 5A      [17] 1215 	call	_cpct_setVideoMode
   4444 33            [ 6] 1216 	inc	sp
                           1217 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   4445 21 27 40      [10] 1218 	ld	hl,#_paletteMenusM2
   4448 01 02 00      [10] 1219 	ld	bc,#0x0002
   444B C5            [11] 1220 	push	bc
   444C E5            [11] 1221 	push	hl
   444D CD DF 58      [17] 1222 	call	_cpct_setPalette
                           1223 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   4450 21 00 40      [10] 1224 	ld	hl,#0x4000
   4453 E5            [11] 1225 	push	hl
   4454 3E FF         [ 7] 1226 	ld	a,#0xFF
   4456 F5            [11] 1227 	push	af
   4457 33            [ 6] 1228 	inc	sp
   4458 26 C0         [ 7] 1229 	ld	h, #0xC0
   445A E5            [11] 1230 	push	hl
   445B CD F5 5A      [17] 1231 	call	_cpct_memset
   445E C9            [10] 1232 	ret
                           1233 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                           1234 ;	---------------------------------
                           1235 ; Function drawBoxM0
                           1236 ; ---------------------------------
   445F                    1237 _drawBoxM0::
   445F DD E5         [15] 1238 	push	ix
   4461 DD 21 00 00   [14] 1239 	ld	ix,#0
   4465 DD 39         [15] 1240 	add	ix,sp
   4467 21 F9 FF      [10] 1241 	ld	hl,#-7
   446A 39            [11] 1242 	add	hl,sp
   446B F9            [ 6] 1243 	ld	sp,hl
                           1244 ;src/includes/gui.h:28: int left = (80-width_)/2;
   446C 3E 50         [ 7] 1245 	ld	a,#0x50
   446E DD 96 04      [19] 1246 	sub	a, 4 (ix)
   4471 57            [ 4] 1247 	ld	d,a
   4472 3E 00         [ 7] 1248 	ld	a,#0x00
   4474 DD 9E 05      [19] 1249 	sbc	a, 5 (ix)
   4477 5F            [ 4] 1250 	ld	e,a
   4478 6A            [ 4] 1251 	ld	l, d
   4479 63            [ 4] 1252 	ld	h, e
   447A CB 7B         [ 8] 1253 	bit	7, e
   447C 28 03         [12] 1254 	jr	Z,00103$
   447E 6A            [ 4] 1255 	ld	l, d
   447F 63            [ 4] 1256 	ld	h, e
   4480 23            [ 6] 1257 	inc	hl
   4481                    1258 00103$:
   4481 DD 75 F9      [19] 1259 	ld	-7 (ix),l
   4484 DD 74 FA      [19] 1260 	ld	-6 (ix),h
   4487 DD CB FA 2E   [23] 1261 	sra	-6 (ix)
   448B DD CB F9 1E   [23] 1262 	rr	-7 (ix)
                           1263 ;src/includes/gui.h:29: int top = (200-height_)/2;
   448F 3E C8         [ 7] 1264 	ld	a,#0xC8
   4491 DD 96 06      [19] 1265 	sub	a, 6 (ix)
   4494 4F            [ 4] 1266 	ld	c,a
   4495 3E 00         [ 7] 1267 	ld	a,#0x00
   4497 DD 9E 07      [19] 1268 	sbc	a, 7 (ix)
   449A 47            [ 4] 1269 	ld	b,a
   449B 61            [ 4] 1270 	ld	h,c
   449C 50            [ 4] 1271 	ld	d,b
   449D CB 78         [ 8] 1272 	bit	7, b
   449F 28 03         [12] 1273 	jr	Z,00104$
   44A1 03            [ 6] 1274 	inc	bc
   44A2 61            [ 4] 1275 	ld	h,c
   44A3 50            [ 4] 1276 	ld	d,b
   44A4                    1277 00104$:
   44A4 5C            [ 4] 1278 	ld	e, h
   44A5 CB 2A         [ 8] 1279 	sra	d
   44A7 CB 1B         [ 8] 1280 	rr	e
                           1281 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   44A9 D5            [11] 1282 	push	de
   44AA 21 09 09      [10] 1283 	ld	hl,#0x0909
   44AD E5            [11] 1284 	push	hl
   44AE CD D9 5A      [17] 1285 	call	_cpct_px2byteM0
   44B1 65            [ 4] 1286 	ld	h,l
   44B2 01 00 40      [10] 1287 	ld	bc,#0x4000
   44B5 C5            [11] 1288 	push	bc
   44B6 E5            [11] 1289 	push	hl
   44B7 33            [ 6] 1290 	inc	sp
   44B8 21 00 C0      [10] 1291 	ld	hl,#0xC000
   44BB E5            [11] 1292 	push	hl
   44BC CD F5 5A      [17] 1293 	call	_cpct_memset
   44BF D1            [10] 1294 	pop	de
                           1295 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   44C0 DD 73 FF      [19] 1296 	ld	-1 (ix), e
   44C3 63            [ 4] 1297 	ld	h, e
   44C4 24            [ 4] 1298 	inc	h
   44C5 24            [ 4] 1299 	inc	h
   44C6 24            [ 4] 1300 	inc	h
   44C7 24            [ 4] 1301 	inc	h
   44C8 DD 7E F9      [19] 1302 	ld	a,-7 (ix)
   44CB 3C            [ 4] 1303 	inc	a
   44CC DD 77 FC      [19] 1304 	ld	-4 (ix),a
   44CF D5            [11] 1305 	push	de
   44D0 E5            [11] 1306 	push	hl
   44D1 33            [ 6] 1307 	inc	sp
   44D2 DD 7E FC      [19] 1308 	ld	a,-4 (ix)
   44D5 F5            [11] 1309 	push	af
   44D6 33            [ 6] 1310 	inc	sp
   44D7 21 00 C0      [10] 1311 	ld	hl,#0xC000
   44DA E5            [11] 1312 	push	hl
   44DB CD F4 5B      [17] 1313 	call	_cpct_getScreenPtr
   44DE D1            [10] 1314 	pop	de
   44DF 4D            [ 4] 1315 	ld	c, l
   44E0 44            [ 4] 1316 	ld	b, h
                           1317 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   44E1 DD 7E 06      [19] 1318 	ld	a,6 (ix)
   44E4 DD 77 FB      [19] 1319 	ld	-5 (ix),a
   44E7 DD 7E 04      [19] 1320 	ld	a,4 (ix)
   44EA DD 77 FD      [19] 1321 	ld	-3 (ix),a
   44ED C5            [11] 1322 	push	bc
   44EE D5            [11] 1323 	push	de
   44EF 21 02 02      [10] 1324 	ld	hl,#0x0202
   44F2 E5            [11] 1325 	push	hl
   44F3 CD D9 5A      [17] 1326 	call	_cpct_px2byteM0
   44F6 DD 75 FE      [19] 1327 	ld	-2 (ix),l
   44F9 D1            [10] 1328 	pop	de
   44FA C1            [10] 1329 	pop	bc
   44FB D5            [11] 1330 	push	de
   44FC DD 66 FB      [19] 1331 	ld	h,-5 (ix)
   44FF DD 6E FD      [19] 1332 	ld	l,-3 (ix)
   4502 E5            [11] 1333 	push	hl
   4503 DD 7E FE      [19] 1334 	ld	a,-2 (ix)
   4506 F5            [11] 1335 	push	af
   4507 33            [ 6] 1336 	inc	sp
   4508 C5            [11] 1337 	push	bc
   4509 CD 3B 5B      [17] 1338 	call	_cpct_drawSolidBox
   450C F1            [10] 1339 	pop	af
   450D F1            [10] 1340 	pop	af
   450E 33            [ 6] 1341 	inc	sp
   450F D1            [10] 1342 	pop	de
                           1343 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4510 63            [ 4] 1344 	ld	h,e
   4511 DD 56 F9      [19] 1345 	ld	d,-7 (ix)
   4514 E5            [11] 1346 	push	hl
   4515 33            [ 6] 1347 	inc	sp
   4516 D5            [11] 1348 	push	de
   4517 33            [ 6] 1349 	inc	sp
   4518 21 00 C0      [10] 1350 	ld	hl,#0xC000
   451B E5            [11] 1351 	push	hl
   451C CD F4 5B      [17] 1352 	call	_cpct_getScreenPtr
                           1353 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   451F E5            [11] 1354 	push	hl
   4520 21 06 06      [10] 1355 	ld	hl,#0x0606
   4523 E5            [11] 1356 	push	hl
   4524 CD D9 5A      [17] 1357 	call	_cpct_px2byteM0
   4527 45            [ 4] 1358 	ld	b,l
   4528 D1            [10] 1359 	pop	de
   4529 DD 66 FB      [19] 1360 	ld	h,-5 (ix)
   452C DD 6E FD      [19] 1361 	ld	l,-3 (ix)
   452F E5            [11] 1362 	push	hl
   4530 C5            [11] 1363 	push	bc
   4531 33            [ 6] 1364 	inc	sp
   4532 D5            [11] 1365 	push	de
   4533 CD 3B 5B      [17] 1366 	call	_cpct_drawSolidBox
   4536 F1            [10] 1367 	pop	af
   4537 F1            [10] 1368 	pop	af
   4538 33            [ 6] 1369 	inc	sp
                           1370 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   4539 DD 66 FF      [19] 1371 	ld	h,-1 (ix)
   453C 24            [ 4] 1372 	inc	h
   453D 24            [ 4] 1373 	inc	h
   453E E5            [11] 1374 	push	hl
   453F 33            [ 6] 1375 	inc	sp
   4540 DD 7E FC      [19] 1376 	ld	a,-4 (ix)
   4543 F5            [11] 1377 	push	af
   4544 33            [ 6] 1378 	inc	sp
   4545 21 00 C0      [10] 1379 	ld	hl,#0xC000
   4548 E5            [11] 1380 	push	hl
   4549 CD F4 5B      [17] 1381 	call	_cpct_getScreenPtr
   454C EB            [ 4] 1382 	ex	de,hl
                           1383 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   454D DD 7E 06      [19] 1384 	ld	a,6 (ix)
   4550 C6 FC         [ 7] 1385 	add	a,#0xFC
   4552 4F            [ 4] 1386 	ld	c,a
   4553 DD 46 04      [19] 1387 	ld	b,4 (ix)
   4556 05            [ 4] 1388 	dec	b
   4557 05            [ 4] 1389 	dec	b
   4558 C5            [11] 1390 	push	bc
   4559 D5            [11] 1391 	push	de
   455A 21 00 00      [10] 1392 	ld	hl,#0x0000
   455D E5            [11] 1393 	push	hl
   455E CD D9 5A      [17] 1394 	call	_cpct_px2byteM0
   4561 DD 75 FE      [19] 1395 	ld	-2 (ix),l
   4564 D1            [10] 1396 	pop	de
   4565 C1            [10] 1397 	pop	bc
   4566 79            [ 4] 1398 	ld	a,c
   4567 F5            [11] 1399 	push	af
   4568 33            [ 6] 1400 	inc	sp
   4569 C5            [11] 1401 	push	bc
   456A 33            [ 6] 1402 	inc	sp
   456B DD 7E FE      [19] 1403 	ld	a,-2 (ix)
   456E F5            [11] 1404 	push	af
   456F 33            [ 6] 1405 	inc	sp
   4570 D5            [11] 1406 	push	de
   4571 CD 3B 5B      [17] 1407 	call	_cpct_drawSolidBox
   4574 DD F9         [10] 1408 	ld	sp,ix
   4576 DD E1         [14] 1409 	pop	ix
   4578 C9            [10] 1410 	ret
                           1411 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           1412 ;	---------------------------------
                           1413 ; Function drawBoxM2
                           1414 ; ---------------------------------
   4579                    1415 _drawBoxM2::
   4579 DD E5         [15] 1416 	push	ix
   457B DD 21 00 00   [14] 1417 	ld	ix,#0
   457F DD 39         [15] 1418 	add	ix,sp
   4581 21 FA FF      [10] 1419 	ld	hl,#-6
   4584 39            [11] 1420 	add	hl,sp
   4585 F9            [ 6] 1421 	ld	sp,hl
                           1422 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4586 3E 50         [ 7] 1423 	ld	a,#0x50
   4588 DD 96 04      [19] 1424 	sub	a, 4 (ix)
   458B 4F            [ 4] 1425 	ld	c,a
   458C 3E 00         [ 7] 1426 	ld	a,#0x00
   458E DD 9E 05      [19] 1427 	sbc	a, 5 (ix)
   4591 47            [ 4] 1428 	ld	b,a
   4592 61            [ 4] 1429 	ld	h,c
   4593 50            [ 4] 1430 	ld	d,b
   4594 CB 78         [ 8] 1431 	bit	7, b
   4596 28 03         [12] 1432 	jr	Z,00103$
   4598 03            [ 6] 1433 	inc	bc
   4599 61            [ 4] 1434 	ld	h,c
   459A 50            [ 4] 1435 	ld	d,b
   459B                    1436 00103$:
   459B 5C            [ 4] 1437 	ld	e, h
   459C CB 2A         [ 8] 1438 	sra	d
   459E CB 1B         [ 8] 1439 	rr	e
                           1440 ;src/includes/gui.h:53: int top = (200-height_)/2;
   45A0 3E C8         [ 7] 1441 	ld	a,#0xC8
   45A2 DD 96 06      [19] 1442 	sub	a, 6 (ix)
   45A5 4F            [ 4] 1443 	ld	c,a
   45A6 3E 00         [ 7] 1444 	ld	a,#0x00
   45A8 DD 9E 07      [19] 1445 	sbc	a, 7 (ix)
   45AB 47            [ 4] 1446 	ld	b,a
   45AC 61            [ 4] 1447 	ld	h,c
   45AD 68            [ 4] 1448 	ld	l,b
   45AE CB 78         [ 8] 1449 	bit	7, b
   45B0 28 03         [12] 1450 	jr	Z,00104$
   45B2 03            [ 6] 1451 	inc	bc
   45B3 61            [ 4] 1452 	ld	h,c
   45B4 68            [ 4] 1453 	ld	l,b
   45B5                    1454 00104$:
   45B5 DD 74 FA      [19] 1455 	ld	-6 (ix),h
   45B8 DD 75 FB      [19] 1456 	ld	-5 (ix),l
   45BB DD CB FB 2E   [23] 1457 	sra	-5 (ix)
   45BF DD CB FA 1E   [23] 1458 	rr	-6 (ix)
                           1459 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   45C3 DD 7E FA      [19] 1460 	ld	a,-6 (ix)
   45C6 DD 77 FD      [19] 1461 	ld	-3 (ix), a
   45C9 C6 05         [ 7] 1462 	add	a, #0x05
   45CB 4F            [ 4] 1463 	ld	c,a
   45CC DD 73 FC      [19] 1464 	ld	-4 (ix), e
   45CF 63            [ 4] 1465 	ld	h, e
   45D0 24            [ 4] 1466 	inc	h
   45D1 24            [ 4] 1467 	inc	h
   45D2 D5            [11] 1468 	push	de
   45D3 79            [ 4] 1469 	ld	a,c
   45D4 F5            [11] 1470 	push	af
   45D5 33            [ 6] 1471 	inc	sp
   45D6 E5            [11] 1472 	push	hl
   45D7 33            [ 6] 1473 	inc	sp
   45D8 21 00 C0      [10] 1474 	ld	hl,#0xC000
   45DB E5            [11] 1475 	push	hl
   45DC CD F4 5B      [17] 1476 	call	_cpct_getScreenPtr
   45DF D1            [10] 1477 	pop	de
                           1478 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   45E0 DD 46 06      [19] 1479 	ld	b,6 (ix)
   45E3 DD 4E 04      [19] 1480 	ld	c,4 (ix)
   45E6 79            [ 4] 1481 	ld	a,c
   45E7 C6 FF         [ 7] 1482 	add	a,#0xFF
   45E9 DD 75 FE      [19] 1483 	ld	-2 (ix),l
   45EC DD 74 FF      [19] 1484 	ld	-1 (ix),h
   45EF C5            [11] 1485 	push	bc
   45F0 D5            [11] 1486 	push	de
   45F1 C5            [11] 1487 	push	bc
   45F2 33            [ 6] 1488 	inc	sp
   45F3 F5            [11] 1489 	push	af
   45F4 33            [ 6] 1490 	inc	sp
   45F5 AF            [ 4] 1491 	xor	a, a
   45F6 F5            [11] 1492 	push	af
   45F7 33            [ 6] 1493 	inc	sp
   45F8 DD 6E FE      [19] 1494 	ld	l,-2 (ix)
   45FB DD 66 FF      [19] 1495 	ld	h,-1 (ix)
   45FE E5            [11] 1496 	push	hl
   45FF CD 3B 5B      [17] 1497 	call	_cpct_drawSolidBox
   4602 F1            [10] 1498 	pop	af
   4603 F1            [10] 1499 	pop	af
   4604 33            [ 6] 1500 	inc	sp
   4605 D1            [10] 1501 	pop	de
   4606 C1            [10] 1502 	pop	bc
                           1503 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4607 DD 66 FA      [19] 1504 	ld	h,-6 (ix)
   460A 53            [ 4] 1505 	ld	d,e
   460B C5            [11] 1506 	push	bc
   460C E5            [11] 1507 	push	hl
   460D 33            [ 6] 1508 	inc	sp
   460E D5            [11] 1509 	push	de
   460F 33            [ 6] 1510 	inc	sp
   4610 21 00 C0      [10] 1511 	ld	hl,#0xC000
   4613 E5            [11] 1512 	push	hl
   4614 CD F4 5B      [17] 1513 	call	_cpct_getScreenPtr
   4617 C1            [10] 1514 	pop	bc
                           1515 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4618 DD 7E 04      [19] 1516 	ld	a,4 (ix)
   461B EB            [ 4] 1517 	ex	de,hl
   461C C5            [11] 1518 	push	bc
   461D C5            [11] 1519 	push	bc
   461E 33            [ 6] 1520 	inc	sp
   461F 47            [ 4] 1521 	ld	b,a
   4620 0E F8         [ 7] 1522 	ld	c,#0xF8
   4622 C5            [11] 1523 	push	bc
   4623 D5            [11] 1524 	push	de
   4624 CD 3B 5B      [17] 1525 	call	_cpct_drawSolidBox
   4627 F1            [10] 1526 	pop	af
   4628 F1            [10] 1527 	pop	af
   4629 33            [ 6] 1528 	inc	sp
   462A C1            [10] 1529 	pop	bc
                           1530 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   462B DD 66 FD      [19] 1531 	ld	h,-3 (ix)
   462E 24            [ 4] 1532 	inc	h
   462F DD 56 FC      [19] 1533 	ld	d,-4 (ix)
   4632 14            [ 4] 1534 	inc	d
   4633 C5            [11] 1535 	push	bc
   4634 E5            [11] 1536 	push	hl
   4635 33            [ 6] 1537 	inc	sp
   4636 D5            [11] 1538 	push	de
   4637 33            [ 6] 1539 	inc	sp
   4638 21 00 C0      [10] 1540 	ld	hl,#0xC000
   463B E5            [11] 1541 	push	hl
   463C CD F4 5B      [17] 1542 	call	_cpct_getScreenPtr
   463F C1            [10] 1543 	pop	bc
   4640 5D            [ 4] 1544 	ld	e, l
   4641 54            [ 4] 1545 	ld	d, h
                           1546 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   4642 DD 66 06      [19] 1547 	ld	h,6 (ix)
   4645 25            [ 4] 1548 	dec	h
   4646 25            [ 4] 1549 	dec	h
   4647 79            [ 4] 1550 	ld	a,c
   4648 C6 FE         [ 7] 1551 	add	a,#0xFE
   464A E5            [11] 1552 	push	hl
   464B 33            [ 6] 1553 	inc	sp
   464C 47            [ 4] 1554 	ld	b,a
   464D 0E FF         [ 7] 1555 	ld	c,#0xFF
   464F C5            [11] 1556 	push	bc
   4650 D5            [11] 1557 	push	de
   4651 CD 3B 5B      [17] 1558 	call	_cpct_drawSolidBox
   4654 DD F9         [10] 1559 	ld	sp,ix
   4656 DD E1         [14] 1560 	pop	ix
   4658 C9            [10] 1561 	ret
                           1562 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           1563 ;	---------------------------------
                           1564 ; Function EraseMenuEntry
                           1565 ; ---------------------------------
   4659                    1566 _EraseMenuEntry::
   4659 DD E5         [15] 1567 	push	ix
   465B DD 21 00 00   [14] 1568 	ld	ix,#0
   465F DD 39         [15] 1569 	add	ix,sp
   4661 3B            [ 6] 1570 	dec	sp
                           1571 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   4662 DD 4E 06      [19] 1572 	ld	c,6 (ix)
   4665 06 00         [ 7] 1573 	ld	b,#0x00
   4667 69            [ 4] 1574 	ld	l, c
   4668 60            [ 4] 1575 	ld	h, b
   4669 29            [11] 1576 	add	hl, hl
   466A 29            [11] 1577 	add	hl, hl
   466B 09            [11] 1578 	add	hl, bc
   466C 29            [11] 1579 	add	hl, hl
   466D 4D            [ 4] 1580 	ld	c,l
   466E 44            [ 4] 1581 	ld	b,h
   466F 3E C9         [ 7] 1582 	ld	a,#0xC9
   4671 91            [ 4] 1583 	sub	a, c
   4672 57            [ 4] 1584 	ld	d,a
   4673 3E 00         [ 7] 1585 	ld	a,#0x00
   4675 98            [ 4] 1586 	sbc	a, b
   4676 5F            [ 4] 1587 	ld	e,a
   4677 6A            [ 4] 1588 	ld	l, d
   4678 63            [ 4] 1589 	ld	h, e
   4679 CB 7B         [ 8] 1590 	bit	7, e
   467B 28 03         [12] 1591 	jr	Z,00103$
   467D 6A            [ 4] 1592 	ld	l, d
   467E 63            [ 4] 1593 	ld	h, e
   467F 23            [ 6] 1594 	inc	hl
   4680                    1595 00103$:
   4680 CB 2C         [ 8] 1596 	sra	h
   4682 CB 1D         [ 8] 1597 	rr	l
   4684 55            [ 4] 1598 	ld	d,l
   4685 DD 7E 07      [19] 1599 	ld	a,7 (ix)
   4688 5F            [ 4] 1600 	ld	e,a
   4689 87            [ 4] 1601 	add	a, a
   468A 87            [ 4] 1602 	add	a, a
   468B 83            [ 4] 1603 	add	a, e
   468C 87            [ 4] 1604 	add	a, a
   468D DD 77 FF      [19] 1605 	ld	-1 (ix),a
   4690 7A            [ 4] 1606 	ld	a,d
   4691 DD 86 FF      [19] 1607 	add	a, -1 (ix)
   4694 C5            [11] 1608 	push	bc
   4695 57            [ 4] 1609 	ld	d,a
   4696 1E 20         [ 7] 1610 	ld	e,#0x20
   4698 D5            [11] 1611 	push	de
   4699 21 00 C0      [10] 1612 	ld	hl,#0xC000
   469C E5            [11] 1613 	push	hl
   469D CD F4 5B      [17] 1614 	call	_cpct_getScreenPtr
   46A0 C1            [10] 1615 	pop	bc
                           1616 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   46A1 EB            [ 4] 1617 	ex	de,hl
   46A2 C5            [11] 1618 	push	bc
   46A3 21 11 0A      [10] 1619 	ld	hl,#0x0A11
   46A6 E5            [11] 1620 	push	hl
   46A7 3E FF         [ 7] 1621 	ld	a,#0xFF
   46A9 F5            [11] 1622 	push	af
   46AA 33            [ 6] 1623 	inc	sp
   46AB D5            [11] 1624 	push	de
   46AC CD 3B 5B      [17] 1625 	call	_cpct_drawSolidBox
   46AF F1            [10] 1626 	pop	af
   46B0 F1            [10] 1627 	pop	af
   46B1 33            [ 6] 1628 	inc	sp
   46B2 C1            [10] 1629 	pop	bc
                           1630 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   46B3 3E CA         [ 7] 1631 	ld	a,#0xCA
   46B5 91            [ 4] 1632 	sub	a, c
   46B6 57            [ 4] 1633 	ld	d,a
   46B7 3E 00         [ 7] 1634 	ld	a,#0x00
   46B9 98            [ 4] 1635 	sbc	a, b
   46BA 5F            [ 4] 1636 	ld	e,a
   46BB 6A            [ 4] 1637 	ld	l, d
   46BC 63            [ 4] 1638 	ld	h, e
   46BD CB 7B         [ 8] 1639 	bit	7, e
   46BF 28 03         [12] 1640 	jr	Z,00104$
   46C1 6A            [ 4] 1641 	ld	l, d
   46C2 63            [ 4] 1642 	ld	h, e
   46C3 23            [ 6] 1643 	inc	hl
   46C4                    1644 00104$:
   46C4 CB 2C         [ 8] 1645 	sra	h
   46C6 CB 1D         [ 8] 1646 	rr	l
   46C8 7D            [ 4] 1647 	ld	a,l
   46C9 DD 86 FF      [19] 1648 	add	a, -1 (ix)
   46CC 4F            [ 4] 1649 	ld	c,a
   46CD DD 6E 07      [19] 1650 	ld	l,7 (ix)
   46D0 26 00         [ 7] 1651 	ld	h,#0x00
   46D2 29            [11] 1652 	add	hl, hl
   46D3 EB            [ 4] 1653 	ex	de,hl
   46D4 DD 6E 04      [19] 1654 	ld	l,4 (ix)
   46D7 DD 66 05      [19] 1655 	ld	h,5 (ix)
   46DA 19            [11] 1656 	add	hl,de
   46DB E5            [11] 1657 	push	hl
   46DC 5E            [ 7] 1658 	ld	e,(hl)
   46DD 23            [ 6] 1659 	inc	hl
   46DE 56            [ 7] 1660 	ld	d,(hl)
   46DF C5            [11] 1661 	push	bc
   46E0 D5            [11] 1662 	push	de
   46E1 CD 1C 5B      [17] 1663 	call	_strlen
   46E4 F1            [10] 1664 	pop	af
   46E5 EB            [ 4] 1665 	ex	de,hl
   46E6 C1            [10] 1666 	pop	bc
   46E7 E1            [10] 1667 	pop	hl
   46E8 3E 52         [ 7] 1668 	ld	a,#0x52
   46EA 93            [ 4] 1669 	sub	a, e
   46EB 5F            [ 4] 1670 	ld	e,a
   46EC 3E 00         [ 7] 1671 	ld	a,#0x00
   46EE 9A            [ 4] 1672 	sbc	a, d
   46EF 57            [ 4] 1673 	ld	d,a
   46F0 CB 3A         [ 8] 1674 	srl	d
   46F2 CB 1B         [ 8] 1675 	rr	e
   46F4 E5            [11] 1676 	push	hl
   46F5 51            [ 4] 1677 	ld	d, c
   46F6 D5            [11] 1678 	push	de
   46F7 01 00 C0      [10] 1679 	ld	bc,#0xC000
   46FA C5            [11] 1680 	push	bc
   46FB CD F4 5B      [17] 1681 	call	_cpct_getScreenPtr
   46FE 4D            [ 4] 1682 	ld	c,l
   46FF 44            [ 4] 1683 	ld	b,h
   4700 E1            [10] 1684 	pop	hl
                           1685 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4701 5E            [ 7] 1686 	ld	e,(hl)
   4702 23            [ 6] 1687 	inc	hl
   4703 56            [ 7] 1688 	ld	d,(hl)
   4704 AF            [ 4] 1689 	xor	a, a
   4705 F5            [11] 1690 	push	af
   4706 33            [ 6] 1691 	inc	sp
   4707 C5            [11] 1692 	push	bc
   4708 D5            [11] 1693 	push	de
   4709 CD 0E 59      [17] 1694 	call	_cpct_drawStringM2
   470C F1            [10] 1695 	pop	af
   470D F1            [10] 1696 	pop	af
   470E 33            [ 6] 1697 	inc	sp
   470F 33            [ 6] 1698 	inc	sp
   4710 DD E1         [14] 1699 	pop	ix
   4712 C9            [10] 1700 	ret
                           1701 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           1702 ;	---------------------------------
                           1703 ; Function drawMenuEntry
                           1704 ; ---------------------------------
   4713                    1705 _drawMenuEntry::
   4713 DD E5         [15] 1706 	push	ix
   4715 DD 21 00 00   [14] 1707 	ld	ix,#0
   4719 DD 39         [15] 1708 	add	ix,sp
   471B 21 FA FF      [10] 1709 	ld	hl,#-6
   471E 39            [11] 1710 	add	hl,sp
   471F F9            [ 6] 1711 	ld	sp,hl
                           1712 ;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   4720 DD 4E 06      [19] 1713 	ld	c,6 (ix)
   4723 06 00         [ 7] 1714 	ld	b,#0x00
   4725 69            [ 4] 1715 	ld	l, c
   4726 60            [ 4] 1716 	ld	h, b
   4727 29            [11] 1717 	add	hl, hl
   4728 29            [11] 1718 	add	hl, hl
   4729 09            [11] 1719 	add	hl, bc
   472A 29            [11] 1720 	add	hl, hl
   472B 4D            [ 4] 1721 	ld	c,l
   472C 44            [ 4] 1722 	ld	b,h
   472D 3E C9         [ 7] 1723 	ld	a,#0xC9
   472F 91            [ 4] 1724 	sub	a, c
   4730 57            [ 4] 1725 	ld	d,a
   4731 3E 00         [ 7] 1726 	ld	a,#0x00
   4733 98            [ 4] 1727 	sbc	a, b
   4734 5F            [ 4] 1728 	ld	e,a
   4735 6A            [ 4] 1729 	ld	l, d
   4736 63            [ 4] 1730 	ld	h, e
   4737 CB 7B         [ 8] 1731 	bit	7, e
   4739 28 03         [12] 1732 	jr	Z,00114$
   473B 6A            [ 4] 1733 	ld	l, d
   473C 63            [ 4] 1734 	ld	h, e
   473D 23            [ 6] 1735 	inc	hl
   473E                    1736 00114$:
   473E CB 2C         [ 8] 1737 	sra	h
   4740 CB 1D         [ 8] 1738 	rr	l
   4742 55            [ 4] 1739 	ld	d,l
   4743 DD 7E 07      [19] 1740 	ld	a,7 (ix)
   4746 5F            [ 4] 1741 	ld	e,a
   4747 87            [ 4] 1742 	add	a, a
   4748 87            [ 4] 1743 	add	a, a
   4749 83            [ 4] 1744 	add	a, e
   474A 87            [ 4] 1745 	add	a, a
   474B 82            [ 4] 1746 	add	a,d
   474C C5            [11] 1747 	push	bc
   474D 57            [ 4] 1748 	ld	d,a
   474E 1E 20         [ 7] 1749 	ld	e,#0x20
   4750 D5            [11] 1750 	push	de
   4751 21 00 C0      [10] 1751 	ld	hl,#0xC000
   4754 E5            [11] 1752 	push	hl
   4755 CD F4 5B      [17] 1753 	call	_cpct_getScreenPtr
   4758 C1            [10] 1754 	pop	bc
                           1755 ;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   4759 EB            [ 4] 1756 	ex	de,hl
   475A C5            [11] 1757 	push	bc
   475B 21 11 0A      [10] 1758 	ld	hl,#0x0A11
   475E E5            [11] 1759 	push	hl
   475F AF            [ 4] 1760 	xor	a, a
   4760 F5            [11] 1761 	push	af
   4761 33            [ 6] 1762 	inc	sp
   4762 D5            [11] 1763 	push	de
   4763 CD 3B 5B      [17] 1764 	call	_cpct_drawSolidBox
   4766 F1            [10] 1765 	pop	af
   4767 F1            [10] 1766 	pop	af
   4768 33            [ 6] 1767 	inc	sp
   4769 C1            [10] 1768 	pop	bc
                           1769 ;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
   476A 21 B0 36      [10] 1770 	ld	hl,#0x36B0
   476D                    1771 00108$:
   476D 2B            [ 6] 1772 	dec	hl
   476E 7C            [ 4] 1773 	ld	a,h
   476F B5            [ 4] 1774 	or	a,l
   4770 20 FB         [12] 1775 	jr	NZ,00108$
                           1776 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4772 3E CA         [ 7] 1777 	ld	a,#0xCA
   4774 91            [ 4] 1778 	sub	a, c
   4775 DD 77 FD      [19] 1779 	ld	-3 (ix),a
   4778 3E 00         [ 7] 1780 	ld	a,#0x00
   477A 98            [ 4] 1781 	sbc	a, b
   477B DD 77 FE      [19] 1782 	ld	-2 (ix), a
   477E 07            [ 4] 1783 	rlca
   477F E6 01         [ 7] 1784 	and	a,#0x01
   4781 5F            [ 4] 1785 	ld	e,a
   4782 21 00 00      [10] 1786 	ld	hl,#0x0000
   4785 E3            [19] 1787 	ex	(sp), hl
   4786                    1788 00110$:
   4786 DD 66 06      [19] 1789 	ld	h,6 (ix)
   4789 2E 00         [ 7] 1790 	ld	l,#0x00
   478B DD 7E FA      [19] 1791 	ld	a,-6 (ix)
   478E 94            [ 4] 1792 	sub	a, h
   478F DD 7E FB      [19] 1793 	ld	a,-5 (ix)
   4792 9D            [ 4] 1794 	sbc	a, l
   4793 E2 98 47      [10] 1795 	jp	PO, 00146$
   4796 EE 80         [ 7] 1796 	xor	a, #0x80
   4798                    1797 00146$:
   4798 F2 3E 48      [10] 1798 	jp	P,00112$
                           1799 ;src/includes/gui.h:97: if(i==iSelect)
   479B DD 56 07      [19] 1800 	ld	d,7 (ix)
   479E 06 00         [ 7] 1801 	ld	b,#0x00
   47A0 DD 7E FA      [19] 1802 	ld	a,-6 (ix)
   47A3 92            [ 4] 1803 	sub	a, d
   47A4 20 0A         [12] 1804 	jr	NZ,00103$
   47A6 DD 7E FB      [19] 1805 	ld	a,-5 (ix)
   47A9 90            [ 4] 1806 	sub	a, b
   47AA 20 04         [12] 1807 	jr	NZ,00103$
                           1808 ;src/includes/gui.h:98: penSelected = 1;
   47AC 0E 01         [ 7] 1809 	ld	c,#0x01
   47AE 18 02         [12] 1810 	jr	00104$
   47B0                    1811 00103$:
                           1812 ;src/includes/gui.h:100: penSelected = 0;
   47B0 0E 00         [ 7] 1813 	ld	c,#0x00
   47B2                    1814 00104$:
                           1815 ;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   47B2 DD 6E FD      [19] 1816 	ld	l,-3 (ix)
   47B5 DD 66 FE      [19] 1817 	ld	h,-2 (ix)
   47B8 7B            [ 4] 1818 	ld	a,e
   47B9 B7            [ 4] 1819 	or	a, a
   47BA 28 07         [12] 1820 	jr	Z,00115$
   47BC DD 6E FD      [19] 1821 	ld	l,-3 (ix)
   47BF DD 66 FE      [19] 1822 	ld	h,-2 (ix)
   47C2 23            [ 6] 1823 	inc	hl
   47C3                    1824 00115$:
   47C3 CB 2C         [ 8] 1825 	sra	h
   47C5 CB 1D         [ 8] 1826 	rr	l
   47C7 45            [ 4] 1827 	ld	b,l
   47C8 DD 6E FA      [19] 1828 	ld	l,-6 (ix)
   47CB D5            [11] 1829 	push	de
   47CC 5D            [ 4] 1830 	ld	e,l
   47CD 29            [11] 1831 	add	hl, hl
   47CE 29            [11] 1832 	add	hl, hl
   47CF 19            [11] 1833 	add	hl, de
   47D0 29            [11] 1834 	add	hl, hl
   47D1 D1            [10] 1835 	pop	de
   47D2 78            [ 4] 1836 	ld	a,b
   47D3 85            [ 4] 1837 	add	a, l
   47D4 DD 77 FC      [19] 1838 	ld	-4 (ix),a
   47D7 DD 56 FA      [19] 1839 	ld	d,-6 (ix)
   47DA DD 46 FB      [19] 1840 	ld	b,-5 (ix)
   47DD CB 22         [ 8] 1841 	sla	d
   47DF CB 10         [ 8] 1842 	rl	b
   47E1 DD 7E 04      [19] 1843 	ld	a,4 (ix)
   47E4 82            [ 4] 1844 	add	a, d
   47E5 57            [ 4] 1845 	ld	d,a
   47E6 DD 7E 05      [19] 1846 	ld	a,5 (ix)
   47E9 88            [ 4] 1847 	adc	a, b
   47EA 47            [ 4] 1848 	ld	b,a
   47EB 6A            [ 4] 1849 	ld	l, d
   47EC 60            [ 4] 1850 	ld	h, b
   47ED 7E            [ 7] 1851 	ld	a, (hl)
   47EE 23            [ 6] 1852 	inc	hl
   47EF 66            [ 7] 1853 	ld	h,(hl)
   47F0 6F            [ 4] 1854 	ld	l,a
   47F1 C5            [11] 1855 	push	bc
   47F2 D5            [11] 1856 	push	de
   47F3 E5            [11] 1857 	push	hl
   47F4 CD 1C 5B      [17] 1858 	call	_strlen
   47F7 F1            [10] 1859 	pop	af
   47F8 D1            [10] 1860 	pop	de
   47F9 C1            [10] 1861 	pop	bc
   47FA 3E 52         [ 7] 1862 	ld	a,#0x52
   47FC 95            [ 4] 1863 	sub	a, l
   47FD 6F            [ 4] 1864 	ld	l,a
   47FE 3E 00         [ 7] 1865 	ld	a,#0x00
   4800 9C            [ 4] 1866 	sbc	a, h
   4801 67            [ 4] 1867 	ld	h,a
   4802 CB 3C         [ 8] 1868 	srl	h
   4804 CB 1D         [ 8] 1869 	rr	l
   4806 DD 75 FF      [19] 1870 	ld	-1 (ix),l
   4809 C5            [11] 1871 	push	bc
   480A D5            [11] 1872 	push	de
   480B DD 66 FC      [19] 1873 	ld	h,-4 (ix)
   480E DD 6E FF      [19] 1874 	ld	l,-1 (ix)
   4811 E5            [11] 1875 	push	hl
   4812 21 00 C0      [10] 1876 	ld	hl,#0xC000
   4815 E5            [11] 1877 	push	hl
   4816 CD F4 5B      [17] 1878 	call	_cpct_getScreenPtr
   4819 D1            [10] 1879 	pop	de
   481A C1            [10] 1880 	pop	bc
   481B E5            [11] 1881 	push	hl
   481C FD E1         [14] 1882 	pop	iy
                           1883 ;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
   481E 6A            [ 4] 1884 	ld	l, d
   481F 60            [ 4] 1885 	ld	h, b
   4820 7E            [ 7] 1886 	ld	a, (hl)
   4821 23            [ 6] 1887 	inc	hl
   4822 66            [ 7] 1888 	ld	h,(hl)
   4823 6F            [ 4] 1889 	ld	l,a
   4824 D5            [11] 1890 	push	de
   4825 79            [ 4] 1891 	ld	a,c
   4826 F5            [11] 1892 	push	af
   4827 33            [ 6] 1893 	inc	sp
   4828 FD E5         [15] 1894 	push	iy
   482A E5            [11] 1895 	push	hl
   482B CD 0E 59      [17] 1896 	call	_cpct_drawStringM2
   482E F1            [10] 1897 	pop	af
   482F F1            [10] 1898 	pop	af
   4830 33            [ 6] 1899 	inc	sp
   4831 D1            [10] 1900 	pop	de
                           1901 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4832 DD 34 FA      [23] 1902 	inc	-6 (ix)
   4835 C2 86 47      [10] 1903 	jp	NZ,00110$
   4838 DD 34 FB      [23] 1904 	inc	-5 (ix)
   483B C3 86 47      [10] 1905 	jp	00110$
   483E                    1906 00112$:
   483E DD F9         [10] 1907 	ld	sp, ix
   4840 DD E1         [14] 1908 	pop	ix
   4842 C9            [10] 1909 	ret
                           1910 ;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
                           1911 ;	---------------------------------
                           1912 ; Function drawMenu
                           1913 ; ---------------------------------
   4843                    1914 _drawMenu::
   4843 DD E5         [15] 1915 	push	ix
   4845 DD 21 00 00   [14] 1916 	ld	ix,#0
   4849 DD 39         [15] 1917 	add	ix,sp
   484B F5            [11] 1918 	push	af
                           1919 ;src/includes/gui.h:110: u8 iSelect=0;
   484C 06 00         [ 7] 1920 	ld	b,#0x00
                           1921 ;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
   484E C5            [11] 1922 	push	bc
   484F 21 00 40      [10] 1923 	ld	hl,#0x4000
   4852 E5            [11] 1924 	push	hl
   4853 3E FF         [ 7] 1925 	ld	a,#0xFF
   4855 F5            [11] 1926 	push	af
   4856 33            [ 6] 1927 	inc	sp
   4857 26 C0         [ 7] 1928 	ld	h, #0xC0
   4859 E5            [11] 1929 	push	hl
   485A CD F5 5A      [17] 1930 	call	_cpct_memset
   485D C1            [10] 1931 	pop	bc
                           1932 ;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
   485E DD 5E 06      [19] 1933 	ld	e,6 (ix)
   4861 16 00         [ 7] 1934 	ld	d,#0x00
   4863 6B            [ 4] 1935 	ld	l, e
   4864 62            [ 4] 1936 	ld	h, d
   4865 29            [11] 1937 	add	hl, hl
   4866 19            [11] 1938 	add	hl, de
   4867 29            [11] 1939 	add	hl, hl
   4868 29            [11] 1940 	add	hl, hl
   4869 C5            [11] 1941 	push	bc
   486A E5            [11] 1942 	push	hl
   486B 21 1E 00      [10] 1943 	ld	hl,#0x001E
   486E E5            [11] 1944 	push	hl
   486F CD 79 45      [17] 1945 	call	_drawBoxM2
   4872 F1            [10] 1946 	pop	af
   4873 F1            [10] 1947 	pop	af
   4874 AF            [ 4] 1948 	xor	a, a
   4875 F5            [11] 1949 	push	af
   4876 33            [ 6] 1950 	inc	sp
   4877 DD 7E 06      [19] 1951 	ld	a,6 (ix)
   487A F5            [11] 1952 	push	af
   487B 33            [ 6] 1953 	inc	sp
   487C DD 6E 04      [19] 1954 	ld	l,4 (ix)
   487F DD 66 05      [19] 1955 	ld	h,5 (ix)
   4882 E5            [11] 1956 	push	hl
   4883 CD 13 47      [17] 1957 	call	_drawMenuEntry
   4886 F1            [10] 1958 	pop	af
   4887 F1            [10] 1959 	pop	af
   4888 C1            [10] 1960 	pop	bc
                           1961 ;src/includes/gui.h:118: do{
   4889 DD 4E 06      [19] 1962 	ld	c,6 (ix)
   488C 0D            [ 4] 1963 	dec	c
   488D                    1964 00111$:
                           1965 ;src/includes/gui.h:119: cpct_scanKeyboard(); 
   488D C5            [11] 1966 	push	bc
   488E CD 14 5C      [17] 1967 	call	_cpct_scanKeyboard
   4891 21 00 01      [10] 1968 	ld	hl,#0x0100
   4894 CD F6 58      [17] 1969 	call	_cpct_isKeyPressed
   4897 7D            [ 4] 1970 	ld	a,l
   4898 C1            [10] 1971 	pop	bc
   4899 B7            [ 4] 1972 	or	a, a
   489A 28 32         [12] 1973 	jr	Z,00105$
                           1974 ;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
   489C C5            [11] 1975 	push	bc
   489D C5            [11] 1976 	push	bc
   489E 33            [ 6] 1977 	inc	sp
   489F DD 7E 06      [19] 1978 	ld	a,6 (ix)
   48A2 F5            [11] 1979 	push	af
   48A3 33            [ 6] 1980 	inc	sp
   48A4 DD 6E 04      [19] 1981 	ld	l,4 (ix)
   48A7 DD 66 05      [19] 1982 	ld	h,5 (ix)
   48AA E5            [11] 1983 	push	hl
   48AB CD 59 46      [17] 1984 	call	_EraseMenuEntry
   48AE F1            [10] 1985 	pop	af
   48AF F1            [10] 1986 	pop	af
   48B0 C1            [10] 1987 	pop	bc
                           1988 ;src/includes/gui.h:125: if(iSelect ==0)
   48B1 78            [ 4] 1989 	ld	a,b
   48B2 B7            [ 4] 1990 	or	a, a
   48B3 20 03         [12] 1991 	jr	NZ,00102$
                           1992 ;src/includes/gui.h:126: iSelect = nbEntry-1;
   48B5 41            [ 4] 1993 	ld	b,c
   48B6 18 01         [12] 1994 	jr	00103$
   48B8                    1995 00102$:
                           1996 ;src/includes/gui.h:128: iSelect--;
   48B8 05            [ 4] 1997 	dec	b
   48B9                    1998 00103$:
                           1999 ;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
   48B9 C5            [11] 2000 	push	bc
   48BA C5            [11] 2001 	push	bc
   48BB 33            [ 6] 2002 	inc	sp
   48BC DD 7E 06      [19] 2003 	ld	a,6 (ix)
   48BF F5            [11] 2004 	push	af
   48C0 33            [ 6] 2005 	inc	sp
   48C1 DD 6E 04      [19] 2006 	ld	l,4 (ix)
   48C4 DD 66 05      [19] 2007 	ld	h,5 (ix)
   48C7 E5            [11] 2008 	push	hl
   48C8 CD 13 47      [17] 2009 	call	_drawMenuEntry
   48CB F1            [10] 2010 	pop	af
   48CC F1            [10] 2011 	pop	af
   48CD C1            [10] 2012 	pop	bc
   48CE                    2013 00105$:
                           2014 ;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
   48CE C5            [11] 2015 	push	bc
   48CF 21 00 04      [10] 2016 	ld	hl,#0x0400
   48D2 CD F6 58      [17] 2017 	call	_cpct_isKeyPressed
   48D5 5D            [ 4] 2018 	ld	e,l
   48D6 C1            [10] 2019 	pop	bc
   48D7 7B            [ 4] 2020 	ld	a,e
   48D8 B7            [ 4] 2021 	or	a, a
   48D9 28 48         [12] 2022 	jr	Z,00112$
                           2023 ;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
   48DB C5            [11] 2024 	push	bc
   48DC C5            [11] 2025 	push	bc
   48DD 33            [ 6] 2026 	inc	sp
   48DE DD 7E 06      [19] 2027 	ld	a,6 (ix)
   48E1 F5            [11] 2028 	push	af
   48E2 33            [ 6] 2029 	inc	sp
   48E3 DD 6E 04      [19] 2030 	ld	l,4 (ix)
   48E6 DD 66 05      [19] 2031 	ld	h,5 (ix)
   48E9 E5            [11] 2032 	push	hl
   48EA CD 59 46      [17] 2033 	call	_EraseMenuEntry
   48ED F1            [10] 2034 	pop	af
   48EE F1            [10] 2035 	pop	af
   48EF C1            [10] 2036 	pop	bc
                           2037 ;src/includes/gui.h:137: if(iSelect == nbEntry-1)
   48F0 DD 5E 06      [19] 2038 	ld	e,6 (ix)
   48F3 16 00         [ 7] 2039 	ld	d,#0x00
   48F5 1B            [ 6] 2040 	dec	de
   48F6 DD 70 FE      [19] 2041 	ld	-2 (ix),b
   48F9 DD 36 FF 00   [19] 2042 	ld	-1 (ix),#0x00
   48FD 7B            [ 4] 2043 	ld	a,e
   48FE DD 96 FE      [19] 2044 	sub	a, -2 (ix)
   4901 20 0A         [12] 2045 	jr	NZ,00107$
   4903 7A            [ 4] 2046 	ld	a,d
   4904 DD 96 FF      [19] 2047 	sub	a, -1 (ix)
   4907 20 04         [12] 2048 	jr	NZ,00107$
                           2049 ;src/includes/gui.h:138: iSelect = 0;
   4909 06 00         [ 7] 2050 	ld	b,#0x00
   490B 18 01         [12] 2051 	jr	00108$
   490D                    2052 00107$:
                           2053 ;src/includes/gui.h:140: iSelect++;
   490D 04            [ 4] 2054 	inc	b
   490E                    2055 00108$:
                           2056 ;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
   490E C5            [11] 2057 	push	bc
   490F C5            [11] 2058 	push	bc
   4910 33            [ 6] 2059 	inc	sp
   4911 DD 7E 06      [19] 2060 	ld	a,6 (ix)
   4914 F5            [11] 2061 	push	af
   4915 33            [ 6] 2062 	inc	sp
   4916 DD 6E 04      [19] 2063 	ld	l,4 (ix)
   4919 DD 66 05      [19] 2064 	ld	h,5 (ix)
   491C E5            [11] 2065 	push	hl
   491D CD 13 47      [17] 2066 	call	_drawMenuEntry
   4920 F1            [10] 2067 	pop	af
   4921 F1            [10] 2068 	pop	af
   4922 C1            [10] 2069 	pop	bc
   4923                    2070 00112$:
                           2071 ;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
   4923 C5            [11] 2072 	push	bc
   4924 21 02 04      [10] 2073 	ld	hl,#0x0402
   4927 CD F6 58      [17] 2074 	call	_cpct_isKeyPressed
   492A 7D            [ 4] 2075 	ld	a,l
   492B C1            [10] 2076 	pop	bc
   492C B7            [ 4] 2077 	or	a, a
   492D CA 8D 48      [10] 2078 	jp	Z,00111$
                           2079 ;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
   4930 21 B0 36      [10] 2080 	ld	hl,#0x36B0
   4933                    2081 00117$:
   4933 EB            [ 4] 2082 	ex	de,hl
   4934 1B            [ 6] 2083 	dec	de
   4935 6B            [ 4] 2084 	ld	l, e
   4936 7A            [ 4] 2085 	ld	a,d
   4937 67            [ 4] 2086 	ld	h,a
   4938 B3            [ 4] 2087 	or	a,e
   4939 20 F8         [12] 2088 	jr	NZ,00117$
                           2089 ;src/includes/gui.h:150: return iSelect;
   493B 68            [ 4] 2090 	ld	l,b
   493C DD F9         [10] 2091 	ld	sp, ix
   493E DD E1         [14] 2092 	pop	ix
   4940 C9            [10] 2093 	ret
                           2094 ;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           2095 ;	---------------------------------
                           2096 ; Function drawWindow
                           2097 ; ---------------------------------
   4941                    2098 _drawWindow::
   4941 DD E5         [15] 2099 	push	ix
   4943 DD 21 00 00   [14] 2100 	ld	ix,#0
   4947 DD 39         [15] 2101 	add	ix,sp
   4949 21 F5 FF      [10] 2102 	ld	hl,#-11
   494C 39            [11] 2103 	add	hl,sp
   494D F9            [ 6] 2104 	ld	sp,hl
                           2105 ;src/includes/gui.h:164: u8 valueReturn=0;
   494E DD 36 F5 00   [19] 2106 	ld	-11 (ix),#0x00
                           2107 ;src/includes/gui.h:167: if(button == 0)
   4952 DD 7E 07      [19] 2108 	ld	a,7 (ix)
   4955 B7            [ 4] 2109 	or	a, a
   4956 20 05         [12] 2110 	jr	NZ,00102$
                           2111 ;src/includes/gui.h:168: buttonTxt = "<OK>";
   4958 11 CA 4A      [10] 2112 	ld	de,#___str_0
   495B 18 03         [12] 2113 	jr	00103$
   495D                    2114 00102$:
                           2115 ;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
   495D 11 CF 4A      [10] 2116 	ld	de,#___str_1+0
   4960                    2117 00103$:
                           2118 ;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
   4960 DD 4E 06      [19] 2119 	ld	c,6 (ix)
   4963 06 00         [ 7] 2120 	ld	b,#0x00
   4965 03            [ 6] 2121 	inc	bc
   4966 03            [ 6] 2122 	inc	bc
   4967 69            [ 4] 2123 	ld	l, c
   4968 60            [ 4] 2124 	ld	h, b
   4969 29            [11] 2125 	add	hl, hl
   496A 09            [11] 2126 	add	hl, bc
   496B 29            [11] 2127 	add	hl, hl
   496C 29            [11] 2128 	add	hl, hl
   496D C5            [11] 2129 	push	bc
   496E D5            [11] 2130 	push	de
   496F E5            [11] 2131 	push	hl
   4970 21 32 00      [10] 2132 	ld	hl,#0x0032
   4973 E5            [11] 2133 	push	hl
   4974 CD 79 45      [17] 2134 	call	_drawBoxM2
   4977 F1            [10] 2135 	pop	af
   4978 F1            [10] 2136 	pop	af
   4979 D1            [10] 2137 	pop	de
   497A C1            [10] 2138 	pop	bc
                           2139 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   497B 69            [ 4] 2140 	ld	l, c
   497C 60            [ 4] 2141 	ld	h, b
   497D 29            [11] 2142 	add	hl, hl
   497E 29            [11] 2143 	add	hl, hl
   497F 09            [11] 2144 	add	hl, bc
   4980 29            [11] 2145 	add	hl, hl
   4981 3E CA         [ 7] 2146 	ld	a,#0xCA
   4983 95            [ 4] 2147 	sub	a, l
   4984 DD 77 FD      [19] 2148 	ld	-3 (ix),a
   4987 3E 00         [ 7] 2149 	ld	a,#0x00
   4989 9C            [ 4] 2150 	sbc	a, h
   498A DD 77 FE      [19] 2151 	ld	-2 (ix), a
   498D 07            [ 4] 2152 	rlca
   498E E6 01         [ 7] 2153 	and	a,#0x01
   4990 DD 77 FF      [19] 2154 	ld	-1 (ix),a
   4993 DD 36 F6 00   [19] 2155 	ld	-10 (ix),#0x00
   4997 DD 36 FC 00   [19] 2156 	ld	-4 (ix),#0x00
   499B                    2157 00114$:
                           2158 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   499B DD 7E FD      [19] 2159 	ld	a,-3 (ix)
   499E C6 01         [ 7] 2160 	add	a, #0x01
   49A0 DD 77 FA      [19] 2161 	ld	-6 (ix),a
   49A3 DD 7E FE      [19] 2162 	ld	a,-2 (ix)
   49A6 CE 00         [ 7] 2163 	adc	a, #0x00
   49A8 DD 77 FB      [19] 2164 	ld	-5 (ix),a
                           2165 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   49AB DD 7E F6      [19] 2166 	ld	a,-10 (ix)
   49AE DD 96 06      [19] 2167 	sub	a, 6 (ix)
   49B1 D2 3D 4A      [10] 2168 	jp	NC,00104$
                           2169 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   49B4 DD 6E FD      [19] 2170 	ld	l,-3 (ix)
   49B7 DD 66 FE      [19] 2171 	ld	h,-2 (ix)
   49BA DD 7E FF      [19] 2172 	ld	a,-1 (ix)
   49BD B7            [ 4] 2173 	or	a, a
   49BE 28 06         [12] 2174 	jr	Z,00118$
   49C0 DD 6E FA      [19] 2175 	ld	l,-6 (ix)
   49C3 DD 66 FB      [19] 2176 	ld	h,-5 (ix)
   49C6                    2177 00118$:
   49C6 CB 2C         [ 8] 2178 	sra	h
   49C8 CB 1D         [ 8] 2179 	rr	l
   49CA DD 66 FC      [19] 2180 	ld	h,-4 (ix)
   49CD 7D            [ 4] 2181 	ld	a,l
   49CE 84            [ 4] 2182 	add	a, h
   49CF DD 77 F9      [19] 2183 	ld	-7 (ix),a
   49D2 DD 6E F6      [19] 2184 	ld	l,-10 (ix)
   49D5 26 00         [ 7] 2185 	ld	h,#0x00
   49D7 29            [11] 2186 	add	hl, hl
   49D8 45            [ 4] 2187 	ld	b,l
   49D9 4C            [ 4] 2188 	ld	c,h
   49DA DD 7E 04      [19] 2189 	ld	a,4 (ix)
   49DD 80            [ 4] 2190 	add	a, b
   49DE DD 77 F7      [19] 2191 	ld	-9 (ix),a
   49E1 DD 7E 05      [19] 2192 	ld	a,5 (ix)
   49E4 89            [ 4] 2193 	adc	a, c
   49E5 DD 77 F8      [19] 2194 	ld	-8 (ix),a
   49E8 DD 6E F7      [19] 2195 	ld	l,-9 (ix)
   49EB DD 66 F8      [19] 2196 	ld	h,-8 (ix)
   49EE 4E            [ 7] 2197 	ld	c,(hl)
   49EF 23            [ 6] 2198 	inc	hl
   49F0 46            [ 7] 2199 	ld	b,(hl)
   49F1 D5            [11] 2200 	push	de
   49F2 C5            [11] 2201 	push	bc
   49F3 CD 1C 5B      [17] 2202 	call	_strlen
   49F6 F1            [10] 2203 	pop	af
   49F7 D1            [10] 2204 	pop	de
   49F8 3E 52         [ 7] 2205 	ld	a,#0x52
   49FA 95            [ 4] 2206 	sub	a, l
   49FB 6F            [ 4] 2207 	ld	l,a
   49FC 3E 00         [ 7] 2208 	ld	a,#0x00
   49FE 9C            [ 4] 2209 	sbc	a, h
   49FF 67            [ 4] 2210 	ld	h,a
   4A00 CB 3C         [ 8] 2211 	srl	h
   4A02 CB 1D         [ 8] 2212 	rr	l
   4A04 45            [ 4] 2213 	ld	b,l
   4A05 D5            [11] 2214 	push	de
   4A06 DD 7E F9      [19] 2215 	ld	a,-7 (ix)
   4A09 F5            [11] 2216 	push	af
   4A0A 33            [ 6] 2217 	inc	sp
   4A0B C5            [11] 2218 	push	bc
   4A0C 33            [ 6] 2219 	inc	sp
   4A0D 21 00 C0      [10] 2220 	ld	hl,#0xC000
   4A10 E5            [11] 2221 	push	hl
   4A11 CD F4 5B      [17] 2222 	call	_cpct_getScreenPtr
   4A14 D1            [10] 2223 	pop	de
   4A15 E5            [11] 2224 	push	hl
   4A16 FD E1         [14] 2225 	pop	iy
                           2226 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4A18 DD 6E F7      [19] 2227 	ld	l,-9 (ix)
   4A1B DD 66 F8      [19] 2228 	ld	h,-8 (ix)
   4A1E 4E            [ 7] 2229 	ld	c,(hl)
   4A1F 23            [ 6] 2230 	inc	hl
   4A20 46            [ 7] 2231 	ld	b,(hl)
   4A21 D5            [11] 2232 	push	de
   4A22 AF            [ 4] 2233 	xor	a, a
   4A23 F5            [11] 2234 	push	af
   4A24 33            [ 6] 2235 	inc	sp
   4A25 FD E5         [15] 2236 	push	iy
   4A27 C5            [11] 2237 	push	bc
   4A28 CD 0E 59      [17] 2238 	call	_cpct_drawStringM2
   4A2B F1            [10] 2239 	pop	af
   4A2C F1            [10] 2240 	pop	af
   4A2D 33            [ 6] 2241 	inc	sp
   4A2E D1            [10] 2242 	pop	de
                           2243 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4A2F DD 7E FC      [19] 2244 	ld	a,-4 (ix)
   4A32 C6 0A         [ 7] 2245 	add	a, #0x0A
   4A34 DD 77 FC      [19] 2246 	ld	-4 (ix),a
   4A37 DD 34 F6      [23] 2247 	inc	-10 (ix)
   4A3A C3 9B 49      [10] 2248 	jp	00114$
   4A3D                    2249 00104$:
                           2250 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4A3D DD 46 FD      [19] 2251 	ld	b,-3 (ix)
   4A40 DD 66 FE      [19] 2252 	ld	h,-2 (ix)
   4A43 DD 7E FF      [19] 2253 	ld	a,-1 (ix)
   4A46 B7            [ 4] 2254 	or	a, a
   4A47 28 06         [12] 2255 	jr	Z,00119$
   4A49 DD 46 FA      [19] 2256 	ld	b,-6 (ix)
   4A4C DD 66 FB      [19] 2257 	ld	h,-5 (ix)
   4A4F                    2258 00119$:
   4A4F CB 2C         [ 8] 2259 	sra	h
   4A51 CB 18         [ 8] 2260 	rr	b
   4A53 DD 4E 06      [19] 2261 	ld	c,6 (ix)
   4A56 0C            [ 4] 2262 	inc	c
   4A57 79            [ 4] 2263 	ld	a,c
   4A58 87            [ 4] 2264 	add	a, a
   4A59 87            [ 4] 2265 	add	a, a
   4A5A 81            [ 4] 2266 	add	a, c
   4A5B 87            [ 4] 2267 	add	a, a
   4A5C 67            [ 4] 2268 	ld	h, a
   4A5D 80            [ 4] 2269 	add	a,b
   4A5E 47            [ 4] 2270 	ld	b,a
   4A5F C5            [11] 2271 	push	bc
   4A60 D5            [11] 2272 	push	de
   4A61 D5            [11] 2273 	push	de
   4A62 CD 1C 5B      [17] 2274 	call	_strlen
   4A65 F1            [10] 2275 	pop	af
   4A66 D1            [10] 2276 	pop	de
   4A67 C1            [10] 2277 	pop	bc
   4A68 3E 52         [ 7] 2278 	ld	a,#0x52
   4A6A 95            [ 4] 2279 	sub	a, l
   4A6B 6F            [ 4] 2280 	ld	l,a
   4A6C 3E 00         [ 7] 2281 	ld	a,#0x00
   4A6E 9C            [ 4] 2282 	sbc	a, h
   4A6F 67            [ 4] 2283 	ld	h,a
   4A70 CB 3C         [ 8] 2284 	srl	h
   4A72 CB 1D         [ 8] 2285 	rr	l
   4A74 7D            [ 4] 2286 	ld	a,l
   4A75 D5            [11] 2287 	push	de
   4A76 C5            [11] 2288 	push	bc
   4A77 33            [ 6] 2289 	inc	sp
   4A78 F5            [11] 2290 	push	af
   4A79 33            [ 6] 2291 	inc	sp
   4A7A 21 00 C0      [10] 2292 	ld	hl,#0xC000
   4A7D E5            [11] 2293 	push	hl
   4A7E CD F4 5B      [17] 2294 	call	_cpct_getScreenPtr
   4A81 D1            [10] 2295 	pop	de
                           2296 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4A82 4D            [ 4] 2297 	ld	c, l
   4A83 44            [ 4] 2298 	ld	b, h
   4A84 AF            [ 4] 2299 	xor	a, a
   4A85 F5            [11] 2300 	push	af
   4A86 33            [ 6] 2301 	inc	sp
   4A87 C5            [11] 2302 	push	bc
   4A88 D5            [11] 2303 	push	de
   4A89 CD 0E 59      [17] 2304 	call	_cpct_drawStringM2
   4A8C F1            [10] 2305 	pop	af
   4A8D F1            [10] 2306 	pop	af
   4A8E 33            [ 6] 2307 	inc	sp
                           2308 ;src/includes/gui.h:184: do{
   4A8F                    2309 00110$:
                           2310 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4A8F CD 14 5C      [17] 2311 	call	_cpct_scanKeyboard
                           2312 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4A92 21 02 04      [10] 2313 	ld	hl,#0x0402
   4A95 CD F6 58      [17] 2314 	call	_cpct_isKeyPressed
   4A98 7D            [ 4] 2315 	ld	a,l
   4A99 B7            [ 4] 2316 	or	a, a
   4A9A 28 04         [12] 2317 	jr	Z,00106$
                           2318 ;src/includes/gui.h:188: valueReturn=1;
   4A9C DD 36 F5 01   [19] 2319 	ld	-11 (ix),#0x01
   4AA0                    2320 00106$:
                           2321 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4AA0 21 08 04      [10] 2322 	ld	hl,#0x0408
   4AA3 CD F6 58      [17] 2323 	call	_cpct_isKeyPressed
   4AA6 7D            [ 4] 2324 	ld	a,l
   4AA7 B7            [ 4] 2325 	or	a, a
   4AA8 28 04         [12] 2326 	jr	Z,00111$
                           2327 ;src/includes/gui.h:191: valueReturn=0;
   4AAA DD 36 F5 00   [19] 2328 	ld	-11 (ix),#0x00
   4AAE                    2329 00111$:
                           2330 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4AAE 21 02 04      [10] 2331 	ld	hl,#0x0402
   4AB1 CD F6 58      [17] 2332 	call	_cpct_isKeyPressed
   4AB4 7D            [ 4] 2333 	ld	a,l
   4AB5 B7            [ 4] 2334 	or	a, a
   4AB6 20 0A         [12] 2335 	jr	NZ,00112$
   4AB8 21 08 04      [10] 2336 	ld	hl,#0x0408
   4ABB CD F6 58      [17] 2337 	call	_cpct_isKeyPressed
   4ABE 7D            [ 4] 2338 	ld	a,l
   4ABF B7            [ 4] 2339 	or	a, a
   4AC0 28 CD         [12] 2340 	jr	Z,00110$
   4AC2                    2341 00112$:
                           2342 ;src/includes/gui.h:195: return valueReturn;
   4AC2 DD 6E F5      [19] 2343 	ld	l,-11 (ix)
   4AC5 DD F9         [10] 2344 	ld	sp, ix
   4AC7 DD E1         [14] 2345 	pop	ix
   4AC9 C9            [10] 2346 	ret
   4ACA                    2347 ___str_0:
   4ACA 3C 4F 4B 3E        2348 	.ascii "<OK>"
   4ACE 00                 2349 	.db 0x00
   4ACF                    2350 ___str_1:
   4ACF 3C 4F 4B 3E 20 20  2351 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   4ADD 00                 2352 	.db 0x00
                           2353 ;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
                           2354 ;	---------------------------------
                           2355 ; Function drawCursor
                           2356 ; ---------------------------------
   4ADE                    2357 _drawCursor::
   4ADE DD E5         [15] 2358 	push	ix
   4AE0 DD 21 00 00   [14] 2359 	ld	ix,#0
   4AE4 DD 39         [15] 2360 	add	ix,sp
   4AE6 F5            [11] 2361 	push	af
                           2362 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4AE7 DD 7E 05      [19] 2363 	ld	a,5 (ix)
   4AEA 07            [ 4] 2364 	rlca
   4AEB 07            [ 4] 2365 	rlca
   4AEC 07            [ 4] 2366 	rlca
   4AED 07            [ 4] 2367 	rlca
   4AEE E6 F0         [ 7] 2368 	and	a,#0xF0
   4AF0 DD 77 FF      [19] 2369 	ld	-1 (ix),a
   4AF3 DD 7E 04      [19] 2370 	ld	a,4 (ix)
   4AF6 87            [ 4] 2371 	add	a, a
   4AF7 87            [ 4] 2372 	add	a, a
   4AF8 DD 77 FE      [19] 2373 	ld	-2 (ix),a
   4AFB DD 66 FF      [19] 2374 	ld	h,-1 (ix)
   4AFE DD 6E FE      [19] 2375 	ld	l,-2 (ix)
   4B01 E5            [11] 2376 	push	hl
   4B02 21 00 C0      [10] 2377 	ld	hl,#0xC000
   4B05 E5            [11] 2378 	push	hl
   4B06 CD F4 5B      [17] 2379 	call	_cpct_getScreenPtr
   4B09 4D            [ 4] 2380 	ld	c, l
   4B0A 44            [ 4] 2381 	ld	b, h
                           2382 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4B0B 3E 06         [ 7] 2383 	ld	a,#0x06
   4B0D FD 21 A1 6B   [14] 2384 	ld	iy,#_CURSOR_MODE
   4B11 FD 96 00      [19] 2385 	sub	a, 0 (iy)
   4B14 DA 54 4C      [10] 2386 	jp	C,00109$
                           2387 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
                           2388 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4B17 FD 21 A1 6B   [14] 2389 	ld	iy,#_CURSOR_MODE
   4B1B FD 5E 00      [19] 2390 	ld	e,0 (iy)
   4B1E 16 00         [ 7] 2391 	ld	d,#0x00
   4B20 21 27 4B      [10] 2392 	ld	hl,#00115$
   4B23 19            [11] 2393 	add	hl,de
   4B24 19            [11] 2394 	add	hl,de
   4B25 19            [11] 2395 	add	hl,de
   4B26 E9            [ 4] 2396 	jp	(hl)
   4B27                    2397 00115$:
   4B27 C3 3C 4B      [10] 2398 	jp	00101$
   4B2A C3 02 4C      [10] 2399 	jp	00102$
   4B2D C3 10 4C      [10] 2400 	jp	00103$
   4B30 C3 1E 4C      [10] 2401 	jp	00104$
   4B33 C3 2C 4C      [10] 2402 	jp	00105$
   4B36 C3 3A 4C      [10] 2403 	jp	00106$
   4B39 C3 48 4C      [10] 2404 	jp	00107$
                           2405 ;src/includes/world.h:8: case NONE:
   4B3C                    2406 00101$:
                           2407 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4B3C C5            [11] 2408 	push	bc
   4B3D DD 66 06      [19] 2409 	ld	h,6 (ix)
   4B40 DD 6E 06      [19] 2410 	ld	l,6 (ix)
   4B43 E5            [11] 2411 	push	hl
   4B44 DD 66 06      [19] 2412 	ld	h,6 (ix)
   4B47 DD 6E 06      [19] 2413 	ld	l,6 (ix)
   4B4A E5            [11] 2414 	push	hl
   4B4B CD 03 5B      [17] 2415 	call	_cpct_px2byteM1
   4B4E F1            [10] 2416 	pop	af
   4B4F F1            [10] 2417 	pop	af
   4B50 65            [ 4] 2418 	ld	h,l
   4B51 C1            [10] 2419 	pop	bc
   4B52 11 04 00      [10] 2420 	ld	de,#0x0004
   4B55 D5            [11] 2421 	push	de
   4B56 E5            [11] 2422 	push	hl
   4B57 33            [ 6] 2423 	inc	sp
   4B58 C5            [11] 2424 	push	bc
   4B59 CD F5 5A      [17] 2425 	call	_cpct_memset
                           2426 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4B5C DD 66 FF      [19] 2427 	ld	h,-1 (ix)
   4B5F 24            [ 4] 2428 	inc	h
   4B60 E5            [11] 2429 	push	hl
   4B61 33            [ 6] 2430 	inc	sp
   4B62 DD 7E FE      [19] 2431 	ld	a,-2 (ix)
   4B65 F5            [11] 2432 	push	af
   4B66 33            [ 6] 2433 	inc	sp
   4B67 21 00 C0      [10] 2434 	ld	hl,#0xC000
   4B6A E5            [11] 2435 	push	hl
   4B6B CD F4 5B      [17] 2436 	call	_cpct_getScreenPtr
                           2437 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4B6E E5            [11] 2438 	push	hl
   4B6F DD 66 06      [19] 2439 	ld	h,6 (ix)
   4B72 DD 6E 06      [19] 2440 	ld	l,6 (ix)
   4B75 E5            [11] 2441 	push	hl
   4B76 DD 66 06      [19] 2442 	ld	h,6 (ix)
   4B79 DD 6E 06      [19] 2443 	ld	l,6 (ix)
   4B7C E5            [11] 2444 	push	hl
   4B7D CD 03 5B      [17] 2445 	call	_cpct_px2byteM1
   4B80 F1            [10] 2446 	pop	af
   4B81 F1            [10] 2447 	pop	af
   4B82 4D            [ 4] 2448 	ld	c,l
   4B83 D1            [10] 2449 	pop	de
   4B84 21 04 00      [10] 2450 	ld	hl,#0x0004
   4B87 E5            [11] 2451 	push	hl
   4B88 79            [ 4] 2452 	ld	a,c
   4B89 F5            [11] 2453 	push	af
   4B8A 33            [ 6] 2454 	inc	sp
   4B8B D5            [11] 2455 	push	de
   4B8C CD F5 5A      [17] 2456 	call	_cpct_memset
                           2457 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4B8F DD 7E 05      [19] 2458 	ld	a,5 (ix)
   4B92 3C            [ 4] 2459 	inc	a
   4B93 07            [ 4] 2460 	rlca
   4B94 07            [ 4] 2461 	rlca
   4B95 07            [ 4] 2462 	rlca
   4B96 07            [ 4] 2463 	rlca
   4B97 E6 F0         [ 7] 2464 	and	a,#0xF0
   4B99 DD 77 FF      [19] 2465 	ld	-1 (ix), a
   4B9C 67            [ 4] 2466 	ld	h, a
   4B9D 25            [ 4] 2467 	dec	h
   4B9E E5            [11] 2468 	push	hl
   4B9F 33            [ 6] 2469 	inc	sp
   4BA0 DD 7E FE      [19] 2470 	ld	a,-2 (ix)
   4BA3 F5            [11] 2471 	push	af
   4BA4 33            [ 6] 2472 	inc	sp
   4BA5 21 00 C0      [10] 2473 	ld	hl,#0xC000
   4BA8 E5            [11] 2474 	push	hl
   4BA9 CD F4 5B      [17] 2475 	call	_cpct_getScreenPtr
                           2476 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4BAC E5            [11] 2477 	push	hl
   4BAD DD 66 06      [19] 2478 	ld	h,6 (ix)
   4BB0 DD 6E 06      [19] 2479 	ld	l,6 (ix)
   4BB3 E5            [11] 2480 	push	hl
   4BB4 DD 66 06      [19] 2481 	ld	h,6 (ix)
   4BB7 DD 6E 06      [19] 2482 	ld	l,6 (ix)
   4BBA E5            [11] 2483 	push	hl
   4BBB CD 03 5B      [17] 2484 	call	_cpct_px2byteM1
   4BBE F1            [10] 2485 	pop	af
   4BBF F1            [10] 2486 	pop	af
   4BC0 4D            [ 4] 2487 	ld	c,l
   4BC1 D1            [10] 2488 	pop	de
   4BC2 21 04 00      [10] 2489 	ld	hl,#0x0004
   4BC5 E5            [11] 2490 	push	hl
   4BC6 79            [ 4] 2491 	ld	a,c
   4BC7 F5            [11] 2492 	push	af
   4BC8 33            [ 6] 2493 	inc	sp
   4BC9 D5            [11] 2494 	push	de
   4BCA CD F5 5A      [17] 2495 	call	_cpct_memset
                           2496 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4BCD DD 66 FF      [19] 2497 	ld	h,-1 (ix)
   4BD0 25            [ 4] 2498 	dec	h
   4BD1 25            [ 4] 2499 	dec	h
   4BD2 E5            [11] 2500 	push	hl
   4BD3 33            [ 6] 2501 	inc	sp
   4BD4 DD 7E FE      [19] 2502 	ld	a,-2 (ix)
   4BD7 F5            [11] 2503 	push	af
   4BD8 33            [ 6] 2504 	inc	sp
   4BD9 21 00 C0      [10] 2505 	ld	hl,#0xC000
   4BDC E5            [11] 2506 	push	hl
   4BDD CD F4 5B      [17] 2507 	call	_cpct_getScreenPtr
                           2508 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4BE0 E5            [11] 2509 	push	hl
   4BE1 DD 66 06      [19] 2510 	ld	h,6 (ix)
   4BE4 DD 6E 06      [19] 2511 	ld	l,6 (ix)
   4BE7 E5            [11] 2512 	push	hl
   4BE8 DD 66 06      [19] 2513 	ld	h,6 (ix)
   4BEB DD 6E 06      [19] 2514 	ld	l,6 (ix)
   4BEE E5            [11] 2515 	push	hl
   4BEF CD 03 5B      [17] 2516 	call	_cpct_px2byteM1
   4BF2 F1            [10] 2517 	pop	af
   4BF3 F1            [10] 2518 	pop	af
   4BF4 65            [ 4] 2519 	ld	h,l
   4BF5 D1            [10] 2520 	pop	de
   4BF6 01 04 00      [10] 2521 	ld	bc,#0x0004
   4BF9 C5            [11] 2522 	push	bc
   4BFA E5            [11] 2523 	push	hl
   4BFB 33            [ 6] 2524 	inc	sp
   4BFC D5            [11] 2525 	push	de
   4BFD CD F5 5A      [17] 2526 	call	_cpct_memset
                           2527 ;src/includes/world.h:18: break;
   4C00 18 52         [12] 2528 	jr	00109$
                           2529 ;src/includes/world.h:19: case T_SSNS:
   4C02                    2530 00102$:
                           2531 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C02 11 A9 42      [10] 2532 	ld	de,#_station_small_ns
   4C05 21 04 10      [10] 2533 	ld	hl,#0x1004
   4C08 E5            [11] 2534 	push	hl
   4C09 C5            [11] 2535 	push	bc
   4C0A D5            [11] 2536 	push	de
   4C0B CD 2F 59      [17] 2537 	call	_cpct_drawSprite
                           2538 ;src/includes/world.h:21: break;
   4C0E 18 44         [12] 2539 	jr	00109$
                           2540 ;src/includes/world.h:23: case T_SSEW:
   4C10                    2541 00103$:
                           2542 ;src/includes/world.h:24: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C10 11 E9 42      [10] 2543 	ld	de,#_station_small_ew
   4C13 21 04 10      [10] 2544 	ld	hl,#0x1004
   4C16 E5            [11] 2545 	push	hl
   4C17 C5            [11] 2546 	push	bc
   4C18 D5            [11] 2547 	push	de
   4C19 CD 2F 59      [17] 2548 	call	_cpct_drawSprite
                           2549 ;src/includes/world.h:25: break;
   4C1C 18 36         [12] 2550 	jr	00109$
                           2551 ;src/includes/world.h:26: case T_SMNS:
   4C1E                    2552 00104$:
                           2553 ;src/includes/world.h:27: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C1E 11 29 43      [10] 2554 	ld	de,#_station_medium_ns
   4C21 21 04 10      [10] 2555 	ld	hl,#0x1004
   4C24 E5            [11] 2556 	push	hl
   4C25 C5            [11] 2557 	push	bc
   4C26 D5            [11] 2558 	push	de
   4C27 CD 2F 59      [17] 2559 	call	_cpct_drawSprite
                           2560 ;src/includes/world.h:28: break;
   4C2A 18 28         [12] 2561 	jr	00109$
                           2562 ;src/includes/world.h:29: case T_SMEW:
   4C2C                    2563 00105$:
                           2564 ;src/includes/world.h:30: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C2C 11 69 43      [10] 2565 	ld	de,#_station_medium_ew
   4C2F 21 04 10      [10] 2566 	ld	hl,#0x1004
   4C32 E5            [11] 2567 	push	hl
   4C33 C5            [11] 2568 	push	bc
   4C34 D5            [11] 2569 	push	de
   4C35 CD 2F 59      [17] 2570 	call	_cpct_drawSprite
                           2571 ;src/includes/world.h:31: break;
   4C38 18 1A         [12] 2572 	jr	00109$
                           2573 ;src/includes/world.h:32: case T_SLNS:
   4C3A                    2574 00106$:
                           2575 ;src/includes/world.h:33: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C3A 11 A9 43      [10] 2576 	ld	de,#_station_large_ns
   4C3D 21 04 10      [10] 2577 	ld	hl,#0x1004
   4C40 E5            [11] 2578 	push	hl
   4C41 C5            [11] 2579 	push	bc
   4C42 D5            [11] 2580 	push	de
   4C43 CD 2F 59      [17] 2581 	call	_cpct_drawSprite
                           2582 ;src/includes/world.h:34: break;
   4C46 18 0C         [12] 2583 	jr	00109$
                           2584 ;src/includes/world.h:35: case T_SLEW:
   4C48                    2585 00107$:
                           2586 ;src/includes/world.h:36: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C48 11 E9 43      [10] 2587 	ld	de,#_station_large_ew
   4C4B 21 04 10      [10] 2588 	ld	hl,#0x1004
   4C4E E5            [11] 2589 	push	hl
   4C4F C5            [11] 2590 	push	bc
   4C50 D5            [11] 2591 	push	de
   4C51 CD 2F 59      [17] 2592 	call	_cpct_drawSprite
                           2593 ;src/includes/world.h:38: }
   4C54                    2594 00109$:
   4C54 DD F9         [10] 2595 	ld	sp, ix
   4C56 DD E1         [14] 2596 	pop	ix
   4C58 C9            [10] 2597 	ret
                           2598 ;src/includes/world.h:41: void generateWorld()
                           2599 ;	---------------------------------
                           2600 ; Function generateWorld
                           2601 ; ---------------------------------
   4C59                    2602 _generateWorld::
   4C59 DD E5         [15] 2603 	push	ix
   4C5B DD 21 00 00   [14] 2604 	ld	ix,#0
   4C5F DD 39         [15] 2605 	add	ix,sp
   4C61 F5            [11] 2606 	push	af
   4C62 F5            [11] 2607 	push	af
                           2608 ;src/includes/world.h:49: cpct_setRandomSeedUniform_u8(0);
   4C63 2E 00         [ 7] 2609 	ld	l,#0x00
   4C65 CD DA 58      [17] 2610 	call	_cpct_setRandomSeedUniform_u8
                           2611 ;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4C68 11 00 00      [10] 2612 	ld	de,#0x0000
   4C6B                    2613 00114$:
                           2614 ;src/includes/world.h:53: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   4C6B 21 A1 5C      [10] 2615 	ld	hl,#_p_world
   4C6E 19            [11] 2616 	add	hl,de
   4C6F E5            [11] 2617 	push	hl
   4C70 D5            [11] 2618 	push	de
   4C71 2E 00         [ 7] 2619 	ld	l,#0x00
   4C73 CD B6 5A      [17] 2620 	call	_cpct_getRandomUniform_u8_f
   4C76 7D            [ 4] 2621 	ld	a,l
   4C77 D1            [10] 2622 	pop	de
   4C78 E1            [10] 2623 	pop	hl
   4C79 E6 01         [ 7] 2624 	and	a, #0x01
   4C7B 77            [ 7] 2625 	ld	(hl),a
                           2626 ;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4C7C 13            [ 6] 2627 	inc	de
   4C7D 7A            [ 4] 2628 	ld	a,d
   4C7E EE 80         [ 7] 2629 	xor	a, #0x80
   4C80 D6 8F         [ 7] 2630 	sub	a, #0x8F
   4C82 38 E7         [12] 2631 	jr	C,00114$
                           2632 ;src/includes/world.h:80: cpct_setRandomSeedUniform_u8(1);
   4C84 2E 01         [ 7] 2633 	ld	l,#0x01
   4C86 CD DA 58      [17] 2634 	call	_cpct_setRandomSeedUniform_u8
                           2635 ;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
   4C89 21 00 00      [10] 2636 	ld	hl,#0x0000
   4C8C E3            [19] 2637 	ex	(sp), hl
   4C8D                    2638 00116$:
                           2639 ;src/includes/world.h:84: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   4C8D 2E 01         [ 7] 2640 	ld	l,#0x01
   4C8F CD B6 5A      [17] 2641 	call	_cpct_getRandomUniform_u8_f
   4C92 4D            [ 4] 2642 	ld	c,l
   4C93 06 00         [ 7] 2643 	ld	b,#0x00
   4C95 69            [ 4] 2644 	ld	l, c
   4C96 60            [ 4] 2645 	ld	h, b
   4C97 29            [11] 2646 	add	hl, hl
   4C98 09            [11] 2647 	add	hl, bc
   4C99 29            [11] 2648 	add	hl, hl
   4C9A 09            [11] 2649 	add	hl, bc
   4C9B 29            [11] 2650 	add	hl, hl
   4C9C 09            [11] 2651 	add	hl, bc
                           2652 ;src/includes/world.h:86: shift = cpct_getRandomUniform_u8_f(1)%10;
   4C9D E5            [11] 2653 	push	hl
   4C9E 2E 01         [ 7] 2654 	ld	l,#0x01
   4CA0 CD B6 5A      [17] 2655 	call	_cpct_getRandomUniform_u8_f
   4CA3 45            [ 4] 2656 	ld	b,l
   4CA4 3E 0A         [ 7] 2657 	ld	a,#0x0A
   4CA6 F5            [11] 2658 	push	af
   4CA7 33            [ 6] 2659 	inc	sp
   4CA8 C5            [11] 2660 	push	bc
   4CA9 33            [ 6] 2661 	inc	sp
   4CAA CD D4 59      [17] 2662 	call	__moduchar
   4CAD F1            [10] 2663 	pop	af
   4CAE D1            [10] 2664 	pop	de
   4CAF 26 00         [ 7] 2665 	ld	h,#0x00
                           2666 ;src/includes/world.h:87: shift=iy-shift+5;
   4CB1 7B            [ 4] 2667 	ld	a,e
   4CB2 95            [ 4] 2668 	sub	a, l
   4CB3 6F            [ 4] 2669 	ld	l,a
   4CB4 7A            [ 4] 2670 	ld	a,d
   4CB5 9C            [ 4] 2671 	sbc	a, h
   4CB6 67            [ 4] 2672 	ld	h,a
   4CB7 01 05 00      [10] 2673 	ld	bc,#0x0005
   4CBA 09            [11] 2674 	add	hl,bc
                           2675 ;src/includes/world.h:89: if(shift>0 && shift<WIDTH*HEIGHT)
   4CBB AF            [ 4] 2676 	xor	a, a
   4CBC BD            [ 4] 2677 	cp	a, l
   4CBD 9C            [ 4] 2678 	sbc	a, h
   4CBE E2 C3 4C      [10] 2679 	jp	PO, 00180$
   4CC1 EE 80         [ 7] 2680 	xor	a, #0x80
   4CC3                    2681 00180$:
   4CC3 F2 DE 4C      [10] 2682 	jp	P,00117$
   4CC6 7C            [ 4] 2683 	ld	a,h
   4CC7 EE 80         [ 7] 2684 	xor	a, #0x80
   4CC9 D6 8F         [ 7] 2685 	sub	a, #0x8F
   4CCB 30 11         [12] 2686 	jr	NC,00117$
                           2687 ;src/includes/world.h:90: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
   4CCD 11 A1 5C      [10] 2688 	ld	de,#_p_world
   4CD0 19            [11] 2689 	add	hl,de
   4CD1 E5            [11] 2690 	push	hl
   4CD2 2E 01         [ 7] 2691 	ld	l,#0x01
   4CD4 CD B6 5A      [17] 2692 	call	_cpct_getRandomUniform_u8_f
   4CD7 7D            [ 4] 2693 	ld	a,l
   4CD8 E1            [10] 2694 	pop	hl
   4CD9 E6 01         [ 7] 2695 	and	a, #0x01
   4CDB C6 05         [ 7] 2696 	add	a, #0x05
   4CDD 77            [ 7] 2697 	ld	(hl),a
   4CDE                    2698 00117$:
                           2699 ;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
   4CDE DD 34 FC      [23] 2700 	inc	-4 (ix)
   4CE1 20 03         [12] 2701 	jr	NZ,00181$
   4CE3 DD 34 FD      [23] 2702 	inc	-3 (ix)
   4CE6                    2703 00181$:
   4CE6 DD 7E FC      [19] 2704 	ld	a,-4 (ix)
   4CE9 D6 3C         [ 7] 2705 	sub	a, #0x3C
   4CEB DD 7E FD      [19] 2706 	ld	a,-3 (ix)
   4CEE 17            [ 4] 2707 	rla
   4CEF 3F            [ 4] 2708 	ccf
   4CF0 1F            [ 4] 2709 	rra
   4CF1 DE 80         [ 7] 2710 	sbc	a, #0x80
   4CF3 38 98         [12] 2711 	jr	C,00116$
                           2712 ;src/includes/world.h:95: cpct_setRandomSeedUniform_u8(2);
   4CF5 2E 02         [ 7] 2713 	ld	l,#0x02
   4CF7 CD DA 58      [17] 2714 	call	_cpct_setRandomSeedUniform_u8
                           2715 ;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
   4CFA 21 00 00      [10] 2716 	ld	hl,#0x0000
   4CFD E3            [19] 2717 	ex	(sp), hl
   4CFE                    2718 00118$:
                           2719 ;src/includes/world.h:99: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
   4CFE 2E 02         [ 7] 2720 	ld	l,#0x02
   4D00 CD B6 5A      [17] 2721 	call	_cpct_getRandomUniform_u8_f
   4D03 4D            [ 4] 2722 	ld	c,l
   4D04 06 00         [ 7] 2723 	ld	b,#0x00
   4D06 69            [ 4] 2724 	ld	l, c
   4D07 60            [ 4] 2725 	ld	h, b
   4D08 29            [11] 2726 	add	hl, hl
   4D09 09            [11] 2727 	add	hl, bc
   4D0A 29            [11] 2728 	add	hl, hl
   4D0B 09            [11] 2729 	add	hl, bc
   4D0C 29            [11] 2730 	add	hl, hl
   4D0D 09            [11] 2731 	add	hl, bc
                           2732 ;src/includes/world.h:101: shift = cpct_getRandomUniform_u8_f(2)%10;
   4D0E E5            [11] 2733 	push	hl
   4D0F 2E 02         [ 7] 2734 	ld	l,#0x02
   4D11 CD B6 5A      [17] 2735 	call	_cpct_getRandomUniform_u8_f
   4D14 45            [ 4] 2736 	ld	b,l
   4D15 3E 0A         [ 7] 2737 	ld	a,#0x0A
   4D17 F5            [11] 2738 	push	af
   4D18 33            [ 6] 2739 	inc	sp
   4D19 C5            [11] 2740 	push	bc
   4D1A 33            [ 6] 2741 	inc	sp
   4D1B CD D4 59      [17] 2742 	call	__moduchar
   4D1E F1            [10] 2743 	pop	af
   4D1F D1            [10] 2744 	pop	de
   4D20 26 00         [ 7] 2745 	ld	h,#0x00
                           2746 ;src/includes/world.h:102: shift=iy-shift+5;
   4D22 7B            [ 4] 2747 	ld	a,e
   4D23 95            [ 4] 2748 	sub	a, l
   4D24 4F            [ 4] 2749 	ld	c,a
   4D25 7A            [ 4] 2750 	ld	a,d
   4D26 9C            [ 4] 2751 	sbc	a, h
   4D27 47            [ 4] 2752 	ld	b,a
   4D28 03            [ 6] 2753 	inc	bc
   4D29 03            [ 6] 2754 	inc	bc
   4D2A 03            [ 6] 2755 	inc	bc
   4D2B 03            [ 6] 2756 	inc	bc
   4D2C 03            [ 6] 2757 	inc	bc
                           2758 ;src/includes/world.h:104: if(shift>0 && shift<WIDTH*HEIGHT)
   4D2D AF            [ 4] 2759 	xor	a, a
   4D2E B9            [ 4] 2760 	cp	a, c
   4D2F 98            [ 4] 2761 	sbc	a, b
   4D30 E2 35 4D      [10] 2762 	jp	PO, 00182$
   4D33 EE 80         [ 7] 2763 	xor	a, #0x80
   4D35                    2764 00182$:
   4D35 F2 59 4D      [10] 2765 	jp	P,00119$
   4D38 78            [ 4] 2766 	ld	a,b
   4D39 EE 80         [ 7] 2767 	xor	a, #0x80
   4D3B D6 8F         [ 7] 2768 	sub	a, #0x8F
   4D3D 30 1A         [12] 2769 	jr	NC,00119$
                           2770 ;src/includes/world.h:105: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
   4D3F 21 A1 5C      [10] 2771 	ld	hl,#_p_world
   4D42 09            [11] 2772 	add	hl,bc
   4D43 E5            [11] 2773 	push	hl
   4D44 2E 02         [ 7] 2774 	ld	l,#0x02
   4D46 CD B6 5A      [17] 2775 	call	_cpct_getRandomUniform_u8_f
   4D49 45            [ 4] 2776 	ld	b,l
   4D4A 3E 03         [ 7] 2777 	ld	a,#0x03
   4D4C F5            [11] 2778 	push	af
   4D4D 33            [ 6] 2779 	inc	sp
   4D4E C5            [11] 2780 	push	bc
   4D4F 33            [ 6] 2781 	inc	sp
   4D50 CD D4 59      [17] 2782 	call	__moduchar
   4D53 F1            [10] 2783 	pop	af
   4D54 7D            [ 4] 2784 	ld	a,l
   4D55 D1            [10] 2785 	pop	de
   4D56 C6 02         [ 7] 2786 	add	a, #0x02
   4D58 12            [ 7] 2787 	ld	(de),a
   4D59                    2788 00119$:
                           2789 ;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
   4D59 DD 34 FC      [23] 2790 	inc	-4 (ix)
   4D5C 20 03         [12] 2791 	jr	NZ,00183$
   4D5E DD 34 FD      [23] 2792 	inc	-3 (ix)
   4D61                    2793 00183$:
   4D61 DD 7E FC      [19] 2794 	ld	a,-4 (ix)
   4D64 D6 1E         [ 7] 2795 	sub	a, #0x1E
   4D66 DD 7E FD      [19] 2796 	ld	a,-3 (ix)
   4D69 17            [ 4] 2797 	rla
   4D6A 3F            [ 4] 2798 	ccf
   4D6B 1F            [ 4] 2799 	rra
   4D6C DE 80         [ 7] 2800 	sbc	a, #0x80
   4D6E 38 8E         [12] 2801 	jr	C,00118$
                           2802 ;src/includes/world.h:110: cpct_setRandomSeedUniform_u8(3);
   4D70 2E 03         [ 7] 2803 	ld	l,#0x03
   4D72 CD DA 58      [17] 2804 	call	_cpct_setRandomSeedUniform_u8
                           2805 ;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
   4D75 11 00 00      [10] 2806 	ld	de,#0x0000
   4D78                    2807 00120$:
                           2808 ;src/includes/world.h:114: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
   4D78 D5            [11] 2809 	push	de
   4D79 2E 03         [ 7] 2810 	ld	l,#0x03
   4D7B CD B6 5A      [17] 2811 	call	_cpct_getRandomUniform_u8_f
   4D7E D1            [10] 2812 	pop	de
   4D7F 4D            [ 4] 2813 	ld	c,l
   4D80 06 00         [ 7] 2814 	ld	b,#0x00
   4D82 69            [ 4] 2815 	ld	l, c
   4D83 60            [ 4] 2816 	ld	h, b
   4D84 29            [11] 2817 	add	hl, hl
   4D85 09            [11] 2818 	add	hl, bc
   4D86 29            [11] 2819 	add	hl, hl
   4D87 09            [11] 2820 	add	hl, bc
   4D88 29            [11] 2821 	add	hl, hl
   4D89 09            [11] 2822 	add	hl, bc
   4D8A DD 75 FE      [19] 2823 	ld	-2 (ix),l
   4D8D DD 74 FF      [19] 2824 	ld	-1 (ix),h
                           2825 ;src/includes/world.h:116: shift = cpct_getRandomUniform_u8_f(3)%10;
   4D90 D5            [11] 2826 	push	de
   4D91 2E 03         [ 7] 2827 	ld	l,#0x03
   4D93 CD B6 5A      [17] 2828 	call	_cpct_getRandomUniform_u8_f
   4D96 45            [ 4] 2829 	ld	b,l
   4D97 3E 0A         [ 7] 2830 	ld	a,#0x0A
   4D99 F5            [11] 2831 	push	af
   4D9A 33            [ 6] 2832 	inc	sp
   4D9B C5            [11] 2833 	push	bc
   4D9C 33            [ 6] 2834 	inc	sp
   4D9D CD D4 59      [17] 2835 	call	__moduchar
   4DA0 F1            [10] 2836 	pop	af
   4DA1 D1            [10] 2837 	pop	de
   4DA2 26 00         [ 7] 2838 	ld	h,#0x00
                           2839 ;src/includes/world.h:117: shift=iy-shift+5;
   4DA4 DD 7E FE      [19] 2840 	ld	a,-2 (ix)
   4DA7 95            [ 4] 2841 	sub	a, l
   4DA8 6F            [ 4] 2842 	ld	l,a
   4DA9 DD 7E FF      [19] 2843 	ld	a,-1 (ix)
   4DAC 9C            [ 4] 2844 	sbc	a, h
   4DAD 67            [ 4] 2845 	ld	h,a
   4DAE 01 05 00      [10] 2846 	ld	bc,#0x0005
   4DB1 09            [11] 2847 	add	hl,bc
                           2848 ;src/includes/world.h:119: if(shift>0 && shift<WIDTH*HEIGHT)
   4DB2 AF            [ 4] 2849 	xor	a, a
   4DB3 BD            [ 4] 2850 	cp	a, l
   4DB4 9C            [ 4] 2851 	sbc	a, h
   4DB5 E2 BA 4D      [10] 2852 	jp	PO, 00184$
   4DB8 EE 80         [ 7] 2853 	xor	a, #0x80
   4DBA                    2854 00184$:
   4DBA F2 CA 4D      [10] 2855 	jp	P,00121$
   4DBD 7C            [ 4] 2856 	ld	a,h
   4DBE EE 80         [ 7] 2857 	xor	a, #0x80
   4DC0 D6 8F         [ 7] 2858 	sub	a, #0x8F
   4DC2 30 06         [12] 2859 	jr	NC,00121$
                           2860 ;src/includes/world.h:120: p_world[shift] = LIVESTOCK;
   4DC4 01 A1 5C      [10] 2861 	ld	bc,#_p_world
   4DC7 09            [11] 2862 	add	hl,bc
   4DC8 36 09         [10] 2863 	ld	(hl),#0x09
   4DCA                    2864 00121$:
                           2865 ;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
   4DCA 13            [ 6] 2866 	inc	de
   4DCB 7B            [ 4] 2867 	ld	a,e
   4DCC D6 13         [ 7] 2868 	sub	a, #0x13
   4DCE 7A            [ 4] 2869 	ld	a,d
   4DCF 17            [ 4] 2870 	rla
   4DD0 3F            [ 4] 2871 	ccf
   4DD1 1F            [ 4] 2872 	rra
   4DD2 DE 80         [ 7] 2873 	sbc	a, #0x80
   4DD4 38 A2         [12] 2874 	jr	C,00120$
   4DD6 DD F9         [10] 2875 	ld	sp, ix
   4DD8 DD E1         [14] 2876 	pop	ix
   4DDA C9            [10] 2877 	ret
                           2878 ;src/includes/world.h:124: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           2879 ;	---------------------------------
                           2880 ; Function drawTile
                           2881 ; ---------------------------------
   4DDB                    2882 _drawTile::
   4DDB DD E5         [15] 2883 	push	ix
   4DDD DD 21 00 00   [14] 2884 	ld	ix,#0
   4DE1 DD 39         [15] 2885 	add	ix,sp
                           2886 ;src/includes/world.h:127: int adress = (y_+iy)*WIDTH+x_+ix;
   4DE3 DD 6E 05      [19] 2887 	ld	l,5 (ix)
   4DE6 26 00         [ 7] 2888 	ld	h,#0x00
   4DE8 DD 5E 07      [19] 2889 	ld	e,7 (ix)
   4DEB 16 00         [ 7] 2890 	ld	d,#0x00
   4DED 19            [11] 2891 	add	hl,de
   4DEE 4D            [ 4] 2892 	ld	c, l
   4DEF 44            [ 4] 2893 	ld	b, h
   4DF0 29            [11] 2894 	add	hl, hl
   4DF1 29            [11] 2895 	add	hl, hl
   4DF2 09            [11] 2896 	add	hl, bc
   4DF3 29            [11] 2897 	add	hl, hl
   4DF4 29            [11] 2898 	add	hl, hl
   4DF5 29            [11] 2899 	add	hl, hl
   4DF6 29            [11] 2900 	add	hl, hl
   4DF7 DD 5E 04      [19] 2901 	ld	e,4 (ix)
   4DFA 16 00         [ 7] 2902 	ld	d,#0x00
   4DFC 19            [11] 2903 	add	hl,de
   4DFD DD 5E 06      [19] 2904 	ld	e,6 (ix)
   4E00 16 00         [ 7] 2905 	ld	d,#0x00
   4E02 19            [11] 2906 	add	hl,de
   4E03 5D            [ 4] 2907 	ld	e, l
   4E04 54            [ 4] 2908 	ld	d, h
                           2909 ;src/includes/world.h:129: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   4E05 DD 7E 07      [19] 2910 	ld	a,7 (ix)
   4E08 07            [ 4] 2911 	rlca
   4E09 07            [ 4] 2912 	rlca
   4E0A 07            [ 4] 2913 	rlca
   4E0B 07            [ 4] 2914 	rlca
   4E0C E6 F0         [ 7] 2915 	and	a,#0xF0
   4E0E 67            [ 4] 2916 	ld	h,a
   4E0F DD 7E 06      [19] 2917 	ld	a,6 (ix)
   4E12 87            [ 4] 2918 	add	a, a
   4E13 87            [ 4] 2919 	add	a, a
   4E14 D5            [11] 2920 	push	de
   4E15 E5            [11] 2921 	push	hl
   4E16 33            [ 6] 2922 	inc	sp
   4E17 F5            [11] 2923 	push	af
   4E18 33            [ 6] 2924 	inc	sp
   4E19 21 00 C0      [10] 2925 	ld	hl,#0xC000
   4E1C E5            [11] 2926 	push	hl
   4E1D CD F4 5B      [17] 2927 	call	_cpct_getScreenPtr
   4E20 D1            [10] 2928 	pop	de
   4E21 4D            [ 4] 2929 	ld	c, l
   4E22 44            [ 4] 2930 	ld	b, h
                           2931 ;src/includes/world.h:131: switch(p_world[adress])
   4E23 21 A1 5C      [10] 2932 	ld	hl,#_p_world
   4E26 19            [11] 2933 	add	hl,de
   4E27 5E            [ 7] 2934 	ld	e,(hl)
   4E28 3E 0F         [ 7] 2935 	ld	a,#0x0F
   4E2A 93            [ 4] 2936 	sub	a, e
   4E2B DA 4C 4F      [10] 2937 	jp	C,00118$
   4E2E 16 00         [ 7] 2938 	ld	d,#0x00
   4E30 21 37 4E      [10] 2939 	ld	hl,#00124$
   4E33 19            [11] 2940 	add	hl,de
   4E34 19            [11] 2941 	add	hl,de
   4E35 19            [11] 2942 	add	hl,de
   4E36 E9            [ 4] 2943 	jp	(hl)
   4E37                    2944 00124$:
   4E37 C3 67 4E      [10] 2945 	jp	00101$
   4E3A C3 76 4E      [10] 2946 	jp	00102$
   4E3D C3 85 4E      [10] 2947 	jp	00103$
   4E40 C3 94 4E      [10] 2948 	jp	00104$
   4E43 C3 A3 4E      [10] 2949 	jp	00105$
   4E46 C3 B2 4E      [10] 2950 	jp	00106$
   4E49 C3 C1 4E      [10] 2951 	jp	00107$
   4E4C C3 D0 4E      [10] 2952 	jp	00108$
   4E4F C3 DE 4E      [10] 2953 	jp	00109$
   4E52 C3 EC 4E      [10] 2954 	jp	00110$
   4E55 C3 FA 4E      [10] 2955 	jp	00111$
   4E58 C3 08 4F      [10] 2956 	jp	00112$
   4E5B C3 16 4F      [10] 2957 	jp	00113$
   4E5E C3 24 4F      [10] 2958 	jp	00114$
   4E61 C3 32 4F      [10] 2959 	jp	00115$
   4E64 C3 40 4F      [10] 2960 	jp	00116$
                           2961 ;src/includes/world.h:133: case GRASS1:
   4E67                    2962 00101$:
                           2963 ;src/includes/world.h:134: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   4E67 11 29 40      [10] 2964 	ld	de,#_grass1
   4E6A 21 04 10      [10] 2965 	ld	hl,#0x1004
   4E6D E5            [11] 2966 	push	hl
   4E6E C5            [11] 2967 	push	bc
   4E6F D5            [11] 2968 	push	de
   4E70 CD 2F 59      [17] 2969 	call	_cpct_drawSprite
                           2970 ;src/includes/world.h:135: break;
   4E73 C3 4C 4F      [10] 2971 	jp	00118$
                           2972 ;src/includes/world.h:136: case GRASS2:
   4E76                    2973 00102$:
                           2974 ;src/includes/world.h:137: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   4E76 11 69 40      [10] 2975 	ld	de,#_grass2
   4E79 21 04 10      [10] 2976 	ld	hl,#0x1004
   4E7C E5            [11] 2977 	push	hl
   4E7D C5            [11] 2978 	push	bc
   4E7E D5            [11] 2979 	push	de
   4E7F CD 2F 59      [17] 2980 	call	_cpct_drawSprite
                           2981 ;src/includes/world.h:138: break;
   4E82 C3 4C 4F      [10] 2982 	jp	00118$
                           2983 ;src/includes/world.h:139: case DWELLINGS1:
   4E85                    2984 00103$:
                           2985 ;src/includes/world.h:140: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   4E85 11 E9 40      [10] 2986 	ld	de,#_dwellings1
   4E88 21 04 10      [10] 2987 	ld	hl,#0x1004
   4E8B E5            [11] 2988 	push	hl
   4E8C C5            [11] 2989 	push	bc
   4E8D D5            [11] 2990 	push	de
   4E8E CD 2F 59      [17] 2991 	call	_cpct_drawSprite
                           2992 ;src/includes/world.h:141: break;
   4E91 C3 4C 4F      [10] 2993 	jp	00118$
                           2994 ;src/includes/world.h:142: case DWELLINGS2:
   4E94                    2995 00104$:
                           2996 ;src/includes/world.h:143: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   4E94 11 29 41      [10] 2997 	ld	de,#_dwellings2
   4E97 21 04 10      [10] 2998 	ld	hl,#0x1004
   4E9A E5            [11] 2999 	push	hl
   4E9B C5            [11] 3000 	push	bc
   4E9C D5            [11] 3001 	push	de
   4E9D CD 2F 59      [17] 3002 	call	_cpct_drawSprite
                           3003 ;src/includes/world.h:144: break;
   4EA0 C3 4C 4F      [10] 3004 	jp	00118$
                           3005 ;src/includes/world.h:145: case DWELLINGS3:
   4EA3                    3006 00105$:
                           3007 ;src/includes/world.h:146: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   4EA3 11 69 41      [10] 3008 	ld	de,#_dwellings3
   4EA6 21 04 10      [10] 3009 	ld	hl,#0x1004
   4EA9 E5            [11] 3010 	push	hl
   4EAA C5            [11] 3011 	push	bc
   4EAB D5            [11] 3012 	push	de
   4EAC CD 2F 59      [17] 3013 	call	_cpct_drawSprite
                           3014 ;src/includes/world.h:147: break;
   4EAF C3 4C 4F      [10] 3015 	jp	00118$
                           3016 ;src/includes/world.h:148: case FARM1:
   4EB2                    3017 00106$:
                           3018 ;src/includes/world.h:149: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   4EB2 11 E9 41      [10] 3019 	ld	de,#_farm1
   4EB5 21 04 10      [10] 3020 	ld	hl,#0x1004
   4EB8 E5            [11] 3021 	push	hl
   4EB9 C5            [11] 3022 	push	bc
   4EBA D5            [11] 3023 	push	de
   4EBB CD 2F 59      [17] 3024 	call	_cpct_drawSprite
                           3025 ;src/includes/world.h:150: break;
   4EBE C3 4C 4F      [10] 3026 	jp	00118$
                           3027 ;src/includes/world.h:151: case FARM2:
   4EC1                    3028 00107$:
                           3029 ;src/includes/world.h:152: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   4EC1 11 29 42      [10] 3030 	ld	de,#_farm2
   4EC4 21 04 10      [10] 3031 	ld	hl,#0x1004
   4EC7 E5            [11] 3032 	push	hl
   4EC8 C5            [11] 3033 	push	bc
   4EC9 D5            [11] 3034 	push	de
   4ECA CD 2F 59      [17] 3035 	call	_cpct_drawSprite
                           3036 ;src/includes/world.h:153: break;
   4ECD C3 4C 4F      [10] 3037 	jp	00118$
                           3038 ;src/includes/world.h:154: case WATER:
   4ED0                    3039 00108$:
                           3040 ;src/includes/world.h:155: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   4ED0 11 A9 41      [10] 3041 	ld	de,#_water
   4ED3 21 04 10      [10] 3042 	ld	hl,#0x1004
   4ED6 E5            [11] 3043 	push	hl
   4ED7 C5            [11] 3044 	push	bc
   4ED8 D5            [11] 3045 	push	de
   4ED9 CD 2F 59      [17] 3046 	call	_cpct_drawSprite
                           3047 ;src/includes/world.h:156: break;
   4EDC 18 6E         [12] 3048 	jr	00118$
                           3049 ;src/includes/world.h:157: case FOREST:
   4EDE                    3050 00109$:
                           3051 ;src/includes/world.h:158: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   4EDE 11 A9 40      [10] 3052 	ld	de,#_forest
   4EE1 21 04 10      [10] 3053 	ld	hl,#0x1004
   4EE4 E5            [11] 3054 	push	hl
   4EE5 C5            [11] 3055 	push	bc
   4EE6 D5            [11] 3056 	push	de
   4EE7 CD 2F 59      [17] 3057 	call	_cpct_drawSprite
                           3058 ;src/includes/world.h:159: break;
   4EEA 18 60         [12] 3059 	jr	00118$
                           3060 ;src/includes/world.h:160: case LIVESTOCK:
   4EEC                    3061 00110$:
                           3062 ;src/includes/world.h:161: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   4EEC 11 69 42      [10] 3063 	ld	de,#_livestock
   4EEF 21 04 10      [10] 3064 	ld	hl,#0x1004
   4EF2 E5            [11] 3065 	push	hl
   4EF3 C5            [11] 3066 	push	bc
   4EF4 D5            [11] 3067 	push	de
   4EF5 CD 2F 59      [17] 3068 	call	_cpct_drawSprite
                           3069 ;src/includes/world.h:162: break;
   4EF8 18 52         [12] 3070 	jr	00118$
                           3071 ;src/includes/world.h:163: case  SSNS:
   4EFA                    3072 00111$:
                           3073 ;src/includes/world.h:164: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EFA 11 A9 42      [10] 3074 	ld	de,#_station_small_ns
   4EFD 21 04 10      [10] 3075 	ld	hl,#0x1004
   4F00 E5            [11] 3076 	push	hl
   4F01 C5            [11] 3077 	push	bc
   4F02 D5            [11] 3078 	push	de
   4F03 CD 2F 59      [17] 3079 	call	_cpct_drawSprite
                           3080 ;src/includes/world.h:165: break;
   4F06 18 44         [12] 3081 	jr	00118$
                           3082 ;src/includes/world.h:166: case  SSEW:
   4F08                    3083 00112$:
                           3084 ;src/includes/world.h:167: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4F08 11 E9 42      [10] 3085 	ld	de,#_station_small_ew
   4F0B 21 04 10      [10] 3086 	ld	hl,#0x1004
   4F0E E5            [11] 3087 	push	hl
   4F0F C5            [11] 3088 	push	bc
   4F10 D5            [11] 3089 	push	de
   4F11 CD 2F 59      [17] 3090 	call	_cpct_drawSprite
                           3091 ;src/includes/world.h:168: break;
   4F14 18 36         [12] 3092 	jr	00118$
                           3093 ;src/includes/world.h:169: case  SMNS:
   4F16                    3094 00113$:
                           3095 ;src/includes/world.h:170: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4F16 11 29 43      [10] 3096 	ld	de,#_station_medium_ns
   4F19 21 04 10      [10] 3097 	ld	hl,#0x1004
   4F1C E5            [11] 3098 	push	hl
   4F1D C5            [11] 3099 	push	bc
   4F1E D5            [11] 3100 	push	de
   4F1F CD 2F 59      [17] 3101 	call	_cpct_drawSprite
                           3102 ;src/includes/world.h:171: break;
   4F22 18 28         [12] 3103 	jr	00118$
                           3104 ;src/includes/world.h:172: case  SMEW:
   4F24                    3105 00114$:
                           3106 ;src/includes/world.h:173: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4F24 11 69 43      [10] 3107 	ld	de,#_station_medium_ew
   4F27 21 04 10      [10] 3108 	ld	hl,#0x1004
   4F2A E5            [11] 3109 	push	hl
   4F2B C5            [11] 3110 	push	bc
   4F2C D5            [11] 3111 	push	de
   4F2D CD 2F 59      [17] 3112 	call	_cpct_drawSprite
                           3113 ;src/includes/world.h:174: break;
   4F30 18 1A         [12] 3114 	jr	00118$
                           3115 ;src/includes/world.h:175: case  SLNS:
   4F32                    3116 00115$:
                           3117 ;src/includes/world.h:176: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4F32 11 A9 43      [10] 3118 	ld	de,#_station_large_ns
   4F35 21 04 10      [10] 3119 	ld	hl,#0x1004
   4F38 E5            [11] 3120 	push	hl
   4F39 C5            [11] 3121 	push	bc
   4F3A D5            [11] 3122 	push	de
   4F3B CD 2F 59      [17] 3123 	call	_cpct_drawSprite
                           3124 ;src/includes/world.h:177: break;
   4F3E 18 0C         [12] 3125 	jr	00118$
                           3126 ;src/includes/world.h:178: case  SLEW:
   4F40                    3127 00116$:
                           3128 ;src/includes/world.h:179: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4F40 11 E9 43      [10] 3129 	ld	de,#_station_large_ew
   4F43 21 04 10      [10] 3130 	ld	hl,#0x1004
   4F46 E5            [11] 3131 	push	hl
   4F47 C5            [11] 3132 	push	bc
   4F48 D5            [11] 3133 	push	de
   4F49 CD 2F 59      [17] 3134 	call	_cpct_drawSprite
                           3135 ;src/includes/world.h:181: }
   4F4C                    3136 00118$:
   4F4C DD E1         [14] 3137 	pop	ix
   4F4E C9            [10] 3138 	ret
                           3139 ;src/includes/world.h:184: void drawWorld(u8 x_, u8 y_)
                           3140 ;	---------------------------------
                           3141 ; Function drawWorld
                           3142 ; ---------------------------------
   4F4F                    3143 _drawWorld::
   4F4F DD E5         [15] 3144 	push	ix
   4F51 DD 21 00 00   [14] 3145 	ld	ix,#0
   4F55 DD 39         [15] 3146 	add	ix,sp
   4F57 3B            [ 6] 3147 	dec	sp
                           3148 ;src/includes/world.h:192: for(iy=0; iy<NBTILE_H;iy++)
   4F58 16 00         [ 7] 3149 	ld	d,#0x00
                           3150 ;src/includes/world.h:194: for(ix=0; ix<NBTILE_W;ix++)
   4F5A                    3151 00109$:
   4F5A 1E 00         [ 7] 3152 	ld	e,#0x00
   4F5C                    3153 00103$:
                           3154 ;src/includes/world.h:196: drawTile(x_, y_, ix, iy);
   4F5C D5            [11] 3155 	push	de
   4F5D D5            [11] 3156 	push	de
   4F5E DD 66 05      [19] 3157 	ld	h,5 (ix)
   4F61 DD 6E 04      [19] 3158 	ld	l,4 (ix)
   4F64 E5            [11] 3159 	push	hl
   4F65 CD DB 4D      [17] 3160 	call	_drawTile
   4F68 F1            [10] 3161 	pop	af
   4F69 F1            [10] 3162 	pop	af
   4F6A D1            [10] 3163 	pop	de
                           3164 ;src/includes/world.h:194: for(ix=0; ix<NBTILE_W;ix++)
   4F6B 1C            [ 4] 3165 	inc	e
   4F6C 7B            [ 4] 3166 	ld	a,e
   4F6D D6 14         [ 7] 3167 	sub	a, #0x14
   4F6F 38 EB         [12] 3168 	jr	C,00103$
                           3169 ;src/includes/world.h:192: for(iy=0; iy<NBTILE_H;iy++)
   4F71 14            [ 4] 3170 	inc	d
   4F72 7A            [ 4] 3171 	ld	a,d
   4F73 D6 0C         [ 7] 3172 	sub	a, #0x0C
   4F75 38 E3         [12] 3173 	jr	C,00109$
                           3174 ;src/includes/world.h:202: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   4F77 DD 4E 04      [19] 3175 	ld	c,4 (ix)
   4F7A 06 00         [ 7] 3176 	ld	b,#0x00
   4F7C 69            [ 4] 3177 	ld	l, c
   4F7D 60            [ 4] 3178 	ld	h, b
   4F7E 29            [11] 3179 	add	hl, hl
   4F7F 29            [11] 3180 	add	hl, hl
   4F80 29            [11] 3181 	add	hl, hl
   4F81 09            [11] 3182 	add	hl, bc
   4F82 29            [11] 3183 	add	hl, hl
   4F83 09            [11] 3184 	add	hl, bc
   4F84 29            [11] 3185 	add	hl, hl
   4F85 29            [11] 3186 	add	hl, hl
   4F86 01 3C 00      [10] 3187 	ld	bc,#0x003C
   4F89 C5            [11] 3188 	push	bc
   4F8A E5            [11] 3189 	push	hl
   4F8B CD 45 5C      [17] 3190 	call	__divsint
   4F8E F1            [10] 3191 	pop	af
   4F8F F1            [10] 3192 	pop	af
   4F90 55            [ 4] 3193 	ld	d,l
                           3194 ;src/includes/world.h:203: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   4F91 DD 4E 05      [19] 3195 	ld	c,5 (ix)
   4F94 06 00         [ 7] 3196 	ld	b,#0x00
   4F96 69            [ 4] 3197 	ld	l, c
   4F97 60            [ 4] 3198 	ld	h, b
   4F98 29            [11] 3199 	add	hl, hl
   4F99 29            [11] 3200 	add	hl, hl
   4F9A 09            [11] 3201 	add	hl, bc
   4F9B 29            [11] 3202 	add	hl, hl
   4F9C 09            [11] 3203 	add	hl, bc
   4F9D 29            [11] 3204 	add	hl, hl
   4F9E 29            [11] 3205 	add	hl, hl
   4F9F 29            [11] 3206 	add	hl, hl
   4FA0 29            [11] 3207 	add	hl, hl
   4FA1 D5            [11] 3208 	push	de
   4FA2 01 24 00      [10] 3209 	ld	bc,#0x0024
   4FA5 C5            [11] 3210 	push	bc
   4FA6 E5            [11] 3211 	push	hl
   4FA7 CD 45 5C      [17] 3212 	call	__divsint
   4FAA F1            [10] 3213 	pop	af
   4FAB F1            [10] 3214 	pop	af
   4FAC D1            [10] 3215 	pop	de
   4FAD DD 75 FF      [19] 3216 	ld	-1 (ix),l
                           3217 ;src/includes/world.h:205: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   4FB0 AF            [ 4] 3218 	xor	a, a
   4FB1 F5            [11] 3219 	push	af
   4FB2 33            [ 6] 3220 	inc	sp
   4FB3 D5            [11] 3221 	push	de
   4FB4 33            [ 6] 3222 	inc	sp
   4FB5 21 00 C0      [10] 3223 	ld	hl,#0xC000
   4FB8 E5            [11] 3224 	push	hl
   4FB9 CD F4 5B      [17] 3225 	call	_cpct_getScreenPtr
                           3226 ;src/includes/world.h:206: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   4FBC E5            [11] 3227 	push	hl
   4FBD 21 00 00      [10] 3228 	ld	hl,#0x0000
   4FC0 E5            [11] 3229 	push	hl
   4FC1 2E 00         [ 7] 3230 	ld	l, #0x00
   4FC3 E5            [11] 3231 	push	hl
   4FC4 CD 03 5B      [17] 3232 	call	_cpct_px2byteM1
   4FC7 F1            [10] 3233 	pop	af
   4FC8 F1            [10] 3234 	pop	af
   4FC9 45            [ 4] 3235 	ld	b,l
   4FCA D1            [10] 3236 	pop	de
   4FCB 21 04 04      [10] 3237 	ld	hl,#0x0404
   4FCE E5            [11] 3238 	push	hl
   4FCF C5            [11] 3239 	push	bc
   4FD0 33            [ 6] 3240 	inc	sp
   4FD1 D5            [11] 3241 	push	de
   4FD2 CD 3B 5B      [17] 3242 	call	_cpct_drawSolidBox
   4FD5 F1            [10] 3243 	pop	af
   4FD6 F1            [10] 3244 	pop	af
   4FD7 33            [ 6] 3245 	inc	sp
                           3246 ;src/includes/world.h:208: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   4FD8 DD 7E FF      [19] 3247 	ld	a,-1 (ix)
   4FDB F5            [11] 3248 	push	af
   4FDC 33            [ 6] 3249 	inc	sp
   4FDD AF            [ 4] 3250 	xor	a, a
   4FDE F5            [11] 3251 	push	af
   4FDF 33            [ 6] 3252 	inc	sp
   4FE0 21 00 C0      [10] 3253 	ld	hl,#0xC000
   4FE3 E5            [11] 3254 	push	hl
   4FE4 CD F4 5B      [17] 3255 	call	_cpct_getScreenPtr
                           3256 ;src/includes/world.h:209: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   4FE7 E5            [11] 3257 	push	hl
   4FE8 21 00 00      [10] 3258 	ld	hl,#0x0000
   4FEB E5            [11] 3259 	push	hl
   4FEC 2E 00         [ 7] 3260 	ld	l, #0x00
   4FEE E5            [11] 3261 	push	hl
   4FEF CD 03 5B      [17] 3262 	call	_cpct_px2byteM1
   4FF2 F1            [10] 3263 	pop	af
   4FF3 F1            [10] 3264 	pop	af
   4FF4 45            [ 4] 3265 	ld	b,l
   4FF5 D1            [10] 3266 	pop	de
   4FF6 21 01 10      [10] 3267 	ld	hl,#0x1001
   4FF9 E5            [11] 3268 	push	hl
   4FFA C5            [11] 3269 	push	bc
   4FFB 33            [ 6] 3270 	inc	sp
   4FFC D5            [11] 3271 	push	de
   4FFD CD 3B 5B      [17] 3272 	call	_cpct_drawSolidBox
   5000 F1            [10] 3273 	pop	af
   5001 F1            [10] 3274 	pop	af
   5002 33            [ 6] 3275 	inc	sp
   5003 33            [ 6] 3276 	inc	sp
   5004 DD E1         [14] 3277 	pop	ix
   5006 C9            [10] 3278 	ret
                           3279 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           3280 ;	---------------------------------
                           3281 ; Function windowInfoTile
                           3282 ; ---------------------------------
   5007                    3283 _windowInfoTile::
   5007 DD E5         [15] 3284 	push	ix
   5009 DD 21 00 00   [14] 3285 	ld	ix,#0
   500D DD 39         [15] 3286 	add	ix,sp
   500F 21 F8 FF      [10] 3287 	ld	hl,#-8
   5012 39            [11] 3288 	add	hl,sp
   5013 F9            [ 6] 3289 	ld	sp,hl
                           3290 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   5014 DD 4E 05      [19] 3291 	ld	c,5 (ix)
   5017 06 00         [ 7] 3292 	ld	b,#0x00
   5019 69            [ 4] 3293 	ld	l, c
   501A 60            [ 4] 3294 	ld	h, b
   501B 29            [11] 3295 	add	hl, hl
   501C 29            [11] 3296 	add	hl, hl
   501D 09            [11] 3297 	add	hl, bc
   501E 29            [11] 3298 	add	hl, hl
   501F 29            [11] 3299 	add	hl, hl
   5020 29            [11] 3300 	add	hl, hl
   5021 29            [11] 3301 	add	hl, hl
   5022 DD 5E 04      [19] 3302 	ld	e,4 (ix)
   5025 16 00         [ 7] 3303 	ld	d,#0x00
   5027 19            [11] 3304 	add	hl,de
   5028 11 A1 5C      [10] 3305 	ld	de,#_p_world
   502B 19            [11] 3306 	add	hl,de
   502C 4E            [ 7] 3307 	ld	c,(hl)
   502D 3E 09         [ 7] 3308 	ld	a,#0x09
   502F 91            [ 4] 3309 	sub	a, c
   5030 DA 61 51      [10] 3310 	jp	C,00111$
   5033 59            [ 4] 3311 	ld	e,c
   5034 16 00         [ 7] 3312 	ld	d,#0x00
   5036 21 3D 50      [10] 3313 	ld	hl,#00119$
   5039 19            [11] 3314 	add	hl,de
   503A 19            [11] 3315 	add	hl,de
   503B 19            [11] 3316 	add	hl,de
   503C E9            [ 4] 3317 	jp	(hl)
   503D                    3318 00119$:
   503D C3 5B 50      [10] 3319 	jp	00101$
   5040 C3 5B 50      [10] 3320 	jp	00102$
   5043 C3 87 50      [10] 3321 	jp	00103$
   5046 C3 87 50      [10] 3322 	jp	00104$
   5049 C3 87 50      [10] 3323 	jp	00105$
   504C C3 B3 50      [10] 3324 	jp	00106$
   504F C3 B3 50      [10] 3325 	jp	00107$
   5052 C3 DF 50      [10] 3326 	jp	00108$
   5055 C3 0B 51      [10] 3327 	jp	00109$
   5058 C3 36 51      [10] 3328 	jp	00110$
                           3329 ;src/includes/game.h:7: case GRASS1:
   505B                    3330 00101$:
                           3331 ;src/includes/game.h:8: case GRASS2:
   505B                    3332 00102$:
                           3333 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   505B 21 00 00      [10] 3334 	ld	hl,#0x0000
   505E 39            [11] 3335 	add	hl,sp
   505F 5D            [ 4] 3336 	ld	e,l
   5060 54            [ 4] 3337 	ld	d,h
   5061 36 9C         [10] 3338 	ld	(hl),#<(___str_2)
   5063 23            [ 6] 3339 	inc	hl
   5064 36 51         [10] 3340 	ld	(hl),#>(___str_2)
                           3341 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   5066 6B            [ 4] 3342 	ld	l, e
   5067 62            [ 4] 3343 	ld	h, d
   5068 23            [ 6] 3344 	inc	hl
   5069 23            [ 6] 3345 	inc	hl
   506A 01 A6 51      [10] 3346 	ld	bc,#___str_3+0
   506D 71            [ 7] 3347 	ld	(hl),c
   506E 23            [ 6] 3348 	inc	hl
   506F 70            [ 7] 3349 	ld	(hl),b
                           3350 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   5070 21 04 00      [10] 3351 	ld	hl,#0x0004
   5073 19            [11] 3352 	add	hl,de
   5074 01 A7 51      [10] 3353 	ld	bc,#___str_4+0
   5077 71            [ 7] 3354 	ld	(hl),c
   5078 23            [ 6] 3355 	inc	hl
   5079 70            [ 7] 3356 	ld	(hl),b
                           3357 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   507A 21 06 00      [10] 3358 	ld	hl,#0x0006
   507D 19            [11] 3359 	add	hl,de
   507E 11 BB 51      [10] 3360 	ld	de,#___str_5+0
   5081 73            [ 7] 3361 	ld	(hl),e
   5082 23            [ 6] 3362 	inc	hl
   5083 72            [ 7] 3363 	ld	(hl),d
                           3364 ;src/includes/game.h:13: break;
   5084 C3 8A 51      [10] 3365 	jp	00112$
                           3366 ;src/includes/game.h:14: case DWELLINGS1:
   5087                    3367 00103$:
                           3368 ;src/includes/game.h:15: case DWELLINGS2:
   5087                    3369 00104$:
                           3370 ;src/includes/game.h:16: case DWELLINGS3:
   5087                    3371 00105$:
                           3372 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   5087 21 00 00      [10] 3373 	ld	hl,#0x0000
   508A 39            [11] 3374 	add	hl,sp
   508B 5D            [ 4] 3375 	ld	e,l
   508C 54            [ 4] 3376 	ld	d,h
   508D 36 CB         [10] 3377 	ld	(hl),#<(___str_6)
   508F 23            [ 6] 3378 	inc	hl
   5090 36 51         [10] 3379 	ld	(hl),#>(___str_6)
                           3380 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   5092 6B            [ 4] 3381 	ld	l, e
   5093 62            [ 4] 3382 	ld	h, d
   5094 23            [ 6] 3383 	inc	hl
   5095 23            [ 6] 3384 	inc	hl
   5096 01 A6 51      [10] 3385 	ld	bc,#___str_3+0
   5099 71            [ 7] 3386 	ld	(hl),c
   509A 23            [ 6] 3387 	inc	hl
   509B 70            [ 7] 3388 	ld	(hl),b
                           3389 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   509C 21 04 00      [10] 3390 	ld	hl,#0x0004
   509F 19            [11] 3391 	add	hl,de
   50A0 01 D0 51      [10] 3392 	ld	bc,#___str_7+0
   50A3 71            [ 7] 3393 	ld	(hl),c
   50A4 23            [ 6] 3394 	inc	hl
   50A5 70            [ 7] 3395 	ld	(hl),b
                           3396 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   50A6 21 06 00      [10] 3397 	ld	hl,#0x0006
   50A9 19            [11] 3398 	add	hl,de
   50AA 11 ED 51      [10] 3399 	ld	de,#___str_8+0
   50AD 73            [ 7] 3400 	ld	(hl),e
   50AE 23            [ 6] 3401 	inc	hl
   50AF 72            [ 7] 3402 	ld	(hl),d
                           3403 ;src/includes/game.h:21: break;
   50B0 C3 8A 51      [10] 3404 	jp	00112$
                           3405 ;src/includes/game.h:22: case FARM1:
   50B3                    3406 00106$:
                           3407 ;src/includes/game.h:23: case FARM2:
   50B3                    3408 00107$:
                           3409 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   50B3 21 00 00      [10] 3410 	ld	hl,#0x0000
   50B6 39            [11] 3411 	add	hl,sp
   50B7 5D            [ 4] 3412 	ld	e,l
   50B8 54            [ 4] 3413 	ld	d,h
   50B9 36 12         [10] 3414 	ld	(hl),#<(___str_9)
   50BB 23            [ 6] 3415 	inc	hl
   50BC 36 52         [10] 3416 	ld	(hl),#>(___str_9)
                           3417 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   50BE 6B            [ 4] 3418 	ld	l, e
   50BF 62            [ 4] 3419 	ld	h, d
   50C0 23            [ 6] 3420 	inc	hl
   50C1 23            [ 6] 3421 	inc	hl
   50C2 01 A6 51      [10] 3422 	ld	bc,#___str_3+0
   50C5 71            [ 7] 3423 	ld	(hl),c
   50C6 23            [ 6] 3424 	inc	hl
   50C7 70            [ 7] 3425 	ld	(hl),b
                           3426 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   50C8 21 04 00      [10] 3427 	ld	hl,#0x0004
   50CB 19            [11] 3428 	add	hl,de
   50CC 01 17 52      [10] 3429 	ld	bc,#___str_10+0
   50CF 71            [ 7] 3430 	ld	(hl),c
   50D0 23            [ 6] 3431 	inc	hl
   50D1 70            [ 7] 3432 	ld	(hl),b
                           3433 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   50D2 21 06 00      [10] 3434 	ld	hl,#0x0006
   50D5 19            [11] 3435 	add	hl,de
   50D6 11 2A 52      [10] 3436 	ld	de,#___str_11+0
   50D9 73            [ 7] 3437 	ld	(hl),e
   50DA 23            [ 6] 3438 	inc	hl
   50DB 72            [ 7] 3439 	ld	(hl),d
                           3440 ;src/includes/game.h:28: break;
   50DC C3 8A 51      [10] 3441 	jp	00112$
                           3442 ;src/includes/game.h:29: case WATER:
   50DF                    3443 00108$:
                           3444 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   50DF 21 00 00      [10] 3445 	ld	hl,#0x0000
   50E2 39            [11] 3446 	add	hl,sp
   50E3 5D            [ 4] 3447 	ld	e,l
   50E4 54            [ 4] 3448 	ld	d,h
   50E5 36 3A         [10] 3449 	ld	(hl),#<(___str_12)
   50E7 23            [ 6] 3450 	inc	hl
   50E8 36 52         [10] 3451 	ld	(hl),#>(___str_12)
                           3452 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   50EA 6B            [ 4] 3453 	ld	l, e
   50EB 62            [ 4] 3454 	ld	h, d
   50EC 23            [ 6] 3455 	inc	hl
   50ED 23            [ 6] 3456 	inc	hl
   50EE 01 A6 51      [10] 3457 	ld	bc,#___str_3+0
   50F1 71            [ 7] 3458 	ld	(hl),c
   50F2 23            [ 6] 3459 	inc	hl
   50F3 70            [ 7] 3460 	ld	(hl),b
                           3461 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   50F4 21 04 00      [10] 3462 	ld	hl,#0x0004
   50F7 19            [11] 3463 	add	hl,de
   50F8 01 40 52      [10] 3464 	ld	bc,#___str_13+0
   50FB 71            [ 7] 3465 	ld	(hl),c
   50FC 23            [ 6] 3466 	inc	hl
   50FD 70            [ 7] 3467 	ld	(hl),b
                           3468 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   50FE 21 06 00      [10] 3469 	ld	hl,#0x0006
   5101 19            [11] 3470 	add	hl,de
   5102 11 2A 52      [10] 3471 	ld	de,#___str_11+0
   5105 73            [ 7] 3472 	ld	(hl),e
   5106 23            [ 6] 3473 	inc	hl
   5107 72            [ 7] 3474 	ld	(hl),d
                           3475 ;src/includes/game.h:34: break;
   5108 C3 8A 51      [10] 3476 	jp	00112$
                           3477 ;src/includes/game.h:35: case FOREST:
   510B                    3478 00109$:
                           3479 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   510B 21 00 00      [10] 3480 	ld	hl,#0x0000
   510E 39            [11] 3481 	add	hl,sp
   510F 5D            [ 4] 3482 	ld	e,l
   5110 54            [ 4] 3483 	ld	d,h
   5111 36 54         [10] 3484 	ld	(hl),#<(___str_14)
   5113 23            [ 6] 3485 	inc	hl
   5114 36 52         [10] 3486 	ld	(hl),#>(___str_14)
                           3487 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   5116 6B            [ 4] 3488 	ld	l, e
   5117 62            [ 4] 3489 	ld	h, d
   5118 23            [ 6] 3490 	inc	hl
   5119 23            [ 6] 3491 	inc	hl
   511A 01 A6 51      [10] 3492 	ld	bc,#___str_3+0
   511D 71            [ 7] 3493 	ld	(hl),c
   511E 23            [ 6] 3494 	inc	hl
   511F 70            [ 7] 3495 	ld	(hl),b
                           3496 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   5120 21 04 00      [10] 3497 	ld	hl,#0x0004
   5123 19            [11] 3498 	add	hl,de
   5124 01 40 52      [10] 3499 	ld	bc,#___str_13+0
   5127 71            [ 7] 3500 	ld	(hl),c
   5128 23            [ 6] 3501 	inc	hl
   5129 70            [ 7] 3502 	ld	(hl),b
                           3503 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   512A 21 06 00      [10] 3504 	ld	hl,#0x0006
   512D 19            [11] 3505 	add	hl,de
   512E 11 2A 52      [10] 3506 	ld	de,#___str_11+0
   5131 73            [ 7] 3507 	ld	(hl),e
   5132 23            [ 6] 3508 	inc	hl
   5133 72            [ 7] 3509 	ld	(hl),d
                           3510 ;src/includes/game.h:40: break;
   5134 18 54         [12] 3511 	jr	00112$
                           3512 ;src/includes/game.h:41: case LIVESTOCK:
   5136                    3513 00110$:
                           3514 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   5136 21 00 00      [10] 3515 	ld	hl,#0x0000
   5139 39            [11] 3516 	add	hl,sp
   513A 5D            [ 4] 3517 	ld	e,l
   513B 54            [ 4] 3518 	ld	d,h
   513C 36 5B         [10] 3519 	ld	(hl),#<(___str_15)
   513E 23            [ 6] 3520 	inc	hl
   513F 36 52         [10] 3521 	ld	(hl),#>(___str_15)
                           3522 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   5141 6B            [ 4] 3523 	ld	l, e
   5142 62            [ 4] 3524 	ld	h, d
   5143 23            [ 6] 3525 	inc	hl
   5144 23            [ 6] 3526 	inc	hl
   5145 01 A6 51      [10] 3527 	ld	bc,#___str_3+0
   5148 71            [ 7] 3528 	ld	(hl),c
   5149 23            [ 6] 3529 	inc	hl
   514A 70            [ 7] 3530 	ld	(hl),b
                           3531 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   514B 21 04 00      [10] 3532 	ld	hl,#0x0004
   514E 19            [11] 3533 	add	hl,de
   514F 01 6D 52      [10] 3534 	ld	bc,#___str_16+0
   5152 71            [ 7] 3535 	ld	(hl),c
   5153 23            [ 6] 3536 	inc	hl
   5154 70            [ 7] 3537 	ld	(hl),b
                           3538 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   5155 21 06 00      [10] 3539 	ld	hl,#0x0006
   5158 19            [11] 3540 	add	hl,de
   5159 11 89 52      [10] 3541 	ld	de,#___str_17+0
   515C 73            [ 7] 3542 	ld	(hl),e
   515D 23            [ 6] 3543 	inc	hl
   515E 72            [ 7] 3544 	ld	(hl),d
                           3545 ;src/includes/game.h:46: break;
   515F 18 29         [12] 3546 	jr	00112$
                           3547 ;src/includes/game.h:47: default:
   5161                    3548 00111$:
                           3549 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   5161 21 00 00      [10] 3550 	ld	hl,#0x0000
   5164 39            [11] 3551 	add	hl,sp
   5165 5D            [ 4] 3552 	ld	e,l
   5166 54            [ 4] 3553 	ld	d,h
   5167 36 98         [10] 3554 	ld	(hl),#<(___str_18)
   5169 23            [ 6] 3555 	inc	hl
   516A 36 52         [10] 3556 	ld	(hl),#>(___str_18)
                           3557 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   516C 6B            [ 4] 3558 	ld	l, e
   516D 62            [ 4] 3559 	ld	h, d
   516E 23            [ 6] 3560 	inc	hl
   516F 23            [ 6] 3561 	inc	hl
   5170 01 A6 51      [10] 3562 	ld	bc,#___str_3+0
   5173 71            [ 7] 3563 	ld	(hl),c
   5174 23            [ 6] 3564 	inc	hl
   5175 70            [ 7] 3565 	ld	(hl),b
                           3566 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   5176 21 04 00      [10] 3567 	ld	hl,#0x0004
   5179 19            [11] 3568 	add	hl,de
   517A 01 AC 52      [10] 3569 	ld	bc,#___str_19+0
   517D 71            [ 7] 3570 	ld	(hl),c
   517E 23            [ 6] 3571 	inc	hl
   517F 70            [ 7] 3572 	ld	(hl),b
                           3573 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   5180 21 06 00      [10] 3574 	ld	hl,#0x0006
   5183 19            [11] 3575 	add	hl,de
   5184 11 BA 52      [10] 3576 	ld	de,#___str_20+0
   5187 73            [ 7] 3577 	ld	(hl),e
   5188 23            [ 6] 3578 	inc	hl
   5189 72            [ 7] 3579 	ld	(hl),d
                           3580 ;src/includes/game.h:53: }
   518A                    3581 00112$:
                           3582 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   518A 21 00 00      [10] 3583 	ld	hl,#0x0000
   518D 39            [11] 3584 	add	hl,sp
   518E EB            [ 4] 3585 	ex	de,hl
   518F 21 04 00      [10] 3586 	ld	hl,#0x0004
   5192 E5            [11] 3587 	push	hl
   5193 D5            [11] 3588 	push	de
   5194 CD 41 49      [17] 3589 	call	_drawWindow
   5197 DD F9         [10] 3590 	ld	sp,ix
   5199 DD E1         [14] 3591 	pop	ix
   519B C9            [10] 3592 	ret
   519C                    3593 ___str_2:
   519C 47 72 61 73 73 6C  3594 	.ascii "Grassland"
        61 6E 64
   51A5 00                 3595 	.db 0x00
   51A6                    3596 ___str_3:
   51A6 00                 3597 	.db 0x00
   51A7                    3598 ___str_4:
   51A7 50 72 6F 64 75 63  3599 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   51BA 00                 3600 	.db 0x00
   51BB                    3601 ___str_5:
   51BB 44 65 6D 61 6E 64  3602 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   51CA 00                 3603 	.db 0x00
   51CB                    3604 ___str_6:
   51CB 43 69 74 79        3605 	.ascii "City"
   51CF 00                 3606 	.db 0x00
   51D0                    3607 ___str_7:
   51D0 50 72 6F 64 75 63  3608 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   51EC 00                 3609 	.db 0x00
   51ED                    3610 ___str_8:
   51ED 44 65 6D 61 6E 64  3611 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5211 00                 3612 	.db 0x00
   5212                    3613 ___str_9:
   5212 46 61 72 6D        3614 	.ascii "Farm"
   5216 00                 3615 	.db 0x00
   5217                    3616 ___str_10:
   5217 50 72 6F 64 75 63  3617 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5229 00                 3618 	.db 0x00
   522A                    3619 ___str_11:
   522A 44 65 6D 61 6E 64  3620 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   5239 00                 3621 	.db 0x00
   523A                    3622 ___str_12:
   523A 57 61 74 65 72     3623 	.ascii "Water"
   523F 00                 3624 	.db 0x00
   5240                    3625 ___str_13:
   5240 50 72 6F 64 75 63  3626 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   5253 00                 3627 	.db 0x00
   5254                    3628 ___str_14:
   5254 46 6F 72 65 73 74  3629 	.ascii "Forest"
   525A 00                 3630 	.db 0x00
   525B                    3631 ___str_15:
   525B 4C 69 76 65 73 74  3632 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   526C 00                 3633 	.db 0x00
   526D                    3634 ___str_16:
   526D 50 72 6F 64 75 63  3635 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   5288 00                 3636 	.db 0x00
   5289                    3637 ___str_17:
   5289 44 65 6D 61 6E 64  3638 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   5297 00                 3639 	.db 0x00
   5298                    3640 ___str_18:
   5298 4E 6F 74 20 79 65  3641 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   52AB 00                 3642 	.db 0x00
   52AC                    3643 ___str_19:
   52AC 50 72 6F 64 75 63  3644 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   52B9 00                 3645 	.db 0x00
   52BA                    3646 ___str_20:
   52BA 44 65 6D 61 6E 64  3647 	.ascii "Demand: ?"
        3A 20 3F
   52C3 00                 3648 	.db 0x00
                           3649 ;src/includes/game.h:58: void menuStations()
                           3650 ;	---------------------------------
                           3651 ; Function menuStations
                           3652 ; ---------------------------------
   52C4                    3653 _menuStations::
   52C4 DD E5         [15] 3654 	push	ix
   52C6 DD 21 00 00   [14] 3655 	ld	ix,#0
   52CA DD 39         [15] 3656 	add	ix,sp
   52CC 21 FA FF      [10] 3657 	ld	hl,#-6
   52CF 39            [11] 3658 	add	hl,sp
   52D0 F9            [ 6] 3659 	ld	sp,hl
                           3660 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   52D1 21 00 00      [10] 3661 	ld	hl,#0x0000
   52D4 39            [11] 3662 	add	hl,sp
   52D5 5D            [ 4] 3663 	ld	e,l
   52D6 54            [ 4] 3664 	ld	d,h
   52D7 36 26         [10] 3665 	ld	(hl),#<(___str_21)
   52D9 23            [ 6] 3666 	inc	hl
   52DA 36 53         [10] 3667 	ld	(hl),#>(___str_21)
   52DC 6B            [ 4] 3668 	ld	l, e
   52DD 62            [ 4] 3669 	ld	h, d
   52DE 23            [ 6] 3670 	inc	hl
   52DF 23            [ 6] 3671 	inc	hl
   52E0 01 2C 53      [10] 3672 	ld	bc,#___str_22+0
   52E3 71            [ 7] 3673 	ld	(hl),c
   52E4 23            [ 6] 3674 	inc	hl
   52E5 70            [ 7] 3675 	ld	(hl),b
   52E6 21 04 00      [10] 3676 	ld	hl,#0x0004
   52E9 19            [11] 3677 	add	hl,de
   52EA 01 33 53      [10] 3678 	ld	bc,#___str_23+0
   52ED 71            [ 7] 3679 	ld	(hl),c
   52EE 23            [ 6] 3680 	inc	hl
   52EF 70            [ 7] 3681 	ld	(hl),b
                           3682 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   52F0 3E 03         [ 7] 3683 	ld	a,#0x03
   52F2 F5            [11] 3684 	push	af
   52F3 33            [ 6] 3685 	inc	sp
   52F4 D5            [11] 3686 	push	de
   52F5 CD 43 48      [17] 3687 	call	_drawMenu
   52F8 F1            [10] 3688 	pop	af
   52F9 33            [ 6] 3689 	inc	sp
   52FA 5D            [ 4] 3690 	ld	e,l
                           3691 ;src/includes/game.h:70: switch(result)
   52FB 3E 02         [ 7] 3692 	ld	a,#0x02
   52FD 93            [ 4] 3693 	sub	a, e
   52FE 38 21         [12] 3694 	jr	C,00105$
   5300 16 00         [ 7] 3695 	ld	d,#0x00
   5302 21 08 53      [10] 3696 	ld	hl,#00111$
   5305 19            [11] 3697 	add	hl,de
   5306 19            [11] 3698 	add	hl,de
                           3699 ;src/includes/game.h:72: case 0:
   5307 E9            [ 4] 3700 	jp	(hl)
   5308                    3701 00111$:
   5308 18 04         [12] 3702 	jr	00101$
   530A 18 09         [12] 3703 	jr	00102$
   530C 18 0E         [12] 3704 	jr	00103$
   530E                    3705 00101$:
                           3706 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   530E 21 A1 6B      [10] 3707 	ld	hl,#_CURSOR_MODE + 0
   5311 36 02         [10] 3708 	ld	(hl), #0x02
                           3709 ;src/includes/game.h:74: break;
   5313 18 0C         [12] 3710 	jr	00105$
                           3711 ;src/includes/game.h:76: case 1:
   5315                    3712 00102$:
                           3713 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5315 21 A1 6B      [10] 3714 	ld	hl,#_CURSOR_MODE + 0
   5318 36 04         [10] 3715 	ld	(hl), #0x04
                           3716 ;src/includes/game.h:78: break;
   531A 18 05         [12] 3717 	jr	00105$
                           3718 ;src/includes/game.h:80: case 2:
   531C                    3719 00103$:
                           3720 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   531C 21 A1 6B      [10] 3721 	ld	hl,#_CURSOR_MODE + 0
   531F 36 06         [10] 3722 	ld	(hl), #0x06
                           3723 ;src/includes/game.h:83: }
   5321                    3724 00105$:
   5321 DD F9         [10] 3725 	ld	sp, ix
   5323 DD E1         [14] 3726 	pop	ix
   5325 C9            [10] 3727 	ret
   5326                    3728 ___str_21:
   5326 53 6D 61 6C 6C     3729 	.ascii "Small"
   532B 00                 3730 	.db 0x00
   532C                    3731 ___str_22:
   532C 4D 65 64 69 75 6D  3732 	.ascii "Medium"
   5332 00                 3733 	.db 0x00
   5333                    3734 ___str_23:
   5333 4C 61 72 67 65     3735 	.ascii "Large"
   5338 00                 3736 	.db 0x00
                           3737 ;src/includes/game.h:87: void menuTile(u8 x, u8 y)
                           3738 ;	---------------------------------
                           3739 ; Function menuTile
                           3740 ; ---------------------------------
   5339                    3741 _menuTile::
   5339 DD E5         [15] 3742 	push	ix
   533B DD 21 00 00   [14] 3743 	ld	ix,#0
   533F DD 39         [15] 3744 	add	ix,sp
   5341 21 F4 FF      [10] 3745 	ld	hl,#-12
   5344 39            [11] 3746 	add	hl,sp
   5345 F9            [ 6] 3747 	ld	sp,hl
                           3748 ;src/includes/game.h:91: const char *txtMenuTile[] = { 
   5346 21 00 00      [10] 3749 	ld	hl,#0x0000
   5349 39            [11] 3750 	add	hl,sp
   534A 5D            [ 4] 3751 	ld	e,l
   534B 54            [ 4] 3752 	ld	d,h
   534C 36 C5         [10] 3753 	ld	(hl),#<(___str_24)
   534E 23            [ 6] 3754 	inc	hl
   534F 36 53         [10] 3755 	ld	(hl),#>(___str_24)
   5351 6B            [ 4] 3756 	ld	l, e
   5352 62            [ 4] 3757 	ld	h, d
   5353 23            [ 6] 3758 	inc	hl
   5354 23            [ 6] 3759 	inc	hl
   5355 01 D5 53      [10] 3760 	ld	bc,#___str_25+0
   5358 71            [ 7] 3761 	ld	(hl),c
   5359 23            [ 6] 3762 	inc	hl
   535A 70            [ 7] 3763 	ld	(hl),b
   535B 21 04 00      [10] 3764 	ld	hl,#0x0004
   535E 19            [11] 3765 	add	hl,de
   535F 01 E5 53      [10] 3766 	ld	bc,#___str_26+0
   5362 71            [ 7] 3767 	ld	(hl),c
   5363 23            [ 6] 3768 	inc	hl
   5364 70            [ 7] 3769 	ld	(hl),b
   5365 21 06 00      [10] 3770 	ld	hl,#0x0006
   5368 19            [11] 3771 	add	hl,de
   5369 01 F5 53      [10] 3772 	ld	bc,#___str_27+0
   536C 71            [ 7] 3773 	ld	(hl),c
   536D 23            [ 6] 3774 	inc	hl
   536E 70            [ 7] 3775 	ld	(hl),b
   536F 21 08 00      [10] 3776 	ld	hl,#0x0008
   5372 19            [11] 3777 	add	hl,de
   5373 01 04 54      [10] 3778 	ld	bc,#___str_28+0
   5376 71            [ 7] 3779 	ld	(hl),c
   5377 23            [ 6] 3780 	inc	hl
   5378 70            [ 7] 3781 	ld	(hl),b
   5379 21 0A 00      [10] 3782 	ld	hl,#0x000A
   537C 19            [11] 3783 	add	hl,de
   537D 01 0F 54      [10] 3784 	ld	bc,#___str_29+0
   5380 71            [ 7] 3785 	ld	(hl),c
   5381 23            [ 6] 3786 	inc	hl
   5382 70            [ 7] 3787 	ld	(hl),b
                           3788 ;src/includes/game.h:100: putM2();
   5383 D5            [11] 3789 	push	de
   5384 CD 3D 44      [17] 3790 	call	_putM2
   5387 D1            [10] 3791 	pop	de
                           3792 ;src/includes/game.h:102: do{
   5388                    3793 00106$:
                           3794 ;src/includes/game.h:103: menuChoice = drawMenu(txtMenuTile,6);
   5388 4B            [ 4] 3795 	ld	c, e
   5389 42            [ 4] 3796 	ld	b, d
   538A D5            [11] 3797 	push	de
   538B 3E 06         [ 7] 3798 	ld	a,#0x06
   538D F5            [11] 3799 	push	af
   538E 33            [ 6] 3800 	inc	sp
   538F C5            [11] 3801 	push	bc
   5390 CD 43 48      [17] 3802 	call	_drawMenu
   5393 F1            [10] 3803 	pop	af
   5394 33            [ 6] 3804 	inc	sp
   5395 D1            [10] 3805 	pop	de
   5396 45            [ 4] 3806 	ld	b,l
                           3807 ;src/includes/game.h:105: if(menuChoice==0)
   5397 78            [ 4] 3808 	ld	a,b
   5398 B7            [ 4] 3809 	or	a, a
   5399 20 11         [12] 3810 	jr	NZ,00104$
                           3811 ;src/includes/game.h:106: windowInfoTile(x, y);
   539B C5            [11] 3812 	push	bc
   539C D5            [11] 3813 	push	de
   539D DD 66 05      [19] 3814 	ld	h,5 (ix)
   53A0 DD 6E 04      [19] 3815 	ld	l,4 (ix)
   53A3 E5            [11] 3816 	push	hl
   53A4 CD 07 50      [17] 3817 	call	_windowInfoTile
   53A7 F1            [10] 3818 	pop	af
   53A8 D1            [10] 3819 	pop	de
   53A9 C1            [10] 3820 	pop	bc
   53AA 18 0C         [12] 3821 	jr	00107$
   53AC                    3822 00104$:
                           3823 ;src/includes/game.h:107: else if(menuChoice==2)
   53AC 78            [ 4] 3824 	ld	a,b
   53AD D6 02         [ 7] 3825 	sub	a, #0x02
   53AF 20 07         [12] 3826 	jr	NZ,00107$
                           3827 ;src/includes/game.h:109: menuStations();
   53B1 D5            [11] 3828 	push	de
   53B2 CD C4 52      [17] 3829 	call	_menuStations
   53B5 D1            [10] 3830 	pop	de
                           3831 ;src/includes/game.h:110: menuChoice=5;
   53B6 06 05         [ 7] 3832 	ld	b,#0x05
   53B8                    3833 00107$:
                           3834 ;src/includes/game.h:114: while(menuChoice!=5);
   53B8 78            [ 4] 3835 	ld	a,b
   53B9 D6 05         [ 7] 3836 	sub	a, #0x05
   53BB 20 CB         [12] 3837 	jr	NZ,00106$
                           3838 ;src/includes/game.h:116: putM1();
   53BD CD 29 44      [17] 3839 	call	_putM1
   53C0 DD F9         [10] 3840 	ld	sp, ix
   53C2 DD E1         [14] 3841 	pop	ix
   53C4 C9            [10] 3842 	ret
   53C5                    3843 ___str_24:
   53C5 41 62 6F 75 74 20  3844 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   53D4 00                 3845 	.db 0x00
   53D5                    3846 ___str_25:
   53D5 42 75 69 6C 64 20  3847 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   53E4 00                 3848 	.db 0x00
   53E5                    3849 ___str_26:
   53E5 42 75 69 6C 64 20  3850 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   53F4 00                 3851 	.db 0x00
   53F5                    3852 ___str_27:
   53F5 52 61 69 6C 72 6F  3853 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   5403 00                 3854 	.db 0x00
   5404                    3855 ___str_28:
   5404 41 63 63 6F 75 6E  3856 	.ascii "Accounting"
        74 69 6E 67
   540E 00                 3857 	.db 0x00
   540F                    3858 ___str_29:
   540F 52 65 73 75 6D 65  3859 	.ascii "Resume"
   5415 00                 3860 	.db 0x00
                           3861 ;src/includes/game.h:120: void game()
                           3862 ;	---------------------------------
                           3863 ; Function game
                           3864 ; ---------------------------------
   5416                    3865 _game::
   5416 DD E5         [15] 3866 	push	ix
   5418 DD 21 00 00   [14] 3867 	ld	ix,#0
   541C DD 39         [15] 3868 	add	ix,sp
   541E 21 F1 FF      [10] 3869 	ld	hl,#-15
   5421 39            [11] 3870 	add	hl,sp
   5422 F9            [ 6] 3871 	ld	sp,hl
                           3872 ;src/includes/game.h:123: int ulx = 0;
   5423 DD 36 FA 00   [19] 3873 	ld	-6 (ix),#0x00
   5427 DD 36 FB 00   [19] 3874 	ld	-5 (ix),#0x00
                           3875 ;src/includes/game.h:124: int uly = 0;
   542B DD 36 F6 00   [19] 3876 	ld	-10 (ix),#0x00
   542F DD 36 F7 00   [19] 3877 	ld	-9 (ix),#0x00
                           3878 ;src/includes/game.h:125: int xCursor = 10;
   5433 DD 36 F3 0A   [19] 3879 	ld	-13 (ix),#0x0A
   5437 DD 36 F4 00   [19] 3880 	ld	-12 (ix),#0x00
                           3881 ;src/includes/game.h:126: int yCursor = 6;
   543B DD 36 F8 06   [19] 3882 	ld	-8 (ix),#0x06
   543F DD 36 F9 00   [19] 3883 	ld	-7 (ix),#0x00
                           3884 ;src/includes/game.h:128: u8 exit=0;
   5443 DD 36 F5 00   [19] 3885 	ld	-11 (ix),#0x00
                           3886 ;src/includes/game.h:130: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   5447 21 00 00      [10] 3887 	ld	hl,#0x0000
   544A E5            [11] 3888 	push	hl
   544B 2E 00         [ 7] 3889 	ld	l, #0x00
   544D E5            [11] 3890 	push	hl
   544E CD 03 5B      [17] 3891 	call	_cpct_px2byteM1
   5451 F1            [10] 3892 	pop	af
   5452 F1            [10] 3893 	pop	af
   5453 65            [ 4] 3894 	ld	h,l
   5454 01 00 40      [10] 3895 	ld	bc,#0x4000
   5457 C5            [11] 3896 	push	bc
   5458 E5            [11] 3897 	push	hl
   5459 33            [ 6] 3898 	inc	sp
   545A 21 00 C0      [10] 3899 	ld	hl,#0xC000
   545D E5            [11] 3900 	push	hl
   545E CD F5 5A      [17] 3901 	call	_cpct_memset
                           3902 ;src/includes/game.h:132: generateWorld();
   5461 CD 59 4C      [17] 3903 	call	_generateWorld
                           3904 ;src/includes/game.h:134: drawWorld(ulx, uly);
   5464 21 00 00      [10] 3905 	ld	hl,#0x0000
   5467 E5            [11] 3906 	push	hl
   5468 CD 4F 4F      [17] 3907 	call	_drawWorld
   546B F1            [10] 3908 	pop	af
                           3909 ;src/includes/game.h:136: do{
   546C                    3910 00150$:
                           3911 ;src/includes/game.h:137: cpct_scanKeyboard(); 
   546C CD 14 5C      [17] 3912 	call	_cpct_scanKeyboard
                           3913 ;src/includes/game.h:139: if ( cpct_isKeyPressed(Key_CursorUp) )
   546F 21 00 01      [10] 3914 	ld	hl,#0x0100
   5472 CD F6 58      [17] 3915 	call	_cpct_isKeyPressed
                           3916 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   5475 DD 7E F3      [19] 3917 	ld	a,-13 (ix)
   5478 DD 77 FC      [19] 3918 	ld	-4 (ix),a
   547B DD 7E F6      [19] 3919 	ld	a,-10 (ix)
   547E DD 77 FF      [19] 3920 	ld	-1 (ix),a
   5481 DD 7E FA      [19] 3921 	ld	a,-6 (ix)
   5484 DD 77 FE      [19] 3922 	ld	-2 (ix),a
                           3923 ;src/includes/game.h:139: if ( cpct_isKeyPressed(Key_CursorUp) )
   5487 7D            [ 4] 3924 	ld	a,l
   5488 B7            [ 4] 3925 	or	a, a
   5489 28 6C         [12] 3926 	jr	Z,00107$
                           3927 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   548B DD 7E F8      [19] 3928 	ld	a,-8 (ix)
   548E DD 77 FD      [19] 3929 	ld	-3 (ix), a
   5491 F5            [11] 3930 	push	af
   5492 33            [ 6] 3931 	inc	sp
   5493 DD 7E FC      [19] 3932 	ld	a,-4 (ix)
   5496 F5            [11] 3933 	push	af
   5497 33            [ 6] 3934 	inc	sp
   5498 DD 7E FF      [19] 3935 	ld	a,-1 (ix)
   549B F5            [11] 3936 	push	af
   549C 33            [ 6] 3937 	inc	sp
   549D DD 7E FE      [19] 3938 	ld	a,-2 (ix)
   54A0 F5            [11] 3939 	push	af
   54A1 33            [ 6] 3940 	inc	sp
   54A2 CD DB 4D      [17] 3941 	call	_drawTile
   54A5 F1            [10] 3942 	pop	af
   54A6 F1            [10] 3943 	pop	af
                           3944 ;src/includes/game.h:143: yCursor-=1;
   54A7 DD 6E F8      [19] 3945 	ld	l,-8 (ix)
   54AA DD 66 F9      [19] 3946 	ld	h,-7 (ix)
   54AD 2B            [ 6] 3947 	dec	hl
   54AE DD 75 F8      [19] 3948 	ld	-8 (ix),l
   54B1 DD 74 F9      [19] 3949 	ld	-7 (ix),h
                           3950 ;src/includes/game.h:146: if(yCursor<0)
   54B4 DD CB F9 7E   [20] 3951 	bit	7, -7 (ix)
   54B8 28 35         [12] 3952 	jr	Z,00176$
                           3953 ;src/includes/game.h:148: yCursor=0;
   54BA DD 36 F8 00   [19] 3954 	ld	-8 (ix),#0x00
   54BE DD 36 F9 00   [19] 3955 	ld	-7 (ix),#0x00
                           3956 ;src/includes/game.h:151: if(uly>0)
   54C2 AF            [ 4] 3957 	xor	a, a
   54C3 DD BE F6      [19] 3958 	cp	a, -10 (ix)
   54C6 DD 9E F7      [19] 3959 	sbc	a, -9 (ix)
   54C9 E2 CE 54      [10] 3960 	jp	PO, 00293$
   54CC EE 80         [ 7] 3961 	xor	a, #0x80
   54CE                    3962 00293$:
   54CE F2 EF 54      [10] 3963 	jp	P,00176$
                           3964 ;src/includes/game.h:153: uly-=1;
   54D1 DD 6E F6      [19] 3965 	ld	l,-10 (ix)
   54D4 DD 66 F7      [19] 3966 	ld	h,-9 (ix)
   54D7 2B            [ 6] 3967 	dec	hl
   54D8 DD 75 F6      [19] 3968 	ld	-10 (ix),l
   54DB DD 74 F7      [19] 3969 	ld	-9 (ix),h
                           3970 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   54DE DD 7E F6      [19] 3971 	ld	a,-10 (ix)
                           3972 ;src/includes/game.h:154: drawWorld(ulx, uly);
   54E1 DD 77 FF      [19] 3973 	ld	-1 (ix), a
   54E4 F5            [11] 3974 	push	af
   54E5 33            [ 6] 3975 	inc	sp
   54E6 DD 7E FE      [19] 3976 	ld	a,-2 (ix)
   54E9 F5            [11] 3977 	push	af
   54EA 33            [ 6] 3978 	inc	sp
   54EB CD 4F 4F      [17] 3979 	call	_drawWorld
   54EE F1            [10] 3980 	pop	af
                           3981 ;src/includes/game.h:159: for(i=0; i<14000; i++) {}
   54EF                    3982 00176$:
   54EF 11 B0 36      [10] 3983 	ld	de,#0x36B0
   54F2                    3984 00155$:
   54F2 1B            [ 6] 3985 	dec	de
   54F3 7A            [ 4] 3986 	ld	a,d
   54F4 B3            [ 4] 3987 	or	a,e
   54F5 20 FB         [12] 3988 	jr	NZ,00155$
   54F7                    3989 00107$:
                           3990 ;src/includes/game.h:162: if ( cpct_isKeyPressed(Key_CursorDown) )
   54F7 21 00 04      [10] 3991 	ld	hl,#0x0400
   54FA CD F6 58      [17] 3992 	call	_cpct_isKeyPressed
   54FD 7D            [ 4] 3993 	ld	a,l
   54FE B7            [ 4] 3994 	or	a, a
   54FF 28 73         [12] 3995 	jr	Z,00114$
                           3996 ;src/includes/game.h:164: drawTile(ulx, uly, xCursor, yCursor);
   5501 DD 66 F8      [19] 3997 	ld	h,-8 (ix)
   5504 E5            [11] 3998 	push	hl
   5505 33            [ 6] 3999 	inc	sp
   5506 DD 7E FC      [19] 4000 	ld	a,-4 (ix)
   5509 F5            [11] 4001 	push	af
   550A 33            [ 6] 4002 	inc	sp
   550B DD 7E FF      [19] 4003 	ld	a,-1 (ix)
   550E F5            [11] 4004 	push	af
   550F 33            [ 6] 4005 	inc	sp
   5510 DD 7E FE      [19] 4006 	ld	a,-2 (ix)
   5513 F5            [11] 4007 	push	af
   5514 33            [ 6] 4008 	inc	sp
   5515 CD DB 4D      [17] 4009 	call	_drawTile
   5518 F1            [10] 4010 	pop	af
   5519 F1            [10] 4011 	pop	af
                           4012 ;src/includes/game.h:165: yCursor+=1;
   551A DD 34 F8      [23] 4013 	inc	-8 (ix)
   551D 20 03         [12] 4014 	jr	NZ,00294$
   551F DD 34 F9      [23] 4015 	inc	-7 (ix)
   5522                    4016 00294$:
                           4017 ;src/includes/game.h:166: if(yCursor>NBTILE_H-1)
   5522 3E 0B         [ 7] 4018 	ld	a,#0x0B
   5524 DD BE F8      [19] 4019 	cp	a, -8 (ix)
   5527 3E 00         [ 7] 4020 	ld	a,#0x00
   5529 DD 9E F9      [19] 4021 	sbc	a, -7 (ix)
   552C E2 31 55      [10] 4022 	jp	PO, 00295$
   552F EE 80         [ 7] 4023 	xor	a, #0x80
   5531                    4024 00295$:
   5531 F2 64 55      [10] 4025 	jp	P,00181$
                           4026 ;src/includes/game.h:168: yCursor=NBTILE_H-1;
   5534 DD 36 F8 0B   [19] 4027 	ld	-8 (ix),#0x0B
   5538 DD 36 F9 00   [19] 4028 	ld	-7 (ix),#0x00
                           4029 ;src/includes/game.h:169: if(uly<HEIGHT-NBTILE_H)
   553C DD 7E F6      [19] 4030 	ld	a,-10 (ix)
   553F D6 24         [ 7] 4031 	sub	a, #0x24
   5541 DD 7E F7      [19] 4032 	ld	a,-9 (ix)
   5544 17            [ 4] 4033 	rla
   5545 3F            [ 4] 4034 	ccf
   5546 1F            [ 4] 4035 	rra
   5547 DE 80         [ 7] 4036 	sbc	a, #0x80
   5549 30 19         [12] 4037 	jr	NC,00181$
                           4038 ;src/includes/game.h:171: uly+=1;
   554B DD 34 F6      [23] 4039 	inc	-10 (ix)
   554E 20 03         [12] 4040 	jr	NZ,00296$
   5550 DD 34 F7      [23] 4041 	inc	-9 (ix)
   5553                    4042 00296$:
                           4043 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   5553 DD 7E F6      [19] 4044 	ld	a,-10 (ix)
                           4045 ;src/includes/game.h:172: drawWorld(ulx, uly);
   5556 DD 77 FF      [19] 4046 	ld	-1 (ix), a
   5559 F5            [11] 4047 	push	af
   555A 33            [ 6] 4048 	inc	sp
   555B DD 7E FE      [19] 4049 	ld	a,-2 (ix)
   555E F5            [11] 4050 	push	af
   555F 33            [ 6] 4051 	inc	sp
   5560 CD 4F 4F      [17] 4052 	call	_drawWorld
   5563 F1            [10] 4053 	pop	af
                           4054 ;src/includes/game.h:177: for(i=0; i<14000; i++) {}
   5564                    4055 00181$:
   5564 21 B0 36      [10] 4056 	ld	hl,#0x36B0
   5567 E3            [19] 4057 	ex	(sp), hl
   5568                    4058 00158$:
   5568 E1            [10] 4059 	pop	hl
   5569 E5            [11] 4060 	push	hl
   556A 2B            [ 6] 4061 	dec	hl
   556B E3            [19] 4062 	ex	(sp), hl
   556C DD 7E F2      [19] 4063 	ld	a,-14 (ix)
   556F DD B6 F1      [19] 4064 	or	a,-15 (ix)
   5572 20 F4         [12] 4065 	jr	NZ,00158$
   5574                    4066 00114$:
                           4067 ;src/includes/game.h:180: if ( cpct_isKeyPressed(Key_CursorLeft) )
   5574 21 01 01      [10] 4068 	ld	hl,#0x0101
   5577 CD F6 58      [17] 4069 	call	_cpct_isKeyPressed
                           4070 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   557A DD 7E F8      [19] 4071 	ld	a,-8 (ix)
   557D DD 77 FD      [19] 4072 	ld	-3 (ix),a
                           4073 ;src/includes/game.h:180: if ( cpct_isKeyPressed(Key_CursorLeft) )
   5580 7D            [ 4] 4074 	ld	a,l
   5581 B7            [ 4] 4075 	or	a, a
   5582 28 6C         [12] 4076 	jr	Z,00121$
                           4077 ;src/includes/game.h:182: drawTile(ulx, uly, xCursor, yCursor);
   5584 DD 7E FD      [19] 4078 	ld	a,-3 (ix)
   5587 F5            [11] 4079 	push	af
   5588 33            [ 6] 4080 	inc	sp
   5589 DD 7E FC      [19] 4081 	ld	a,-4 (ix)
   558C F5            [11] 4082 	push	af
   558D 33            [ 6] 4083 	inc	sp
   558E DD 7E FF      [19] 4084 	ld	a,-1 (ix)
   5591 F5            [11] 4085 	push	af
   5592 33            [ 6] 4086 	inc	sp
   5593 DD 7E FE      [19] 4087 	ld	a,-2 (ix)
   5596 F5            [11] 4088 	push	af
   5597 33            [ 6] 4089 	inc	sp
   5598 CD DB 4D      [17] 4090 	call	_drawTile
   559B F1            [10] 4091 	pop	af
   559C F1            [10] 4092 	pop	af
                           4093 ;src/includes/game.h:183: xCursor-=1;
   559D DD 6E F3      [19] 4094 	ld	l,-13 (ix)
   55A0 DD 66 F4      [19] 4095 	ld	h,-12 (ix)
   55A3 2B            [ 6] 4096 	dec	hl
   55A4 DD 75 F3      [19] 4097 	ld	-13 (ix),l
   55A7 DD 74 F4      [19] 4098 	ld	-12 (ix),h
                           4099 ;src/includes/game.h:184: if(xCursor<0)
   55AA DD CB F4 7E   [20] 4100 	bit	7, -12 (ix)
   55AE 28 38         [12] 4101 	jr	Z,00186$
                           4102 ;src/includes/game.h:186: xCursor=0;
   55B0 DD 36 F3 00   [19] 4103 	ld	-13 (ix),#0x00
   55B4 DD 36 F4 00   [19] 4104 	ld	-12 (ix),#0x00
                           4105 ;src/includes/game.h:187: if(ulx>0)
   55B8 AF            [ 4] 4106 	xor	a, a
   55B9 DD BE FA      [19] 4107 	cp	a, -6 (ix)
   55BC DD 9E FB      [19] 4108 	sbc	a, -5 (ix)
   55BF E2 C4 55      [10] 4109 	jp	PO, 00297$
   55C2 EE 80         [ 7] 4110 	xor	a, #0x80
   55C4                    4111 00297$:
   55C4 F2 E8 55      [10] 4112 	jp	P,00186$
                           4113 ;src/includes/game.h:189: ulx-=1;
   55C7 DD 6E FA      [19] 4114 	ld	l,-6 (ix)
   55CA DD 66 FB      [19] 4115 	ld	h,-5 (ix)
   55CD 2B            [ 6] 4116 	dec	hl
   55CE DD 75 FA      [19] 4117 	ld	-6 (ix),l
   55D1 DD 74 FB      [19] 4118 	ld	-5 (ix),h
                           4119 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   55D4 DD 7E FA      [19] 4120 	ld	a,-6 (ix)
   55D7 DD 77 FE      [19] 4121 	ld	-2 (ix),a
                           4122 ;src/includes/game.h:190: drawWorld(ulx, uly);
   55DA DD 7E FF      [19] 4123 	ld	a,-1 (ix)
   55DD F5            [11] 4124 	push	af
   55DE 33            [ 6] 4125 	inc	sp
   55DF DD 7E FE      [19] 4126 	ld	a,-2 (ix)
   55E2 F5            [11] 4127 	push	af
   55E3 33            [ 6] 4128 	inc	sp
   55E4 CD 4F 4F      [17] 4129 	call	_drawWorld
   55E7 F1            [10] 4130 	pop	af
                           4131 ;src/includes/game.h:195: for(i=0; i<14000; i++) {}
   55E8                    4132 00186$:
   55E8 11 B0 36      [10] 4133 	ld	de,#0x36B0
   55EB                    4134 00161$:
   55EB 1B            [ 6] 4135 	dec	de
   55EC 7A            [ 4] 4136 	ld	a,d
   55ED B3            [ 4] 4137 	or	a,e
   55EE 20 FB         [12] 4138 	jr	NZ,00161$
   55F0                    4139 00121$:
                           4140 ;src/includes/game.h:198: if ( cpct_isKeyPressed(Key_CursorRight) )
   55F0 21 00 02      [10] 4141 	ld	hl,#0x0200
   55F3 CD F6 58      [17] 4142 	call	_cpct_isKeyPressed
   55F6 7D            [ 4] 4143 	ld	a,l
   55F7 B7            [ 4] 4144 	or	a, a
   55F8 28 6E         [12] 4145 	jr	Z,00128$
                           4146 ;src/includes/game.h:200: drawTile(ulx, uly, xCursor, yCursor);
   55FA DD 56 F3      [19] 4147 	ld	d,-13 (ix)
   55FD DD 7E FD      [19] 4148 	ld	a,-3 (ix)
   5600 F5            [11] 4149 	push	af
   5601 33            [ 6] 4150 	inc	sp
   5602 D5            [11] 4151 	push	de
   5603 33            [ 6] 4152 	inc	sp
   5604 DD 7E FF      [19] 4153 	ld	a,-1 (ix)
   5607 F5            [11] 4154 	push	af
   5608 33            [ 6] 4155 	inc	sp
   5609 DD 7E FE      [19] 4156 	ld	a,-2 (ix)
   560C F5            [11] 4157 	push	af
   560D 33            [ 6] 4158 	inc	sp
   560E CD DB 4D      [17] 4159 	call	_drawTile
   5611 F1            [10] 4160 	pop	af
   5612 F1            [10] 4161 	pop	af
                           4162 ;src/includes/game.h:201: xCursor+=1;
   5613 DD 34 F3      [23] 4163 	inc	-13 (ix)
   5616 20 03         [12] 4164 	jr	NZ,00298$
   5618 DD 34 F4      [23] 4165 	inc	-12 (ix)
   561B                    4166 00298$:
                           4167 ;src/includes/game.h:202: if(xCursor>NBTILE_W-1)
   561B 3E 13         [ 7] 4168 	ld	a,#0x13
   561D DD BE F3      [19] 4169 	cp	a, -13 (ix)
   5620 3E 00         [ 7] 4170 	ld	a,#0x00
   5622 DD 9E F4      [19] 4171 	sbc	a, -12 (ix)
   5625 E2 2A 56      [10] 4172 	jp	PO, 00299$
   5628 EE 80         [ 7] 4173 	xor	a, #0x80
   562A                    4174 00299$:
   562A F2 60 56      [10] 4175 	jp	P,00191$
                           4176 ;src/includes/game.h:204: xCursor=NBTILE_W-1;
   562D DD 36 F3 13   [19] 4177 	ld	-13 (ix),#0x13
   5631 DD 36 F4 00   [19] 4178 	ld	-12 (ix),#0x00
                           4179 ;src/includes/game.h:205: if(ulx<WIDTH-NBTILE_W)
   5635 DD 7E FA      [19] 4180 	ld	a,-6 (ix)
   5638 D6 3C         [ 7] 4181 	sub	a, #0x3C
   563A DD 7E FB      [19] 4182 	ld	a,-5 (ix)
   563D 17            [ 4] 4183 	rla
   563E 3F            [ 4] 4184 	ccf
   563F 1F            [ 4] 4185 	rra
   5640 DE 80         [ 7] 4186 	sbc	a, #0x80
   5642 30 1C         [12] 4187 	jr	NC,00191$
                           4188 ;src/includes/game.h:207: ulx+=1;
   5644 DD 34 FA      [23] 4189 	inc	-6 (ix)
   5647 20 03         [12] 4190 	jr	NZ,00300$
   5649 DD 34 FB      [23] 4191 	inc	-5 (ix)
   564C                    4192 00300$:
                           4193 ;src/includes/game.h:141: drawTile(ulx, uly, xCursor, yCursor);
   564C DD 7E FA      [19] 4194 	ld	a,-6 (ix)
   564F DD 77 FE      [19] 4195 	ld	-2 (ix),a
                           4196 ;src/includes/game.h:208: drawWorld(ulx, uly);
   5652 DD 7E FF      [19] 4197 	ld	a,-1 (ix)
   5655 F5            [11] 4198 	push	af
   5656 33            [ 6] 4199 	inc	sp
   5657 DD 7E FE      [19] 4200 	ld	a,-2 (ix)
   565A F5            [11] 4201 	push	af
   565B 33            [ 6] 4202 	inc	sp
   565C CD 4F 4F      [17] 4203 	call	_drawWorld
   565F F1            [10] 4204 	pop	af
                           4205 ;src/includes/game.h:213: for(i=0; i<14000; i++) {}
   5660                    4206 00191$:
   5660 11 B0 36      [10] 4207 	ld	de,#0x36B0
   5663                    4208 00164$:
   5663 1B            [ 6] 4209 	dec	de
   5664 7A            [ 4] 4210 	ld	a,d
   5665 B3            [ 4] 4211 	or	a,e
   5666 20 FB         [12] 4212 	jr	NZ,00164$
   5668                    4213 00128$:
                           4214 ;src/includes/game.h:217: if ( cpct_isKeyPressed(Key_Space) )
   5668 21 05 80      [10] 4215 	ld	hl,#0x8005
   566B CD F6 58      [17] 4216 	call	_cpct_isKeyPressed
   566E 7D            [ 4] 4217 	ld	a,l
   566F B7            [ 4] 4218 	or	a, a
   5670 28 5E         [12] 4219 	jr	Z,00138$
                           4220 ;src/includes/game.h:219: switch(CURSOR_MODE)
   5672 3A A1 6B      [13] 4221 	ld	a,(#_CURSOR_MODE + 0)
   5675 D6 01         [ 7] 4222 	sub	a, #0x01
   5677 38 4F         [12] 4223 	jr	C,00196$
   5679 3E 06         [ 7] 4224 	ld	a,#0x06
   567B FD 21 A1 6B   [14] 4225 	ld	iy,#_CURSOR_MODE
   567F FD 96 00      [19] 4226 	sub	a, 0 (iy)
   5682 38 44         [12] 4227 	jr	C,00196$
   5684 FD 21 A1 6B   [14] 4228 	ld	iy,#_CURSOR_MODE
   5688 FD 5E 00      [19] 4229 	ld	e,0 (iy)
   568B 1D            [ 4] 4230 	dec	e
   568C 16 00         [ 7] 4231 	ld	d,#0x00
   568E 21 94 56      [10] 4232 	ld	hl,#00301$
   5691 19            [11] 4233 	add	hl,de
   5692 19            [11] 4234 	add	hl,de
                           4235 ;src/includes/game.h:221: case T_SSNS:
   5693 E9            [ 4] 4236 	jp	(hl)
   5694                    4237 00301$:
   5694 18 0A         [12] 4238 	jr	00129$
   5696 18 0F         [12] 4239 	jr	00130$
   5698 18 14         [12] 4240 	jr	00131$
   569A 18 19         [12] 4241 	jr	00132$
   569C 18 1E         [12] 4242 	jr	00133$
   569E 18 23         [12] 4243 	jr	00134$
   56A0                    4244 00129$:
                           4245 ;src/includes/game.h:222: CURSOR_MODE=T_SSEW;
   56A0 21 A1 6B      [10] 4246 	ld	hl,#_CURSOR_MODE + 0
   56A3 36 02         [10] 4247 	ld	(hl), #0x02
                           4248 ;src/includes/game.h:223: break;
   56A5 18 21         [12] 4249 	jr	00196$
                           4250 ;src/includes/game.h:224: case T_SSEW:
   56A7                    4251 00130$:
                           4252 ;src/includes/game.h:225: CURSOR_MODE=T_SSNS;
   56A7 21 A1 6B      [10] 4253 	ld	hl,#_CURSOR_MODE + 0
   56AA 36 01         [10] 4254 	ld	(hl), #0x01
                           4255 ;src/includes/game.h:226: break;
   56AC 18 1A         [12] 4256 	jr	00196$
                           4257 ;src/includes/game.h:227: case T_SMNS:
   56AE                    4258 00131$:
                           4259 ;src/includes/game.h:228: CURSOR_MODE=T_SMEW;
   56AE 21 A1 6B      [10] 4260 	ld	hl,#_CURSOR_MODE + 0
   56B1 36 04         [10] 4261 	ld	(hl), #0x04
                           4262 ;src/includes/game.h:229: break;
   56B3 18 13         [12] 4263 	jr	00196$
                           4264 ;src/includes/game.h:230: case T_SMEW:
   56B5                    4265 00132$:
                           4266 ;src/includes/game.h:231: CURSOR_MODE=T_SMNS;
   56B5 21 A1 6B      [10] 4267 	ld	hl,#_CURSOR_MODE + 0
   56B8 36 03         [10] 4268 	ld	(hl), #0x03
                           4269 ;src/includes/game.h:232: break;
   56BA 18 0C         [12] 4270 	jr	00196$
                           4271 ;src/includes/game.h:233: case T_SLNS:
   56BC                    4272 00133$:
                           4273 ;src/includes/game.h:234: CURSOR_MODE=T_SLEW;
   56BC 21 A1 6B      [10] 4274 	ld	hl,#_CURSOR_MODE + 0
   56BF 36 06         [10] 4275 	ld	(hl), #0x06
                           4276 ;src/includes/game.h:235: break;
   56C1 18 05         [12] 4277 	jr	00196$
                           4278 ;src/includes/game.h:236: case T_SLEW:
   56C3                    4279 00134$:
                           4280 ;src/includes/game.h:237: CURSOR_MODE=T_SLNS;
   56C3 21 A1 6B      [10] 4281 	ld	hl,#_CURSOR_MODE + 0
   56C6 36 05         [10] 4282 	ld	(hl), #0x05
                           4283 ;src/includes/game.h:241: for(i=0; i<14000; i++) {}
   56C8                    4284 00196$:
   56C8 21 B0 36      [10] 4285 	ld	hl,#0x36B0
   56CB                    4286 00167$:
   56CB 2B            [ 6] 4287 	dec	hl
   56CC 7C            [ 4] 4288 	ld	a,h
   56CD B5            [ 4] 4289 	or	a,l
   56CE 20 FB         [12] 4290 	jr	NZ,00167$
   56D0                    4291 00138$:
                           4292 ;src/includes/game.h:244: if ( cpct_isKeyPressed(Key_Esc) )
   56D0 21 08 04      [10] 4293 	ld	hl,#0x0408
   56D3 CD F6 58      [17] 4294 	call	_cpct_isKeyPressed
   56D6 7D            [ 4] 4295 	ld	a,l
   56D7 B7            [ 4] 4296 	or	a, a
   56D8 28 04         [12] 4297 	jr	Z,00140$
                           4298 ;src/includes/game.h:246: exit=1;
   56DA DD 36 F5 01   [19] 4299 	ld	-11 (ix),#0x01
   56DE                    4300 00140$:
                           4301 ;src/includes/game.h:249: if ( cpct_isKeyPressed(Key_Return) )
   56DE 21 02 04      [10] 4302 	ld	hl,#0x0402
   56E1 CD F6 58      [17] 4303 	call	_cpct_isKeyPressed
   56E4 7D            [ 4] 4304 	ld	a,l
   56E5 B7            [ 4] 4305 	or	a, a
   56E6 CA 86 57      [10] 4306 	jp	Z,00149$
                           4307 ;src/includes/game.h:251: if(CURSOR_MODE==NONE)
   56E9 3A A1 6B      [13] 4308 	ld	a,(#_CURSOR_MODE + 0)
   56EC B7            [ 4] 4309 	or	a, a
   56ED 20 42         [12] 4310 	jr	NZ,00145$
                           4311 ;src/includes/game.h:253: menuTile(ulx+xCursor, uly+yCursor);
   56EF DD 7E F6      [19] 4312 	ld	a, -10 (ix)
   56F2 DD 6E F8      [19] 4313 	ld	l, -8 (ix)
   56F5 85            [ 4] 4314 	add	a, l
   56F6 67            [ 4] 4315 	ld	h,a
   56F7 DD 6E FA      [19] 4316 	ld	l,-6 (ix)
   56FA DD 56 F3      [19] 4317 	ld	d,-13 (ix)
   56FD 7D            [ 4] 4318 	ld	a,l
   56FE 82            [ 4] 4319 	add	a, d
   56FF E5            [11] 4320 	push	hl
   5700 33            [ 6] 4321 	inc	sp
   5701 F5            [11] 4322 	push	af
   5702 33            [ 6] 4323 	inc	sp
   5703 CD 39 53      [17] 4324 	call	_menuTile
   5706 F1            [10] 4325 	pop	af
                           4326 ;src/includes/game.h:254: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5707 21 00 00      [10] 4327 	ld	hl,#0x0000
   570A E5            [11] 4328 	push	hl
   570B 2E 00         [ 7] 4329 	ld	l, #0x00
   570D E5            [11] 4330 	push	hl
   570E CD 03 5B      [17] 4331 	call	_cpct_px2byteM1
   5711 F1            [10] 4332 	pop	af
   5712 F1            [10] 4333 	pop	af
   5713 65            [ 4] 4334 	ld	h,l
   5714 01 00 40      [10] 4335 	ld	bc,#0x4000
   5717 C5            [11] 4336 	push	bc
   5718 E5            [11] 4337 	push	hl
   5719 33            [ 6] 4338 	inc	sp
   571A 21 00 C0      [10] 4339 	ld	hl,#0xC000
   571D E5            [11] 4340 	push	hl
   571E CD F5 5A      [17] 4341 	call	_cpct_memset
                           4342 ;src/includes/game.h:255: drawWorld(ulx, uly);
   5721 DD 7E FF      [19] 4343 	ld	a,-1 (ix)
   5724 F5            [11] 4344 	push	af
   5725 33            [ 6] 4345 	inc	sp
   5726 DD 7E FE      [19] 4346 	ld	a,-2 (ix)
   5729 F5            [11] 4347 	push	af
   572A 33            [ 6] 4348 	inc	sp
   572B CD 4F 4F      [17] 4349 	call	_drawWorld
   572E F1            [10] 4350 	pop	af
   572F 18 4D         [12] 4351 	jr	00203$
   5731                    4352 00145$:
                           4353 ;src/includes/game.h:257: else if(CURSOR_MODE>=T_SSNS && CURSOR_MODE<=T_SLEW)
   5731 3A A1 6B      [13] 4354 	ld	a,(#_CURSOR_MODE + 0)
   5734 D6 01         [ 7] 4355 	sub	a, #0x01
   5736 38 46         [12] 4356 	jr	C,00203$
   5738 3E 06         [ 7] 4357 	ld	a,#0x06
   573A FD 21 A1 6B   [14] 4358 	ld	iy,#_CURSOR_MODE
   573E FD 96 00      [19] 4359 	sub	a, 0 (iy)
   5741 38 3B         [12] 4360 	jr	C,00203$
                           4361 ;src/includes/game.h:259: p_world[ulx+xCursor+uly+yCursor*WIDTH]=CURSOR_MODE+9;
   5743 DD 7E FA      [19] 4362 	ld	a,-6 (ix)
   5746 DD 86 F3      [19] 4363 	add	a, -13 (ix)
   5749 67            [ 4] 4364 	ld	h,a
   574A DD 7E FB      [19] 4365 	ld	a,-5 (ix)
   574D DD 8E F4      [19] 4366 	adc	a, -12 (ix)
   5750 6F            [ 4] 4367 	ld	l,a
   5751 7C            [ 4] 4368 	ld	a,h
   5752 DD 86 F6      [19] 4369 	add	a, -10 (ix)
   5755 5F            [ 4] 4370 	ld	e,a
   5756 7D            [ 4] 4371 	ld	a,l
   5757 DD 8E F7      [19] 4372 	adc	a, -9 (ix)
   575A 57            [ 4] 4373 	ld	d,a
   575B DD 4E F8      [19] 4374 	ld	c,-8 (ix)
   575E DD 46 F9      [19] 4375 	ld	b,-7 (ix)
   5761 69            [ 4] 4376 	ld	l, c
   5762 60            [ 4] 4377 	ld	h, b
   5763 29            [11] 4378 	add	hl, hl
   5764 29            [11] 4379 	add	hl, hl
   5765 09            [11] 4380 	add	hl, bc
   5766 29            [11] 4381 	add	hl, hl
   5767 29            [11] 4382 	add	hl, hl
   5768 29            [11] 4383 	add	hl, hl
   5769 29            [11] 4384 	add	hl, hl
   576A 19            [11] 4385 	add	hl,de
   576B 3E A1         [ 7] 4386 	ld	a,#<(_p_world)
   576D 85            [ 4] 4387 	add	a, l
   576E 5F            [ 4] 4388 	ld	e,a
   576F 3E 5C         [ 7] 4389 	ld	a,#>(_p_world)
   5771 8C            [ 4] 4390 	adc	a, h
   5772 57            [ 4] 4391 	ld	d,a
   5773 3A A1 6B      [13] 4392 	ld	a,(#_CURSOR_MODE + 0)
   5776 C6 09         [ 7] 4393 	add	a, #0x09
   5778 12            [ 7] 4394 	ld	(de),a
                           4395 ;src/includes/game.h:260: CURSOR_MODE=NONE;
   5779 21 A1 6B      [10] 4396 	ld	hl,#_CURSOR_MODE + 0
   577C 36 00         [10] 4397 	ld	(hl), #0x00
                           4398 ;src/includes/game.h:264: for(i=0; i<14000; i++) {}
   577E                    4399 00203$:
   577E 21 B0 36      [10] 4400 	ld	hl,#0x36B0
   5781                    4401 00170$:
   5781 2B            [ 6] 4402 	dec	hl
   5782 7C            [ 4] 4403 	ld	a,h
   5783 B5            [ 4] 4404 	or	a,l
   5784 20 FB         [12] 4405 	jr	NZ,00170$
   5786                    4406 00149$:
                           4407 ;src/includes/game.h:268: drawCursor(xCursor, yCursor, 0);
   5786 DD 56 F3      [19] 4408 	ld	d,-13 (ix)
   5789 AF            [ 4] 4409 	xor	a, a
   578A F5            [11] 4410 	push	af
   578B 33            [ 6] 4411 	inc	sp
   578C DD 7E FD      [19] 4412 	ld	a,-3 (ix)
   578F F5            [11] 4413 	push	af
   5790 33            [ 6] 4414 	inc	sp
   5791 D5            [11] 4415 	push	de
   5792 33            [ 6] 4416 	inc	sp
   5793 CD DE 4A      [17] 4417 	call	_drawCursor
   5796 F1            [10] 4418 	pop	af
   5797 33            [ 6] 4419 	inc	sp
                           4420 ;src/includes/game.h:270: while(!exit);
   5798 DD 7E F5      [19] 4421 	ld	a,-11 (ix)
   579B B7            [ 4] 4422 	or	a, a
   579C CA 6C 54      [10] 4423 	jp	Z,00150$
   579F DD F9         [10] 4424 	ld	sp, ix
   57A1 DD E1         [14] 4425 	pop	ix
   57A3 C9            [10] 4426 	ret
                           4427 ;src/main.c:17: void drawTrain() 
                           4428 ;	---------------------------------
                           4429 ; Function drawTrain
                           4430 ; ---------------------------------
   57A4                    4431 _drawTrain::
                           4432 ;src/main.c:55: }
   57A4 C9            [10] 4433 	ret
                           4434 ;src/main.c:58: void main(void)
                           4435 ;	---------------------------------
                           4436 ; Function main
                           4437 ; ---------------------------------
   57A5                    4438 _main::
   57A5 DD E5         [15] 4439 	push	ix
   57A7 DD 21 00 00   [14] 4440 	ld	ix,#0
   57AB DD 39         [15] 4441 	add	ix,sp
   57AD 21 ED FF      [10] 4442 	ld	hl,#-19
   57B0 39            [11] 4443 	add	hl,sp
   57B1 F9            [ 6] 4444 	ld	sp,hl
                           4445 ;src/main.c:63: const char *menuMain[] = { 
   57B2 21 07 00      [10] 4446 	ld	hl,#0x0007
   57B5 39            [11] 4447 	add	hl,sp
   57B6 5D            [ 4] 4448 	ld	e,l
   57B7 54            [ 4] 4449 	ld	d,h
   57B8 36 9F         [10] 4450 	ld	(hl),#<(___str_30)
   57BA 23            [ 6] 4451 	inc	hl
   57BB 36 58         [10] 4452 	ld	(hl),#>(___str_30)
   57BD 6B            [ 4] 4453 	ld	l, e
   57BE 62            [ 4] 4454 	ld	h, d
   57BF 23            [ 6] 4455 	inc	hl
   57C0 23            [ 6] 4456 	inc	hl
   57C1 01 A8 58      [10] 4457 	ld	bc,#___str_31+0
   57C4 71            [ 7] 4458 	ld	(hl),c
   57C5 23            [ 6] 4459 	inc	hl
   57C6 70            [ 7] 4460 	ld	(hl),b
   57C7 21 04 00      [10] 4461 	ld	hl,#0x0004
   57CA 19            [11] 4462 	add	hl,de
   57CB 01 B0 58      [10] 4463 	ld	bc,#___str_32+0
   57CE 71            [ 7] 4464 	ld	(hl),c
   57CF 23            [ 6] 4465 	inc	hl
   57D0 70            [ 7] 4466 	ld	(hl),b
                           4467 ;src/main.c:69: const char *windowCredit[] = { 
   57D1 21 00 00      [10] 4468 	ld	hl,#0x0000
   57D4 39            [11] 4469 	add	hl,sp
   57D5 DD 75 FC      [19] 4470 	ld	-4 (ix),l
   57D8 DD 74 FD      [19] 4471 	ld	-3 (ix),h
   57DB DD 6E FC      [19] 4472 	ld	l,-4 (ix)
   57DE DD 66 FD      [19] 4473 	ld	h,-3 (ix)
   57E1 36 B5         [10] 4474 	ld	(hl),#<(___str_33)
   57E3 23            [ 6] 4475 	inc	hl
   57E4 36 58         [10] 4476 	ld	(hl),#>(___str_33)
   57E6 DD 6E FC      [19] 4477 	ld	l,-4 (ix)
   57E9 DD 66 FD      [19] 4478 	ld	h,-3 (ix)
   57EC 23            [ 6] 4479 	inc	hl
   57ED 23            [ 6] 4480 	inc	hl
   57EE 01 BE 58      [10] 4481 	ld	bc,#___str_34+0
   57F1 71            [ 7] 4482 	ld	(hl),c
   57F2 23            [ 6] 4483 	inc	hl
   57F3 70            [ 7] 4484 	ld	(hl),b
   57F4 DD 7E FC      [19] 4485 	ld	a,-4 (ix)
   57F7 C6 04         [ 7] 4486 	add	a, #0x04
   57F9 6F            [ 4] 4487 	ld	l,a
   57FA DD 7E FD      [19] 4488 	ld	a,-3 (ix)
   57FD CE 00         [ 7] 4489 	adc	a, #0x00
   57FF 67            [ 4] 4490 	ld	h,a
   5800 01 BF 58      [10] 4491 	ld	bc,#___str_35+0
   5803 71            [ 7] 4492 	ld	(hl),c
   5804 23            [ 6] 4493 	inc	hl
   5805 70            [ 7] 4494 	ld	(hl),b
                           4495 ;src/main.c:75: firmware = cpct_disableFirmware();
   5806 D5            [11] 4496 	push	de
   5807 CD 2B 5B      [17] 4497 	call	_cpct_disableFirmware
   580A D1            [10] 4498 	pop	de
   580B DD 75 FA      [19] 4499 	ld	-6 (ix),l
   580E DD 74 FB      [19] 4500 	ld	-5 (ix),h
                           4501 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   5811 21 13 40      [10] 4502 	ld	hl,#_paletteTrains
   5814 D5            [11] 4503 	push	de
   5815 01 10 00      [10] 4504 	ld	bc,#0x0010
   5818 C5            [11] 4505 	push	bc
   5819 E5            [11] 4506 	push	hl
   581A CD 37 5A      [17] 4507 	call	_cpct_fw2hw
   581D D1            [10] 4508 	pop	de
                           4509 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   581E 21 27 40      [10] 4510 	ld	hl,#_paletteMenusM2
   5821 D5            [11] 4511 	push	de
   5822 01 02 00      [10] 4512 	ld	bc,#0x0002
   5825 C5            [11] 4513 	push	bc
   5826 E5            [11] 4514 	push	hl
   5827 CD 37 5A      [17] 4515 	call	_cpct_fw2hw
   582A D1            [10] 4516 	pop	de
                           4517 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   582B 21 23 40      [10] 4518 	ld	hl,#_paletteMenusM1
   582E D5            [11] 4519 	push	de
   582F 01 04 00      [10] 4520 	ld	bc,#0x0004
   5832 C5            [11] 4521 	push	bc
   5833 E5            [11] 4522 	push	hl
   5834 CD 37 5A      [17] 4523 	call	_cpct_fw2hw
   5837 D1            [10] 4524 	pop	de
                           4525 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   5838 3A 1F 40      [13] 4526 	ld	a, (#_paletteTrains + 12)
   583B D5            [11] 4527 	push	de
   583C 57            [ 4] 4528 	ld	d,a
   583D 1E 10         [ 7] 4529 	ld	e,#0x10
   583F D5            [11] 4530 	push	de
   5840 CD 02 59      [17] 4531 	call	_cpct_setPALColour
   5843 CD 3D 44      [17] 4532 	call	_putM2
   5846 D1            [10] 4533 	pop	de
                           4534 ;src/main.c:85: do{
   5847 DD 73 FE      [19] 4535 	ld	-2 (ix),e
   584A DD 72 FF      [19] 4536 	ld	-1 (ix),d
   584D                    4537 00105$:
                           4538 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   584D DD 5E FE      [19] 4539 	ld	e,-2 (ix)
   5850 DD 56 FF      [19] 4540 	ld	d,-1 (ix)
   5853 3E 03         [ 7] 4541 	ld	a,#0x03
   5855 F5            [11] 4542 	push	af
   5856 33            [ 6] 4543 	inc	sp
   5857 D5            [11] 4544 	push	de
   5858 CD 43 48      [17] 4545 	call	_drawMenu
   585B F1            [10] 4546 	pop	af
   585C 33            [ 6] 4547 	inc	sp
                           4548 ;src/main.c:88: if(menuChoice==0)
   585D DD 75 F3      [19] 4549 	ld	-13 (ix), l
   5860 7D            [ 4] 4550 	ld	a, l
   5861 B7            [ 4] 4551 	or	a, a
   5862 20 09         [12] 4552 	jr	NZ,00102$
                           4553 ;src/main.c:90: putM1();
   5864 CD 29 44      [17] 4554 	call	_putM1
                           4555 ;src/main.c:92: game();
   5867 CD 16 54      [17] 4556 	call	_game
                           4557 ;src/main.c:94: putM2();
   586A CD 3D 44      [17] 4558 	call	_putM2
   586D                    4559 00102$:
                           4560 ;src/main.c:97: if(menuChoice==1)
   586D DD 7E F3      [19] 4561 	ld	a,-13 (ix)
   5870 3D            [ 4] 4562 	dec	a
   5871 20 10         [12] 4563 	jr	NZ,00106$
                           4564 ;src/main.c:98: drawWindow(windowCredit,3,0);
   5873 DD 5E FC      [19] 4565 	ld	e,-4 (ix)
   5876 DD 56 FD      [19] 4566 	ld	d,-3 (ix)
   5879 21 03 00      [10] 4567 	ld	hl,#0x0003
   587C E5            [11] 4568 	push	hl
   587D D5            [11] 4569 	push	de
   587E CD 41 49      [17] 4570 	call	_drawWindow
   5881 F1            [10] 4571 	pop	af
   5882 F1            [10] 4572 	pop	af
   5883                    4573 00106$:
                           4574 ;src/main.c:100: while(menuChoice!=2);
   5883 DD 7E F3      [19] 4575 	ld	a,-13 (ix)
   5886 D6 02         [ 7] 4576 	sub	a, #0x02
   5888 20 C3         [12] 4577 	jr	NZ,00105$
                           4578 ;src/main.c:102: cpct_setVideoMode(0);
   588A AF            [ 4] 4579 	xor	a, a
   588B F5            [11] 4580 	push	af
   588C 33            [ 6] 4581 	inc	sp
   588D CD C7 5A      [17] 4582 	call	_cpct_setVideoMode
   5890 33            [ 6] 4583 	inc	sp
                           4584 ;src/main.c:103: cpct_reenableFirmware(firmware);
   5891 DD 6E FA      [19] 4585 	ld	l,-6 (ix)
   5894 DD 66 FB      [19] 4586 	ld	h,-5 (ix)
   5897 CD 95 5A      [17] 4587 	call	_cpct_reenableFirmware
   589A DD F9         [10] 4588 	ld	sp, ix
   589C DD E1         [14] 4589 	pop	ix
   589E C9            [10] 4590 	ret
   589F                    4591 ___str_30:
   589F 4E 65 77 20 67 61  4592 	.ascii "New game"
        6D 65
   58A7 00                 4593 	.db 0x00
   58A8                    4594 ___str_31:
   58A8 43 72 65 64 69 74  4595 	.ascii "Credits"
        73
   58AF 00                 4596 	.db 0x00
   58B0                    4597 ___str_32:
   58B0 51 75 69 74        4598 	.ascii "Quit"
   58B4 00                 4599 	.db 0x00
   58B5                    4600 ___str_33:
   58B5 52 61 69 6C 77 61  4601 	.ascii "Railways"
        79 73
   58BD 00                 4602 	.db 0x00
   58BE                    4603 ___str_34:
   58BE 00                 4604 	.db 0x00
   58BF                    4605 ___str_35:
   58BF 54 72 65 77 64 62  4606 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   58D9 00                 4607 	.db 0x00
                           4608 	.area _CODE
                           4609 	.area _INITIALIZER
   6BA2                    4610 __xinit__CURSOR_MODE:
   6BA2 00                 4611 	.db #0x00	; 0
                           4612 	.area _CABS (ABS)
