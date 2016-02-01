                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  1 22:11:01 2016
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
                             51 	.globl _rail_ns_e
                             52 	.globl _rail_ns_w
                             53 	.globl _rail_ew_s
                             54 	.globl _rail_ew_n
                             55 	.globl _rail_ws
                             56 	.globl _rail_wn
                             57 	.globl _rail_es
                             58 	.globl _rail_en
                             59 	.globl _rail_ns
                             60 	.globl _rail_ew
                             61 	.globl _station_large_ew
                             62 	.globl _station_large_ns
                             63 	.globl _station_medium_ew
                             64 	.globl _station_medium_ns
                             65 	.globl _station_small_ew
                             66 	.globl _station_small_ns
                             67 	.globl _livestock
                             68 	.globl _farm2
                             69 	.globl _farm1
                             70 	.globl _water
                             71 	.globl _dwellings3
                             72 	.globl _dwellings2
                             73 	.globl _dwellings1
                             74 	.globl _forest
                             75 	.globl _grass2
                             76 	.globl _grass1
                             77 	.globl _paletteMenusM2
                             78 	.globl _paletteMenusM1
                             79 	.globl _paletteTrains
                             80 ;--------------------------------------------------------
                             81 ; special function registers
                             82 ;--------------------------------------------------------
                             83 ;--------------------------------------------------------
                             84 ; ram data
                             85 ;--------------------------------------------------------
                             86 	.area _DATA
   60DF                      87 _p_world::
   60DF                      88 	.ds 3840
                             89 ;--------------------------------------------------------
                             90 ; ram data
                             91 ;--------------------------------------------------------
                             92 	.area _INITIALIZED
   6FDF                      93 _CURSOR_MODE::
   6FDF                      94 	.ds 1
                             95 ;--------------------------------------------------------
                             96 ; absolute external ram data
                             97 ;--------------------------------------------------------
                             98 	.area _DABS (ABS)
                             99 ;--------------------------------------------------------
                            100 ; global & static initialisations
                            101 ;--------------------------------------------------------
                            102 	.area _HOME
                            103 	.area _GSINIT
                            104 	.area _GSFINAL
                            105 	.area _GSINIT
                            106 ;--------------------------------------------------------
                            107 ; Home
                            108 ;--------------------------------------------------------
                            109 	.area _HOME
                            110 	.area _HOME
                            111 ;--------------------------------------------------------
                            112 ; code
                            113 ;--------------------------------------------------------
                            114 	.area _CODE
                            115 ;src/includes/gui.h:1: void putM0(void)
                            116 ;	---------------------------------
                            117 ; Function putM0
                            118 ; ---------------------------------
   4000                     119 _putM0::
                            120 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]  121 	xor	a, a
   4001 F5            [11]  122 	push	af
   4002 33            [ 6]  123 	inc	sp
   4003 CD 05 5F      [17]  124 	call	_cpct_setVideoMode
   4006 33            [ 6]  125 	inc	sp
                            126 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  127 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  128 	ld	bc,#0x0010
   400D C5            [11]  129 	push	bc
   400E E5            [11]  130 	push	hl
   400F CD 1D 5D      [17]  131 	call	_cpct_setPalette
   4012 C9            [10]  132 	ret
   4013                     133 _paletteTrains:
   4013 00                  134 	.db #0x00	; 0
   4014 1A                  135 	.db #0x1A	; 26
   4015 0D                  136 	.db #0x0D	; 13
   4016 03                  137 	.db #0x03	; 3
   4017 0F                  138 	.db #0x0F	; 15
   4018 06                  139 	.db #0x06	; 6
   4019 10                  140 	.db #0x10	; 16
   401A 09                  141 	.db #0x09	; 9
   401B 0A                  142 	.db #0x0A	; 10
   401C 14                  143 	.db #0x14	; 20
   401D 02                  144 	.db #0x02	; 2
   401E 01                  145 	.db #0x01	; 1
   401F 13                  146 	.db #0x13	; 19
   4020 18                  147 	.db #0x18	; 24
   4021 0B                  148 	.db #0x0B	; 11
   4022 19                  149 	.db #0x19	; 25
   4023                     150 _paletteMenusM1:
   4023 00                  151 	.db #0x00	; 0
   4024 0F                  152 	.db #0x0F	; 15
   4025 09                  153 	.db #0x09	; 9
   4026 16                  154 	.db #0x16	; 22
   4027                     155 _paletteMenusM2:
   4027 00                  156 	.db #0x00	; 0
   4028 14                  157 	.db #0x14	; 20
   4029                     158 _grass1:
   4029 0F                  159 	.db #0x0F	; 15
   402A 0F                  160 	.db #0x0F	; 15
   402B 0F                  161 	.db #0x0F	; 15
   402C 8F                  162 	.db #0x8F	; 143
   402D 0F                  163 	.db #0x0F	; 15
   402E 0F                  164 	.db #0x0F	; 15
   402F 0F                  165 	.db #0x0F	; 15
   4030 0F                  166 	.db #0x0F	; 15
   4031 1F                  167 	.db #0x1F	; 31
   4032 0F                  168 	.db #0x0F	; 15
   4033 2F                  169 	.db #0x2F	; 47
   4034 0F                  170 	.db #0x0F	; 15
   4035 0F                  171 	.db #0x0F	; 15
   4036 0F                  172 	.db #0x0F	; 15
   4037 0F                  173 	.db #0x0F	; 15
   4038 0F                  174 	.db #0x0F	; 15
   4039 0F                  175 	.db #0x0F	; 15
   403A 0F                  176 	.db #0x0F	; 15
   403B 0F                  177 	.db #0x0F	; 15
   403C 0F                  178 	.db #0x0F	; 15
   403D 0F                  179 	.db #0x0F	; 15
   403E 0F                  180 	.db #0x0F	; 15
   403F 0F                  181 	.db #0x0F	; 15
   4040 0F                  182 	.db #0x0F	; 15
   4041 0F                  183 	.db #0x0F	; 15
   4042 0F                  184 	.db #0x0F	; 15
   4043 0F                  185 	.db #0x0F	; 15
   4044 0F                  186 	.db #0x0F	; 15
   4045 4F                  187 	.db #0x4F	; 79	'O'
   4046 0F                  188 	.db #0x0F	; 15
   4047 0F                  189 	.db #0x0F	; 15
   4048 8F                  190 	.db #0x8F	; 143
   4049 0F                  191 	.db #0x0F	; 15
   404A 4F                  192 	.db #0x4F	; 79	'O'
   404B 0F                  193 	.db #0x0F	; 15
   404C 0F                  194 	.db #0x0F	; 15
   404D 0F                  195 	.db #0x0F	; 15
   404E 0F                  196 	.db #0x0F	; 15
   404F 0F                  197 	.db #0x0F	; 15
   4050 0F                  198 	.db #0x0F	; 15
   4051 0F                  199 	.db #0x0F	; 15
   4052 0F                  200 	.db #0x0F	; 15
   4053 0F                  201 	.db #0x0F	; 15
   4054 0F                  202 	.db #0x0F	; 15
   4055 0F                  203 	.db #0x0F	; 15
   4056 1F                  204 	.db #0x1F	; 31
   4057 0F                  205 	.db #0x0F	; 15
   4058 0F                  206 	.db #0x0F	; 15
   4059 0F                  207 	.db #0x0F	; 15
   405A 0F                  208 	.db #0x0F	; 15
   405B 0F                  209 	.db #0x0F	; 15
   405C 8F                  210 	.db #0x8F	; 143
   405D 0F                  211 	.db #0x0F	; 15
   405E 0F                  212 	.db #0x0F	; 15
   405F 0F                  213 	.db #0x0F	; 15
   4060 0F                  214 	.db #0x0F	; 15
   4061 0F                  215 	.db #0x0F	; 15
   4062 0F                  216 	.db #0x0F	; 15
   4063 0F                  217 	.db #0x0F	; 15
   4064 0F                  218 	.db #0x0F	; 15
   4065 4F                  219 	.db #0x4F	; 79	'O'
   4066 0F                  220 	.db #0x0F	; 15
   4067 8F                  221 	.db #0x8F	; 143
   4068 0F                  222 	.db #0x0F	; 15
   4069                     223 _grass2:
   4069 0F                  224 	.db #0x0F	; 15
   406A 0F                  225 	.db #0x0F	; 15
   406B 0F                  226 	.db #0x0F	; 15
   406C 0F                  227 	.db #0x0F	; 15
   406D 0F                  228 	.db #0x0F	; 15
   406E 0F                  229 	.db #0x0F	; 15
   406F 0F                  230 	.db #0x0F	; 15
   4070 2F                  231 	.db #0x2F	; 47
   4071 0F                  232 	.db #0x0F	; 15
   4072 8F                  233 	.db #0x8F	; 143
   4073 0F                  234 	.db #0x0F	; 15
   4074 0F                  235 	.db #0x0F	; 15
   4075 0F                  236 	.db #0x0F	; 15
   4076 0F                  237 	.db #0x0F	; 15
   4077 0F                  238 	.db #0x0F	; 15
   4078 0F                  239 	.db #0x0F	; 15
   4079 0F                  240 	.db #0x0F	; 15
   407A 0F                  241 	.db #0x0F	; 15
   407B 0F                  242 	.db #0x0F	; 15
   407C 0F                  243 	.db #0x0F	; 15
   407D 4F                  244 	.db #0x4F	; 79	'O'
   407E 0F                  245 	.db #0x0F	; 15
   407F 0F                  246 	.db #0x0F	; 15
   4080 0F                  247 	.db #0x0F	; 15
   4081 0F                  248 	.db #0x0F	; 15
   4082 0F                  249 	.db #0x0F	; 15
   4083 2F                  250 	.db #0x2F	; 47
   4084 0F                  251 	.db #0x0F	; 15
   4085 0F                  252 	.db #0x0F	; 15
   4086 0F                  253 	.db #0x0F	; 15
   4087 0F                  254 	.db #0x0F	; 15
   4088 0F                  255 	.db #0x0F	; 15
   4089 0F                  256 	.db #0x0F	; 15
   408A 4F                  257 	.db #0x4F	; 79	'O'
   408B 0F                  258 	.db #0x0F	; 15
   408C 0F                  259 	.db #0x0F	; 15
   408D 0F                  260 	.db #0x0F	; 15
   408E 0F                  261 	.db #0x0F	; 15
   408F 0F                  262 	.db #0x0F	; 15
   4090 0F                  263 	.db #0x0F	; 15
   4091 0F                  264 	.db #0x0F	; 15
   4092 0F                  265 	.db #0x0F	; 15
   4093 0F                  266 	.db #0x0F	; 15
   4094 0F                  267 	.db #0x0F	; 15
   4095 0F                  268 	.db #0x0F	; 15
   4096 0F                  269 	.db #0x0F	; 15
   4097 0F                  270 	.db #0x0F	; 15
   4098 8F                  271 	.db #0x8F	; 143
   4099 0F                  272 	.db #0x0F	; 15
   409A 0F                  273 	.db #0x0F	; 15
   409B 0F                  274 	.db #0x0F	; 15
   409C 0F                  275 	.db #0x0F	; 15
   409D 2F                  276 	.db #0x2F	; 47
   409E 1F                  277 	.db #0x1F	; 31
   409F 0F                  278 	.db #0x0F	; 15
   40A0 0F                  279 	.db #0x0F	; 15
   40A1 0F                  280 	.db #0x0F	; 15
   40A2 0F                  281 	.db #0x0F	; 15
   40A3 0F                  282 	.db #0x0F	; 15
   40A4 2F                  283 	.db #0x2F	; 47
   40A5 0F                  284 	.db #0x0F	; 15
   40A6 0F                  285 	.db #0x0F	; 15
   40A7 0F                  286 	.db #0x0F	; 15
   40A8 0F                  287 	.db #0x0F	; 15
   40A9                     288 _forest:
   40A9 0F                  289 	.db #0x0F	; 15
   40AA 0F                  290 	.db #0x0F	; 15
   40AB 0E                  291 	.db #0x0E	; 14
   40AC 03                  292 	.db #0x03	; 3
   40AD 0E                  293 	.db #0x0E	; 14
   40AE 03                  294 	.db #0x03	; 3
   40AF 0E                  295 	.db #0x0E	; 14
   40B0 EF                  296 	.db #0xEF	; 239
   40B1 0E                  297 	.db #0x0E	; 14
   40B2 EF                  298 	.db #0xEF	; 239
   40B3 0F                  299 	.db #0x0F	; 15
   40B4 EF                  300 	.db #0xEF	; 239
   40B5 0E                  301 	.db #0x0E	; 14
   40B6 FF                  302 	.db #0xFF	; 255
   40B7 0F                  303 	.db #0x0F	; 15
   40B8 0F                  304 	.db #0x0F	; 15
   40B9 07                  305 	.db #0x07	; 7
   40BA 6F                  306 	.db #0x6F	; 111	'o'
   40BB 0C                  307 	.db #0x0C	; 12
   40BC 0F                  308 	.db #0x0F	; 15
   40BD CF                  309 	.db #0xCF	; 207
   40BE 0F                  310 	.db #0x0F	; 15
   40BF 19                  311 	.db #0x19	; 25
   40C0 8F                  312 	.db #0x8F	; 143
   40C1 CE                  313 	.db #0xCE	; 206
   40C2 03                  314 	.db #0x03	; 3
   40C3 3B                  315 	.db #0x3B	; 59
   40C4 8F                  316 	.db #0x8F	; 143
   40C5 CE                  317 	.db #0xCE	; 206
   40C6 CF                  318 	.db #0xCF	; 207
   40C7 3B                  319 	.db #0x3B	; 59
   40C8 0F                  320 	.db #0x0F	; 15
   40C9 0E                  321 	.db #0x0E	; 14
   40CA EF                  322 	.db #0xEF	; 239
   40CB 3F                  323 	.db #0x3F	; 63
   40CC 0F                  324 	.db #0x0F	; 15
   40CD 0F                  325 	.db #0x0F	; 15
   40CE EF                  326 	.db #0xEF	; 239
   40CF 0F                  327 	.db #0x0F	; 15
   40D0 0F                  328 	.db #0x0F	; 15
   40D1 0E                  329 	.db #0x0E	; 14
   40D2 07                  330 	.db #0x07	; 7
   40D3 03                  331 	.db #0x03	; 3
   40D4 0F                  332 	.db #0x0F	; 15
   40D5 1D                  333 	.db #0x1D	; 29
   40D6 CE                  334 	.db #0xCE	; 206
   40D7 EF                  335 	.db #0xEF	; 239
   40D8 09                  336 	.db #0x09	; 9
   40D9 3B                  337 	.db #0x3B	; 59
   40DA 8F                  338 	.db #0x8F	; 143
   40DB CE                  339 	.db #0xCE	; 206
   40DC 67                  340 	.db #0x67	; 103	'g'
   40DD 3B                  341 	.db #0x3B	; 59
   40DE 8F                  342 	.db #0x8F	; 143
   40DF 1D                  343 	.db #0x1D	; 29
   40E0 EF                  344 	.db #0xEF	; 239
   40E1 2F                  345 	.db #0x2F	; 47
   40E2 0F                  346 	.db #0x0F	; 15
   40E3 1D                  347 	.db #0x1D	; 29
   40E4 EF                  348 	.db #0xEF	; 239
   40E5 0F                  349 	.db #0x0F	; 15
   40E6 0F                  350 	.db #0x0F	; 15
   40E7 0F                  351 	.db #0x0F	; 15
   40E8 CF                  352 	.db #0xCF	; 207
   40E9                     353 _dwellings1:
   40E9 0F                  354 	.db #0x0F	; 15
   40EA 0F                  355 	.db #0x0F	; 15
   40EB 0F                  356 	.db #0x0F	; 15
   40EC 0F                  357 	.db #0x0F	; 15
   40ED 08                  358 	.db #0x08	; 8
   40EE 03                  359 	.db #0x03	; 3
   40EF 0C                  360 	.db #0x0C	; 12
   40F0 07                  361 	.db #0x07	; 7
   40F1 38                  362 	.db #0x38	; 56	'8'
   40F2 E1                  363 	.db #0xE1	; 225
   40F3 1C                  364 	.db #0x1C	; 28
   40F4 C3                  365 	.db #0xC3	; 195
   40F5 3C                  366 	.db #0x3C	; 60
   40F6 E1                  367 	.db #0xE1	; 225
   40F7 1C                  368 	.db #0x1C	; 28
   40F8 C3                  369 	.db #0xC3	; 195
   40F9 0F                  370 	.db #0x0F	; 15
   40FA 0F                  371 	.db #0x0F	; 15
   40FB 1E                  372 	.db #0x1E	; 30
   40FC C3                  373 	.db #0xC3	; 195
   40FD 0F                  374 	.db #0x0F	; 15
   40FE 0F                  375 	.db #0x0F	; 15
   40FF 0F                  376 	.db #0x0F	; 15
   4100 0F                  377 	.db #0x0F	; 15
   4101 0F                  378 	.db #0x0F	; 15
   4102 0F                  379 	.db #0x0F	; 15
   4103 0E                  380 	.db #0x0E	; 14
   4104 03                  381 	.db #0x03	; 3
   4105 0F                  382 	.db #0x0F	; 15
   4106 0E                  383 	.db #0x0E	; 14
   4107 06                  384 	.db #0x06	; 6
   4108 E1                  385 	.db #0xE1	; 225
   4109 0F                  386 	.db #0x0F	; 15
   410A 0E                  387 	.db #0x0E	; 14
   410B C2                  388 	.db #0xC2	; 194
   410C E1                  389 	.db #0xE1	; 225
   410D 0F                  390 	.db #0x0F	; 15
   410E 0E                  391 	.db #0x0E	; 14
   410F C2                  392 	.db #0xC2	; 194
   4110 E1                  393 	.db #0xE1	; 225
   4111 0F                  394 	.db #0x0F	; 15
   4112 0E                  395 	.db #0x0E	; 14
   4113 C3                  396 	.db #0xC3	; 195
   4114 E1                  397 	.db #0xE1	; 225
   4115 0F                  398 	.db #0x0F	; 15
   4116 0E                  399 	.db #0x0E	; 14
   4117 C3                  400 	.db #0xC3	; 195
   4118 0F                  401 	.db #0x0F	; 15
   4119 0F                  402 	.db #0x0F	; 15
   411A 0F                  403 	.db #0x0F	; 15
   411B C3                  404 	.db #0xC3	; 195
   411C 0F                  405 	.db #0x0F	; 15
   411D 08                  406 	.db #0x08	; 8
   411E 07                  407 	.db #0x07	; 7
   411F 0F                  408 	.db #0x0F	; 15
   4120 0F                  409 	.db #0x0F	; 15
   4121 38                  410 	.db #0x38	; 56	'8'
   4122 C3                  411 	.db #0xC3	; 195
   4123 0F                  412 	.db #0x0F	; 15
   4124 0F                  413 	.db #0x0F	; 15
   4125 3C                  414 	.db #0x3C	; 60
   4126 C3                  415 	.db #0xC3	; 195
   4127 0F                  416 	.db #0x0F	; 15
   4128 0F                  417 	.db #0x0F	; 15
   4129                     418 _dwellings2:
   4129 0F                  419 	.db #0x0F	; 15
   412A 0F                  420 	.db #0x0F	; 15
   412B 0F                  421 	.db #0x0F	; 15
   412C 0F                  422 	.db #0x0F	; 15
   412D 0F                  423 	.db #0x0F	; 15
   412E 01                  424 	.db #0x01	; 1
   412F 0F                  425 	.db #0x0F	; 15
   4130 0F                  426 	.db #0x0F	; 15
   4131 0F                  427 	.db #0x0F	; 15
   4132 70                  428 	.db #0x70	; 112	'p'
   4133 0C                  429 	.db #0x0C	; 12
   4134 0F                  430 	.db #0x0F	; 15
   4135 09                  431 	.db #0x09	; 9
   4136 78                  432 	.db #0x78	; 120	'x'
   4137 1C                  433 	.db #0x1C	; 28
   4138 87                  434 	.db #0x87	; 135
   4139 38                  435 	.db #0x38	; 56	'8'
   413A 0F                  436 	.db #0x0F	; 15
   413B 1C                  437 	.db #0x1C	; 28
   413C 87                  438 	.db #0x87	; 135
   413D 38                  439 	.db #0x38	; 56	'8'
   413E 0F                  440 	.db #0x0F	; 15
   413F 1E                  441 	.db #0x1E	; 30
   4140 87                  442 	.db #0x87	; 135
   4141 3C                  443 	.db #0x3C	; 60
   4142 0F                  444 	.db #0x0F	; 15
   4143 0F                  445 	.db #0x0F	; 15
   4144 0F                  446 	.db #0x0F	; 15
   4145 0F                  447 	.db #0x0F	; 15
   4146 0F                  448 	.db #0x0F	; 15
   4147 0F                  449 	.db #0x0F	; 15
   4148 0F                  450 	.db #0x0F	; 15
   4149 0E                  451 	.db #0x0E	; 14
   414A 07                  452 	.db #0x07	; 7
   414B 0F                  453 	.db #0x0F	; 15
   414C 0F                  454 	.db #0x0F	; 15
   414D 0E                  455 	.db #0x0E	; 14
   414E C3                  456 	.db #0xC3	; 195
   414F 00                  457 	.db #0x00	; 0
   4150 07                  458 	.db #0x07	; 7
   4151 0E                  459 	.db #0x0E	; 14
   4152 C3                  460 	.db #0xC3	; 195
   4153 70                  461 	.db #0x70	; 112	'p'
   4154 C3                  462 	.db #0xC3	; 195
   4155 0F                  463 	.db #0x0F	; 15
   4156 C3                  464 	.db #0xC3	; 195
   4157 70                  465 	.db #0x70	; 112	'p'
   4158 C3                  466 	.db #0xC3	; 195
   4159 03                  467 	.db #0x03	; 3
   415A 0F                  468 	.db #0x0F	; 15
   415B 78                  469 	.db #0x78	; 120	'x'
   415C C3                  470 	.db #0xC3	; 195
   415D 61                  471 	.db #0x61	; 97	'a'
   415E 0F                  472 	.db #0x0F	; 15
   415F 0F                  473 	.db #0x0F	; 15
   4160 0F                  474 	.db #0x0F	; 15
   4161 69                  475 	.db #0x69	; 105	'i'
   4162 0F                  476 	.db #0x0F	; 15
   4163 0F                  477 	.db #0x0F	; 15
   4164 0F                  478 	.db #0x0F	; 15
   4165 0F                  479 	.db #0x0F	; 15
   4166 0F                  480 	.db #0x0F	; 15
   4167 0F                  481 	.db #0x0F	; 15
   4168 0F                  482 	.db #0x0F	; 15
   4169                     483 _dwellings3:
   4169 0F                  484 	.db #0x0F	; 15
   416A 0F                  485 	.db #0x0F	; 15
   416B 09                  486 	.db #0x09	; 9
   416C 09                  487 	.db #0x09	; 9
   416D 0F                  488 	.db #0x0F	; 15
   416E 0F                  489 	.db #0x0F	; 15
   416F 38                  490 	.db #0x38	; 56	'8'
   4170 38                  491 	.db #0x38	; 56	'8'
   4171 0E                  492 	.db #0x0E	; 14
   4172 03                  493 	.db #0x03	; 3
   4173 38                  494 	.db #0x38	; 56	'8'
   4174 38                  495 	.db #0x38	; 56	'8'
   4175 0E                  496 	.db #0x0E	; 14
   4176 E1                  497 	.db #0xE1	; 225
   4177 3C                  498 	.db #0x3C	; 60
   4178 3C                  499 	.db #0x3C	; 60
   4179 0E                  500 	.db #0x0E	; 14
   417A E1                  501 	.db #0xE1	; 225
   417B 0F                  502 	.db #0x0F	; 15
   417C 0F                  503 	.db #0x0F	; 15
   417D 0E                  504 	.db #0x0E	; 14
   417E E1                  505 	.db #0xE1	; 225
   417F 08                  506 	.db #0x08	; 8
   4180 07                  507 	.db #0x07	; 7
   4181 0F                  508 	.db #0x0F	; 15
   4182 E1                  509 	.db #0xE1	; 225
   4183 38                  510 	.db #0x38	; 56	'8'
   4184 C3                  511 	.db #0xC3	; 195
   4185 0F                  512 	.db #0x0F	; 15
   4186 0F                  513 	.db #0x0F	; 15
   4187 3C                  514 	.db #0x3C	; 60
   4188 C3                  515 	.db #0xC3	; 195
   4189 0C                  516 	.db #0x0C	; 12
   418A 0F                  517 	.db #0x0F	; 15
   418B 0F                  518 	.db #0x0F	; 15
   418C 0F                  519 	.db #0x0F	; 15
   418D 1C                  520 	.db #0x1C	; 28
   418E 87                  521 	.db #0x87	; 135
   418F 0F                  522 	.db #0x0F	; 15
   4190 0F                  523 	.db #0x0F	; 15
   4191 1E                  524 	.db #0x1E	; 30
   4192 87                  525 	.db #0x87	; 135
   4193 0C                  526 	.db #0x0C	; 12
   4194 07                  527 	.db #0x07	; 7
   4195 0F                  528 	.db #0x0F	; 15
   4196 0F                  529 	.db #0x0F	; 15
   4197 1C                  530 	.db #0x1C	; 28
   4198 C3                  531 	.db #0xC3	; 195
   4199 0F                  532 	.db #0x0F	; 15
   419A 09                  533 	.db #0x09	; 9
   419B 1C                  534 	.db #0x1C	; 28
   419C C3                  535 	.db #0xC3	; 195
   419D 0F                  536 	.db #0x0F	; 15
   419E 38                  537 	.db #0x38	; 56	'8'
   419F 1C                  538 	.db #0x1C	; 28
   41A0 C3                  539 	.db #0xC3	; 195
   41A1 0F                  540 	.db #0x0F	; 15
   41A2 3C                  541 	.db #0x3C	; 60
   41A3 1E                  542 	.db #0x1E	; 30
   41A4 C3                  543 	.db #0xC3	; 195
   41A5 0F                  544 	.db #0x0F	; 15
   41A6 0F                  545 	.db #0x0F	; 15
   41A7 0F                  546 	.db #0x0F	; 15
   41A8 0F                  547 	.db #0x0F	; 15
   41A9                     548 _water:
   41A9 5F                  549 	.db #0x5F	; 95
   41AA 5F                  550 	.db #0x5F	; 95
   41AB 5F                  551 	.db #0x5F	; 95
   41AC 5F                  552 	.db #0x5F	; 95
   41AD AF                  553 	.db #0xAF	; 175
   41AE AF                  554 	.db #0xAF	; 175
   41AF AF                  555 	.db #0xAF	; 175
   41B0 AF                  556 	.db #0xAF	; 175
   41B1 5F                  557 	.db #0x5F	; 95
   41B2 5F                  558 	.db #0x5F	; 95
   41B3 5F                  559 	.db #0x5F	; 95
   41B4 5F                  560 	.db #0x5F	; 95
   41B5 AF                  561 	.db #0xAF	; 175
   41B6 AF                  562 	.db #0xAF	; 175
   41B7 AF                  563 	.db #0xAF	; 175
   41B8 AF                  564 	.db #0xAF	; 175
   41B9 5F                  565 	.db #0x5F	; 95
   41BA 5F                  566 	.db #0x5F	; 95
   41BB 5F                  567 	.db #0x5F	; 95
   41BC 5F                  568 	.db #0x5F	; 95
   41BD AF                  569 	.db #0xAF	; 175
   41BE AF                  570 	.db #0xAF	; 175
   41BF AF                  571 	.db #0xAF	; 175
   41C0 AF                  572 	.db #0xAF	; 175
   41C1 5F                  573 	.db #0x5F	; 95
   41C2 5F                  574 	.db #0x5F	; 95
   41C3 5F                  575 	.db #0x5F	; 95
   41C4 5F                  576 	.db #0x5F	; 95
   41C5 AF                  577 	.db #0xAF	; 175
   41C6 AF                  578 	.db #0xAF	; 175
   41C7 AF                  579 	.db #0xAF	; 175
   41C8 AF                  580 	.db #0xAF	; 175
   41C9 5F                  581 	.db #0x5F	; 95
   41CA 5F                  582 	.db #0x5F	; 95
   41CB 5F                  583 	.db #0x5F	; 95
   41CC 5F                  584 	.db #0x5F	; 95
   41CD AF                  585 	.db #0xAF	; 175
   41CE AF                  586 	.db #0xAF	; 175
   41CF AF                  587 	.db #0xAF	; 175
   41D0 AF                  588 	.db #0xAF	; 175
   41D1 5F                  589 	.db #0x5F	; 95
   41D2 5F                  590 	.db #0x5F	; 95
   41D3 5F                  591 	.db #0x5F	; 95
   41D4 5F                  592 	.db #0x5F	; 95
   41D5 AF                  593 	.db #0xAF	; 175
   41D6 AF                  594 	.db #0xAF	; 175
   41D7 AF                  595 	.db #0xAF	; 175
   41D8 AF                  596 	.db #0xAF	; 175
   41D9 5F                  597 	.db #0x5F	; 95
   41DA 5F                  598 	.db #0x5F	; 95
   41DB 5F                  599 	.db #0x5F	; 95
   41DC 5F                  600 	.db #0x5F	; 95
   41DD AF                  601 	.db #0xAF	; 175
   41DE AF                  602 	.db #0xAF	; 175
   41DF AF                  603 	.db #0xAF	; 175
   41E0 AF                  604 	.db #0xAF	; 175
   41E1 5F                  605 	.db #0x5F	; 95
   41E2 5F                  606 	.db #0x5F	; 95
   41E3 5F                  607 	.db #0x5F	; 95
   41E4 5F                  608 	.db #0x5F	; 95
   41E5 AF                  609 	.db #0xAF	; 175
   41E6 AF                  610 	.db #0xAF	; 175
   41E7 AF                  611 	.db #0xAF	; 175
   41E8 AF                  612 	.db #0xAF	; 175
   41E9                     613 _farm1:
   41E9 03                  614 	.db #0x03	; 3
   41EA 0F                  615 	.db #0x0F	; 15
   41EB 78                  616 	.db #0x78	; 120	'x'
   41EC F0                  617 	.db #0xF0	; 240
   41ED 61                  618 	.db #0x61	; 97	'a'
   41EE 01                  619 	.db #0x01	; 1
   41EF 5F                  620 	.db #0x5F	; 95
   41F0 5F                  621 	.db #0x5F	; 95
   41F1 61                  622 	.db #0x61	; 97	'a'
   41F2 70                  623 	.db #0x70	; 112	'p'
   41F3 78                  624 	.db #0x78	; 120	'x'
   41F4 F0                  625 	.db #0xF0	; 240
   41F5 69                  626 	.db #0x69	; 105	'i'
   41F6 78                  627 	.db #0x78	; 120	'x'
   41F7 2F                  628 	.db #0x2F	; 47
   41F8 AF                  629 	.db #0xAF	; 175
   41F9 0F                  630 	.db #0x0F	; 15
   41FA 0F                  631 	.db #0x0F	; 15
   41FB 78                  632 	.db #0x78	; 120	'x'
   41FC F0                  633 	.db #0xF0	; 240
   41FD 7A                  634 	.db #0x7A	; 122	'z'
   41FE 7A                  635 	.db #0x7A	; 122	'z'
   41FF 5F                  636 	.db #0x5F	; 95
   4200 5F                  637 	.db #0x5F	; 95
   4201 5A                  638 	.db #0x5A	; 90	'Z'
   4202 DA                  639 	.db #0xDA	; 218
   4203 78                  640 	.db #0x78	; 120	'x'
   4204 F0                  641 	.db #0xF0	; 240
   4205 7A                  642 	.db #0x7A	; 122	'z'
   4206 7A                  643 	.db #0x7A	; 122	'z'
   4207 0F                  644 	.db #0x0F	; 15
   4208 0F                  645 	.db #0x0F	; 15
   4209 5A                  646 	.db #0x5A	; 90	'Z'
   420A DA                  647 	.db #0xDA	; 218
   420B 0F                  648 	.db #0x0F	; 15
   420C 0F                  649 	.db #0x0F	; 15
   420D 7A                  650 	.db #0x7A	; 122	'z'
   420E 7A                  651 	.db #0x7A	; 122	'z'
   420F 78                  652 	.db #0x78	; 120	'x'
   4210 F0                  653 	.db #0xF0	; 240
   4211 5A                  654 	.db #0x5A	; 90	'Z'
   4212 DA                  655 	.db #0xDA	; 218
   4213 5F                  656 	.db #0x5F	; 95
   4214 5F                  657 	.db #0x5F	; 95
   4215 7A                  658 	.db #0x7A	; 122	'z'
   4216 7A                  659 	.db #0x7A	; 122	'z'
   4217 78                  660 	.db #0x78	; 120	'x'
   4218 F0                  661 	.db #0xF0	; 240
   4219 5A                  662 	.db #0x5A	; 90	'Z'
   421A DA                  663 	.db #0xDA	; 218
   421B 2F                  664 	.db #0x2F	; 47
   421C AF                  665 	.db #0xAF	; 175
   421D 7A                  666 	.db #0x7A	; 122	'z'
   421E 7A                  667 	.db #0x7A	; 122	'z'
   421F 78                  668 	.db #0x78	; 120	'x'
   4220 F0                  669 	.db #0xF0	; 240
   4221 5A                  670 	.db #0x5A	; 90	'Z'
   4222 DA                  671 	.db #0xDA	; 218
   4223 5F                  672 	.db #0x5F	; 95
   4224 5F                  673 	.db #0x5F	; 95
   4225 7A                  674 	.db #0x7A	; 122	'z'
   4226 7A                  675 	.db #0x7A	; 122	'z'
   4227 78                  676 	.db #0x78	; 120	'x'
   4228 F0                  677 	.db #0xF0	; 240
   4229                     678 _farm2:
   4229 0F                  679 	.db #0x0F	; 15
   422A 0F                  680 	.db #0x0F	; 15
   422B 0F                  681 	.db #0x0F	; 15
   422C 0F                  682 	.db #0x0F	; 15
   422D 7F                  683 	.db #0x7F	; 127
   422E FF                  684 	.db #0xFF	; 255
   422F FF                  685 	.db #0xFF	; 255
   4230 EF                  686 	.db #0xEF	; 239
   4231 2D                  687 	.db #0x2D	; 45
   4232 A5                  688 	.db #0xA5	; 165
   4233 A5                  689 	.db #0xA5	; 165
   4234 A5                  690 	.db #0xA5	; 165
   4235 7F                  691 	.db #0x7F	; 127
   4236 FF                  692 	.db #0xFF	; 255
   4237 FF                  693 	.db #0xFF	; 255
   4238 EF                  694 	.db #0xEF	; 239
   4239 5A                  695 	.db #0x5A	; 90	'Z'
   423A 5A                  696 	.db #0x5A	; 90	'Z'
   423B 5A                  697 	.db #0x5A	; 90	'Z'
   423C 4B                  698 	.db #0x4B	; 75	'K'
   423D 7F                  699 	.db #0x7F	; 127
   423E FF                  700 	.db #0xFF	; 255
   423F FF                  701 	.db #0xFF	; 255
   4240 EF                  702 	.db #0xEF	; 239
   4241 2D                  703 	.db #0x2D	; 45
   4242 A5                  704 	.db #0xA5	; 165
   4243 A5                  705 	.db #0xA5	; 165
   4244 A5                  706 	.db #0xA5	; 165
   4245 7F                  707 	.db #0x7F	; 127
   4246 FF                  708 	.db #0xFF	; 255
   4247 FF                  709 	.db #0xFF	; 255
   4248 EF                  710 	.db #0xEF	; 239
   4249 5A                  711 	.db #0x5A	; 90	'Z'
   424A 5A                  712 	.db #0x5A	; 90	'Z'
   424B 5A                  713 	.db #0x5A	; 90	'Z'
   424C 4B                  714 	.db #0x4B	; 75	'K'
   424D 7F                  715 	.db #0x7F	; 127
   424E FF                  716 	.db #0xFF	; 255
   424F FF                  717 	.db #0xFF	; 255
   4250 EF                  718 	.db #0xEF	; 239
   4251 0F                  719 	.db #0x0F	; 15
   4252 0F                  720 	.db #0x0F	; 15
   4253 0F                  721 	.db #0x0F	; 15
   4254 0F                  722 	.db #0x0F	; 15
   4255 0E                  723 	.db #0x0E	; 14
   4256 07                  724 	.db #0x07	; 7
   4257 AF                  725 	.db #0xAF	; 175
   4258 AF                  726 	.db #0xAF	; 175
   4259 02                  727 	.db #0x02	; 2
   425A C3                  728 	.db #0xC3	; 195
   425B AF                  729 	.db #0xAF	; 175
   425C AF                  730 	.db #0xAF	; 175
   425D 60                  731 	.db #0x60	; 96
   425E C3                  732 	.db #0xC3	; 195
   425F AF                  733 	.db #0xAF	; 175
   4260 AF                  734 	.db #0xAF	; 175
   4261 69                  735 	.db #0x69	; 105	'i'
   4262 C3                  736 	.db #0xC3	; 195
   4263 AF                  737 	.db #0xAF	; 175
   4264 AF                  738 	.db #0xAF	; 175
   4265 0F                  739 	.db #0x0F	; 15
   4266 0F                  740 	.db #0x0F	; 15
   4267 0F                  741 	.db #0x0F	; 15
   4268 0F                  742 	.db #0x0F	; 15
   4269                     743 _livestock:
   4269 03                  744 	.db #0x03	; 3
   426A 0F                  745 	.db #0x0F	; 15
   426B 0F                  746 	.db #0x0F	; 15
   426C 0F                  747 	.db #0x0F	; 15
   426D 61                  748 	.db #0x61	; 97	'a'
   426E F5                  749 	.db #0xF5	; 245
   426F F5                  750 	.db #0xF5	; 245
   4270 E5                  751 	.db #0xE5	; 229
   4271 61                  752 	.db #0x61	; 97	'a'
   4272 8F                  753 	.db #0x8F	; 143
   4273 0F                  754 	.db #0x0F	; 15
   4274 2F                  755 	.db #0x2F	; 47
   4275 69                  756 	.db #0x69	; 105	'i'
   4276 87                  757 	.db #0x87	; 135
   4277 0F                  758 	.db #0x0F	; 15
   4278 AD                  759 	.db #0xAD	; 173
   4279 0F                  760 	.db #0x0F	; 15
   427A 9F                  761 	.db #0x9F	; 159
   427B 0F                  762 	.db #0x0F	; 15
   427C 2F                  763 	.db #0x2F	; 47
   427D 7D                  764 	.db #0x7D	; 125
   427E 87                  765 	.db #0x87	; 135
   427F 0F                  766 	.db #0x0F	; 15
   4280 2D                  767 	.db #0x2D	; 45
   4281 4B                  768 	.db #0x4B	; 75	'K'
   4282 0F                  769 	.db #0x0F	; 15
   4283 2F                  770 	.db #0x2F	; 47
   4284 2F                  771 	.db #0x2F	; 47
   4285 4F                  772 	.db #0x4F	; 79	'O'
   4286 0F                  773 	.db #0x0F	; 15
   4287 0F                  774 	.db #0x0F	; 15
   4288 2D                  775 	.db #0x2D	; 45
   4289 5B                  776 	.db #0x5B	; 91
   428A 1F                  777 	.db #0x1F	; 31
   428B 0F                  778 	.db #0x0F	; 15
   428C 2F                  779 	.db #0x2F	; 47
   428D 4F                  780 	.db #0x4F	; 79	'O'
   428E 0F                  781 	.db #0x0F	; 15
   428F 1F                  782 	.db #0x1F	; 31
   4290 2D                  783 	.db #0x2D	; 45
   4291 4B                  784 	.db #0x4B	; 75	'K'
   4292 0F                  785 	.db #0x0F	; 15
   4293 0F                  786 	.db #0x0F	; 15
   4294 2F                  787 	.db #0x2F	; 47
   4295 4F                  788 	.db #0x4F	; 79	'O'
   4296 4F                  789 	.db #0x4F	; 79	'O'
   4297 0F                  790 	.db #0x0F	; 15
   4298 2D                  791 	.db #0x2D	; 45
   4299 4B                  792 	.db #0x4B	; 75	'K'
   429A 0F                  793 	.db #0x0F	; 15
   429B 2F                  794 	.db #0x2F	; 47
   429C 2F                  795 	.db #0x2F	; 47
   429D 4F                  796 	.db #0x4F	; 79	'O'
   429E 0F                  797 	.db #0x0F	; 15
   429F 0F                  798 	.db #0x0F	; 15
   42A0 2D                  799 	.db #0x2D	; 45
   42A1 7A                  800 	.db #0x7A	; 122	'z'
   42A2 FA                  801 	.db #0xFA	; 250
   42A3 FA                  802 	.db #0xFA	; 250
   42A4 EB                  803 	.db #0xEB	; 235
   42A5 0F                  804 	.db #0x0F	; 15
   42A6 0F                  805 	.db #0x0F	; 15
   42A7 0F                  806 	.db #0x0F	; 15
   42A8 0F                  807 	.db #0x0F	; 15
   42A9                     808 _station_small_ns:
   42A9 0F                  809 	.db #0x0F	; 15
   42AA 1E                  810 	.db #0x1E	; 30
   42AB 43                  811 	.db #0x43	; 67	'C'
   42AC 0F                  812 	.db #0x0F	; 15
   42AD 0F                  813 	.db #0x0F	; 15
   42AE 1E                  814 	.db #0x1E	; 30
   42AF 43                  815 	.db #0x43	; 67	'C'
   42B0 4F                  816 	.db #0x4F	; 79	'O'
   42B1 0F                  817 	.db #0x0F	; 15
   42B2 5E                  818 	.db #0x5E	; 94
   42B3 43                  819 	.db #0x43	; 67	'C'
   42B4 0F                  820 	.db #0x0F	; 15
   42B5 0F                  821 	.db #0x0F	; 15
   42B6 1E                  822 	.db #0x1E	; 30
   42B7 43                  823 	.db #0x43	; 67	'C'
   42B8 0F                  824 	.db #0x0F	; 15
   42B9 4F                  825 	.db #0x4F	; 79	'O'
   42BA 1E                  826 	.db #0x1E	; 30
   42BB 43                  827 	.db #0x43	; 67	'C'
   42BC 8F                  828 	.db #0x8F	; 143
   42BD 0F                  829 	.db #0x0F	; 15
   42BE 1E                  830 	.db #0x1E	; 30
   42BF 43                  831 	.db #0x43	; 67	'C'
   42C0 0F                  832 	.db #0x0F	; 15
   42C1 0F                  833 	.db #0x0F	; 15
   42C2 1E                  834 	.db #0x1E	; 30
   42C3 43                  835 	.db #0x43	; 67	'C'
   42C4 0F                  836 	.db #0x0F	; 15
   42C5 0E                  837 	.db #0x0E	; 14
   42C6 16                  838 	.db #0x16	; 22
   42C7 43                  839 	.db #0x43	; 67	'C'
   42C8 0F                  840 	.db #0x0F	; 15
   42C9 0E                  841 	.db #0x0E	; 14
   42CA D2                  842 	.db #0xD2	; 210
   42CB 43                  843 	.db #0x43	; 67	'C'
   42CC 0F                  844 	.db #0x0F	; 15
   42CD 4F                  845 	.db #0x4F	; 79	'O'
   42CE D2                  846 	.db #0xD2	; 210
   42CF 43                  847 	.db #0x43	; 67	'C'
   42D0 0F                  848 	.db #0x0F	; 15
   42D1 0F                  849 	.db #0x0F	; 15
   42D2 1E                  850 	.db #0x1E	; 30
   42D3 53                  851 	.db #0x53	; 83	'S'
   42D4 0F                  852 	.db #0x0F	; 15
   42D5 0F                  853 	.db #0x0F	; 15
   42D6 1E                  854 	.db #0x1E	; 30
   42D7 43                  855 	.db #0x43	; 67	'C'
   42D8 0F                  856 	.db #0x0F	; 15
   42D9 0F                  857 	.db #0x0F	; 15
   42DA 5E                  858 	.db #0x5E	; 94
   42DB 43                  859 	.db #0x43	; 67	'C'
   42DC 0F                  860 	.db #0x0F	; 15
   42DD 0F                  861 	.db #0x0F	; 15
   42DE 1E                  862 	.db #0x1E	; 30
   42DF 43                  863 	.db #0x43	; 67	'C'
   42E0 1F                  864 	.db #0x1F	; 31
   42E1 4F                  865 	.db #0x4F	; 79	'O'
   42E2 1E                  866 	.db #0x1E	; 30
   42E3 43                  867 	.db #0x43	; 67	'C'
   42E4 0F                  868 	.db #0x0F	; 15
   42E5 0F                  869 	.db #0x0F	; 15
   42E6 1E                  870 	.db #0x1E	; 30
   42E7 43                  871 	.db #0x43	; 67	'C'
   42E8 0F                  872 	.db #0x0F	; 15
   42E9                     873 _station_small_ew:
   42E9 0F                  874 	.db #0x0F	; 15
   42EA 2F                  875 	.db #0x2F	; 47
   42EB 0F                  876 	.db #0x0F	; 15
   42EC 0F                  877 	.db #0x0F	; 15
   42ED 0F                  878 	.db #0x0F	; 15
   42EE 0F                  879 	.db #0x0F	; 15
   42EF 0F                  880 	.db #0x0F	; 15
   42F0 4F                  881 	.db #0x4F	; 79	'O'
   42F1 0F                  882 	.db #0x0F	; 15
   42F2 0F                  883 	.db #0x0F	; 15
   42F3 0F                  884 	.db #0x0F	; 15
   42F4 0F                  885 	.db #0x0F	; 15
   42F5 2F                  886 	.db #0x2F	; 47
   42F6 0C                  887 	.db #0x0C	; 12
   42F7 0F                  888 	.db #0x0F	; 15
   42F8 0F                  889 	.db #0x0F	; 15
   42F9 0F                  890 	.db #0x0F	; 15
   42FA 1C                  891 	.db #0x1C	; 28
   42FB 87                  892 	.db #0x87	; 135
   42FC 8F                  893 	.db #0x8F	; 143
   42FD 0F                  894 	.db #0x0F	; 15
   42FE 1E                  895 	.db #0x1E	; 30
   42FF 87                  896 	.db #0x87	; 135
   4300 0F                  897 	.db #0x0F	; 15
   4301 0F                  898 	.db #0x0F	; 15
   4302 0F                  899 	.db #0x0F	; 15
   4303 0F                  900 	.db #0x0F	; 15
   4304 0F                  901 	.db #0x0F	; 15
   4305 F0                  902 	.db #0xF0	; 240
   4306 F0                  903 	.db #0xF0	; 240
   4307 F0                  904 	.db #0xF0	; 240
   4308 F0                  905 	.db #0xF0	; 240
   4309 00                  906 	.db #0x00	; 0
   430A 00                  907 	.db #0x00	; 0
   430B 00                  908 	.db #0x00	; 0
   430C 00                  909 	.db #0x00	; 0
   430D F0                  910 	.db #0xF0	; 240
   430E F0                  911 	.db #0xF0	; 240
   430F F0                  912 	.db #0xF0	; 240
   4310 F0                  913 	.db #0xF0	; 240
   4311 0F                  914 	.db #0x0F	; 15
   4312 0F                  915 	.db #0x0F	; 15
   4313 0F                  916 	.db #0x0F	; 15
   4314 0F                  917 	.db #0x0F	; 15
   4315 0F                  918 	.db #0x0F	; 15
   4316 8F                  919 	.db #0x8F	; 143
   4317 0F                  920 	.db #0x0F	; 15
   4318 8F                  921 	.db #0x8F	; 143
   4319 0F                  922 	.db #0x0F	; 15
   431A 0F                  923 	.db #0x0F	; 15
   431B 0F                  924 	.db #0x0F	; 15
   431C 0F                  925 	.db #0x0F	; 15
   431D 0F                  926 	.db #0x0F	; 15
   431E 0F                  927 	.db #0x0F	; 15
   431F 8F                  928 	.db #0x8F	; 143
   4320 0F                  929 	.db #0x0F	; 15
   4321 4F                  930 	.db #0x4F	; 79	'O'
   4322 0F                  931 	.db #0x0F	; 15
   4323 1F                  932 	.db #0x1F	; 31
   4324 0F                  933 	.db #0x0F	; 15
   4325 0F                  934 	.db #0x0F	; 15
   4326 0F                  935 	.db #0x0F	; 15
   4327 0F                  936 	.db #0x0F	; 15
   4328 1F                  937 	.db #0x1F	; 31
   4329                     938 _station_medium_ns:
   4329 0F                  939 	.db #0x0F	; 15
   432A 1E                  940 	.db #0x1E	; 30
   432B 70                  941 	.db #0x70	; 112	'p'
   432C 0F                  942 	.db #0x0F	; 15
   432D 2F                  943 	.db #0x2F	; 47
   432E 1E                  944 	.db #0x1E	; 30
   432F 50                  945 	.db #0x50	; 80	'P'
   4330 0F                  946 	.db #0x0F	; 15
   4331 0F                  947 	.db #0x0F	; 15
   4332 1E                  948 	.db #0x1E	; 30
   4333 50                  949 	.db #0x50	; 80	'P'
   4334 2F                  950 	.db #0x2F	; 47
   4335 0F                  951 	.db #0x0F	; 15
   4336 1E                  952 	.db #0x1E	; 30
   4337 50                  953 	.db #0x50	; 80	'P'
   4338 0F                  954 	.db #0x0F	; 15
   4339 0F                  955 	.db #0x0F	; 15
   433A 1E                  956 	.db #0x1E	; 30
   433B 50                  957 	.db #0x50	; 80	'P'
   433C 0F                  958 	.db #0x0F	; 15
   433D 0E                  959 	.db #0x0E	; 14
   433E 16                  960 	.db #0x16	; 22
   433F 50                  961 	.db #0x50	; 80	'P'
   4340 0F                  962 	.db #0x0F	; 15
   4341 0E                  963 	.db #0x0E	; 14
   4342 D2                  964 	.db #0xD2	; 210
   4343 50                  965 	.db #0x50	; 80	'P'
   4344 2F                  966 	.db #0x2F	; 47
   4345 0E                  967 	.db #0x0E	; 14
   4346 D2                  968 	.db #0xD2	; 210
   4347 50                  969 	.db #0x50	; 80	'P'
   4348 0F                  970 	.db #0x0F	; 15
   4349 0E                  971 	.db #0x0E	; 14
   434A D2                  972 	.db #0xD2	; 210
   434B 50                  973 	.db #0x50	; 80	'P'
   434C 0F                  974 	.db #0x0F	; 15
   434D 0E                  975 	.db #0x0E	; 14
   434E D2                  976 	.db #0xD2	; 210
   434F 50                  977 	.db #0x50	; 80	'P'
   4350 0F                  978 	.db #0x0F	; 15
   4351 0F                  979 	.db #0x0F	; 15
   4352 D2                  980 	.db #0xD2	; 210
   4353 50                  981 	.db #0x50	; 80	'P'
   4354 1F                  982 	.db #0x1F	; 31
   4355 4F                  983 	.db #0x4F	; 79	'O'
   4356 1E                  984 	.db #0x1E	; 30
   4357 50                  985 	.db #0x50	; 80	'P'
   4358 0F                  986 	.db #0x0F	; 15
   4359 0F                  987 	.db #0x0F	; 15
   435A 1E                  988 	.db #0x1E	; 30
   435B 50                  989 	.db #0x50	; 80	'P'
   435C 0F                  990 	.db #0x0F	; 15
   435D 0F                  991 	.db #0x0F	; 15
   435E 1E                  992 	.db #0x1E	; 30
   435F 50                  993 	.db #0x50	; 80	'P'
   4360 0F                  994 	.db #0x0F	; 15
   4361 0F                  995 	.db #0x0F	; 15
   4362 9E                  996 	.db #0x9E	; 158
   4363 21                  997 	.db #0x21	; 33
   4364 0F                  998 	.db #0x0F	; 15
   4365 0F                  999 	.db #0x0F	; 15
   4366 1E                 1000 	.db #0x1E	; 30
   4367 43                 1001 	.db #0x43	; 67	'C'
   4368 4F                 1002 	.db #0x4F	; 79	'O'
   4369                    1003 _station_medium_ew:
   4369 0F                 1004 	.db #0x0F	; 15
   436A 0F                 1005 	.db #0x0F	; 15
   436B 0F                 1006 	.db #0x0F	; 15
   436C 0F                 1007 	.db #0x0F	; 15
   436D 0F                 1008 	.db #0x0F	; 15
   436E 2F                 1009 	.db #0x2F	; 47
   436F 0F                 1010 	.db #0x0F	; 15
   4370 03                 1011 	.db #0x03	; 3
   4371 0F                 1012 	.db #0x0F	; 15
   4372 0F                 1013 	.db #0x0F	; 15
   4373 0E                 1014 	.db #0x0E	; 14
   4374 67                 1015 	.db #0x67	; 103	'g'
   4375 4F                 1016 	.db #0x4F	; 79	'O'
   4376 00                 1017 	.db #0x00	; 0
   4377 06                 1018 	.db #0x06	; 6
   4378 EF                 1019 	.db #0xEF	; 239
   4379 0F                 1020 	.db #0x0F	; 15
   437A 70                 1021 	.db #0x70	; 112	'p'
   437B C3                 1022 	.db #0xC3	; 195
   437C CF                 1023 	.db #0xCF	; 207
   437D 0F                 1024 	.db #0x0F	; 15
   437E 78                 1025 	.db #0x78	; 120	'x'
   437F C3                 1026 	.db #0xC3	; 195
   4380 0F                 1027 	.db #0x0F	; 15
   4381 0F                 1028 	.db #0x0F	; 15
   4382 0F                 1029 	.db #0x0F	; 15
   4383 0F                 1030 	.db #0x0F	; 15
   4384 0F                 1031 	.db #0x0F	; 15
   4385 F0                 1032 	.db #0xF0	; 240
   4386 F0                 1033 	.db #0xF0	; 240
   4387 F0                 1034 	.db #0xF0	; 240
   4388 F0                 1035 	.db #0xF0	; 240
   4389 00                 1036 	.db #0x00	; 0
   438A 00                 1037 	.db #0x00	; 0
   438B 00                 1038 	.db #0x00	; 0
   438C 00                 1039 	.db #0x00	; 0
   438D B0                 1040 	.db #0xB0	; 176
   438E F0                 1041 	.db #0xF0	; 240
   438F F0                 1042 	.db #0xF0	; 240
   4390 F0                 1043 	.db #0xF0	; 240
   4391 48                 1044 	.db #0x48	; 72	'H'
   4392 00                 1045 	.db #0x00	; 0
   4393 00                 1046 	.db #0x00	; 0
   4394 10                 1047 	.db #0x10	; 16
   4395 3C                 1048 	.db #0x3C	; 60
   4396 F0                 1049 	.db #0xF0	; 240
   4397 F0                 1050 	.db #0xF0	; 240
   4398 F0                 1051 	.db #0xF0	; 240
   4399 0F                 1052 	.db #0x0F	; 15
   439A 4F                 1053 	.db #0x4F	; 79	'O'
   439B 0F                 1054 	.db #0x0F	; 15
   439C 0F                 1055 	.db #0x0F	; 15
   439D 0F                 1056 	.db #0x0F	; 15
   439E 0F                 1057 	.db #0x0F	; 15
   439F 0F                 1058 	.db #0x0F	; 15
   43A0 0F                 1059 	.db #0x0F	; 15
   43A1 2F                 1060 	.db #0x2F	; 47
   43A2 0F                 1061 	.db #0x0F	; 15
   43A3 0F                 1062 	.db #0x0F	; 15
   43A4 4F                 1063 	.db #0x4F	; 79	'O'
   43A5 0F                 1064 	.db #0x0F	; 15
   43A6 0F                 1065 	.db #0x0F	; 15
   43A7 0F                 1066 	.db #0x0F	; 15
   43A8 0F                 1067 	.db #0x0F	; 15
   43A9                    1068 _station_large_ns:
   43A9 0F                 1069 	.db #0x0F	; 15
   43AA 1E                 1070 	.db #0x1E	; 30
   43AB 43                 1071 	.db #0x43	; 67	'C'
   43AC 4F                 1072 	.db #0x4F	; 79	'O'
   43AD 0E                 1073 	.db #0x0E	; 14
   43AE 16                 1074 	.db #0x16	; 22
   43AF 21                 1075 	.db #0x21	; 33
   43B0 0F                 1076 	.db #0x0F	; 15
   43B1 0E                 1077 	.db #0x0E	; 14
   43B2 D2                 1078 	.db #0xD2	; 210
   43B3 50                 1079 	.db #0x50	; 80	'P'
   43B4 0F                 1080 	.db #0x0F	; 15
   43B5 0E                 1081 	.db #0x0E	; 14
   43B6 D2                 1082 	.db #0xD2	; 210
   43B7 40                 1083 	.db #0x40	; 64
   43B8 87                 1084 	.db #0x87	; 135
   43B9 0E                 1085 	.db #0x0E	; 14
   43BA D2                 1086 	.db #0xD2	; 210
   43BB 50                 1087 	.db #0x50	; 80	'P'
   43BC 43                 1088 	.db #0x43	; 67	'C'
   43BD 0C                 1089 	.db #0x0C	; 12
   43BE D2                 1090 	.db #0xD2	; 210
   43BF 50                 1091 	.db #0x50	; 80	'P'
   43C0 21                 1092 	.db #0x21	; 33
   43C1 1C                 1093 	.db #0x1C	; 28
   43C2 D2                 1094 	.db #0xD2	; 210
   43C3 50                 1095 	.db #0x50	; 80	'P'
   43C4 50                 1096 	.db #0x50	; 80	'P'
   43C5 1C                 1097 	.db #0x1C	; 28
   43C6 D2                 1098 	.db #0xD2	; 210
   43C7 50                 1099 	.db #0x50	; 80	'P'
   43C8 50                 1100 	.db #0x50	; 80	'P'
   43C9 1C                 1101 	.db #0x1C	; 28
   43CA D2                 1102 	.db #0xD2	; 210
   43CB 50                 1103 	.db #0x50	; 80	'P'
   43CC 50                 1104 	.db #0x50	; 80	'P'
   43CD 1C                 1105 	.db #0x1C	; 28
   43CE D2                 1106 	.db #0xD2	; 210
   43CF 50                 1107 	.db #0x50	; 80	'P'
   43D0 50                 1108 	.db #0x50	; 80	'P'
   43D1 1C                 1109 	.db #0x1C	; 28
   43D2 D2                 1110 	.db #0xD2	; 210
   43D3 50                 1111 	.db #0x50	; 80	'P'
   43D4 50                 1112 	.db #0x50	; 80	'P'
   43D5 0E                 1113 	.db #0x0E	; 14
   43D6 D2                 1114 	.db #0xD2	; 210
   43D7 50                 1115 	.db #0x50	; 80	'P'
   43D8 50                 1116 	.db #0x50	; 80	'P'
   43D9 0E                 1117 	.db #0x0E	; 14
   43DA D2                 1118 	.db #0xD2	; 210
   43DB 50                 1119 	.db #0x50	; 80	'P'
   43DC 50                 1120 	.db #0x50	; 80	'P'
   43DD 4E                 1121 	.db #0x4E	; 78	'N'
   43DE D2                 1122 	.db #0xD2	; 210
   43DF 50                 1123 	.db #0x50	; 80	'P'
   43E0 50                 1124 	.db #0x50	; 80	'P'
   43E1 0F                 1125 	.db #0x0F	; 15
   43E2 D2                 1126 	.db #0xD2	; 210
   43E3 50                 1127 	.db #0x50	; 80	'P'
   43E4 50                 1128 	.db #0x50	; 80	'P'
   43E5 0F                 1129 	.db #0x0F	; 15
   43E6 1E                 1130 	.db #0x1E	; 30
   43E7 70                 1131 	.db #0x70	; 112	'p'
   43E8 F0                 1132 	.db #0xF0	; 240
   43E9                    1133 _station_large_ew:
   43E9 0F                 1134 	.db #0x0F	; 15
   43EA 0F                 1135 	.db #0x0F	; 15
   43EB 0F                 1136 	.db #0x0F	; 15
   43EC 0F                 1137 	.db #0x0F	; 15
   43ED 0F                 1138 	.db #0x0F	; 15
   43EE 0F                 1139 	.db #0x0F	; 15
   43EF 0F                 1140 	.db #0x0F	; 15
   43F0 0F                 1141 	.db #0x0F	; 15
   43F1 0F                 1142 	.db #0x0F	; 15
   43F2 08                 1143 	.db #0x08	; 8
   43F3 01                 1144 	.db #0x01	; 1
   43F4 0F                 1145 	.db #0x0F	; 15
   43F5 08                 1146 	.db #0x08	; 8
   43F6 30                 1147 	.db #0x30	; 48	'0'
   43F7 E0                 1148 	.db #0xE0	; 224
   43F8 01                 1149 	.db #0x01	; 1
   43F9 38                 1150 	.db #0x38	; 56	'8'
   43FA F0                 1151 	.db #0xF0	; 240
   43FB F0                 1152 	.db #0xF0	; 240
   43FC E1                 1153 	.db #0xE1	; 225
   43FD 3C                 1154 	.db #0x3C	; 60
   43FE F0                 1155 	.db #0xF0	; 240
   43FF F0                 1156 	.db #0xF0	; 240
   4400 E1                 1157 	.db #0xE1	; 225
   4401 0F                 1158 	.db #0x0F	; 15
   4402 0F                 1159 	.db #0x0F	; 15
   4403 0F                 1160 	.db #0x0F	; 15
   4404 0F                 1161 	.db #0x0F	; 15
   4405 F0                 1162 	.db #0xF0	; 240
   4406 F0                 1163 	.db #0xF0	; 240
   4407 F0                 1164 	.db #0xF0	; 240
   4408 F0                 1165 	.db #0xF0	; 240
   4409 00                 1166 	.db #0x00	; 0
   440A 00                 1167 	.db #0x00	; 0
   440B 00                 1168 	.db #0x00	; 0
   440C 00                 1169 	.db #0x00	; 0
   440D F0                 1170 	.db #0xF0	; 240
   440E F0                 1171 	.db #0xF0	; 240
   440F F0                 1172 	.db #0xF0	; 240
   4410 D0                 1173 	.db #0xD0	; 208
   4411 80                 1174 	.db #0x80	; 128
   4412 00                 1175 	.db #0x00	; 0
   4413 00                 1176 	.db #0x00	; 0
   4414 21                 1177 	.db #0x21	; 33
   4415 F0                 1178 	.db #0xF0	; 240
   4416 F0                 1179 	.db #0xF0	; 240
   4417 F0                 1180 	.db #0xF0	; 240
   4418 43                 1181 	.db #0x43	; 67	'C'
   4419 80                 1182 	.db #0x80	; 128
   441A 00                 1183 	.db #0x00	; 0
   441B 00                 1184 	.db #0x00	; 0
   441C 87                 1185 	.db #0x87	; 135
   441D F0                 1186 	.db #0xF0	; 240
   441E F0                 1187 	.db #0xF0	; 240
   441F D0                 1188 	.db #0xD0	; 208
   4420 0F                 1189 	.db #0x0F	; 15
   4421 80                 1190 	.db #0x80	; 128
   4422 00                 1191 	.db #0x00	; 0
   4423 21                 1192 	.db #0x21	; 33
   4424 0F                 1193 	.db #0x0F	; 15
   4425 F0                 1194 	.db #0xF0	; 240
   4426 F0                 1195 	.db #0xF0	; 240
   4427 C3                 1196 	.db #0xC3	; 195
   4428 0F                 1197 	.db #0x0F	; 15
   4429                    1198 _rail_ew:
   4429 0F                 1199 	.db #0x0F	; 15
   442A 0F                 1200 	.db #0x0F	; 15
   442B 0F                 1201 	.db #0x0F	; 15
   442C 0F                 1202 	.db #0x0F	; 15
   442D 2F                 1203 	.db #0x2F	; 47
   442E 0F                 1204 	.db #0x0F	; 15
   442F 2F                 1205 	.db #0x2F	; 47
   4430 2F                 1206 	.db #0x2F	; 47
   4431 0F                 1207 	.db #0x0F	; 15
   4432 0F                 1208 	.db #0x0F	; 15
   4433 0F                 1209 	.db #0x0F	; 15
   4434 0F                 1210 	.db #0x0F	; 15
   4435 0F                 1211 	.db #0x0F	; 15
   4436 0F                 1212 	.db #0x0F	; 15
   4437 0F                 1213 	.db #0x0F	; 15
   4438 0F                 1214 	.db #0x0F	; 15
   4439 0F                 1215 	.db #0x0F	; 15
   443A 2F                 1216 	.db #0x2F	; 47
   443B 0F                 1217 	.db #0x0F	; 15
   443C 0F                 1218 	.db #0x0F	; 15
   443D 4F                 1219 	.db #0x4F	; 79	'O'
   443E 0F                 1220 	.db #0x0F	; 15
   443F 0F                 1221 	.db #0x0F	; 15
   4440 4F                 1222 	.db #0x4F	; 79	'O'
   4441 0F                 1223 	.db #0x0F	; 15
   4442 0F                 1224 	.db #0x0F	; 15
   4443 0F                 1225 	.db #0x0F	; 15
   4444 0F                 1226 	.db #0x0F	; 15
   4445 F0                 1227 	.db #0xF0	; 240
   4446 F0                 1228 	.db #0xF0	; 240
   4447 F0                 1229 	.db #0xF0	; 240
   4448 F0                 1230 	.db #0xF0	; 240
   4449 00                 1231 	.db #0x00	; 0
   444A 00                 1232 	.db #0x00	; 0
   444B 00                 1233 	.db #0x00	; 0
   444C 00                 1234 	.db #0x00	; 0
   444D F0                 1235 	.db #0xF0	; 240
   444E F0                 1236 	.db #0xF0	; 240
   444F F0                 1237 	.db #0xF0	; 240
   4450 F0                 1238 	.db #0xF0	; 240
   4451 0F                 1239 	.db #0x0F	; 15
   4452 0F                 1240 	.db #0x0F	; 15
   4453 0F                 1241 	.db #0x0F	; 15
   4454 0F                 1242 	.db #0x0F	; 15
   4455 0F                 1243 	.db #0x0F	; 15
   4456 0F                 1244 	.db #0x0F	; 15
   4457 8F                 1245 	.db #0x8F	; 143
   4458 0F                 1246 	.db #0x0F	; 15
   4459 0F                 1247 	.db #0x0F	; 15
   445A 8F                 1248 	.db #0x8F	; 143
   445B 0F                 1249 	.db #0x0F	; 15
   445C 4F                 1250 	.db #0x4F	; 79	'O'
   445D 0F                 1251 	.db #0x0F	; 15
   445E 0F                 1252 	.db #0x0F	; 15
   445F 0F                 1253 	.db #0x0F	; 15
   4460 0F                 1254 	.db #0x0F	; 15
   4461 0F                 1255 	.db #0x0F	; 15
   4462 0F                 1256 	.db #0x0F	; 15
   4463 0F                 1257 	.db #0x0F	; 15
   4464 0F                 1258 	.db #0x0F	; 15
   4465 2F                 1259 	.db #0x2F	; 47
   4466 0F                 1260 	.db #0x0F	; 15
   4467 2F                 1261 	.db #0x2F	; 47
   4468 0F                 1262 	.db #0x0F	; 15
   4469                    1263 _rail_ns:
   4469 0F                 1264 	.db #0x0F	; 15
   446A 1E                 1265 	.db #0x1E	; 30
   446B 43                 1266 	.db #0x43	; 67	'C'
   446C 0F                 1267 	.db #0x0F	; 15
   446D 0F                 1268 	.db #0x0F	; 15
   446E 9E                 1269 	.db #0x9E	; 158
   446F 43                 1270 	.db #0x43	; 67	'C'
   4470 8F                 1271 	.db #0x8F	; 143
   4471 0F                 1272 	.db #0x0F	; 15
   4472 1E                 1273 	.db #0x1E	; 30
   4473 43                 1274 	.db #0x43	; 67	'C'
   4474 0F                 1275 	.db #0x0F	; 15
   4475 0F                 1276 	.db #0x0F	; 15
   4476 1E                 1277 	.db #0x1E	; 30
   4477 43                 1278 	.db #0x43	; 67	'C'
   4478 0F                 1279 	.db #0x0F	; 15
   4479 0F                 1280 	.db #0x0F	; 15
   447A 1E                 1281 	.db #0x1E	; 30
   447B 43                 1282 	.db #0x43	; 67	'C'
   447C 0F                 1283 	.db #0x0F	; 15
   447D 0F                 1284 	.db #0x0F	; 15
   447E 1E                 1285 	.db #0x1E	; 30
   447F 43                 1286 	.db #0x43	; 67	'C'
   4480 2F                 1287 	.db #0x2F	; 47
   4481 0F                 1288 	.db #0x0F	; 15
   4482 1E                 1289 	.db #0x1E	; 30
   4483 43                 1290 	.db #0x43	; 67	'C'
   4484 0F                 1291 	.db #0x0F	; 15
   4485 2F                 1292 	.db #0x2F	; 47
   4486 1E                 1293 	.db #0x1E	; 30
   4487 43                 1294 	.db #0x43	; 67	'C'
   4488 0F                 1295 	.db #0x0F	; 15
   4489 0F                 1296 	.db #0x0F	; 15
   448A 1E                 1297 	.db #0x1E	; 30
   448B 43                 1298 	.db #0x43	; 67	'C'
   448C 0F                 1299 	.db #0x0F	; 15
   448D 0F                 1300 	.db #0x0F	; 15
   448E 1E                 1301 	.db #0x1E	; 30
   448F 43                 1302 	.db #0x43	; 67	'C'
   4490 0F                 1303 	.db #0x0F	; 15
   4491 0F                 1304 	.db #0x0F	; 15
   4492 1E                 1305 	.db #0x1E	; 30
   4493 43                 1306 	.db #0x43	; 67	'C'
   4494 0F                 1307 	.db #0x0F	; 15
   4495 0F                 1308 	.db #0x0F	; 15
   4496 1E                 1309 	.db #0x1E	; 30
   4497 53                 1310 	.db #0x53	; 83	'S'
   4498 0F                 1311 	.db #0x0F	; 15
   4499 0F                 1312 	.db #0x0F	; 15
   449A 9E                 1313 	.db #0x9E	; 158
   449B 43                 1314 	.db #0x43	; 67	'C'
   449C 0F                 1315 	.db #0x0F	; 15
   449D 4F                 1316 	.db #0x4F	; 79	'O'
   449E 1E                 1317 	.db #0x1E	; 30
   449F 43                 1318 	.db #0x43	; 67	'C'
   44A0 0F                 1319 	.db #0x0F	; 15
   44A1 0F                 1320 	.db #0x0F	; 15
   44A2 1E                 1321 	.db #0x1E	; 30
   44A3 43                 1322 	.db #0x43	; 67	'C'
   44A4 4F                 1323 	.db #0x4F	; 79	'O'
   44A5 0F                 1324 	.db #0x0F	; 15
   44A6 1E                 1325 	.db #0x1E	; 30
   44A7 43                 1326 	.db #0x43	; 67	'C'
   44A8 0F                 1327 	.db #0x0F	; 15
   44A9                    1328 _rail_en:
   44A9 0F                 1329 	.db #0x0F	; 15
   44AA 1E                 1330 	.db #0x1E	; 30
   44AB 43                 1331 	.db #0x43	; 67	'C'
   44AC 0F                 1332 	.db #0x0F	; 15
   44AD 2F                 1333 	.db #0x2F	; 47
   44AE 1E                 1334 	.db #0x1E	; 30
   44AF 43                 1335 	.db #0x43	; 67	'C'
   44B0 8F                 1336 	.db #0x8F	; 143
   44B1 0F                 1337 	.db #0x0F	; 15
   44B2 0F                 1338 	.db #0x0F	; 15
   44B3 A1                 1339 	.db #0xA1	; 161
   44B4 0F                 1340 	.db #0x0F	; 15
   44B5 0F                 1341 	.db #0x0F	; 15
   44B6 0F                 1342 	.db #0x0F	; 15
   44B7 58                 1343 	.db #0x58	; 88	'X'
   44B8 0F                 1344 	.db #0x0F	; 15
   44B9 0F                 1345 	.db #0x0F	; 15
   44BA 4F                 1346 	.db #0x4F	; 79	'O'
   44BB 2C                 1347 	.db #0x2C	; 44
   44BC 87                 1348 	.db #0x87	; 135
   44BD 0F                 1349 	.db #0x0F	; 15
   44BE 0F                 1350 	.db #0x0F	; 15
   44BF 1E                 1351 	.db #0x1E	; 30
   44C0 43                 1352 	.db #0x43	; 67	'C'
   44C1 0F                 1353 	.db #0x0F	; 15
   44C2 0F                 1354 	.db #0x0F	; 15
   44C3 8F                 1355 	.db #0x8F	; 143
   44C4 A1                 1356 	.db #0xA1	; 161
   44C5 0F                 1357 	.db #0x0F	; 15
   44C6 0F                 1358 	.db #0x0F	; 15
   44C7 0F                 1359 	.db #0x0F	; 15
   44C8 58                 1360 	.db #0x58	; 88	'X'
   44C9 2F                 1361 	.db #0x2F	; 47
   44CA 0F                 1362 	.db #0x0F	; 15
   44CB 0F                 1363 	.db #0x0F	; 15
   44CC 2C                 1364 	.db #0x2C	; 44
   44CD 0F                 1365 	.db #0x0F	; 15
   44CE 0F                 1366 	.db #0x0F	; 15
   44CF 0F                 1367 	.db #0x0F	; 15
   44D0 1E                 1368 	.db #0x1E	; 30
   44D1 0F                 1369 	.db #0x0F	; 15
   44D2 0F                 1370 	.db #0x0F	; 15
   44D3 0F                 1371 	.db #0x0F	; 15
   44D4 4F                 1372 	.db #0x4F	; 79	'O'
   44D5 0F                 1373 	.db #0x0F	; 15
   44D6 0F                 1374 	.db #0x0F	; 15
   44D7 0F                 1375 	.db #0x0F	; 15
   44D8 0F                 1376 	.db #0x0F	; 15
   44D9 2F                 1377 	.db #0x2F	; 47
   44DA 4F                 1378 	.db #0x4F	; 79	'O'
   44DB 2F                 1379 	.db #0x2F	; 47
   44DC 0F                 1380 	.db #0x0F	; 15
   44DD 0F                 1381 	.db #0x0F	; 15
   44DE 0F                 1382 	.db #0x0F	; 15
   44DF 0F                 1383 	.db #0x0F	; 15
   44E0 0F                 1384 	.db #0x0F	; 15
   44E1 0F                 1385 	.db #0x0F	; 15
   44E2 0F                 1386 	.db #0x0F	; 15
   44E3 0F                 1387 	.db #0x0F	; 15
   44E4 2F                 1388 	.db #0x2F	; 47
   44E5 0F                 1389 	.db #0x0F	; 15
   44E6 0F                 1390 	.db #0x0F	; 15
   44E7 0F                 1391 	.db #0x0F	; 15
   44E8 0F                 1392 	.db #0x0F	; 15
   44E9                    1393 _rail_es:
   44E9 0F                 1394 	.db #0x0F	; 15
   44EA 0F                 1395 	.db #0x0F	; 15
   44EB 0F                 1396 	.db #0x0F	; 15
   44EC 0F                 1397 	.db #0x0F	; 15
   44ED 0F                 1398 	.db #0x0F	; 15
   44EE 0F                 1399 	.db #0x0F	; 15
   44EF 0F                 1400 	.db #0x0F	; 15
   44F0 2F                 1401 	.db #0x2F	; 47
   44F1 0F                 1402 	.db #0x0F	; 15
   44F2 2F                 1403 	.db #0x2F	; 47
   44F3 0F                 1404 	.db #0x0F	; 15
   44F4 0F                 1405 	.db #0x0F	; 15
   44F5 1F                 1406 	.db #0x1F	; 31
   44F6 0F                 1407 	.db #0x0F	; 15
   44F7 0F                 1408 	.db #0x0F	; 15
   44F8 0F                 1409 	.db #0x0F	; 15
   44F9 0F                 1410 	.db #0x0F	; 15
   44FA 0F                 1411 	.db #0x0F	; 15
   44FB 0F                 1412 	.db #0x0F	; 15
   44FC 0F                 1413 	.db #0x0F	; 15
   44FD 0F                 1414 	.db #0x0F	; 15
   44FE 0F                 1415 	.db #0x0F	; 15
   44FF 1F                 1416 	.db #0x1F	; 31
   4500 0F                 1417 	.db #0x0F	; 15
   4501 0F                 1418 	.db #0x0F	; 15
   4502 0F                 1419 	.db #0x0F	; 15
   4503 0F                 1420 	.db #0x0F	; 15
   4504 0F                 1421 	.db #0x0F	; 15
   4505 4F                 1422 	.db #0x4F	; 79	'O'
   4506 0F                 1423 	.db #0x0F	; 15
   4507 0F                 1424 	.db #0x0F	; 15
   4508 3C                 1425 	.db #0x3C	; 60
   4509 0F                 1426 	.db #0x0F	; 15
   450A 4F                 1427 	.db #0x4F	; 79	'O'
   450B 0F                 1428 	.db #0x0F	; 15
   450C 48                 1429 	.db #0x48	; 72	'H'
   450D 0F                 1430 	.db #0x0F	; 15
   450E 0F                 1431 	.db #0x0F	; 15
   450F 4F                 1432 	.db #0x4F	; 79	'O'
   4510 B0                 1433 	.db #0xB0	; 176
   4511 0F                 1434 	.db #0x0F	; 15
   4512 0F                 1435 	.db #0x0F	; 15
   4513 1E                 1436 	.db #0x1E	; 30
   4514 43                 1437 	.db #0x43	; 67	'C'
   4515 0F                 1438 	.db #0x0F	; 15
   4516 0F                 1439 	.db #0x0F	; 15
   4517 2C                 1440 	.db #0x2C	; 44
   4518 87                 1441 	.db #0x87	; 135
   4519 0F                 1442 	.db #0x0F	; 15
   451A 0F                 1443 	.db #0x0F	; 15
   451B 58                 1444 	.db #0x58	; 88	'X'
   451C 0F                 1445 	.db #0x0F	; 15
   451D 0F                 1446 	.db #0x0F	; 15
   451E 8F                 1447 	.db #0x8F	; 143
   451F A1                 1448 	.db #0xA1	; 161
   4520 0F                 1449 	.db #0x0F	; 15
   4521 0F                 1450 	.db #0x0F	; 15
   4522 1E                 1451 	.db #0x1E	; 30
   4523 43                 1452 	.db #0x43	; 67	'C'
   4524 8F                 1453 	.db #0x8F	; 143
   4525 0F                 1454 	.db #0x0F	; 15
   4526 1E                 1455 	.db #0x1E	; 30
   4527 43                 1456 	.db #0x43	; 67	'C'
   4528 0F                 1457 	.db #0x0F	; 15
   4529                    1458 _rail_wn:
   4529 0F                 1459 	.db #0x0F	; 15
   452A 1E                 1460 	.db #0x1E	; 30
   452B 43                 1461 	.db #0x43	; 67	'C'
   452C 0F                 1462 	.db #0x0F	; 15
   452D 0F                 1463 	.db #0x0F	; 15
   452E 1E                 1464 	.db #0x1E	; 30
   452F 53                 1465 	.db #0x53	; 83	'S'
   4530 0F                 1466 	.db #0x0F	; 15
   4531 0F                 1467 	.db #0x0F	; 15
   4532 2C                 1468 	.db #0x2C	; 44
   4533 87                 1469 	.db #0x87	; 135
   4534 0F                 1470 	.db #0x0F	; 15
   4535 2F                 1471 	.db #0x2F	; 47
   4536 58                 1472 	.db #0x58	; 88	'X'
   4537 0F                 1473 	.db #0x0F	; 15
   4538 0F                 1474 	.db #0x0F	; 15
   4539 0F                 1475 	.db #0x0F	; 15
   453A A1                 1476 	.db #0xA1	; 161
   453B 0F                 1477 	.db #0x0F	; 15
   453C 0F                 1478 	.db #0x0F	; 15
   453D 1E                 1479 	.db #0x1E	; 30
   453E 43                 1480 	.db #0x43	; 67	'C'
   453F 0F                 1481 	.db #0x0F	; 15
   4540 8F                 1482 	.db #0x8F	; 143
   4541 2C                 1483 	.db #0x2C	; 44
   4542 87                 1484 	.db #0x87	; 135
   4543 0F                 1485 	.db #0x0F	; 15
   4544 0F                 1486 	.db #0x0F	; 15
   4545 D0                 1487 	.db #0xD0	; 208
   4546 1F                 1488 	.db #0x1F	; 31
   4547 0F                 1489 	.db #0x0F	; 15
   4548 0F                 1490 	.db #0x0F	; 15
   4549 21                 1491 	.db #0x21	; 33
   454A 0F                 1492 	.db #0x0F	; 15
   454B 0F                 1493 	.db #0x0F	; 15
   454C 0F                 1494 	.db #0x0F	; 15
   454D C3                 1495 	.db #0xC3	; 195
   454E 0F                 1496 	.db #0x0F	; 15
   454F 0F                 1497 	.db #0x0F	; 15
   4550 0F                 1498 	.db #0x0F	; 15
   4551 0F                 1499 	.db #0x0F	; 15
   4552 0F                 1500 	.db #0x0F	; 15
   4553 0F                 1501 	.db #0x0F	; 15
   4554 0F                 1502 	.db #0x0F	; 15
   4555 1F                 1503 	.db #0x1F	; 31
   4556 0F                 1504 	.db #0x0F	; 15
   4557 4F                 1505 	.db #0x4F	; 79	'O'
   4558 4F                 1506 	.db #0x4F	; 79	'O'
   4559 0F                 1507 	.db #0x0F	; 15
   455A 0F                 1508 	.db #0x0F	; 15
   455B 0F                 1509 	.db #0x0F	; 15
   455C 0F                 1510 	.db #0x0F	; 15
   455D 0F                 1511 	.db #0x0F	; 15
   455E 1F                 1512 	.db #0x1F	; 31
   455F 0F                 1513 	.db #0x0F	; 15
   4560 0F                 1514 	.db #0x0F	; 15
   4561 2F                 1515 	.db #0x2F	; 47
   4562 0F                 1516 	.db #0x0F	; 15
   4563 0F                 1517 	.db #0x0F	; 15
   4564 0F                 1518 	.db #0x0F	; 15
   4565 0F                 1519 	.db #0x0F	; 15
   4566 0F                 1520 	.db #0x0F	; 15
   4567 0F                 1521 	.db #0x0F	; 15
   4568 0F                 1522 	.db #0x0F	; 15
   4569                    1523 _rail_ws:
   4569 0F                 1524 	.db #0x0F	; 15
   456A 0F                 1525 	.db #0x0F	; 15
   456B 0F                 1526 	.db #0x0F	; 15
   456C 0F                 1527 	.db #0x0F	; 15
   456D 0F                 1528 	.db #0x0F	; 15
   456E 0F                 1529 	.db #0x0F	; 15
   456F 0F                 1530 	.db #0x0F	; 15
   4570 0F                 1531 	.db #0x0F	; 15
   4571 2F                 1532 	.db #0x2F	; 47
   4572 0F                 1533 	.db #0x0F	; 15
   4573 4F                 1534 	.db #0x4F	; 79	'O'
   4574 2F                 1535 	.db #0x2F	; 47
   4575 0F                 1536 	.db #0x0F	; 15
   4576 0F                 1537 	.db #0x0F	; 15
   4577 0F                 1538 	.db #0x0F	; 15
   4578 0F                 1539 	.db #0x0F	; 15
   4579 0F                 1540 	.db #0x0F	; 15
   457A 0F                 1541 	.db #0x0F	; 15
   457B 0F                 1542 	.db #0x0F	; 15
   457C 0F                 1543 	.db #0x0F	; 15
   457D 0F                 1544 	.db #0x0F	; 15
   457E 0F                 1545 	.db #0x0F	; 15
   457F 0F                 1546 	.db #0x0F	; 15
   4580 0F                 1547 	.db #0x0F	; 15
   4581 0F                 1548 	.db #0x0F	; 15
   4582 2F                 1549 	.db #0x2F	; 47
   4583 0F                 1550 	.db #0x0F	; 15
   4584 0F                 1551 	.db #0x0F	; 15
   4585 C3                 1552 	.db #0xC3	; 195
   4586 0F                 1553 	.db #0x0F	; 15
   4587 0F                 1554 	.db #0x0F	; 15
   4588 0F                 1555 	.db #0x0F	; 15
   4589 21                 1556 	.db #0x21	; 33
   458A 0F                 1557 	.db #0x0F	; 15
   458B 2F                 1558 	.db #0x2F	; 47
   458C 0F                 1559 	.db #0x0F	; 15
   458D D0                 1560 	.db #0xD0	; 208
   458E 0F                 1561 	.db #0x0F	; 15
   458F 0F                 1562 	.db #0x0F	; 15
   4590 0F                 1563 	.db #0x0F	; 15
   4591 2C                 1564 	.db #0x2C	; 44
   4592 87                 1565 	.db #0x87	; 135
   4593 0F                 1566 	.db #0x0F	; 15
   4594 0F                 1567 	.db #0x0F	; 15
   4595 1E                 1568 	.db #0x1E	; 30
   4596 43                 1569 	.db #0x43	; 67	'C'
   4597 0F                 1570 	.db #0x0F	; 15
   4598 2F                 1571 	.db #0x2F	; 47
   4599 4F                 1572 	.db #0x4F	; 79	'O'
   459A A1                 1573 	.db #0xA1	; 161
   459B 0F                 1574 	.db #0x0F	; 15
   459C 0F                 1575 	.db #0x0F	; 15
   459D 0F                 1576 	.db #0x0F	; 15
   459E 58                 1577 	.db #0x58	; 88	'X'
   459F 4F                 1578 	.db #0x4F	; 79	'O'
   45A0 0F                 1579 	.db #0x0F	; 15
   45A1 0F                 1580 	.db #0x0F	; 15
   45A2 2C                 1581 	.db #0x2C	; 44
   45A3 87                 1582 	.db #0x87	; 135
   45A4 4F                 1583 	.db #0x4F	; 79	'O'
   45A5 0F                 1584 	.db #0x0F	; 15
   45A6 1E                 1585 	.db #0x1E	; 30
   45A7 43                 1586 	.db #0x43	; 67	'C'
   45A8 0F                 1587 	.db #0x0F	; 15
   45A9                    1588 _rail_ew_n:
   45A9 0F                 1589 	.db #0x0F	; 15
   45AA 1E                 1590 	.db #0x1E	; 30
   45AB 43                 1591 	.db #0x43	; 67	'C'
   45AC 0F                 1592 	.db #0x0F	; 15
   45AD 0F                 1593 	.db #0x0F	; 15
   45AE 9E                 1594 	.db #0x9E	; 158
   45AF 43                 1595 	.db #0x43	; 67	'C'
   45B0 0F                 1596 	.db #0x0F	; 15
   45B1 0F                 1597 	.db #0x0F	; 15
   45B2 1E                 1598 	.db #0x1E	; 30
   45B3 53                 1599 	.db #0x53	; 83	'S'
   45B4 0F                 1600 	.db #0x0F	; 15
   45B5 0F                 1601 	.db #0x0F	; 15
   45B6 2C                 1602 	.db #0x2C	; 44
   45B7 87                 1603 	.db #0x87	; 135
   45B8 0F                 1604 	.db #0x0F	; 15
   45B9 4F                 1605 	.db #0x4F	; 79	'O'
   45BA 58                 1606 	.db #0x58	; 88	'X'
   45BB 0F                 1607 	.db #0x0F	; 15
   45BC 0F                 1608 	.db #0x0F	; 15
   45BD 0F                 1609 	.db #0x0F	; 15
   45BE A1                 1610 	.db #0xA1	; 161
   45BF 0F                 1611 	.db #0x0F	; 15
   45C0 8F                 1612 	.db #0x8F	; 143
   45C1 1E                 1613 	.db #0x1E	; 30
   45C2 43                 1614 	.db #0x43	; 67	'C'
   45C3 0F                 1615 	.db #0x0F	; 15
   45C4 0F                 1616 	.db #0x0F	; 15
   45C5 E0                 1617 	.db #0xE0	; 224
   45C6 F0                 1618 	.db #0xF0	; 240
   45C7 F0                 1619 	.db #0xF0	; 240
   45C8 F0                 1620 	.db #0xF0	; 240
   45C9 00                 1621 	.db #0x00	; 0
   45CA 00                 1622 	.db #0x00	; 0
   45CB 00                 1623 	.db #0x00	; 0
   45CC 00                 1624 	.db #0x00	; 0
   45CD F0                 1625 	.db #0xF0	; 240
   45CE F0                 1626 	.db #0xF0	; 240
   45CF F0                 1627 	.db #0xF0	; 240
   45D0 F0                 1628 	.db #0xF0	; 240
   45D1 0F                 1629 	.db #0x0F	; 15
   45D2 0F                 1630 	.db #0x0F	; 15
   45D3 0F                 1631 	.db #0x0F	; 15
   45D4 0F                 1632 	.db #0x0F	; 15
   45D5 2F                 1633 	.db #0x2F	; 47
   45D6 1F                 1634 	.db #0x1F	; 31
   45D7 0F                 1635 	.db #0x0F	; 15
   45D8 4F                 1636 	.db #0x4F	; 79	'O'
   45D9 0F                 1637 	.db #0x0F	; 15
   45DA 0F                 1638 	.db #0x0F	; 15
   45DB 0F                 1639 	.db #0x0F	; 15
   45DC 0F                 1640 	.db #0x0F	; 15
   45DD 0F                 1641 	.db #0x0F	; 15
   45DE 0F                 1642 	.db #0x0F	; 15
   45DF 0F                 1643 	.db #0x0F	; 15
   45E0 0F                 1644 	.db #0x0F	; 15
   45E1 0F                 1645 	.db #0x0F	; 15
   45E2 8F                 1646 	.db #0x8F	; 143
   45E3 4F                 1647 	.db #0x4F	; 79	'O'
   45E4 0F                 1648 	.db #0x0F	; 15
   45E5 0F                 1649 	.db #0x0F	; 15
   45E6 0F                 1650 	.db #0x0F	; 15
   45E7 0F                 1651 	.db #0x0F	; 15
   45E8 0F                 1652 	.db #0x0F	; 15
   45E9                    1653 _rail_ew_s:
   45E9 0F                 1654 	.db #0x0F	; 15
   45EA 0F                 1655 	.db #0x0F	; 15
   45EB 0F                 1656 	.db #0x0F	; 15
   45EC 0F                 1657 	.db #0x0F	; 15
   45ED 0F                 1658 	.db #0x0F	; 15
   45EE 0F                 1659 	.db #0x0F	; 15
   45EF 0F                 1660 	.db #0x0F	; 15
   45F0 8F                 1661 	.db #0x8F	; 143
   45F1 0F                 1662 	.db #0x0F	; 15
   45F2 4F                 1663 	.db #0x4F	; 79	'O'
   45F3 0F                 1664 	.db #0x0F	; 15
   45F4 0F                 1665 	.db #0x0F	; 15
   45F5 0F                 1666 	.db #0x0F	; 15
   45F6 0F                 1667 	.db #0x0F	; 15
   45F7 0F                 1668 	.db #0x0F	; 15
   45F8 0F                 1669 	.db #0x0F	; 15
   45F9 0F                 1670 	.db #0x0F	; 15
   45FA 0F                 1671 	.db #0x0F	; 15
   45FB 4F                 1672 	.db #0x4F	; 79	'O'
   45FC 0F                 1673 	.db #0x0F	; 15
   45FD 4F                 1674 	.db #0x4F	; 79	'O'
   45FE 0F                 1675 	.db #0x0F	; 15
   45FF 0F                 1676 	.db #0x0F	; 15
   4600 2F                 1677 	.db #0x2F	; 47
   4601 0F                 1678 	.db #0x0F	; 15
   4602 0F                 1679 	.db #0x0F	; 15
   4603 0F                 1680 	.db #0x0F	; 15
   4604 0F                 1681 	.db #0x0F	; 15
   4605 F0                 1682 	.db #0xF0	; 240
   4606 F0                 1683 	.db #0xF0	; 240
   4607 F0                 1684 	.db #0xF0	; 240
   4608 F0                 1685 	.db #0xF0	; 240
   4609 00                 1686 	.db #0x00	; 0
   460A 00                 1687 	.db #0x00	; 0
   460B 00                 1688 	.db #0x00	; 0
   460C 00                 1689 	.db #0x00	; 0
   460D E0                 1690 	.db #0xE0	; 224
   460E F0                 1691 	.db #0xF0	; 240
   460F F0                 1692 	.db #0xF0	; 240
   4610 F0                 1693 	.db #0xF0	; 240
   4611 1E                 1694 	.db #0x1E	; 30
   4612 43                 1695 	.db #0x43	; 67	'C'
   4613 0F                 1696 	.db #0x0F	; 15
   4614 0F                 1697 	.db #0x0F	; 15
   4615 0F                 1698 	.db #0x0F	; 15
   4616 A1                 1699 	.db #0xA1	; 161
   4617 4F                 1700 	.db #0x4F	; 79	'O'
   4618 0F                 1701 	.db #0x0F	; 15
   4619 0F                 1702 	.db #0x0F	; 15
   461A 58                 1703 	.db #0x58	; 88	'X'
   461B 0F                 1704 	.db #0x0F	; 15
   461C 0F                 1705 	.db #0x0F	; 15
   461D 0F                 1706 	.db #0x0F	; 15
   461E 2C                 1707 	.db #0x2C	; 44
   461F 87                 1708 	.db #0x87	; 135
   4620 8F                 1709 	.db #0x8F	; 143
   4621 4F                 1710 	.db #0x4F	; 79	'O'
   4622 1E                 1711 	.db #0x1E	; 30
   4623 43                 1712 	.db #0x43	; 67	'C'
   4624 0F                 1713 	.db #0x0F	; 15
   4625 0F                 1714 	.db #0x0F	; 15
   4626 1E                 1715 	.db #0x1E	; 30
   4627 43                 1716 	.db #0x43	; 67	'C'
   4628 0F                 1717 	.db #0x0F	; 15
   4629                    1718 _rail_ns_w:
   4629 0F                 1719 	.db #0x0F	; 15
   462A 1E                 1720 	.db #0x1E	; 30
   462B 43                 1721 	.db #0x43	; 67	'C'
   462C 0F                 1722 	.db #0x0F	; 15
   462D 4F                 1723 	.db #0x4F	; 79	'O'
   462E 1E                 1724 	.db #0x1E	; 30
   462F 43                 1725 	.db #0x43	; 67	'C'
   4630 2F                 1726 	.db #0x2F	; 47
   4631 0F                 1727 	.db #0x0F	; 15
   4632 1E                 1728 	.db #0x1E	; 30
   4633 43                 1729 	.db #0x43	; 67	'C'
   4634 0F                 1730 	.db #0x0F	; 15
   4635 0F                 1731 	.db #0x0F	; 15
   4636 1E                 1732 	.db #0x1E	; 30
   4637 43                 1733 	.db #0x43	; 67	'C'
   4638 0F                 1734 	.db #0x0F	; 15
   4639 0F                 1735 	.db #0x0F	; 15
   463A 5E                 1736 	.db #0x5E	; 94
   463B 43                 1737 	.db #0x43	; 67	'C'
   463C 0F                 1738 	.db #0x0F	; 15
   463D 0F                 1739 	.db #0x0F	; 15
   463E 1E                 1740 	.db #0x1E	; 30
   463F 43                 1741 	.db #0x43	; 67	'C'
   4640 0F                 1742 	.db #0x0F	; 15
   4641 0F                 1743 	.db #0x0F	; 15
   4642 1E                 1744 	.db #0x1E	; 30
   4643 43                 1745 	.db #0x43	; 67	'C'
   4644 0F                 1746 	.db #0x0F	; 15
   4645 E1                 1747 	.db #0xE1	; 225
   4646 1E                 1748 	.db #0x1E	; 30
   4647 43                 1749 	.db #0x43	; 67	'C'
   4648 4F                 1750 	.db #0x4F	; 79	'O'
   4649 10                 1751 	.db #0x10	; 16
   464A 1E                 1752 	.db #0x1E	; 30
   464B 43                 1753 	.db #0x43	; 67	'C'
   464C 0F                 1754 	.db #0x0F	; 15
   464D E0                 1755 	.db #0xE0	; 224
   464E 96                 1756 	.db #0x96	; 150
   464F 43                 1757 	.db #0x43	; 67	'C'
   4650 0F                 1758 	.db #0x0F	; 15
   4651 1E                 1759 	.db #0x1E	; 30
   4652 52                 1760 	.db #0x52	; 82	'R'
   4653 43                 1761 	.db #0x43	; 67	'C'
   4654 0F                 1762 	.db #0x0F	; 15
   4655 0F                 1763 	.db #0x0F	; 15
   4656 B0                 1764 	.db #0xB0	; 176
   4657 53                 1765 	.db #0x53	; 83	'S'
   4658 0F                 1766 	.db #0x0F	; 15
   4659 0F                 1767 	.db #0x0F	; 15
   465A 58                 1768 	.db #0x58	; 88	'X'
   465B 43                 1769 	.db #0x43	; 67	'C'
   465C 0F                 1770 	.db #0x0F	; 15
   465D 2F                 1771 	.db #0x2F	; 47
   465E 2C                 1772 	.db #0x2C	; 44
   465F 43                 1773 	.db #0x43	; 67	'C'
   4660 0F                 1774 	.db #0x0F	; 15
   4661 0F                 1775 	.db #0x0F	; 15
   4662 1E                 1776 	.db #0x1E	; 30
   4663 43                 1777 	.db #0x43	; 67	'C'
   4664 2F                 1778 	.db #0x2F	; 47
   4665 0F                 1779 	.db #0x0F	; 15
   4666 1E                 1780 	.db #0x1E	; 30
   4667 43                 1781 	.db #0x43	; 67	'C'
   4668 0F                 1782 	.db #0x0F	; 15
   4669                    1783 _rail_ns_e:
   4669 0F                 1784 	.db #0x0F	; 15
   466A 1E                 1785 	.db #0x1E	; 30
   466B 43                 1786 	.db #0x43	; 67	'C'
   466C 0F                 1787 	.db #0x0F	; 15
   466D 0F                 1788 	.db #0x0F	; 15
   466E 1E                 1789 	.db #0x1E	; 30
   466F 43                 1790 	.db #0x43	; 67	'C'
   4670 2F                 1791 	.db #0x2F	; 47
   4671 0F                 1792 	.db #0x0F	; 15
   4672 9E                 1793 	.db #0x9E	; 158
   4673 43                 1794 	.db #0x43	; 67	'C'
   4674 0F                 1795 	.db #0x0F	; 15
   4675 0F                 1796 	.db #0x0F	; 15
   4676 1E                 1797 	.db #0x1E	; 30
   4677 43                 1798 	.db #0x43	; 67	'C'
   4678 0F                 1799 	.db #0x0F	; 15
   4679 0F                 1800 	.db #0x0F	; 15
   467A 1E                 1801 	.db #0x1E	; 30
   467B 43                 1802 	.db #0x43	; 67	'C'
   467C 8F                 1803 	.db #0x8F	; 143
   467D 0F                 1804 	.db #0x0F	; 15
   467E 1E                 1805 	.db #0x1E	; 30
   467F 43                 1806 	.db #0x43	; 67	'C'
   4680 0F                 1807 	.db #0x0F	; 15
   4681 0F                 1808 	.db #0x0F	; 15
   4682 5E                 1809 	.db #0x5E	; 94
   4683 43                 1810 	.db #0x43	; 67	'C'
   4684 0F                 1811 	.db #0x0F	; 15
   4685 4F                 1812 	.db #0x4F	; 79	'O'
   4686 1E                 1813 	.db #0x1E	; 30
   4687 43                 1814 	.db #0x43	; 67	'C'
   4688 3C                 1815 	.db #0x3C	; 60
   4689 0F                 1816 	.db #0x0F	; 15
   468A 1E                 1817 	.db #0x1E	; 30
   468B 43                 1818 	.db #0x43	; 67	'C'
   468C 48                 1819 	.db #0x48	; 72	'H'
   468D 0F                 1820 	.db #0x0F	; 15
   468E 1E                 1821 	.db #0x1E	; 30
   468F 43                 1822 	.db #0x43	; 67	'C'
   4690 B0                 1823 	.db #0xB0	; 176
   4691 0F                 1824 	.db #0x0F	; 15
   4692 1E                 1825 	.db #0x1E	; 30
   4693 52                 1826 	.db #0x52	; 82	'R'
   4694 43                 1827 	.db #0x43	; 67	'C'
   4695 0F                 1828 	.db #0x0F	; 15
   4696 5E                 1829 	.db #0x5E	; 94
   4697 60                 1830 	.db #0x60	; 96
   4698 87                 1831 	.db #0x87	; 135
   4699 0F                 1832 	.db #0x0F	; 15
   469A 1E                 1833 	.db #0x1E	; 30
   469B 50                 1834 	.db #0x50	; 80	'P'
   469C 0F                 1835 	.db #0x0F	; 15
   469D 0F                 1836 	.db #0x0F	; 15
   469E 1E                 1837 	.db #0x1E	; 30
   469F 21                 1838 	.db #0x21	; 33
   46A0 0F                 1839 	.db #0x0F	; 15
   46A1 2F                 1840 	.db #0x2F	; 47
   46A2 1E                 1841 	.db #0x1E	; 30
   46A3 43                 1842 	.db #0x43	; 67	'C'
   46A4 8F                 1843 	.db #0x8F	; 143
   46A5 0F                 1844 	.db #0x0F	; 15
   46A6 1E                 1845 	.db #0x1E	; 30
   46A7 43                 1846 	.db #0x43	; 67	'C'
   46A8 0F                 1847 	.db #0x0F	; 15
                           1848 ;src/includes/gui.h:8: void putM1(void)
                           1849 ;	---------------------------------
                           1850 ; Function putM1
                           1851 ; ---------------------------------
   46A9                    1852 _putM1::
                           1853 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   46A9 3E 01         [ 7] 1854 	ld	a,#0x01
   46AB F5            [11] 1855 	push	af
   46AC 33            [ 6] 1856 	inc	sp
   46AD CD 05 5F      [17] 1857 	call	_cpct_setVideoMode
   46B0 33            [ 6] 1858 	inc	sp
                           1859 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   46B1 21 23 40      [10] 1860 	ld	hl,#_paletteMenusM1
   46B4 01 04 00      [10] 1861 	ld	bc,#0x0004
   46B7 C5            [11] 1862 	push	bc
   46B8 E5            [11] 1863 	push	hl
   46B9 CD 1D 5D      [17] 1864 	call	_cpct_setPalette
   46BC C9            [10] 1865 	ret
                           1866 ;src/includes/gui.h:15: void putM2(void)
                           1867 ;	---------------------------------
                           1868 ; Function putM2
                           1869 ; ---------------------------------
   46BD                    1870 _putM2::
                           1871 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   46BD 3E 02         [ 7] 1872 	ld	a,#0x02
   46BF F5            [11] 1873 	push	af
   46C0 33            [ 6] 1874 	inc	sp
   46C1 CD 05 5F      [17] 1875 	call	_cpct_setVideoMode
   46C4 33            [ 6] 1876 	inc	sp
                           1877 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   46C5 21 27 40      [10] 1878 	ld	hl,#_paletteMenusM2
   46C8 01 02 00      [10] 1879 	ld	bc,#0x0002
   46CB C5            [11] 1880 	push	bc
   46CC E5            [11] 1881 	push	hl
   46CD CD 1D 5D      [17] 1882 	call	_cpct_setPalette
                           1883 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   46D0 21 00 40      [10] 1884 	ld	hl,#0x4000
   46D3 E5            [11] 1885 	push	hl
   46D4 3E FF         [ 7] 1886 	ld	a,#0xFF
   46D6 F5            [11] 1887 	push	af
   46D7 33            [ 6] 1888 	inc	sp
   46D8 26 C0         [ 7] 1889 	ld	h, #0xC0
   46DA E5            [11] 1890 	push	hl
   46DB CD 33 5F      [17] 1891 	call	_cpct_memset
   46DE C9            [10] 1892 	ret
                           1893 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                           1894 ;	---------------------------------
                           1895 ; Function drawBoxM0
                           1896 ; ---------------------------------
   46DF                    1897 _drawBoxM0::
   46DF DD E5         [15] 1898 	push	ix
   46E1 DD 21 00 00   [14] 1899 	ld	ix,#0
   46E5 DD 39         [15] 1900 	add	ix,sp
   46E7 21 F9 FF      [10] 1901 	ld	hl,#-7
   46EA 39            [11] 1902 	add	hl,sp
   46EB F9            [ 6] 1903 	ld	sp,hl
                           1904 ;src/includes/gui.h:28: int left = (80-width_)/2;
   46EC 3E 50         [ 7] 1905 	ld	a,#0x50
   46EE DD 96 04      [19] 1906 	sub	a, 4 (ix)
   46F1 57            [ 4] 1907 	ld	d,a
   46F2 3E 00         [ 7] 1908 	ld	a,#0x00
   46F4 DD 9E 05      [19] 1909 	sbc	a, 5 (ix)
   46F7 5F            [ 4] 1910 	ld	e,a
   46F8 6A            [ 4] 1911 	ld	l, d
   46F9 63            [ 4] 1912 	ld	h, e
   46FA CB 7B         [ 8] 1913 	bit	7, e
   46FC 28 03         [12] 1914 	jr	Z,00103$
   46FE 6A            [ 4] 1915 	ld	l, d
   46FF 63            [ 4] 1916 	ld	h, e
   4700 23            [ 6] 1917 	inc	hl
   4701                    1918 00103$:
   4701 DD 75 F9      [19] 1919 	ld	-7 (ix),l
   4704 DD 74 FA      [19] 1920 	ld	-6 (ix),h
   4707 DD CB FA 2E   [23] 1921 	sra	-6 (ix)
   470B DD CB F9 1E   [23] 1922 	rr	-7 (ix)
                           1923 ;src/includes/gui.h:29: int top = (200-height_)/2;
   470F 3E C8         [ 7] 1924 	ld	a,#0xC8
   4711 DD 96 06      [19] 1925 	sub	a, 6 (ix)
   4714 4F            [ 4] 1926 	ld	c,a
   4715 3E 00         [ 7] 1927 	ld	a,#0x00
   4717 DD 9E 07      [19] 1928 	sbc	a, 7 (ix)
   471A 47            [ 4] 1929 	ld	b,a
   471B 61            [ 4] 1930 	ld	h,c
   471C 50            [ 4] 1931 	ld	d,b
   471D CB 78         [ 8] 1932 	bit	7, b
   471F 28 03         [12] 1933 	jr	Z,00104$
   4721 03            [ 6] 1934 	inc	bc
   4722 61            [ 4] 1935 	ld	h,c
   4723 50            [ 4] 1936 	ld	d,b
   4724                    1937 00104$:
   4724 5C            [ 4] 1938 	ld	e, h
   4725 CB 2A         [ 8] 1939 	sra	d
   4727 CB 1B         [ 8] 1940 	rr	e
                           1941 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   4729 D5            [11] 1942 	push	de
   472A 21 09 09      [10] 1943 	ld	hl,#0x0909
   472D E5            [11] 1944 	push	hl
   472E CD 17 5F      [17] 1945 	call	_cpct_px2byteM0
   4731 65            [ 4] 1946 	ld	h,l
   4732 01 00 40      [10] 1947 	ld	bc,#0x4000
   4735 C5            [11] 1948 	push	bc
   4736 E5            [11] 1949 	push	hl
   4737 33            [ 6] 1950 	inc	sp
   4738 21 00 C0      [10] 1951 	ld	hl,#0xC000
   473B E5            [11] 1952 	push	hl
   473C CD 33 5F      [17] 1953 	call	_cpct_memset
   473F D1            [10] 1954 	pop	de
                           1955 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4740 DD 73 FF      [19] 1956 	ld	-1 (ix), e
   4743 63            [ 4] 1957 	ld	h, e
   4744 24            [ 4] 1958 	inc	h
   4745 24            [ 4] 1959 	inc	h
   4746 24            [ 4] 1960 	inc	h
   4747 24            [ 4] 1961 	inc	h
   4748 DD 7E F9      [19] 1962 	ld	a,-7 (ix)
   474B 3C            [ 4] 1963 	inc	a
   474C DD 77 FC      [19] 1964 	ld	-4 (ix),a
   474F D5            [11] 1965 	push	de
   4750 E5            [11] 1966 	push	hl
   4751 33            [ 6] 1967 	inc	sp
   4752 DD 7E FC      [19] 1968 	ld	a,-4 (ix)
   4755 F5            [11] 1969 	push	af
   4756 33            [ 6] 1970 	inc	sp
   4757 21 00 C0      [10] 1971 	ld	hl,#0xC000
   475A E5            [11] 1972 	push	hl
   475B CD 32 60      [17] 1973 	call	_cpct_getScreenPtr
   475E D1            [10] 1974 	pop	de
   475F 4D            [ 4] 1975 	ld	c, l
   4760 44            [ 4] 1976 	ld	b, h
                           1977 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4761 DD 7E 06      [19] 1978 	ld	a,6 (ix)
   4764 DD 77 FB      [19] 1979 	ld	-5 (ix),a
   4767 DD 7E 04      [19] 1980 	ld	a,4 (ix)
   476A DD 77 FD      [19] 1981 	ld	-3 (ix),a
   476D C5            [11] 1982 	push	bc
   476E D5            [11] 1983 	push	de
   476F 21 02 02      [10] 1984 	ld	hl,#0x0202
   4772 E5            [11] 1985 	push	hl
   4773 CD 17 5F      [17] 1986 	call	_cpct_px2byteM0
   4776 DD 75 FE      [19] 1987 	ld	-2 (ix),l
   4779 D1            [10] 1988 	pop	de
   477A C1            [10] 1989 	pop	bc
   477B D5            [11] 1990 	push	de
   477C DD 66 FB      [19] 1991 	ld	h,-5 (ix)
   477F DD 6E FD      [19] 1992 	ld	l,-3 (ix)
   4782 E5            [11] 1993 	push	hl
   4783 DD 7E FE      [19] 1994 	ld	a,-2 (ix)
   4786 F5            [11] 1995 	push	af
   4787 33            [ 6] 1996 	inc	sp
   4788 C5            [11] 1997 	push	bc
   4789 CD 79 5F      [17] 1998 	call	_cpct_drawSolidBox
   478C F1            [10] 1999 	pop	af
   478D F1            [10] 2000 	pop	af
   478E 33            [ 6] 2001 	inc	sp
   478F D1            [10] 2002 	pop	de
                           2003 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4790 63            [ 4] 2004 	ld	h,e
   4791 DD 56 F9      [19] 2005 	ld	d,-7 (ix)
   4794 E5            [11] 2006 	push	hl
   4795 33            [ 6] 2007 	inc	sp
   4796 D5            [11] 2008 	push	de
   4797 33            [ 6] 2009 	inc	sp
   4798 21 00 C0      [10] 2010 	ld	hl,#0xC000
   479B E5            [11] 2011 	push	hl
   479C CD 32 60      [17] 2012 	call	_cpct_getScreenPtr
                           2013 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   479F E5            [11] 2014 	push	hl
   47A0 21 06 06      [10] 2015 	ld	hl,#0x0606
   47A3 E5            [11] 2016 	push	hl
   47A4 CD 17 5F      [17] 2017 	call	_cpct_px2byteM0
   47A7 45            [ 4] 2018 	ld	b,l
   47A8 D1            [10] 2019 	pop	de
   47A9 DD 66 FB      [19] 2020 	ld	h,-5 (ix)
   47AC DD 6E FD      [19] 2021 	ld	l,-3 (ix)
   47AF E5            [11] 2022 	push	hl
   47B0 C5            [11] 2023 	push	bc
   47B1 33            [ 6] 2024 	inc	sp
   47B2 D5            [11] 2025 	push	de
   47B3 CD 79 5F      [17] 2026 	call	_cpct_drawSolidBox
   47B6 F1            [10] 2027 	pop	af
   47B7 F1            [10] 2028 	pop	af
   47B8 33            [ 6] 2029 	inc	sp
                           2030 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   47B9 DD 66 FF      [19] 2031 	ld	h,-1 (ix)
   47BC 24            [ 4] 2032 	inc	h
   47BD 24            [ 4] 2033 	inc	h
   47BE E5            [11] 2034 	push	hl
   47BF 33            [ 6] 2035 	inc	sp
   47C0 DD 7E FC      [19] 2036 	ld	a,-4 (ix)
   47C3 F5            [11] 2037 	push	af
   47C4 33            [ 6] 2038 	inc	sp
   47C5 21 00 C0      [10] 2039 	ld	hl,#0xC000
   47C8 E5            [11] 2040 	push	hl
   47C9 CD 32 60      [17] 2041 	call	_cpct_getScreenPtr
   47CC EB            [ 4] 2042 	ex	de,hl
                           2043 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   47CD DD 7E 06      [19] 2044 	ld	a,6 (ix)
   47D0 C6 FC         [ 7] 2045 	add	a,#0xFC
   47D2 4F            [ 4] 2046 	ld	c,a
   47D3 DD 46 04      [19] 2047 	ld	b,4 (ix)
   47D6 05            [ 4] 2048 	dec	b
   47D7 05            [ 4] 2049 	dec	b
   47D8 C5            [11] 2050 	push	bc
   47D9 D5            [11] 2051 	push	de
   47DA 21 00 00      [10] 2052 	ld	hl,#0x0000
   47DD E5            [11] 2053 	push	hl
   47DE CD 17 5F      [17] 2054 	call	_cpct_px2byteM0
   47E1 DD 75 FE      [19] 2055 	ld	-2 (ix),l
   47E4 D1            [10] 2056 	pop	de
   47E5 C1            [10] 2057 	pop	bc
   47E6 79            [ 4] 2058 	ld	a,c
   47E7 F5            [11] 2059 	push	af
   47E8 33            [ 6] 2060 	inc	sp
   47E9 C5            [11] 2061 	push	bc
   47EA 33            [ 6] 2062 	inc	sp
   47EB DD 7E FE      [19] 2063 	ld	a,-2 (ix)
   47EE F5            [11] 2064 	push	af
   47EF 33            [ 6] 2065 	inc	sp
   47F0 D5            [11] 2066 	push	de
   47F1 CD 79 5F      [17] 2067 	call	_cpct_drawSolidBox
   47F4 DD F9         [10] 2068 	ld	sp,ix
   47F6 DD E1         [14] 2069 	pop	ix
   47F8 C9            [10] 2070 	ret
                           2071 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           2072 ;	---------------------------------
                           2073 ; Function drawBoxM2
                           2074 ; ---------------------------------
   47F9                    2075 _drawBoxM2::
   47F9 DD E5         [15] 2076 	push	ix
   47FB DD 21 00 00   [14] 2077 	ld	ix,#0
   47FF DD 39         [15] 2078 	add	ix,sp
   4801 21 FA FF      [10] 2079 	ld	hl,#-6
   4804 39            [11] 2080 	add	hl,sp
   4805 F9            [ 6] 2081 	ld	sp,hl
                           2082 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4806 3E 50         [ 7] 2083 	ld	a,#0x50
   4808 DD 96 04      [19] 2084 	sub	a, 4 (ix)
   480B 4F            [ 4] 2085 	ld	c,a
   480C 3E 00         [ 7] 2086 	ld	a,#0x00
   480E DD 9E 05      [19] 2087 	sbc	a, 5 (ix)
   4811 47            [ 4] 2088 	ld	b,a
   4812 61            [ 4] 2089 	ld	h,c
   4813 50            [ 4] 2090 	ld	d,b
   4814 CB 78         [ 8] 2091 	bit	7, b
   4816 28 03         [12] 2092 	jr	Z,00103$
   4818 03            [ 6] 2093 	inc	bc
   4819 61            [ 4] 2094 	ld	h,c
   481A 50            [ 4] 2095 	ld	d,b
   481B                    2096 00103$:
   481B 5C            [ 4] 2097 	ld	e, h
   481C CB 2A         [ 8] 2098 	sra	d
   481E CB 1B         [ 8] 2099 	rr	e
                           2100 ;src/includes/gui.h:53: int top = (200-height_)/2;
   4820 3E C8         [ 7] 2101 	ld	a,#0xC8
   4822 DD 96 06      [19] 2102 	sub	a, 6 (ix)
   4825 4F            [ 4] 2103 	ld	c,a
   4826 3E 00         [ 7] 2104 	ld	a,#0x00
   4828 DD 9E 07      [19] 2105 	sbc	a, 7 (ix)
   482B 47            [ 4] 2106 	ld	b,a
   482C 61            [ 4] 2107 	ld	h,c
   482D 68            [ 4] 2108 	ld	l,b
   482E CB 78         [ 8] 2109 	bit	7, b
   4830 28 03         [12] 2110 	jr	Z,00104$
   4832 03            [ 6] 2111 	inc	bc
   4833 61            [ 4] 2112 	ld	h,c
   4834 68            [ 4] 2113 	ld	l,b
   4835                    2114 00104$:
   4835 DD 74 FA      [19] 2115 	ld	-6 (ix),h
   4838 DD 75 FB      [19] 2116 	ld	-5 (ix),l
   483B DD CB FB 2E   [23] 2117 	sra	-5 (ix)
   483F DD CB FA 1E   [23] 2118 	rr	-6 (ix)
                           2119 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   4843 DD 7E FA      [19] 2120 	ld	a,-6 (ix)
   4846 DD 77 FD      [19] 2121 	ld	-3 (ix), a
   4849 C6 05         [ 7] 2122 	add	a, #0x05
   484B 4F            [ 4] 2123 	ld	c,a
   484C DD 73 FC      [19] 2124 	ld	-4 (ix), e
   484F 63            [ 4] 2125 	ld	h, e
   4850 24            [ 4] 2126 	inc	h
   4851 24            [ 4] 2127 	inc	h
   4852 D5            [11] 2128 	push	de
   4853 79            [ 4] 2129 	ld	a,c
   4854 F5            [11] 2130 	push	af
   4855 33            [ 6] 2131 	inc	sp
   4856 E5            [11] 2132 	push	hl
   4857 33            [ 6] 2133 	inc	sp
   4858 21 00 C0      [10] 2134 	ld	hl,#0xC000
   485B E5            [11] 2135 	push	hl
   485C CD 32 60      [17] 2136 	call	_cpct_getScreenPtr
   485F D1            [10] 2137 	pop	de
                           2138 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4860 DD 46 06      [19] 2139 	ld	b,6 (ix)
   4863 DD 4E 04      [19] 2140 	ld	c,4 (ix)
   4866 79            [ 4] 2141 	ld	a,c
   4867 C6 FF         [ 7] 2142 	add	a,#0xFF
   4869 DD 75 FE      [19] 2143 	ld	-2 (ix),l
   486C DD 74 FF      [19] 2144 	ld	-1 (ix),h
   486F C5            [11] 2145 	push	bc
   4870 D5            [11] 2146 	push	de
   4871 C5            [11] 2147 	push	bc
   4872 33            [ 6] 2148 	inc	sp
   4873 F5            [11] 2149 	push	af
   4874 33            [ 6] 2150 	inc	sp
   4875 AF            [ 4] 2151 	xor	a, a
   4876 F5            [11] 2152 	push	af
   4877 33            [ 6] 2153 	inc	sp
   4878 DD 6E FE      [19] 2154 	ld	l,-2 (ix)
   487B DD 66 FF      [19] 2155 	ld	h,-1 (ix)
   487E E5            [11] 2156 	push	hl
   487F CD 79 5F      [17] 2157 	call	_cpct_drawSolidBox
   4882 F1            [10] 2158 	pop	af
   4883 F1            [10] 2159 	pop	af
   4884 33            [ 6] 2160 	inc	sp
   4885 D1            [10] 2161 	pop	de
   4886 C1            [10] 2162 	pop	bc
                           2163 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4887 DD 66 FA      [19] 2164 	ld	h,-6 (ix)
   488A 53            [ 4] 2165 	ld	d,e
   488B C5            [11] 2166 	push	bc
   488C E5            [11] 2167 	push	hl
   488D 33            [ 6] 2168 	inc	sp
   488E D5            [11] 2169 	push	de
   488F 33            [ 6] 2170 	inc	sp
   4890 21 00 C0      [10] 2171 	ld	hl,#0xC000
   4893 E5            [11] 2172 	push	hl
   4894 CD 32 60      [17] 2173 	call	_cpct_getScreenPtr
   4897 C1            [10] 2174 	pop	bc
                           2175 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4898 DD 7E 04      [19] 2176 	ld	a,4 (ix)
   489B EB            [ 4] 2177 	ex	de,hl
   489C C5            [11] 2178 	push	bc
   489D C5            [11] 2179 	push	bc
   489E 33            [ 6] 2180 	inc	sp
   489F 47            [ 4] 2181 	ld	b,a
   48A0 0E F8         [ 7] 2182 	ld	c,#0xF8
   48A2 C5            [11] 2183 	push	bc
   48A3 D5            [11] 2184 	push	de
   48A4 CD 79 5F      [17] 2185 	call	_cpct_drawSolidBox
   48A7 F1            [10] 2186 	pop	af
   48A8 F1            [10] 2187 	pop	af
   48A9 33            [ 6] 2188 	inc	sp
   48AA C1            [10] 2189 	pop	bc
                           2190 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   48AB DD 66 FD      [19] 2191 	ld	h,-3 (ix)
   48AE 24            [ 4] 2192 	inc	h
   48AF DD 56 FC      [19] 2193 	ld	d,-4 (ix)
   48B2 14            [ 4] 2194 	inc	d
   48B3 C5            [11] 2195 	push	bc
   48B4 E5            [11] 2196 	push	hl
   48B5 33            [ 6] 2197 	inc	sp
   48B6 D5            [11] 2198 	push	de
   48B7 33            [ 6] 2199 	inc	sp
   48B8 21 00 C0      [10] 2200 	ld	hl,#0xC000
   48BB E5            [11] 2201 	push	hl
   48BC CD 32 60      [17] 2202 	call	_cpct_getScreenPtr
   48BF C1            [10] 2203 	pop	bc
   48C0 5D            [ 4] 2204 	ld	e, l
   48C1 54            [ 4] 2205 	ld	d, h
                           2206 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   48C2 DD 66 06      [19] 2207 	ld	h,6 (ix)
   48C5 25            [ 4] 2208 	dec	h
   48C6 25            [ 4] 2209 	dec	h
   48C7 79            [ 4] 2210 	ld	a,c
   48C8 C6 FE         [ 7] 2211 	add	a,#0xFE
   48CA E5            [11] 2212 	push	hl
   48CB 33            [ 6] 2213 	inc	sp
   48CC 47            [ 4] 2214 	ld	b,a
   48CD 0E FF         [ 7] 2215 	ld	c,#0xFF
   48CF C5            [11] 2216 	push	bc
   48D0 D5            [11] 2217 	push	de
   48D1 CD 79 5F      [17] 2218 	call	_cpct_drawSolidBox
   48D4 DD F9         [10] 2219 	ld	sp,ix
   48D6 DD E1         [14] 2220 	pop	ix
   48D8 C9            [10] 2221 	ret
                           2222 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2223 ;	---------------------------------
                           2224 ; Function EraseMenuEntry
                           2225 ; ---------------------------------
   48D9                    2226 _EraseMenuEntry::
   48D9 DD E5         [15] 2227 	push	ix
   48DB DD 21 00 00   [14] 2228 	ld	ix,#0
   48DF DD 39         [15] 2229 	add	ix,sp
   48E1 3B            [ 6] 2230 	dec	sp
                           2231 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   48E2 DD 4E 06      [19] 2232 	ld	c,6 (ix)
   48E5 06 00         [ 7] 2233 	ld	b,#0x00
   48E7 69            [ 4] 2234 	ld	l, c
   48E8 60            [ 4] 2235 	ld	h, b
   48E9 29            [11] 2236 	add	hl, hl
   48EA 29            [11] 2237 	add	hl, hl
   48EB 09            [11] 2238 	add	hl, bc
   48EC 29            [11] 2239 	add	hl, hl
   48ED 4D            [ 4] 2240 	ld	c,l
   48EE 44            [ 4] 2241 	ld	b,h
   48EF 3E C9         [ 7] 2242 	ld	a,#0xC9
   48F1 91            [ 4] 2243 	sub	a, c
   48F2 57            [ 4] 2244 	ld	d,a
   48F3 3E 00         [ 7] 2245 	ld	a,#0x00
   48F5 98            [ 4] 2246 	sbc	a, b
   48F6 5F            [ 4] 2247 	ld	e,a
   48F7 6A            [ 4] 2248 	ld	l, d
   48F8 63            [ 4] 2249 	ld	h, e
   48F9 CB 7B         [ 8] 2250 	bit	7, e
   48FB 28 03         [12] 2251 	jr	Z,00103$
   48FD 6A            [ 4] 2252 	ld	l, d
   48FE 63            [ 4] 2253 	ld	h, e
   48FF 23            [ 6] 2254 	inc	hl
   4900                    2255 00103$:
   4900 CB 2C         [ 8] 2256 	sra	h
   4902 CB 1D         [ 8] 2257 	rr	l
   4904 55            [ 4] 2258 	ld	d,l
   4905 DD 7E 07      [19] 2259 	ld	a,7 (ix)
   4908 5F            [ 4] 2260 	ld	e,a
   4909 87            [ 4] 2261 	add	a, a
   490A 87            [ 4] 2262 	add	a, a
   490B 83            [ 4] 2263 	add	a, e
   490C 87            [ 4] 2264 	add	a, a
   490D DD 77 FF      [19] 2265 	ld	-1 (ix),a
   4910 7A            [ 4] 2266 	ld	a,d
   4911 DD 86 FF      [19] 2267 	add	a, -1 (ix)
   4914 C5            [11] 2268 	push	bc
   4915 57            [ 4] 2269 	ld	d,a
   4916 1E 20         [ 7] 2270 	ld	e,#0x20
   4918 D5            [11] 2271 	push	de
   4919 21 00 C0      [10] 2272 	ld	hl,#0xC000
   491C E5            [11] 2273 	push	hl
   491D CD 32 60      [17] 2274 	call	_cpct_getScreenPtr
   4920 C1            [10] 2275 	pop	bc
                           2276 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   4921 EB            [ 4] 2277 	ex	de,hl
   4922 C5            [11] 2278 	push	bc
   4923 21 11 0A      [10] 2279 	ld	hl,#0x0A11
   4926 E5            [11] 2280 	push	hl
   4927 3E FF         [ 7] 2281 	ld	a,#0xFF
   4929 F5            [11] 2282 	push	af
   492A 33            [ 6] 2283 	inc	sp
   492B D5            [11] 2284 	push	de
   492C CD 79 5F      [17] 2285 	call	_cpct_drawSolidBox
   492F F1            [10] 2286 	pop	af
   4930 F1            [10] 2287 	pop	af
   4931 33            [ 6] 2288 	inc	sp
   4932 C1            [10] 2289 	pop	bc
                           2290 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   4933 3E CA         [ 7] 2291 	ld	a,#0xCA
   4935 91            [ 4] 2292 	sub	a, c
   4936 57            [ 4] 2293 	ld	d,a
   4937 3E 00         [ 7] 2294 	ld	a,#0x00
   4939 98            [ 4] 2295 	sbc	a, b
   493A 5F            [ 4] 2296 	ld	e,a
   493B 6A            [ 4] 2297 	ld	l, d
   493C 63            [ 4] 2298 	ld	h, e
   493D CB 7B         [ 8] 2299 	bit	7, e
   493F 28 03         [12] 2300 	jr	Z,00104$
   4941 6A            [ 4] 2301 	ld	l, d
   4942 63            [ 4] 2302 	ld	h, e
   4943 23            [ 6] 2303 	inc	hl
   4944                    2304 00104$:
   4944 CB 2C         [ 8] 2305 	sra	h
   4946 CB 1D         [ 8] 2306 	rr	l
   4948 7D            [ 4] 2307 	ld	a,l
   4949 DD 86 FF      [19] 2308 	add	a, -1 (ix)
   494C 4F            [ 4] 2309 	ld	c,a
   494D DD 6E 07      [19] 2310 	ld	l,7 (ix)
   4950 26 00         [ 7] 2311 	ld	h,#0x00
   4952 29            [11] 2312 	add	hl, hl
   4953 EB            [ 4] 2313 	ex	de,hl
   4954 DD 6E 04      [19] 2314 	ld	l,4 (ix)
   4957 DD 66 05      [19] 2315 	ld	h,5 (ix)
   495A 19            [11] 2316 	add	hl,de
   495B E5            [11] 2317 	push	hl
   495C 5E            [ 7] 2318 	ld	e,(hl)
   495D 23            [ 6] 2319 	inc	hl
   495E 56            [ 7] 2320 	ld	d,(hl)
   495F C5            [11] 2321 	push	bc
   4960 D5            [11] 2322 	push	de
   4961 CD 5A 5F      [17] 2323 	call	_strlen
   4964 F1            [10] 2324 	pop	af
   4965 EB            [ 4] 2325 	ex	de,hl
   4966 C1            [10] 2326 	pop	bc
   4967 E1            [10] 2327 	pop	hl
   4968 3E 52         [ 7] 2328 	ld	a,#0x52
   496A 93            [ 4] 2329 	sub	a, e
   496B 5F            [ 4] 2330 	ld	e,a
   496C 3E 00         [ 7] 2331 	ld	a,#0x00
   496E 9A            [ 4] 2332 	sbc	a, d
   496F 57            [ 4] 2333 	ld	d,a
   4970 CB 3A         [ 8] 2334 	srl	d
   4972 CB 1B         [ 8] 2335 	rr	e
   4974 E5            [11] 2336 	push	hl
   4975 51            [ 4] 2337 	ld	d, c
   4976 D5            [11] 2338 	push	de
   4977 01 00 C0      [10] 2339 	ld	bc,#0xC000
   497A C5            [11] 2340 	push	bc
   497B CD 32 60      [17] 2341 	call	_cpct_getScreenPtr
   497E 4D            [ 4] 2342 	ld	c,l
   497F 44            [ 4] 2343 	ld	b,h
   4980 E1            [10] 2344 	pop	hl
                           2345 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4981 5E            [ 7] 2346 	ld	e,(hl)
   4982 23            [ 6] 2347 	inc	hl
   4983 56            [ 7] 2348 	ld	d,(hl)
   4984 AF            [ 4] 2349 	xor	a, a
   4985 F5            [11] 2350 	push	af
   4986 33            [ 6] 2351 	inc	sp
   4987 C5            [11] 2352 	push	bc
   4988 D5            [11] 2353 	push	de
   4989 CD 4C 5D      [17] 2354 	call	_cpct_drawStringM2
   498C F1            [10] 2355 	pop	af
   498D F1            [10] 2356 	pop	af
   498E 33            [ 6] 2357 	inc	sp
   498F 33            [ 6] 2358 	inc	sp
   4990 DD E1         [14] 2359 	pop	ix
   4992 C9            [10] 2360 	ret
                           2361 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2362 ;	---------------------------------
                           2363 ; Function drawMenuEntry
                           2364 ; ---------------------------------
   4993                    2365 _drawMenuEntry::
   4993 DD E5         [15] 2366 	push	ix
   4995 DD 21 00 00   [14] 2367 	ld	ix,#0
   4999 DD 39         [15] 2368 	add	ix,sp
   499B 21 FA FF      [10] 2369 	ld	hl,#-6
   499E 39            [11] 2370 	add	hl,sp
   499F F9            [ 6] 2371 	ld	sp,hl
                           2372 ;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   49A0 DD 4E 06      [19] 2373 	ld	c,6 (ix)
   49A3 06 00         [ 7] 2374 	ld	b,#0x00
   49A5 69            [ 4] 2375 	ld	l, c
   49A6 60            [ 4] 2376 	ld	h, b
   49A7 29            [11] 2377 	add	hl, hl
   49A8 29            [11] 2378 	add	hl, hl
   49A9 09            [11] 2379 	add	hl, bc
   49AA 29            [11] 2380 	add	hl, hl
   49AB 4D            [ 4] 2381 	ld	c,l
   49AC 44            [ 4] 2382 	ld	b,h
   49AD 3E C9         [ 7] 2383 	ld	a,#0xC9
   49AF 91            [ 4] 2384 	sub	a, c
   49B0 57            [ 4] 2385 	ld	d,a
   49B1 3E 00         [ 7] 2386 	ld	a,#0x00
   49B3 98            [ 4] 2387 	sbc	a, b
   49B4 5F            [ 4] 2388 	ld	e,a
   49B5 6A            [ 4] 2389 	ld	l, d
   49B6 63            [ 4] 2390 	ld	h, e
   49B7 CB 7B         [ 8] 2391 	bit	7, e
   49B9 28 03         [12] 2392 	jr	Z,00114$
   49BB 6A            [ 4] 2393 	ld	l, d
   49BC 63            [ 4] 2394 	ld	h, e
   49BD 23            [ 6] 2395 	inc	hl
   49BE                    2396 00114$:
   49BE CB 2C         [ 8] 2397 	sra	h
   49C0 CB 1D         [ 8] 2398 	rr	l
   49C2 55            [ 4] 2399 	ld	d,l
   49C3 DD 7E 07      [19] 2400 	ld	a,7 (ix)
   49C6 5F            [ 4] 2401 	ld	e,a
   49C7 87            [ 4] 2402 	add	a, a
   49C8 87            [ 4] 2403 	add	a, a
   49C9 83            [ 4] 2404 	add	a, e
   49CA 87            [ 4] 2405 	add	a, a
   49CB 82            [ 4] 2406 	add	a,d
   49CC C5            [11] 2407 	push	bc
   49CD 57            [ 4] 2408 	ld	d,a
   49CE 1E 20         [ 7] 2409 	ld	e,#0x20
   49D0 D5            [11] 2410 	push	de
   49D1 21 00 C0      [10] 2411 	ld	hl,#0xC000
   49D4 E5            [11] 2412 	push	hl
   49D5 CD 32 60      [17] 2413 	call	_cpct_getScreenPtr
   49D8 C1            [10] 2414 	pop	bc
                           2415 ;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   49D9 EB            [ 4] 2416 	ex	de,hl
   49DA C5            [11] 2417 	push	bc
   49DB 21 11 0A      [10] 2418 	ld	hl,#0x0A11
   49DE E5            [11] 2419 	push	hl
   49DF AF            [ 4] 2420 	xor	a, a
   49E0 F5            [11] 2421 	push	af
   49E1 33            [ 6] 2422 	inc	sp
   49E2 D5            [11] 2423 	push	de
   49E3 CD 79 5F      [17] 2424 	call	_cpct_drawSolidBox
   49E6 F1            [10] 2425 	pop	af
   49E7 F1            [10] 2426 	pop	af
   49E8 33            [ 6] 2427 	inc	sp
   49E9 C1            [10] 2428 	pop	bc
                           2429 ;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
   49EA 21 B0 36      [10] 2430 	ld	hl,#0x36B0
   49ED                    2431 00108$:
   49ED 2B            [ 6] 2432 	dec	hl
   49EE 7C            [ 4] 2433 	ld	a,h
   49EF B5            [ 4] 2434 	or	a,l
   49F0 20 FB         [12] 2435 	jr	NZ,00108$
                           2436 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   49F2 3E CA         [ 7] 2437 	ld	a,#0xCA
   49F4 91            [ 4] 2438 	sub	a, c
   49F5 DD 77 FD      [19] 2439 	ld	-3 (ix),a
   49F8 3E 00         [ 7] 2440 	ld	a,#0x00
   49FA 98            [ 4] 2441 	sbc	a, b
   49FB DD 77 FE      [19] 2442 	ld	-2 (ix), a
   49FE 07            [ 4] 2443 	rlca
   49FF E6 01         [ 7] 2444 	and	a,#0x01
   4A01 5F            [ 4] 2445 	ld	e,a
   4A02 21 00 00      [10] 2446 	ld	hl,#0x0000
   4A05 E3            [19] 2447 	ex	(sp), hl
   4A06                    2448 00110$:
   4A06 DD 66 06      [19] 2449 	ld	h,6 (ix)
   4A09 2E 00         [ 7] 2450 	ld	l,#0x00
   4A0B DD 7E FA      [19] 2451 	ld	a,-6 (ix)
   4A0E 94            [ 4] 2452 	sub	a, h
   4A0F DD 7E FB      [19] 2453 	ld	a,-5 (ix)
   4A12 9D            [ 4] 2454 	sbc	a, l
   4A13 E2 18 4A      [10] 2455 	jp	PO, 00146$
   4A16 EE 80         [ 7] 2456 	xor	a, #0x80
   4A18                    2457 00146$:
   4A18 F2 BE 4A      [10] 2458 	jp	P,00112$
                           2459 ;src/includes/gui.h:97: if(i==iSelect)
   4A1B DD 56 07      [19] 2460 	ld	d,7 (ix)
   4A1E 06 00         [ 7] 2461 	ld	b,#0x00
   4A20 DD 7E FA      [19] 2462 	ld	a,-6 (ix)
   4A23 92            [ 4] 2463 	sub	a, d
   4A24 20 0A         [12] 2464 	jr	NZ,00103$
   4A26 DD 7E FB      [19] 2465 	ld	a,-5 (ix)
   4A29 90            [ 4] 2466 	sub	a, b
   4A2A 20 04         [12] 2467 	jr	NZ,00103$
                           2468 ;src/includes/gui.h:98: penSelected = 1;
   4A2C 0E 01         [ 7] 2469 	ld	c,#0x01
   4A2E 18 02         [12] 2470 	jr	00104$
   4A30                    2471 00103$:
                           2472 ;src/includes/gui.h:100: penSelected = 0;
   4A30 0E 00         [ 7] 2473 	ld	c,#0x00
   4A32                    2474 00104$:
                           2475 ;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4A32 DD 6E FD      [19] 2476 	ld	l,-3 (ix)
   4A35 DD 66 FE      [19] 2477 	ld	h,-2 (ix)
   4A38 7B            [ 4] 2478 	ld	a,e
   4A39 B7            [ 4] 2479 	or	a, a
   4A3A 28 07         [12] 2480 	jr	Z,00115$
   4A3C DD 6E FD      [19] 2481 	ld	l,-3 (ix)
   4A3F DD 66 FE      [19] 2482 	ld	h,-2 (ix)
   4A42 23            [ 6] 2483 	inc	hl
   4A43                    2484 00115$:
   4A43 CB 2C         [ 8] 2485 	sra	h
   4A45 CB 1D         [ 8] 2486 	rr	l
   4A47 45            [ 4] 2487 	ld	b,l
   4A48 DD 6E FA      [19] 2488 	ld	l,-6 (ix)
   4A4B D5            [11] 2489 	push	de
   4A4C 5D            [ 4] 2490 	ld	e,l
   4A4D 29            [11] 2491 	add	hl, hl
   4A4E 29            [11] 2492 	add	hl, hl
   4A4F 19            [11] 2493 	add	hl, de
   4A50 29            [11] 2494 	add	hl, hl
   4A51 D1            [10] 2495 	pop	de
   4A52 78            [ 4] 2496 	ld	a,b
   4A53 85            [ 4] 2497 	add	a, l
   4A54 DD 77 FF      [19] 2498 	ld	-1 (ix),a
   4A57 DD 56 FA      [19] 2499 	ld	d,-6 (ix)
   4A5A DD 46 FB      [19] 2500 	ld	b,-5 (ix)
   4A5D CB 22         [ 8] 2501 	sla	d
   4A5F CB 10         [ 8] 2502 	rl	b
   4A61 DD 7E 04      [19] 2503 	ld	a,4 (ix)
   4A64 82            [ 4] 2504 	add	a, d
   4A65 57            [ 4] 2505 	ld	d,a
   4A66 DD 7E 05      [19] 2506 	ld	a,5 (ix)
   4A69 88            [ 4] 2507 	adc	a, b
   4A6A 47            [ 4] 2508 	ld	b,a
   4A6B 6A            [ 4] 2509 	ld	l, d
   4A6C 60            [ 4] 2510 	ld	h, b
   4A6D 7E            [ 7] 2511 	ld	a, (hl)
   4A6E 23            [ 6] 2512 	inc	hl
   4A6F 66            [ 7] 2513 	ld	h,(hl)
   4A70 6F            [ 4] 2514 	ld	l,a
   4A71 C5            [11] 2515 	push	bc
   4A72 D5            [11] 2516 	push	de
   4A73 E5            [11] 2517 	push	hl
   4A74 CD 5A 5F      [17] 2518 	call	_strlen
   4A77 F1            [10] 2519 	pop	af
   4A78 D1            [10] 2520 	pop	de
   4A79 C1            [10] 2521 	pop	bc
   4A7A 3E 52         [ 7] 2522 	ld	a,#0x52
   4A7C 95            [ 4] 2523 	sub	a, l
   4A7D 6F            [ 4] 2524 	ld	l,a
   4A7E 3E 00         [ 7] 2525 	ld	a,#0x00
   4A80 9C            [ 4] 2526 	sbc	a, h
   4A81 67            [ 4] 2527 	ld	h,a
   4A82 CB 3C         [ 8] 2528 	srl	h
   4A84 CB 1D         [ 8] 2529 	rr	l
   4A86 DD 75 FC      [19] 2530 	ld	-4 (ix),l
   4A89 C5            [11] 2531 	push	bc
   4A8A D5            [11] 2532 	push	de
   4A8B DD 66 FF      [19] 2533 	ld	h,-1 (ix)
   4A8E DD 6E FC      [19] 2534 	ld	l,-4 (ix)
   4A91 E5            [11] 2535 	push	hl
   4A92 21 00 C0      [10] 2536 	ld	hl,#0xC000
   4A95 E5            [11] 2537 	push	hl
   4A96 CD 32 60      [17] 2538 	call	_cpct_getScreenPtr
   4A99 D1            [10] 2539 	pop	de
   4A9A C1            [10] 2540 	pop	bc
   4A9B E5            [11] 2541 	push	hl
   4A9C FD E1         [14] 2542 	pop	iy
                           2543 ;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
   4A9E 6A            [ 4] 2544 	ld	l, d
   4A9F 60            [ 4] 2545 	ld	h, b
   4AA0 7E            [ 7] 2546 	ld	a, (hl)
   4AA1 23            [ 6] 2547 	inc	hl
   4AA2 66            [ 7] 2548 	ld	h,(hl)
   4AA3 6F            [ 4] 2549 	ld	l,a
   4AA4 D5            [11] 2550 	push	de
   4AA5 79            [ 4] 2551 	ld	a,c
   4AA6 F5            [11] 2552 	push	af
   4AA7 33            [ 6] 2553 	inc	sp
   4AA8 FD E5         [15] 2554 	push	iy
   4AAA E5            [11] 2555 	push	hl
   4AAB CD 4C 5D      [17] 2556 	call	_cpct_drawStringM2
   4AAE F1            [10] 2557 	pop	af
   4AAF F1            [10] 2558 	pop	af
   4AB0 33            [ 6] 2559 	inc	sp
   4AB1 D1            [10] 2560 	pop	de
                           2561 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4AB2 DD 34 FA      [23] 2562 	inc	-6 (ix)
   4AB5 C2 06 4A      [10] 2563 	jp	NZ,00110$
   4AB8 DD 34 FB      [23] 2564 	inc	-5 (ix)
   4ABB C3 06 4A      [10] 2565 	jp	00110$
   4ABE                    2566 00112$:
   4ABE DD F9         [10] 2567 	ld	sp, ix
   4AC0 DD E1         [14] 2568 	pop	ix
   4AC2 C9            [10] 2569 	ret
                           2570 ;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
                           2571 ;	---------------------------------
                           2572 ; Function drawMenu
                           2573 ; ---------------------------------
   4AC3                    2574 _drawMenu::
   4AC3 DD E5         [15] 2575 	push	ix
   4AC5 DD 21 00 00   [14] 2576 	ld	ix,#0
   4AC9 DD 39         [15] 2577 	add	ix,sp
   4ACB F5            [11] 2578 	push	af
                           2579 ;src/includes/gui.h:110: u8 iSelect=0;
   4ACC 06 00         [ 7] 2580 	ld	b,#0x00
                           2581 ;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
   4ACE C5            [11] 2582 	push	bc
   4ACF 21 00 40      [10] 2583 	ld	hl,#0x4000
   4AD2 E5            [11] 2584 	push	hl
   4AD3 3E FF         [ 7] 2585 	ld	a,#0xFF
   4AD5 F5            [11] 2586 	push	af
   4AD6 33            [ 6] 2587 	inc	sp
   4AD7 26 C0         [ 7] 2588 	ld	h, #0xC0
   4AD9 E5            [11] 2589 	push	hl
   4ADA CD 33 5F      [17] 2590 	call	_cpct_memset
   4ADD C1            [10] 2591 	pop	bc
                           2592 ;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
   4ADE DD 5E 06      [19] 2593 	ld	e,6 (ix)
   4AE1 16 00         [ 7] 2594 	ld	d,#0x00
   4AE3 6B            [ 4] 2595 	ld	l, e
   4AE4 62            [ 4] 2596 	ld	h, d
   4AE5 29            [11] 2597 	add	hl, hl
   4AE6 19            [11] 2598 	add	hl, de
   4AE7 29            [11] 2599 	add	hl, hl
   4AE8 29            [11] 2600 	add	hl, hl
   4AE9 C5            [11] 2601 	push	bc
   4AEA E5            [11] 2602 	push	hl
   4AEB 21 1E 00      [10] 2603 	ld	hl,#0x001E
   4AEE E5            [11] 2604 	push	hl
   4AEF CD F9 47      [17] 2605 	call	_drawBoxM2
   4AF2 F1            [10] 2606 	pop	af
   4AF3 F1            [10] 2607 	pop	af
   4AF4 AF            [ 4] 2608 	xor	a, a
   4AF5 F5            [11] 2609 	push	af
   4AF6 33            [ 6] 2610 	inc	sp
   4AF7 DD 7E 06      [19] 2611 	ld	a,6 (ix)
   4AFA F5            [11] 2612 	push	af
   4AFB 33            [ 6] 2613 	inc	sp
   4AFC DD 6E 04      [19] 2614 	ld	l,4 (ix)
   4AFF DD 66 05      [19] 2615 	ld	h,5 (ix)
   4B02 E5            [11] 2616 	push	hl
   4B03 CD 93 49      [17] 2617 	call	_drawMenuEntry
   4B06 F1            [10] 2618 	pop	af
   4B07 F1            [10] 2619 	pop	af
   4B08 C1            [10] 2620 	pop	bc
                           2621 ;src/includes/gui.h:118: do{
   4B09 DD 4E 06      [19] 2622 	ld	c,6 (ix)
   4B0C 0D            [ 4] 2623 	dec	c
   4B0D                    2624 00111$:
                           2625 ;src/includes/gui.h:119: cpct_scanKeyboard(); 
   4B0D C5            [11] 2626 	push	bc
   4B0E CD 52 60      [17] 2627 	call	_cpct_scanKeyboard
   4B11 21 00 01      [10] 2628 	ld	hl,#0x0100
   4B14 CD 34 5D      [17] 2629 	call	_cpct_isKeyPressed
   4B17 7D            [ 4] 2630 	ld	a,l
   4B18 C1            [10] 2631 	pop	bc
   4B19 B7            [ 4] 2632 	or	a, a
   4B1A 28 32         [12] 2633 	jr	Z,00105$
                           2634 ;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
   4B1C C5            [11] 2635 	push	bc
   4B1D C5            [11] 2636 	push	bc
   4B1E 33            [ 6] 2637 	inc	sp
   4B1F DD 7E 06      [19] 2638 	ld	a,6 (ix)
   4B22 F5            [11] 2639 	push	af
   4B23 33            [ 6] 2640 	inc	sp
   4B24 DD 6E 04      [19] 2641 	ld	l,4 (ix)
   4B27 DD 66 05      [19] 2642 	ld	h,5 (ix)
   4B2A E5            [11] 2643 	push	hl
   4B2B CD D9 48      [17] 2644 	call	_EraseMenuEntry
   4B2E F1            [10] 2645 	pop	af
   4B2F F1            [10] 2646 	pop	af
   4B30 C1            [10] 2647 	pop	bc
                           2648 ;src/includes/gui.h:125: if(iSelect ==0)
   4B31 78            [ 4] 2649 	ld	a,b
   4B32 B7            [ 4] 2650 	or	a, a
   4B33 20 03         [12] 2651 	jr	NZ,00102$
                           2652 ;src/includes/gui.h:126: iSelect = nbEntry-1;
   4B35 41            [ 4] 2653 	ld	b,c
   4B36 18 01         [12] 2654 	jr	00103$
   4B38                    2655 00102$:
                           2656 ;src/includes/gui.h:128: iSelect--;
   4B38 05            [ 4] 2657 	dec	b
   4B39                    2658 00103$:
                           2659 ;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
   4B39 C5            [11] 2660 	push	bc
   4B3A C5            [11] 2661 	push	bc
   4B3B 33            [ 6] 2662 	inc	sp
   4B3C DD 7E 06      [19] 2663 	ld	a,6 (ix)
   4B3F F5            [11] 2664 	push	af
   4B40 33            [ 6] 2665 	inc	sp
   4B41 DD 6E 04      [19] 2666 	ld	l,4 (ix)
   4B44 DD 66 05      [19] 2667 	ld	h,5 (ix)
   4B47 E5            [11] 2668 	push	hl
   4B48 CD 93 49      [17] 2669 	call	_drawMenuEntry
   4B4B F1            [10] 2670 	pop	af
   4B4C F1            [10] 2671 	pop	af
   4B4D C1            [10] 2672 	pop	bc
   4B4E                    2673 00105$:
                           2674 ;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
   4B4E C5            [11] 2675 	push	bc
   4B4F 21 00 04      [10] 2676 	ld	hl,#0x0400
   4B52 CD 34 5D      [17] 2677 	call	_cpct_isKeyPressed
   4B55 5D            [ 4] 2678 	ld	e,l
   4B56 C1            [10] 2679 	pop	bc
   4B57 7B            [ 4] 2680 	ld	a,e
   4B58 B7            [ 4] 2681 	or	a, a
   4B59 28 48         [12] 2682 	jr	Z,00112$
                           2683 ;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
   4B5B C5            [11] 2684 	push	bc
   4B5C C5            [11] 2685 	push	bc
   4B5D 33            [ 6] 2686 	inc	sp
   4B5E DD 7E 06      [19] 2687 	ld	a,6 (ix)
   4B61 F5            [11] 2688 	push	af
   4B62 33            [ 6] 2689 	inc	sp
   4B63 DD 6E 04      [19] 2690 	ld	l,4 (ix)
   4B66 DD 66 05      [19] 2691 	ld	h,5 (ix)
   4B69 E5            [11] 2692 	push	hl
   4B6A CD D9 48      [17] 2693 	call	_EraseMenuEntry
   4B6D F1            [10] 2694 	pop	af
   4B6E F1            [10] 2695 	pop	af
   4B6F C1            [10] 2696 	pop	bc
                           2697 ;src/includes/gui.h:137: if(iSelect == nbEntry-1)
   4B70 DD 5E 06      [19] 2698 	ld	e,6 (ix)
   4B73 16 00         [ 7] 2699 	ld	d,#0x00
   4B75 1B            [ 6] 2700 	dec	de
   4B76 DD 70 FE      [19] 2701 	ld	-2 (ix),b
   4B79 DD 36 FF 00   [19] 2702 	ld	-1 (ix),#0x00
   4B7D 7B            [ 4] 2703 	ld	a,e
   4B7E DD 96 FE      [19] 2704 	sub	a, -2 (ix)
   4B81 20 0A         [12] 2705 	jr	NZ,00107$
   4B83 7A            [ 4] 2706 	ld	a,d
   4B84 DD 96 FF      [19] 2707 	sub	a, -1 (ix)
   4B87 20 04         [12] 2708 	jr	NZ,00107$
                           2709 ;src/includes/gui.h:138: iSelect = 0;
   4B89 06 00         [ 7] 2710 	ld	b,#0x00
   4B8B 18 01         [12] 2711 	jr	00108$
   4B8D                    2712 00107$:
                           2713 ;src/includes/gui.h:140: iSelect++;
   4B8D 04            [ 4] 2714 	inc	b
   4B8E                    2715 00108$:
                           2716 ;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
   4B8E C5            [11] 2717 	push	bc
   4B8F C5            [11] 2718 	push	bc
   4B90 33            [ 6] 2719 	inc	sp
   4B91 DD 7E 06      [19] 2720 	ld	a,6 (ix)
   4B94 F5            [11] 2721 	push	af
   4B95 33            [ 6] 2722 	inc	sp
   4B96 DD 6E 04      [19] 2723 	ld	l,4 (ix)
   4B99 DD 66 05      [19] 2724 	ld	h,5 (ix)
   4B9C E5            [11] 2725 	push	hl
   4B9D CD 93 49      [17] 2726 	call	_drawMenuEntry
   4BA0 F1            [10] 2727 	pop	af
   4BA1 F1            [10] 2728 	pop	af
   4BA2 C1            [10] 2729 	pop	bc
   4BA3                    2730 00112$:
                           2731 ;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
   4BA3 C5            [11] 2732 	push	bc
   4BA4 21 02 04      [10] 2733 	ld	hl,#0x0402
   4BA7 CD 34 5D      [17] 2734 	call	_cpct_isKeyPressed
   4BAA 7D            [ 4] 2735 	ld	a,l
   4BAB C1            [10] 2736 	pop	bc
   4BAC B7            [ 4] 2737 	or	a, a
   4BAD CA 0D 4B      [10] 2738 	jp	Z,00111$
                           2739 ;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
   4BB0 21 B0 36      [10] 2740 	ld	hl,#0x36B0
   4BB3                    2741 00117$:
   4BB3 EB            [ 4] 2742 	ex	de,hl
   4BB4 1B            [ 6] 2743 	dec	de
   4BB5 6B            [ 4] 2744 	ld	l, e
   4BB6 7A            [ 4] 2745 	ld	a,d
   4BB7 67            [ 4] 2746 	ld	h,a
   4BB8 B3            [ 4] 2747 	or	a,e
   4BB9 20 F8         [12] 2748 	jr	NZ,00117$
                           2749 ;src/includes/gui.h:150: return iSelect;
   4BBB 68            [ 4] 2750 	ld	l,b
   4BBC DD F9         [10] 2751 	ld	sp, ix
   4BBE DD E1         [14] 2752 	pop	ix
   4BC0 C9            [10] 2753 	ret
                           2754 ;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           2755 ;	---------------------------------
                           2756 ; Function drawWindow
                           2757 ; ---------------------------------
   4BC1                    2758 _drawWindow::
   4BC1 DD E5         [15] 2759 	push	ix
   4BC3 DD 21 00 00   [14] 2760 	ld	ix,#0
   4BC7 DD 39         [15] 2761 	add	ix,sp
   4BC9 21 F5 FF      [10] 2762 	ld	hl,#-11
   4BCC 39            [11] 2763 	add	hl,sp
   4BCD F9            [ 6] 2764 	ld	sp,hl
                           2765 ;src/includes/gui.h:164: u8 valueReturn=0;
   4BCE DD 36 F5 00   [19] 2766 	ld	-11 (ix),#0x00
                           2767 ;src/includes/gui.h:167: if(button == 0)
   4BD2 DD 7E 07      [19] 2768 	ld	a,7 (ix)
   4BD5 B7            [ 4] 2769 	or	a, a
   4BD6 20 05         [12] 2770 	jr	NZ,00102$
                           2771 ;src/includes/gui.h:168: buttonTxt = "<OK>";
   4BD8 11 4A 4D      [10] 2772 	ld	de,#___str_0
   4BDB 18 03         [12] 2773 	jr	00103$
   4BDD                    2774 00102$:
                           2775 ;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
   4BDD 11 4F 4D      [10] 2776 	ld	de,#___str_1+0
   4BE0                    2777 00103$:
                           2778 ;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
   4BE0 DD 4E 06      [19] 2779 	ld	c,6 (ix)
   4BE3 06 00         [ 7] 2780 	ld	b,#0x00
   4BE5 03            [ 6] 2781 	inc	bc
   4BE6 03            [ 6] 2782 	inc	bc
   4BE7 69            [ 4] 2783 	ld	l, c
   4BE8 60            [ 4] 2784 	ld	h, b
   4BE9 29            [11] 2785 	add	hl, hl
   4BEA 09            [11] 2786 	add	hl, bc
   4BEB 29            [11] 2787 	add	hl, hl
   4BEC 29            [11] 2788 	add	hl, hl
   4BED C5            [11] 2789 	push	bc
   4BEE D5            [11] 2790 	push	de
   4BEF E5            [11] 2791 	push	hl
   4BF0 21 32 00      [10] 2792 	ld	hl,#0x0032
   4BF3 E5            [11] 2793 	push	hl
   4BF4 CD F9 47      [17] 2794 	call	_drawBoxM2
   4BF7 F1            [10] 2795 	pop	af
   4BF8 F1            [10] 2796 	pop	af
   4BF9 D1            [10] 2797 	pop	de
   4BFA C1            [10] 2798 	pop	bc
                           2799 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4BFB 69            [ 4] 2800 	ld	l, c
   4BFC 60            [ 4] 2801 	ld	h, b
   4BFD 29            [11] 2802 	add	hl, hl
   4BFE 29            [11] 2803 	add	hl, hl
   4BFF 09            [11] 2804 	add	hl, bc
   4C00 29            [11] 2805 	add	hl, hl
   4C01 3E CA         [ 7] 2806 	ld	a,#0xCA
   4C03 95            [ 4] 2807 	sub	a, l
   4C04 DD 77 FE      [19] 2808 	ld	-2 (ix),a
   4C07 3E 00         [ 7] 2809 	ld	a,#0x00
   4C09 9C            [ 4] 2810 	sbc	a, h
   4C0A DD 77 FF      [19] 2811 	ld	-1 (ix), a
   4C0D 07            [ 4] 2812 	rlca
   4C0E E6 01         [ 7] 2813 	and	a,#0x01
   4C10 DD 77 F9      [19] 2814 	ld	-7 (ix),a
   4C13 DD 36 F6 00   [19] 2815 	ld	-10 (ix),#0x00
   4C17 DD 36 F7 00   [19] 2816 	ld	-9 (ix),#0x00
   4C1B                    2817 00114$:
                           2818 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C1B DD 7E FE      [19] 2819 	ld	a,-2 (ix)
   4C1E C6 01         [ 7] 2820 	add	a, #0x01
   4C20 DD 77 FC      [19] 2821 	ld	-4 (ix),a
   4C23 DD 7E FF      [19] 2822 	ld	a,-1 (ix)
   4C26 CE 00         [ 7] 2823 	adc	a, #0x00
   4C28 DD 77 FD      [19] 2824 	ld	-3 (ix),a
                           2825 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4C2B DD 7E F6      [19] 2826 	ld	a,-10 (ix)
   4C2E DD 96 06      [19] 2827 	sub	a, 6 (ix)
   4C31 D2 BD 4C      [10] 2828 	jp	NC,00104$
                           2829 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C34 DD 6E FE      [19] 2830 	ld	l,-2 (ix)
   4C37 DD 66 FF      [19] 2831 	ld	h,-1 (ix)
   4C3A DD 7E F9      [19] 2832 	ld	a,-7 (ix)
   4C3D B7            [ 4] 2833 	or	a, a
   4C3E 28 06         [12] 2834 	jr	Z,00118$
   4C40 DD 6E FC      [19] 2835 	ld	l,-4 (ix)
   4C43 DD 66 FD      [19] 2836 	ld	h,-3 (ix)
   4C46                    2837 00118$:
   4C46 CB 2C         [ 8] 2838 	sra	h
   4C48 CB 1D         [ 8] 2839 	rr	l
   4C4A DD 66 F7      [19] 2840 	ld	h,-9 (ix)
   4C4D 7D            [ 4] 2841 	ld	a,l
   4C4E 84            [ 4] 2842 	add	a, h
   4C4F DD 77 F8      [19] 2843 	ld	-8 (ix),a
   4C52 DD 6E F6      [19] 2844 	ld	l,-10 (ix)
   4C55 26 00         [ 7] 2845 	ld	h,#0x00
   4C57 29            [11] 2846 	add	hl, hl
   4C58 45            [ 4] 2847 	ld	b,l
   4C59 4C            [ 4] 2848 	ld	c,h
   4C5A DD 7E 04      [19] 2849 	ld	a,4 (ix)
   4C5D 80            [ 4] 2850 	add	a, b
   4C5E DD 77 FA      [19] 2851 	ld	-6 (ix),a
   4C61 DD 7E 05      [19] 2852 	ld	a,5 (ix)
   4C64 89            [ 4] 2853 	adc	a, c
   4C65 DD 77 FB      [19] 2854 	ld	-5 (ix),a
   4C68 DD 6E FA      [19] 2855 	ld	l,-6 (ix)
   4C6B DD 66 FB      [19] 2856 	ld	h,-5 (ix)
   4C6E 4E            [ 7] 2857 	ld	c,(hl)
   4C6F 23            [ 6] 2858 	inc	hl
   4C70 46            [ 7] 2859 	ld	b,(hl)
   4C71 D5            [11] 2860 	push	de
   4C72 C5            [11] 2861 	push	bc
   4C73 CD 5A 5F      [17] 2862 	call	_strlen
   4C76 F1            [10] 2863 	pop	af
   4C77 D1            [10] 2864 	pop	de
   4C78 3E 52         [ 7] 2865 	ld	a,#0x52
   4C7A 95            [ 4] 2866 	sub	a, l
   4C7B 6F            [ 4] 2867 	ld	l,a
   4C7C 3E 00         [ 7] 2868 	ld	a,#0x00
   4C7E 9C            [ 4] 2869 	sbc	a, h
   4C7F 67            [ 4] 2870 	ld	h,a
   4C80 CB 3C         [ 8] 2871 	srl	h
   4C82 CB 1D         [ 8] 2872 	rr	l
   4C84 45            [ 4] 2873 	ld	b,l
   4C85 D5            [11] 2874 	push	de
   4C86 DD 7E F8      [19] 2875 	ld	a,-8 (ix)
   4C89 F5            [11] 2876 	push	af
   4C8A 33            [ 6] 2877 	inc	sp
   4C8B C5            [11] 2878 	push	bc
   4C8C 33            [ 6] 2879 	inc	sp
   4C8D 21 00 C0      [10] 2880 	ld	hl,#0xC000
   4C90 E5            [11] 2881 	push	hl
   4C91 CD 32 60      [17] 2882 	call	_cpct_getScreenPtr
   4C94 D1            [10] 2883 	pop	de
   4C95 E5            [11] 2884 	push	hl
   4C96 FD E1         [14] 2885 	pop	iy
                           2886 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4C98 DD 6E FA      [19] 2887 	ld	l,-6 (ix)
   4C9B DD 66 FB      [19] 2888 	ld	h,-5 (ix)
   4C9E 4E            [ 7] 2889 	ld	c,(hl)
   4C9F 23            [ 6] 2890 	inc	hl
   4CA0 46            [ 7] 2891 	ld	b,(hl)
   4CA1 D5            [11] 2892 	push	de
   4CA2 AF            [ 4] 2893 	xor	a, a
   4CA3 F5            [11] 2894 	push	af
   4CA4 33            [ 6] 2895 	inc	sp
   4CA5 FD E5         [15] 2896 	push	iy
   4CA7 C5            [11] 2897 	push	bc
   4CA8 CD 4C 5D      [17] 2898 	call	_cpct_drawStringM2
   4CAB F1            [10] 2899 	pop	af
   4CAC F1            [10] 2900 	pop	af
   4CAD 33            [ 6] 2901 	inc	sp
   4CAE D1            [10] 2902 	pop	de
                           2903 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4CAF DD 7E F7      [19] 2904 	ld	a,-9 (ix)
   4CB2 C6 0A         [ 7] 2905 	add	a, #0x0A
   4CB4 DD 77 F7      [19] 2906 	ld	-9 (ix),a
   4CB7 DD 34 F6      [23] 2907 	inc	-10 (ix)
   4CBA C3 1B 4C      [10] 2908 	jp	00114$
   4CBD                    2909 00104$:
                           2910 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4CBD DD 46 FE      [19] 2911 	ld	b,-2 (ix)
   4CC0 DD 66 FF      [19] 2912 	ld	h,-1 (ix)
   4CC3 DD 7E F9      [19] 2913 	ld	a,-7 (ix)
   4CC6 B7            [ 4] 2914 	or	a, a
   4CC7 28 06         [12] 2915 	jr	Z,00119$
   4CC9 DD 46 FC      [19] 2916 	ld	b,-4 (ix)
   4CCC DD 66 FD      [19] 2917 	ld	h,-3 (ix)
   4CCF                    2918 00119$:
   4CCF CB 2C         [ 8] 2919 	sra	h
   4CD1 CB 18         [ 8] 2920 	rr	b
   4CD3 DD 4E 06      [19] 2921 	ld	c,6 (ix)
   4CD6 0C            [ 4] 2922 	inc	c
   4CD7 79            [ 4] 2923 	ld	a,c
   4CD8 87            [ 4] 2924 	add	a, a
   4CD9 87            [ 4] 2925 	add	a, a
   4CDA 81            [ 4] 2926 	add	a, c
   4CDB 87            [ 4] 2927 	add	a, a
   4CDC 67            [ 4] 2928 	ld	h, a
   4CDD 80            [ 4] 2929 	add	a,b
   4CDE 47            [ 4] 2930 	ld	b,a
   4CDF C5            [11] 2931 	push	bc
   4CE0 D5            [11] 2932 	push	de
   4CE1 D5            [11] 2933 	push	de
   4CE2 CD 5A 5F      [17] 2934 	call	_strlen
   4CE5 F1            [10] 2935 	pop	af
   4CE6 D1            [10] 2936 	pop	de
   4CE7 C1            [10] 2937 	pop	bc
   4CE8 3E 52         [ 7] 2938 	ld	a,#0x52
   4CEA 95            [ 4] 2939 	sub	a, l
   4CEB 6F            [ 4] 2940 	ld	l,a
   4CEC 3E 00         [ 7] 2941 	ld	a,#0x00
   4CEE 9C            [ 4] 2942 	sbc	a, h
   4CEF 67            [ 4] 2943 	ld	h,a
   4CF0 CB 3C         [ 8] 2944 	srl	h
   4CF2 CB 1D         [ 8] 2945 	rr	l
   4CF4 7D            [ 4] 2946 	ld	a,l
   4CF5 D5            [11] 2947 	push	de
   4CF6 C5            [11] 2948 	push	bc
   4CF7 33            [ 6] 2949 	inc	sp
   4CF8 F5            [11] 2950 	push	af
   4CF9 33            [ 6] 2951 	inc	sp
   4CFA 21 00 C0      [10] 2952 	ld	hl,#0xC000
   4CFD E5            [11] 2953 	push	hl
   4CFE CD 32 60      [17] 2954 	call	_cpct_getScreenPtr
   4D01 D1            [10] 2955 	pop	de
                           2956 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4D02 4D            [ 4] 2957 	ld	c, l
   4D03 44            [ 4] 2958 	ld	b, h
   4D04 AF            [ 4] 2959 	xor	a, a
   4D05 F5            [11] 2960 	push	af
   4D06 33            [ 6] 2961 	inc	sp
   4D07 C5            [11] 2962 	push	bc
   4D08 D5            [11] 2963 	push	de
   4D09 CD 4C 5D      [17] 2964 	call	_cpct_drawStringM2
   4D0C F1            [10] 2965 	pop	af
   4D0D F1            [10] 2966 	pop	af
   4D0E 33            [ 6] 2967 	inc	sp
                           2968 ;src/includes/gui.h:184: do{
   4D0F                    2969 00110$:
                           2970 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4D0F CD 52 60      [17] 2971 	call	_cpct_scanKeyboard
                           2972 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4D12 21 02 04      [10] 2973 	ld	hl,#0x0402
   4D15 CD 34 5D      [17] 2974 	call	_cpct_isKeyPressed
   4D18 7D            [ 4] 2975 	ld	a,l
   4D19 B7            [ 4] 2976 	or	a, a
   4D1A 28 04         [12] 2977 	jr	Z,00106$
                           2978 ;src/includes/gui.h:188: valueReturn=1;
   4D1C DD 36 F5 01   [19] 2979 	ld	-11 (ix),#0x01
   4D20                    2980 00106$:
                           2981 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4D20 21 08 04      [10] 2982 	ld	hl,#0x0408
   4D23 CD 34 5D      [17] 2983 	call	_cpct_isKeyPressed
   4D26 7D            [ 4] 2984 	ld	a,l
   4D27 B7            [ 4] 2985 	or	a, a
   4D28 28 04         [12] 2986 	jr	Z,00111$
                           2987 ;src/includes/gui.h:191: valueReturn=0;
   4D2A DD 36 F5 00   [19] 2988 	ld	-11 (ix),#0x00
   4D2E                    2989 00111$:
                           2990 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4D2E 21 02 04      [10] 2991 	ld	hl,#0x0402
   4D31 CD 34 5D      [17] 2992 	call	_cpct_isKeyPressed
   4D34 7D            [ 4] 2993 	ld	a,l
   4D35 B7            [ 4] 2994 	or	a, a
   4D36 20 0A         [12] 2995 	jr	NZ,00112$
   4D38 21 08 04      [10] 2996 	ld	hl,#0x0408
   4D3B CD 34 5D      [17] 2997 	call	_cpct_isKeyPressed
   4D3E 7D            [ 4] 2998 	ld	a,l
   4D3F B7            [ 4] 2999 	or	a, a
   4D40 28 CD         [12] 3000 	jr	Z,00110$
   4D42                    3001 00112$:
                           3002 ;src/includes/gui.h:195: return valueReturn;
   4D42 DD 6E F5      [19] 3003 	ld	l,-11 (ix)
   4D45 DD F9         [10] 3004 	ld	sp, ix
   4D47 DD E1         [14] 3005 	pop	ix
   4D49 C9            [10] 3006 	ret
   4D4A                    3007 ___str_0:
   4D4A 3C 4F 4B 3E        3008 	.ascii "<OK>"
   4D4E 00                 3009 	.db 0x00
   4D4F                    3010 ___str_1:
   4D4F 3C 4F 4B 3E 20 20  3011 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   4D5D 00                 3012 	.db 0x00
                           3013 ;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
                           3014 ;	---------------------------------
                           3015 ; Function drawCursor
                           3016 ; ---------------------------------
   4D5E                    3017 _drawCursor::
   4D5E DD E5         [15] 3018 	push	ix
   4D60 DD 21 00 00   [14] 3019 	ld	ix,#0
   4D64 DD 39         [15] 3020 	add	ix,sp
   4D66 F5            [11] 3021 	push	af
                           3022 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4D67 DD 7E 05      [19] 3023 	ld	a,5 (ix)
   4D6A 07            [ 4] 3024 	rlca
   4D6B 07            [ 4] 3025 	rlca
   4D6C 07            [ 4] 3026 	rlca
   4D6D 07            [ 4] 3027 	rlca
   4D6E E6 F0         [ 7] 3028 	and	a,#0xF0
   4D70 DD 77 FE      [19] 3029 	ld	-2 (ix),a
   4D73 DD 7E 04      [19] 3030 	ld	a,4 (ix)
   4D76 87            [ 4] 3031 	add	a, a
   4D77 87            [ 4] 3032 	add	a, a
   4D78 DD 77 FF      [19] 3033 	ld	-1 (ix),a
   4D7B DD 66 FE      [19] 3034 	ld	h,-2 (ix)
   4D7E DD 6E FF      [19] 3035 	ld	l,-1 (ix)
   4D81 E5            [11] 3036 	push	hl
   4D82 21 00 C0      [10] 3037 	ld	hl,#0xC000
   4D85 E5            [11] 3038 	push	hl
   4D86 CD 32 60      [17] 3039 	call	_cpct_getScreenPtr
   4D89 4D            [ 4] 3040 	ld	c, l
   4D8A 44            [ 4] 3041 	ld	b, h
                           3042 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D8B 3E 06         [ 7] 3043 	ld	a,#0x06
   4D8D FD 21 DF 6F   [14] 3044 	ld	iy,#_CURSOR_MODE
   4D91 FD 96 00      [19] 3045 	sub	a, 0 (iy)
   4D94 DA D4 4E      [10] 3046 	jp	C,00109$
                           3047 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
                           3048 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D97 FD 21 DF 6F   [14] 3049 	ld	iy,#_CURSOR_MODE
   4D9B FD 5E 00      [19] 3050 	ld	e,0 (iy)
   4D9E 16 00         [ 7] 3051 	ld	d,#0x00
   4DA0 21 A7 4D      [10] 3052 	ld	hl,#00115$
   4DA3 19            [11] 3053 	add	hl,de
   4DA4 19            [11] 3054 	add	hl,de
   4DA5 19            [11] 3055 	add	hl,de
   4DA6 E9            [ 4] 3056 	jp	(hl)
   4DA7                    3057 00115$:
   4DA7 C3 BC 4D      [10] 3058 	jp	00101$
   4DAA C3 82 4E      [10] 3059 	jp	00102$
   4DAD C3 90 4E      [10] 3060 	jp	00103$
   4DB0 C3 9E 4E      [10] 3061 	jp	00104$
   4DB3 C3 AC 4E      [10] 3062 	jp	00105$
   4DB6 C3 BA 4E      [10] 3063 	jp	00106$
   4DB9 C3 C8 4E      [10] 3064 	jp	00107$
                           3065 ;src/includes/world.h:8: case NONE:
   4DBC                    3066 00101$:
                           3067 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DBC C5            [11] 3068 	push	bc
   4DBD DD 66 06      [19] 3069 	ld	h,6 (ix)
   4DC0 DD 6E 06      [19] 3070 	ld	l,6 (ix)
   4DC3 E5            [11] 3071 	push	hl
   4DC4 DD 66 06      [19] 3072 	ld	h,6 (ix)
   4DC7 DD 6E 06      [19] 3073 	ld	l,6 (ix)
   4DCA E5            [11] 3074 	push	hl
   4DCB CD 41 5F      [17] 3075 	call	_cpct_px2byteM1
   4DCE F1            [10] 3076 	pop	af
   4DCF F1            [10] 3077 	pop	af
   4DD0 65            [ 4] 3078 	ld	h,l
   4DD1 C1            [10] 3079 	pop	bc
   4DD2 11 04 00      [10] 3080 	ld	de,#0x0004
   4DD5 D5            [11] 3081 	push	de
   4DD6 E5            [11] 3082 	push	hl
   4DD7 33            [ 6] 3083 	inc	sp
   4DD8 C5            [11] 3084 	push	bc
   4DD9 CD 33 5F      [17] 3085 	call	_cpct_memset
                           3086 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4DDC DD 66 FE      [19] 3087 	ld	h,-2 (ix)
   4DDF 24            [ 4] 3088 	inc	h
   4DE0 E5            [11] 3089 	push	hl
   4DE1 33            [ 6] 3090 	inc	sp
   4DE2 DD 7E FF      [19] 3091 	ld	a,-1 (ix)
   4DE5 F5            [11] 3092 	push	af
   4DE6 33            [ 6] 3093 	inc	sp
   4DE7 21 00 C0      [10] 3094 	ld	hl,#0xC000
   4DEA E5            [11] 3095 	push	hl
   4DEB CD 32 60      [17] 3096 	call	_cpct_getScreenPtr
                           3097 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DEE E5            [11] 3098 	push	hl
   4DEF DD 66 06      [19] 3099 	ld	h,6 (ix)
   4DF2 DD 6E 06      [19] 3100 	ld	l,6 (ix)
   4DF5 E5            [11] 3101 	push	hl
   4DF6 DD 66 06      [19] 3102 	ld	h,6 (ix)
   4DF9 DD 6E 06      [19] 3103 	ld	l,6 (ix)
   4DFC E5            [11] 3104 	push	hl
   4DFD CD 41 5F      [17] 3105 	call	_cpct_px2byteM1
   4E00 F1            [10] 3106 	pop	af
   4E01 F1            [10] 3107 	pop	af
   4E02 4D            [ 4] 3108 	ld	c,l
   4E03 D1            [10] 3109 	pop	de
   4E04 21 04 00      [10] 3110 	ld	hl,#0x0004
   4E07 E5            [11] 3111 	push	hl
   4E08 79            [ 4] 3112 	ld	a,c
   4E09 F5            [11] 3113 	push	af
   4E0A 33            [ 6] 3114 	inc	sp
   4E0B D5            [11] 3115 	push	de
   4E0C CD 33 5F      [17] 3116 	call	_cpct_memset
                           3117 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E0F DD 7E 05      [19] 3118 	ld	a,5 (ix)
   4E12 3C            [ 4] 3119 	inc	a
   4E13 07            [ 4] 3120 	rlca
   4E14 07            [ 4] 3121 	rlca
   4E15 07            [ 4] 3122 	rlca
   4E16 07            [ 4] 3123 	rlca
   4E17 E6 F0         [ 7] 3124 	and	a,#0xF0
   4E19 DD 77 FE      [19] 3125 	ld	-2 (ix), a
   4E1C 67            [ 4] 3126 	ld	h, a
   4E1D 25            [ 4] 3127 	dec	h
   4E1E E5            [11] 3128 	push	hl
   4E1F 33            [ 6] 3129 	inc	sp
   4E20 DD 7E FF      [19] 3130 	ld	a,-1 (ix)
   4E23 F5            [11] 3131 	push	af
   4E24 33            [ 6] 3132 	inc	sp
   4E25 21 00 C0      [10] 3133 	ld	hl,#0xC000
   4E28 E5            [11] 3134 	push	hl
   4E29 CD 32 60      [17] 3135 	call	_cpct_getScreenPtr
                           3136 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E2C E5            [11] 3137 	push	hl
   4E2D DD 66 06      [19] 3138 	ld	h,6 (ix)
   4E30 DD 6E 06      [19] 3139 	ld	l,6 (ix)
   4E33 E5            [11] 3140 	push	hl
   4E34 DD 66 06      [19] 3141 	ld	h,6 (ix)
   4E37 DD 6E 06      [19] 3142 	ld	l,6 (ix)
   4E3A E5            [11] 3143 	push	hl
   4E3B CD 41 5F      [17] 3144 	call	_cpct_px2byteM1
   4E3E F1            [10] 3145 	pop	af
   4E3F F1            [10] 3146 	pop	af
   4E40 4D            [ 4] 3147 	ld	c,l
   4E41 D1            [10] 3148 	pop	de
   4E42 21 04 00      [10] 3149 	ld	hl,#0x0004
   4E45 E5            [11] 3150 	push	hl
   4E46 79            [ 4] 3151 	ld	a,c
   4E47 F5            [11] 3152 	push	af
   4E48 33            [ 6] 3153 	inc	sp
   4E49 D5            [11] 3154 	push	de
   4E4A CD 33 5F      [17] 3155 	call	_cpct_memset
                           3156 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4E4D DD 66 FE      [19] 3157 	ld	h,-2 (ix)
   4E50 25            [ 4] 3158 	dec	h
   4E51 25            [ 4] 3159 	dec	h
   4E52 E5            [11] 3160 	push	hl
   4E53 33            [ 6] 3161 	inc	sp
   4E54 DD 7E FF      [19] 3162 	ld	a,-1 (ix)
   4E57 F5            [11] 3163 	push	af
   4E58 33            [ 6] 3164 	inc	sp
   4E59 21 00 C0      [10] 3165 	ld	hl,#0xC000
   4E5C E5            [11] 3166 	push	hl
   4E5D CD 32 60      [17] 3167 	call	_cpct_getScreenPtr
                           3168 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E60 E5            [11] 3169 	push	hl
   4E61 DD 66 06      [19] 3170 	ld	h,6 (ix)
   4E64 DD 6E 06      [19] 3171 	ld	l,6 (ix)
   4E67 E5            [11] 3172 	push	hl
   4E68 DD 66 06      [19] 3173 	ld	h,6 (ix)
   4E6B DD 6E 06      [19] 3174 	ld	l,6 (ix)
   4E6E E5            [11] 3175 	push	hl
   4E6F CD 41 5F      [17] 3176 	call	_cpct_px2byteM1
   4E72 F1            [10] 3177 	pop	af
   4E73 F1            [10] 3178 	pop	af
   4E74 65            [ 4] 3179 	ld	h,l
   4E75 D1            [10] 3180 	pop	de
   4E76 01 04 00      [10] 3181 	ld	bc,#0x0004
   4E79 C5            [11] 3182 	push	bc
   4E7A E5            [11] 3183 	push	hl
   4E7B 33            [ 6] 3184 	inc	sp
   4E7C D5            [11] 3185 	push	de
   4E7D CD 33 5F      [17] 3186 	call	_cpct_memset
                           3187 ;src/includes/world.h:18: break;
   4E80 18 52         [12] 3188 	jr	00109$
                           3189 ;src/includes/world.h:19: case T_SSNS:
   4E82                    3190 00102$:
                           3191 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4E82 11 A9 42      [10] 3192 	ld	de,#_station_small_ns
   4E85 21 04 10      [10] 3193 	ld	hl,#0x1004
   4E88 E5            [11] 3194 	push	hl
   4E89 C5            [11] 3195 	push	bc
   4E8A D5            [11] 3196 	push	de
   4E8B CD 6D 5D      [17] 3197 	call	_cpct_drawSprite
                           3198 ;src/includes/world.h:21: break;
   4E8E 18 44         [12] 3199 	jr	00109$
                           3200 ;src/includes/world.h:23: case T_SSEW:
   4E90                    3201 00103$:
                           3202 ;src/includes/world.h:24: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4E90 11 E9 42      [10] 3203 	ld	de,#_station_small_ew
   4E93 21 04 10      [10] 3204 	ld	hl,#0x1004
   4E96 E5            [11] 3205 	push	hl
   4E97 C5            [11] 3206 	push	bc
   4E98 D5            [11] 3207 	push	de
   4E99 CD 6D 5D      [17] 3208 	call	_cpct_drawSprite
                           3209 ;src/includes/world.h:25: break;
   4E9C 18 36         [12] 3210 	jr	00109$
                           3211 ;src/includes/world.h:26: case T_SMNS:
   4E9E                    3212 00104$:
                           3213 ;src/includes/world.h:27: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4E9E 11 29 43      [10] 3214 	ld	de,#_station_medium_ns
   4EA1 21 04 10      [10] 3215 	ld	hl,#0x1004
   4EA4 E5            [11] 3216 	push	hl
   4EA5 C5            [11] 3217 	push	bc
   4EA6 D5            [11] 3218 	push	de
   4EA7 CD 6D 5D      [17] 3219 	call	_cpct_drawSprite
                           3220 ;src/includes/world.h:28: break;
   4EAA 18 28         [12] 3221 	jr	00109$
                           3222 ;src/includes/world.h:29: case T_SMEW:
   4EAC                    3223 00105$:
                           3224 ;src/includes/world.h:30: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EAC 11 69 43      [10] 3225 	ld	de,#_station_medium_ew
   4EAF 21 04 10      [10] 3226 	ld	hl,#0x1004
   4EB2 E5            [11] 3227 	push	hl
   4EB3 C5            [11] 3228 	push	bc
   4EB4 D5            [11] 3229 	push	de
   4EB5 CD 6D 5D      [17] 3230 	call	_cpct_drawSprite
                           3231 ;src/includes/world.h:31: break;
   4EB8 18 1A         [12] 3232 	jr	00109$
                           3233 ;src/includes/world.h:32: case T_SLNS:
   4EBA                    3234 00106$:
                           3235 ;src/includes/world.h:33: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EBA 11 A9 43      [10] 3236 	ld	de,#_station_large_ns
   4EBD 21 04 10      [10] 3237 	ld	hl,#0x1004
   4EC0 E5            [11] 3238 	push	hl
   4EC1 C5            [11] 3239 	push	bc
   4EC2 D5            [11] 3240 	push	de
   4EC3 CD 6D 5D      [17] 3241 	call	_cpct_drawSprite
                           3242 ;src/includes/world.h:34: break;
   4EC6 18 0C         [12] 3243 	jr	00109$
                           3244 ;src/includes/world.h:35: case T_SLEW:
   4EC8                    3245 00107$:
                           3246 ;src/includes/world.h:36: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EC8 11 E9 43      [10] 3247 	ld	de,#_station_large_ew
   4ECB 21 04 10      [10] 3248 	ld	hl,#0x1004
   4ECE E5            [11] 3249 	push	hl
   4ECF C5            [11] 3250 	push	bc
   4ED0 D5            [11] 3251 	push	de
   4ED1 CD 6D 5D      [17] 3252 	call	_cpct_drawSprite
                           3253 ;src/includes/world.h:38: }
   4ED4                    3254 00109$:
   4ED4 DD F9         [10] 3255 	ld	sp, ix
   4ED6 DD E1         [14] 3256 	pop	ix
   4ED8 C9            [10] 3257 	ret
                           3258 ;src/includes/world.h:41: void generateWorld()
                           3259 ;	---------------------------------
                           3260 ; Function generateWorld
                           3261 ; ---------------------------------
   4ED9                    3262 _generateWorld::
   4ED9 DD E5         [15] 3263 	push	ix
   4EDB DD 21 00 00   [14] 3264 	ld	ix,#0
   4EDF DD 39         [15] 3265 	add	ix,sp
   4EE1 F5            [11] 3266 	push	af
   4EE2 F5            [11] 3267 	push	af
                           3268 ;src/includes/world.h:49: cpct_setRandomSeedUniform_u8(0);
   4EE3 2E 00         [ 7] 3269 	ld	l,#0x00
   4EE5 CD 18 5D      [17] 3270 	call	_cpct_setRandomSeedUniform_u8
                           3271 ;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4EE8 11 00 00      [10] 3272 	ld	de,#0x0000
   4EEB                    3273 00114$:
                           3274 ;src/includes/world.h:53: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   4EEB 21 DF 60      [10] 3275 	ld	hl,#_p_world
   4EEE 19            [11] 3276 	add	hl,de
   4EEF E5            [11] 3277 	push	hl
   4EF0 D5            [11] 3278 	push	de
   4EF1 2E 00         [ 7] 3279 	ld	l,#0x00
   4EF3 CD F4 5E      [17] 3280 	call	_cpct_getRandomUniform_u8_f
   4EF6 7D            [ 4] 3281 	ld	a,l
   4EF7 D1            [10] 3282 	pop	de
   4EF8 E1            [10] 3283 	pop	hl
   4EF9 E6 01         [ 7] 3284 	and	a, #0x01
   4EFB 77            [ 7] 3285 	ld	(hl),a
                           3286 ;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4EFC 13            [ 6] 3287 	inc	de
   4EFD 7A            [ 4] 3288 	ld	a,d
   4EFE EE 80         [ 7] 3289 	xor	a, #0x80
   4F00 D6 8F         [ 7] 3290 	sub	a, #0x8F
   4F02 38 E7         [12] 3291 	jr	C,00114$
                           3292 ;src/includes/world.h:80: cpct_setRandomSeedUniform_u8(1);
   4F04 2E 01         [ 7] 3293 	ld	l,#0x01
   4F06 CD 18 5D      [17] 3294 	call	_cpct_setRandomSeedUniform_u8
                           3295 ;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
   4F09 21 00 00      [10] 3296 	ld	hl,#0x0000
   4F0C E3            [19] 3297 	ex	(sp), hl
   4F0D                    3298 00116$:
                           3299 ;src/includes/world.h:84: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   4F0D 2E 01         [ 7] 3300 	ld	l,#0x01
   4F0F CD F4 5E      [17] 3301 	call	_cpct_getRandomUniform_u8_f
   4F12 4D            [ 4] 3302 	ld	c,l
   4F13 06 00         [ 7] 3303 	ld	b,#0x00
   4F15 69            [ 4] 3304 	ld	l, c
   4F16 60            [ 4] 3305 	ld	h, b
   4F17 29            [11] 3306 	add	hl, hl
   4F18 09            [11] 3307 	add	hl, bc
   4F19 29            [11] 3308 	add	hl, hl
   4F1A 09            [11] 3309 	add	hl, bc
   4F1B 29            [11] 3310 	add	hl, hl
   4F1C 09            [11] 3311 	add	hl, bc
                           3312 ;src/includes/world.h:86: shift = cpct_getRandomUniform_u8_f(1)%10;
   4F1D E5            [11] 3313 	push	hl
   4F1E 2E 01         [ 7] 3314 	ld	l,#0x01
   4F20 CD F4 5E      [17] 3315 	call	_cpct_getRandomUniform_u8_f
   4F23 45            [ 4] 3316 	ld	b,l
   4F24 3E 0A         [ 7] 3317 	ld	a,#0x0A
   4F26 F5            [11] 3318 	push	af
   4F27 33            [ 6] 3319 	inc	sp
   4F28 C5            [11] 3320 	push	bc
   4F29 33            [ 6] 3321 	inc	sp
   4F2A CD 12 5E      [17] 3322 	call	__moduchar
   4F2D F1            [10] 3323 	pop	af
   4F2E D1            [10] 3324 	pop	de
   4F2F 26 00         [ 7] 3325 	ld	h,#0x00
                           3326 ;src/includes/world.h:87: shift=iy-shift+5;
   4F31 7B            [ 4] 3327 	ld	a,e
   4F32 95            [ 4] 3328 	sub	a, l
   4F33 6F            [ 4] 3329 	ld	l,a
   4F34 7A            [ 4] 3330 	ld	a,d
   4F35 9C            [ 4] 3331 	sbc	a, h
   4F36 67            [ 4] 3332 	ld	h,a
   4F37 01 05 00      [10] 3333 	ld	bc,#0x0005
   4F3A 09            [11] 3334 	add	hl,bc
                           3335 ;src/includes/world.h:89: if(shift>0 && shift<WIDTH*HEIGHT)
   4F3B AF            [ 4] 3336 	xor	a, a
   4F3C BD            [ 4] 3337 	cp	a, l
   4F3D 9C            [ 4] 3338 	sbc	a, h
   4F3E E2 43 4F      [10] 3339 	jp	PO, 00180$
   4F41 EE 80         [ 7] 3340 	xor	a, #0x80
   4F43                    3341 00180$:
   4F43 F2 5E 4F      [10] 3342 	jp	P,00117$
   4F46 7C            [ 4] 3343 	ld	a,h
   4F47 EE 80         [ 7] 3344 	xor	a, #0x80
   4F49 D6 8F         [ 7] 3345 	sub	a, #0x8F
   4F4B 30 11         [12] 3346 	jr	NC,00117$
                           3347 ;src/includes/world.h:90: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
   4F4D 11 DF 60      [10] 3348 	ld	de,#_p_world
   4F50 19            [11] 3349 	add	hl,de
   4F51 E5            [11] 3350 	push	hl
   4F52 2E 01         [ 7] 3351 	ld	l,#0x01
   4F54 CD F4 5E      [17] 3352 	call	_cpct_getRandomUniform_u8_f
   4F57 7D            [ 4] 3353 	ld	a,l
   4F58 E1            [10] 3354 	pop	hl
   4F59 E6 01         [ 7] 3355 	and	a, #0x01
   4F5B C6 05         [ 7] 3356 	add	a, #0x05
   4F5D 77            [ 7] 3357 	ld	(hl),a
   4F5E                    3358 00117$:
                           3359 ;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
   4F5E DD 34 FC      [23] 3360 	inc	-4 (ix)
   4F61 20 03         [12] 3361 	jr	NZ,00181$
   4F63 DD 34 FD      [23] 3362 	inc	-3 (ix)
   4F66                    3363 00181$:
   4F66 DD 7E FC      [19] 3364 	ld	a,-4 (ix)
   4F69 D6 3C         [ 7] 3365 	sub	a, #0x3C
   4F6B DD 7E FD      [19] 3366 	ld	a,-3 (ix)
   4F6E 17            [ 4] 3367 	rla
   4F6F 3F            [ 4] 3368 	ccf
   4F70 1F            [ 4] 3369 	rra
   4F71 DE 80         [ 7] 3370 	sbc	a, #0x80
   4F73 38 98         [12] 3371 	jr	C,00116$
                           3372 ;src/includes/world.h:95: cpct_setRandomSeedUniform_u8(2);
   4F75 2E 02         [ 7] 3373 	ld	l,#0x02
   4F77 CD 18 5D      [17] 3374 	call	_cpct_setRandomSeedUniform_u8
                           3375 ;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
   4F7A 21 00 00      [10] 3376 	ld	hl,#0x0000
   4F7D E3            [19] 3377 	ex	(sp), hl
   4F7E                    3378 00118$:
                           3379 ;src/includes/world.h:99: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
   4F7E 2E 02         [ 7] 3380 	ld	l,#0x02
   4F80 CD F4 5E      [17] 3381 	call	_cpct_getRandomUniform_u8_f
   4F83 4D            [ 4] 3382 	ld	c,l
   4F84 06 00         [ 7] 3383 	ld	b,#0x00
   4F86 69            [ 4] 3384 	ld	l, c
   4F87 60            [ 4] 3385 	ld	h, b
   4F88 29            [11] 3386 	add	hl, hl
   4F89 09            [11] 3387 	add	hl, bc
   4F8A 29            [11] 3388 	add	hl, hl
   4F8B 09            [11] 3389 	add	hl, bc
   4F8C 29            [11] 3390 	add	hl, hl
   4F8D 09            [11] 3391 	add	hl, bc
                           3392 ;src/includes/world.h:101: shift = cpct_getRandomUniform_u8_f(2)%10;
   4F8E E5            [11] 3393 	push	hl
   4F8F 2E 02         [ 7] 3394 	ld	l,#0x02
   4F91 CD F4 5E      [17] 3395 	call	_cpct_getRandomUniform_u8_f
   4F94 45            [ 4] 3396 	ld	b,l
   4F95 3E 0A         [ 7] 3397 	ld	a,#0x0A
   4F97 F5            [11] 3398 	push	af
   4F98 33            [ 6] 3399 	inc	sp
   4F99 C5            [11] 3400 	push	bc
   4F9A 33            [ 6] 3401 	inc	sp
   4F9B CD 12 5E      [17] 3402 	call	__moduchar
   4F9E F1            [10] 3403 	pop	af
   4F9F D1            [10] 3404 	pop	de
   4FA0 26 00         [ 7] 3405 	ld	h,#0x00
                           3406 ;src/includes/world.h:102: shift=iy-shift+5;
   4FA2 7B            [ 4] 3407 	ld	a,e
   4FA3 95            [ 4] 3408 	sub	a, l
   4FA4 4F            [ 4] 3409 	ld	c,a
   4FA5 7A            [ 4] 3410 	ld	a,d
   4FA6 9C            [ 4] 3411 	sbc	a, h
   4FA7 47            [ 4] 3412 	ld	b,a
   4FA8 03            [ 6] 3413 	inc	bc
   4FA9 03            [ 6] 3414 	inc	bc
   4FAA 03            [ 6] 3415 	inc	bc
   4FAB 03            [ 6] 3416 	inc	bc
   4FAC 03            [ 6] 3417 	inc	bc
                           3418 ;src/includes/world.h:104: if(shift>0 && shift<WIDTH*HEIGHT)
   4FAD AF            [ 4] 3419 	xor	a, a
   4FAE B9            [ 4] 3420 	cp	a, c
   4FAF 98            [ 4] 3421 	sbc	a, b
   4FB0 E2 B5 4F      [10] 3422 	jp	PO, 00182$
   4FB3 EE 80         [ 7] 3423 	xor	a, #0x80
   4FB5                    3424 00182$:
   4FB5 F2 D9 4F      [10] 3425 	jp	P,00119$
   4FB8 78            [ 4] 3426 	ld	a,b
   4FB9 EE 80         [ 7] 3427 	xor	a, #0x80
   4FBB D6 8F         [ 7] 3428 	sub	a, #0x8F
   4FBD 30 1A         [12] 3429 	jr	NC,00119$
                           3430 ;src/includes/world.h:105: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
   4FBF 21 DF 60      [10] 3431 	ld	hl,#_p_world
   4FC2 09            [11] 3432 	add	hl,bc
   4FC3 E5            [11] 3433 	push	hl
   4FC4 2E 02         [ 7] 3434 	ld	l,#0x02
   4FC6 CD F4 5E      [17] 3435 	call	_cpct_getRandomUniform_u8_f
   4FC9 45            [ 4] 3436 	ld	b,l
   4FCA 3E 03         [ 7] 3437 	ld	a,#0x03
   4FCC F5            [11] 3438 	push	af
   4FCD 33            [ 6] 3439 	inc	sp
   4FCE C5            [11] 3440 	push	bc
   4FCF 33            [ 6] 3441 	inc	sp
   4FD0 CD 12 5E      [17] 3442 	call	__moduchar
   4FD3 F1            [10] 3443 	pop	af
   4FD4 7D            [ 4] 3444 	ld	a,l
   4FD5 D1            [10] 3445 	pop	de
   4FD6 C6 02         [ 7] 3446 	add	a, #0x02
   4FD8 12            [ 7] 3447 	ld	(de),a
   4FD9                    3448 00119$:
                           3449 ;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
   4FD9 DD 34 FC      [23] 3450 	inc	-4 (ix)
   4FDC 20 03         [12] 3451 	jr	NZ,00183$
   4FDE DD 34 FD      [23] 3452 	inc	-3 (ix)
   4FE1                    3453 00183$:
   4FE1 DD 7E FC      [19] 3454 	ld	a,-4 (ix)
   4FE4 D6 1E         [ 7] 3455 	sub	a, #0x1E
   4FE6 DD 7E FD      [19] 3456 	ld	a,-3 (ix)
   4FE9 17            [ 4] 3457 	rla
   4FEA 3F            [ 4] 3458 	ccf
   4FEB 1F            [ 4] 3459 	rra
   4FEC DE 80         [ 7] 3460 	sbc	a, #0x80
   4FEE 38 8E         [12] 3461 	jr	C,00118$
                           3462 ;src/includes/world.h:110: cpct_setRandomSeedUniform_u8(3);
   4FF0 2E 03         [ 7] 3463 	ld	l,#0x03
   4FF2 CD 18 5D      [17] 3464 	call	_cpct_setRandomSeedUniform_u8
                           3465 ;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
   4FF5 11 00 00      [10] 3466 	ld	de,#0x0000
   4FF8                    3467 00120$:
                           3468 ;src/includes/world.h:114: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
   4FF8 D5            [11] 3469 	push	de
   4FF9 2E 03         [ 7] 3470 	ld	l,#0x03
   4FFB CD F4 5E      [17] 3471 	call	_cpct_getRandomUniform_u8_f
   4FFE D1            [10] 3472 	pop	de
   4FFF 4D            [ 4] 3473 	ld	c,l
   5000 06 00         [ 7] 3474 	ld	b,#0x00
   5002 69            [ 4] 3475 	ld	l, c
   5003 60            [ 4] 3476 	ld	h, b
   5004 29            [11] 3477 	add	hl, hl
   5005 09            [11] 3478 	add	hl, bc
   5006 29            [11] 3479 	add	hl, hl
   5007 09            [11] 3480 	add	hl, bc
   5008 29            [11] 3481 	add	hl, hl
   5009 09            [11] 3482 	add	hl, bc
   500A DD 75 FE      [19] 3483 	ld	-2 (ix),l
   500D DD 74 FF      [19] 3484 	ld	-1 (ix),h
                           3485 ;src/includes/world.h:116: shift = cpct_getRandomUniform_u8_f(3)%10;
   5010 D5            [11] 3486 	push	de
   5011 2E 03         [ 7] 3487 	ld	l,#0x03
   5013 CD F4 5E      [17] 3488 	call	_cpct_getRandomUniform_u8_f
   5016 45            [ 4] 3489 	ld	b,l
   5017 3E 0A         [ 7] 3490 	ld	a,#0x0A
   5019 F5            [11] 3491 	push	af
   501A 33            [ 6] 3492 	inc	sp
   501B C5            [11] 3493 	push	bc
   501C 33            [ 6] 3494 	inc	sp
   501D CD 12 5E      [17] 3495 	call	__moduchar
   5020 F1            [10] 3496 	pop	af
   5021 D1            [10] 3497 	pop	de
   5022 26 00         [ 7] 3498 	ld	h,#0x00
                           3499 ;src/includes/world.h:117: shift=iy-shift+5;
   5024 DD 7E FE      [19] 3500 	ld	a,-2 (ix)
   5027 95            [ 4] 3501 	sub	a, l
   5028 6F            [ 4] 3502 	ld	l,a
   5029 DD 7E FF      [19] 3503 	ld	a,-1 (ix)
   502C 9C            [ 4] 3504 	sbc	a, h
   502D 67            [ 4] 3505 	ld	h,a
   502E 01 05 00      [10] 3506 	ld	bc,#0x0005
   5031 09            [11] 3507 	add	hl,bc
                           3508 ;src/includes/world.h:119: if(shift>0 && shift<WIDTH*HEIGHT)
   5032 AF            [ 4] 3509 	xor	a, a
   5033 BD            [ 4] 3510 	cp	a, l
   5034 9C            [ 4] 3511 	sbc	a, h
   5035 E2 3A 50      [10] 3512 	jp	PO, 00184$
   5038 EE 80         [ 7] 3513 	xor	a, #0x80
   503A                    3514 00184$:
   503A F2 4A 50      [10] 3515 	jp	P,00121$
   503D 7C            [ 4] 3516 	ld	a,h
   503E EE 80         [ 7] 3517 	xor	a, #0x80
   5040 D6 8F         [ 7] 3518 	sub	a, #0x8F
   5042 30 06         [12] 3519 	jr	NC,00121$
                           3520 ;src/includes/world.h:120: p_world[shift] = LIVESTOCK;
   5044 01 DF 60      [10] 3521 	ld	bc,#_p_world
   5047 09            [11] 3522 	add	hl,bc
   5048 36 09         [10] 3523 	ld	(hl),#0x09
   504A                    3524 00121$:
                           3525 ;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
   504A 13            [ 6] 3526 	inc	de
   504B 7B            [ 4] 3527 	ld	a,e
   504C D6 13         [ 7] 3528 	sub	a, #0x13
   504E 7A            [ 4] 3529 	ld	a,d
   504F 17            [ 4] 3530 	rla
   5050 3F            [ 4] 3531 	ccf
   5051 1F            [ 4] 3532 	rra
   5052 DE 80         [ 7] 3533 	sbc	a, #0x80
   5054 38 A2         [12] 3534 	jr	C,00120$
   5056 DD F9         [10] 3535 	ld	sp, ix
   5058 DD E1         [14] 3536 	pop	ix
   505A C9            [10] 3537 	ret
                           3538 ;src/includes/world.h:124: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           3539 ;	---------------------------------
                           3540 ; Function drawTile
                           3541 ; ---------------------------------
   505B                    3542 _drawTile::
   505B DD E5         [15] 3543 	push	ix
   505D DD 21 00 00   [14] 3544 	ld	ix,#0
   5061 DD 39         [15] 3545 	add	ix,sp
                           3546 ;src/includes/world.h:127: int adress = (y_+iy)*WIDTH+x_+ix;
   5063 DD 6E 05      [19] 3547 	ld	l,5 (ix)
   5066 26 00         [ 7] 3548 	ld	h,#0x00
   5068 DD 5E 07      [19] 3549 	ld	e,7 (ix)
   506B 16 00         [ 7] 3550 	ld	d,#0x00
   506D 19            [11] 3551 	add	hl,de
   506E 4D            [ 4] 3552 	ld	c, l
   506F 44            [ 4] 3553 	ld	b, h
   5070 29            [11] 3554 	add	hl, hl
   5071 29            [11] 3555 	add	hl, hl
   5072 09            [11] 3556 	add	hl, bc
   5073 29            [11] 3557 	add	hl, hl
   5074 29            [11] 3558 	add	hl, hl
   5075 29            [11] 3559 	add	hl, hl
   5076 29            [11] 3560 	add	hl, hl
   5077 DD 5E 04      [19] 3561 	ld	e,4 (ix)
   507A 16 00         [ 7] 3562 	ld	d,#0x00
   507C 19            [11] 3563 	add	hl,de
   507D DD 5E 06      [19] 3564 	ld	e,6 (ix)
   5080 16 00         [ 7] 3565 	ld	d,#0x00
   5082 19            [11] 3566 	add	hl,de
   5083 5D            [ 4] 3567 	ld	e, l
   5084 54            [ 4] 3568 	ld	d, h
                           3569 ;src/includes/world.h:129: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5085 DD 7E 07      [19] 3570 	ld	a,7 (ix)
   5088 07            [ 4] 3571 	rlca
   5089 07            [ 4] 3572 	rlca
   508A 07            [ 4] 3573 	rlca
   508B 07            [ 4] 3574 	rlca
   508C E6 F0         [ 7] 3575 	and	a,#0xF0
   508E 67            [ 4] 3576 	ld	h,a
   508F DD 7E 06      [19] 3577 	ld	a,6 (ix)
   5092 87            [ 4] 3578 	add	a, a
   5093 87            [ 4] 3579 	add	a, a
   5094 D5            [11] 3580 	push	de
   5095 E5            [11] 3581 	push	hl
   5096 33            [ 6] 3582 	inc	sp
   5097 F5            [11] 3583 	push	af
   5098 33            [ 6] 3584 	inc	sp
   5099 21 00 C0      [10] 3585 	ld	hl,#0xC000
   509C E5            [11] 3586 	push	hl
   509D CD 32 60      [17] 3587 	call	_cpct_getScreenPtr
   50A0 D1            [10] 3588 	pop	de
   50A1 4D            [ 4] 3589 	ld	c, l
   50A2 44            [ 4] 3590 	ld	b, h
                           3591 ;src/includes/world.h:131: switch(p_world[adress])
   50A3 21 DF 60      [10] 3592 	ld	hl,#_p_world
   50A6 19            [11] 3593 	add	hl,de
   50A7 5E            [ 7] 3594 	ld	e,(hl)
   50A8 3E 19         [ 7] 3595 	ld	a,#0x19
   50AA 93            [ 4] 3596 	sub	a, e
   50AB DA 80 52      [10] 3597 	jp	C,00128$
   50AE 16 00         [ 7] 3598 	ld	d,#0x00
   50B0 21 B7 50      [10] 3599 	ld	hl,#00134$
   50B3 19            [11] 3600 	add	hl,de
   50B4 19            [11] 3601 	add	hl,de
   50B5 19            [11] 3602 	add	hl,de
   50B6 E9            [ 4] 3603 	jp	(hl)
   50B7                    3604 00134$:
   50B7 C3 05 51      [10] 3605 	jp	00101$
   50BA C3 14 51      [10] 3606 	jp	00102$
   50BD C3 23 51      [10] 3607 	jp	00103$
   50C0 C3 32 51      [10] 3608 	jp	00104$
   50C3 C3 41 51      [10] 3609 	jp	00105$
   50C6 C3 50 51      [10] 3610 	jp	00106$
   50C9 C3 5F 51      [10] 3611 	jp	00107$
   50CC C3 6E 51      [10] 3612 	jp	00108$
   50CF C3 7D 51      [10] 3613 	jp	00109$
   50D2 C3 8C 51      [10] 3614 	jp	00110$
   50D5 C3 9B 51      [10] 3615 	jp	00111$
   50D8 C3 AA 51      [10] 3616 	jp	00112$
   50DB C3 B9 51      [10] 3617 	jp	00113$
   50DE C3 C8 51      [10] 3618 	jp	00114$
   50E1 C3 D7 51      [10] 3619 	jp	00115$
   50E4 C3 E6 51      [10] 3620 	jp	00116$
   50E7 C3 F5 51      [10] 3621 	jp	00117$
   50EA C3 04 52      [10] 3622 	jp	00118$
   50ED C3 12 52      [10] 3623 	jp	00119$
   50F0 C3 20 52      [10] 3624 	jp	00120$
   50F3 C3 2E 52      [10] 3625 	jp	00121$
   50F6 C3 3C 52      [10] 3626 	jp	00122$
   50F9 C3 4A 52      [10] 3627 	jp	00123$
   50FC C3 58 52      [10] 3628 	jp	00124$
   50FF C3 66 52      [10] 3629 	jp	00125$
   5102 C3 74 52      [10] 3630 	jp	00126$
                           3631 ;src/includes/world.h:133: case GRASS1:
   5105                    3632 00101$:
                           3633 ;src/includes/world.h:134: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5105 11 29 40      [10] 3634 	ld	de,#_grass1
   5108 21 04 10      [10] 3635 	ld	hl,#0x1004
   510B E5            [11] 3636 	push	hl
   510C C5            [11] 3637 	push	bc
   510D D5            [11] 3638 	push	de
   510E CD 6D 5D      [17] 3639 	call	_cpct_drawSprite
                           3640 ;src/includes/world.h:135: break;
   5111 C3 80 52      [10] 3641 	jp	00128$
                           3642 ;src/includes/world.h:136: case GRASS2:
   5114                    3643 00102$:
                           3644 ;src/includes/world.h:137: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5114 11 69 40      [10] 3645 	ld	de,#_grass2
   5117 21 04 10      [10] 3646 	ld	hl,#0x1004
   511A E5            [11] 3647 	push	hl
   511B C5            [11] 3648 	push	bc
   511C D5            [11] 3649 	push	de
   511D CD 6D 5D      [17] 3650 	call	_cpct_drawSprite
                           3651 ;src/includes/world.h:138: break;
   5120 C3 80 52      [10] 3652 	jp	00128$
                           3653 ;src/includes/world.h:139: case DWELLINGS1:
   5123                    3654 00103$:
                           3655 ;src/includes/world.h:140: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   5123 11 E9 40      [10] 3656 	ld	de,#_dwellings1
   5126 21 04 10      [10] 3657 	ld	hl,#0x1004
   5129 E5            [11] 3658 	push	hl
   512A C5            [11] 3659 	push	bc
   512B D5            [11] 3660 	push	de
   512C CD 6D 5D      [17] 3661 	call	_cpct_drawSprite
                           3662 ;src/includes/world.h:141: break;
   512F C3 80 52      [10] 3663 	jp	00128$
                           3664 ;src/includes/world.h:142: case DWELLINGS2:
   5132                    3665 00104$:
                           3666 ;src/includes/world.h:143: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   5132 11 29 41      [10] 3667 	ld	de,#_dwellings2
   5135 21 04 10      [10] 3668 	ld	hl,#0x1004
   5138 E5            [11] 3669 	push	hl
   5139 C5            [11] 3670 	push	bc
   513A D5            [11] 3671 	push	de
   513B CD 6D 5D      [17] 3672 	call	_cpct_drawSprite
                           3673 ;src/includes/world.h:144: break;
   513E C3 80 52      [10] 3674 	jp	00128$
                           3675 ;src/includes/world.h:145: case DWELLINGS3:
   5141                    3676 00105$:
                           3677 ;src/includes/world.h:146: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5141 11 69 41      [10] 3678 	ld	de,#_dwellings3
   5144 21 04 10      [10] 3679 	ld	hl,#0x1004
   5147 E5            [11] 3680 	push	hl
   5148 C5            [11] 3681 	push	bc
   5149 D5            [11] 3682 	push	de
   514A CD 6D 5D      [17] 3683 	call	_cpct_drawSprite
                           3684 ;src/includes/world.h:147: break;
   514D C3 80 52      [10] 3685 	jp	00128$
                           3686 ;src/includes/world.h:148: case FARM1:
   5150                    3687 00106$:
                           3688 ;src/includes/world.h:149: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   5150 11 E9 41      [10] 3689 	ld	de,#_farm1
   5153 21 04 10      [10] 3690 	ld	hl,#0x1004
   5156 E5            [11] 3691 	push	hl
   5157 C5            [11] 3692 	push	bc
   5158 D5            [11] 3693 	push	de
   5159 CD 6D 5D      [17] 3694 	call	_cpct_drawSprite
                           3695 ;src/includes/world.h:150: break;
   515C C3 80 52      [10] 3696 	jp	00128$
                           3697 ;src/includes/world.h:151: case FARM2:
   515F                    3698 00107$:
                           3699 ;src/includes/world.h:152: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   515F 11 29 42      [10] 3700 	ld	de,#_farm2
   5162 21 04 10      [10] 3701 	ld	hl,#0x1004
   5165 E5            [11] 3702 	push	hl
   5166 C5            [11] 3703 	push	bc
   5167 D5            [11] 3704 	push	de
   5168 CD 6D 5D      [17] 3705 	call	_cpct_drawSprite
                           3706 ;src/includes/world.h:153: break;
   516B C3 80 52      [10] 3707 	jp	00128$
                           3708 ;src/includes/world.h:154: case WATER:
   516E                    3709 00108$:
                           3710 ;src/includes/world.h:155: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   516E 11 A9 41      [10] 3711 	ld	de,#_water
   5171 21 04 10      [10] 3712 	ld	hl,#0x1004
   5174 E5            [11] 3713 	push	hl
   5175 C5            [11] 3714 	push	bc
   5176 D5            [11] 3715 	push	de
   5177 CD 6D 5D      [17] 3716 	call	_cpct_drawSprite
                           3717 ;src/includes/world.h:156: break;
   517A C3 80 52      [10] 3718 	jp	00128$
                           3719 ;src/includes/world.h:157: case FOREST:
   517D                    3720 00109$:
                           3721 ;src/includes/world.h:158: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   517D 11 A9 40      [10] 3722 	ld	de,#_forest
   5180 21 04 10      [10] 3723 	ld	hl,#0x1004
   5183 E5            [11] 3724 	push	hl
   5184 C5            [11] 3725 	push	bc
   5185 D5            [11] 3726 	push	de
   5186 CD 6D 5D      [17] 3727 	call	_cpct_drawSprite
                           3728 ;src/includes/world.h:159: break;
   5189 C3 80 52      [10] 3729 	jp	00128$
                           3730 ;src/includes/world.h:160: case LIVESTOCK:
   518C                    3731 00110$:
                           3732 ;src/includes/world.h:161: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   518C 11 69 42      [10] 3733 	ld	de,#_livestock
   518F 21 04 10      [10] 3734 	ld	hl,#0x1004
   5192 E5            [11] 3735 	push	hl
   5193 C5            [11] 3736 	push	bc
   5194 D5            [11] 3737 	push	de
   5195 CD 6D 5D      [17] 3738 	call	_cpct_drawSprite
                           3739 ;src/includes/world.h:162: break;
   5198 C3 80 52      [10] 3740 	jp	00128$
                           3741 ;src/includes/world.h:163: case SSNS:
   519B                    3742 00111$:
                           3743 ;src/includes/world.h:164: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   519B 11 A9 42      [10] 3744 	ld	de,#_station_small_ns
   519E 21 04 10      [10] 3745 	ld	hl,#0x1004
   51A1 E5            [11] 3746 	push	hl
   51A2 C5            [11] 3747 	push	bc
   51A3 D5            [11] 3748 	push	de
   51A4 CD 6D 5D      [17] 3749 	call	_cpct_drawSprite
                           3750 ;src/includes/world.h:165: break;
   51A7 C3 80 52      [10] 3751 	jp	00128$
                           3752 ;src/includes/world.h:166: case SSEW:
   51AA                    3753 00112$:
                           3754 ;src/includes/world.h:167: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   51AA 11 E9 42      [10] 3755 	ld	de,#_station_small_ew
   51AD 21 04 10      [10] 3756 	ld	hl,#0x1004
   51B0 E5            [11] 3757 	push	hl
   51B1 C5            [11] 3758 	push	bc
   51B2 D5            [11] 3759 	push	de
   51B3 CD 6D 5D      [17] 3760 	call	_cpct_drawSprite
                           3761 ;src/includes/world.h:168: break;
   51B6 C3 80 52      [10] 3762 	jp	00128$
                           3763 ;src/includes/world.h:169: case SMNS:
   51B9                    3764 00113$:
                           3765 ;src/includes/world.h:170: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   51B9 11 29 43      [10] 3766 	ld	de,#_station_medium_ns
   51BC 21 04 10      [10] 3767 	ld	hl,#0x1004
   51BF E5            [11] 3768 	push	hl
   51C0 C5            [11] 3769 	push	bc
   51C1 D5            [11] 3770 	push	de
   51C2 CD 6D 5D      [17] 3771 	call	_cpct_drawSprite
                           3772 ;src/includes/world.h:171: break;
   51C5 C3 80 52      [10] 3773 	jp	00128$
                           3774 ;src/includes/world.h:172: case SMEW:
   51C8                    3775 00114$:
                           3776 ;src/includes/world.h:173: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   51C8 11 69 43      [10] 3777 	ld	de,#_station_medium_ew
   51CB 21 04 10      [10] 3778 	ld	hl,#0x1004
   51CE E5            [11] 3779 	push	hl
   51CF C5            [11] 3780 	push	bc
   51D0 D5            [11] 3781 	push	de
   51D1 CD 6D 5D      [17] 3782 	call	_cpct_drawSprite
                           3783 ;src/includes/world.h:174: break;
   51D4 C3 80 52      [10] 3784 	jp	00128$
                           3785 ;src/includes/world.h:175: case SLNS:
   51D7                    3786 00115$:
                           3787 ;src/includes/world.h:176: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   51D7 11 A9 43      [10] 3788 	ld	de,#_station_large_ns
   51DA 21 04 10      [10] 3789 	ld	hl,#0x1004
   51DD E5            [11] 3790 	push	hl
   51DE C5            [11] 3791 	push	bc
   51DF D5            [11] 3792 	push	de
   51E0 CD 6D 5D      [17] 3793 	call	_cpct_drawSprite
                           3794 ;src/includes/world.h:177: break;
   51E3 C3 80 52      [10] 3795 	jp	00128$
                           3796 ;src/includes/world.h:178: case SLEW:
   51E6                    3797 00116$:
                           3798 ;src/includes/world.h:179: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   51E6 11 E9 43      [10] 3799 	ld	de,#_station_large_ew
   51E9 21 04 10      [10] 3800 	ld	hl,#0x1004
   51EC E5            [11] 3801 	push	hl
   51ED C5            [11] 3802 	push	bc
   51EE D5            [11] 3803 	push	de
   51EF CD 6D 5D      [17] 3804 	call	_cpct_drawSprite
                           3805 ;src/includes/world.h:180: break;
   51F2 C3 80 52      [10] 3806 	jp	00128$
                           3807 ;src/includes/world.h:181: case REW:
   51F5                    3808 00117$:
                           3809 ;src/includes/world.h:182: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   51F5 11 29 44      [10] 3810 	ld	de,#_rail_ew
   51F8 21 04 10      [10] 3811 	ld	hl,#0x1004
   51FB E5            [11] 3812 	push	hl
   51FC C5            [11] 3813 	push	bc
   51FD D5            [11] 3814 	push	de
   51FE CD 6D 5D      [17] 3815 	call	_cpct_drawSprite
                           3816 ;src/includes/world.h:183: break;
   5201 C3 80 52      [10] 3817 	jp	00128$
                           3818 ;src/includes/world.h:184: case RNS:
   5204                    3819 00118$:
                           3820 ;src/includes/world.h:185: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5204 11 69 44      [10] 3821 	ld	de,#_rail_ns
   5207 21 04 10      [10] 3822 	ld	hl,#0x1004
   520A E5            [11] 3823 	push	hl
   520B C5            [11] 3824 	push	bc
   520C D5            [11] 3825 	push	de
   520D CD 6D 5D      [17] 3826 	call	_cpct_drawSprite
                           3827 ;src/includes/world.h:186: break;
   5210 18 6E         [12] 3828 	jr	00128$
                           3829 ;src/includes/world.h:187: case REN:
   5212                    3830 00119$:
                           3831 ;src/includes/world.h:188: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5212 11 A9 44      [10] 3832 	ld	de,#_rail_en
   5215 21 04 10      [10] 3833 	ld	hl,#0x1004
   5218 E5            [11] 3834 	push	hl
   5219 C5            [11] 3835 	push	bc
   521A D5            [11] 3836 	push	de
   521B CD 6D 5D      [17] 3837 	call	_cpct_drawSprite
                           3838 ;src/includes/world.h:189: break;
   521E 18 60         [12] 3839 	jr	00128$
                           3840 ;src/includes/world.h:190: case RES:
   5220                    3841 00120$:
                           3842 ;src/includes/world.h:191: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5220 11 E9 44      [10] 3843 	ld	de,#_rail_es
   5223 21 04 10      [10] 3844 	ld	hl,#0x1004
   5226 E5            [11] 3845 	push	hl
   5227 C5            [11] 3846 	push	bc
   5228 D5            [11] 3847 	push	de
   5229 CD 6D 5D      [17] 3848 	call	_cpct_drawSprite
                           3849 ;src/includes/world.h:192: break;
   522C 18 52         [12] 3850 	jr	00128$
                           3851 ;src/includes/world.h:193: case RWN:
   522E                    3852 00121$:
                           3853 ;src/includes/world.h:194: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   522E 11 29 45      [10] 3854 	ld	de,#_rail_wn
   5231 21 04 10      [10] 3855 	ld	hl,#0x1004
   5234 E5            [11] 3856 	push	hl
   5235 C5            [11] 3857 	push	bc
   5236 D5            [11] 3858 	push	de
   5237 CD 6D 5D      [17] 3859 	call	_cpct_drawSprite
                           3860 ;src/includes/world.h:195: break;
   523A 18 44         [12] 3861 	jr	00128$
                           3862 ;src/includes/world.h:196: case RWS:
   523C                    3863 00122$:
                           3864 ;src/includes/world.h:197: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   523C 11 69 45      [10] 3865 	ld	de,#_rail_ws
   523F 21 04 10      [10] 3866 	ld	hl,#0x1004
   5242 E5            [11] 3867 	push	hl
   5243 C5            [11] 3868 	push	bc
   5244 D5            [11] 3869 	push	de
   5245 CD 6D 5D      [17] 3870 	call	_cpct_drawSprite
                           3871 ;src/includes/world.h:198: break;
   5248 18 36         [12] 3872 	jr	00128$
                           3873 ;src/includes/world.h:199: case REWN:
   524A                    3874 00123$:
                           3875 ;src/includes/world.h:200: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   524A 11 A9 45      [10] 3876 	ld	de,#_rail_ew_n
   524D 21 04 10      [10] 3877 	ld	hl,#0x1004
   5250 E5            [11] 3878 	push	hl
   5251 C5            [11] 3879 	push	bc
   5252 D5            [11] 3880 	push	de
   5253 CD 6D 5D      [17] 3881 	call	_cpct_drawSprite
                           3882 ;src/includes/world.h:201: break;
   5256 18 28         [12] 3883 	jr	00128$
                           3884 ;src/includes/world.h:202: case REWS:
   5258                    3885 00124$:
                           3886 ;src/includes/world.h:203: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5258 11 E9 45      [10] 3887 	ld	de,#_rail_ew_s
   525B 21 04 10      [10] 3888 	ld	hl,#0x1004
   525E E5            [11] 3889 	push	hl
   525F C5            [11] 3890 	push	bc
   5260 D5            [11] 3891 	push	de
   5261 CD 6D 5D      [17] 3892 	call	_cpct_drawSprite
                           3893 ;src/includes/world.h:204: break;
   5264 18 1A         [12] 3894 	jr	00128$
                           3895 ;src/includes/world.h:205: case RNSE:
   5266                    3896 00125$:
                           3897 ;src/includes/world.h:206: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5266 11 69 46      [10] 3898 	ld	de,#_rail_ns_e
   5269 21 04 10      [10] 3899 	ld	hl,#0x1004
   526C E5            [11] 3900 	push	hl
   526D C5            [11] 3901 	push	bc
   526E D5            [11] 3902 	push	de
   526F CD 6D 5D      [17] 3903 	call	_cpct_drawSprite
                           3904 ;src/includes/world.h:207: break;
   5272 18 0C         [12] 3905 	jr	00128$
                           3906 ;src/includes/world.h:208: case RNSW:
   5274                    3907 00126$:
                           3908 ;src/includes/world.h:209: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5274 11 29 46      [10] 3909 	ld	de,#_rail_ns_w
   5277 21 04 10      [10] 3910 	ld	hl,#0x1004
   527A E5            [11] 3911 	push	hl
   527B C5            [11] 3912 	push	bc
   527C D5            [11] 3913 	push	de
   527D CD 6D 5D      [17] 3914 	call	_cpct_drawSprite
                           3915 ;src/includes/world.h:211: }
   5280                    3916 00128$:
   5280 DD E1         [14] 3917 	pop	ix
   5282 C9            [10] 3918 	ret
                           3919 ;src/includes/world.h:214: void drawWorld(u8 x_, u8 y_)
                           3920 ;	---------------------------------
                           3921 ; Function drawWorld
                           3922 ; ---------------------------------
   5283                    3923 _drawWorld::
   5283 DD E5         [15] 3924 	push	ix
   5285 DD 21 00 00   [14] 3925 	ld	ix,#0
   5289 DD 39         [15] 3926 	add	ix,sp
   528B 3B            [ 6] 3927 	dec	sp
                           3928 ;src/includes/world.h:222: for(iy=0; iy<NBTILE_H;iy++)
   528C 16 00         [ 7] 3929 	ld	d,#0x00
                           3930 ;src/includes/world.h:224: for(ix=0; ix<NBTILE_W;ix++)
   528E                    3931 00109$:
   528E 1E 00         [ 7] 3932 	ld	e,#0x00
   5290                    3933 00103$:
                           3934 ;src/includes/world.h:226: drawTile(x_, y_, ix, iy);
   5290 D5            [11] 3935 	push	de
   5291 D5            [11] 3936 	push	de
   5292 DD 66 05      [19] 3937 	ld	h,5 (ix)
   5295 DD 6E 04      [19] 3938 	ld	l,4 (ix)
   5298 E5            [11] 3939 	push	hl
   5299 CD 5B 50      [17] 3940 	call	_drawTile
   529C F1            [10] 3941 	pop	af
   529D F1            [10] 3942 	pop	af
   529E D1            [10] 3943 	pop	de
                           3944 ;src/includes/world.h:224: for(ix=0; ix<NBTILE_W;ix++)
   529F 1C            [ 4] 3945 	inc	e
   52A0 7B            [ 4] 3946 	ld	a,e
   52A1 D6 14         [ 7] 3947 	sub	a, #0x14
   52A3 38 EB         [12] 3948 	jr	C,00103$
                           3949 ;src/includes/world.h:222: for(iy=0; iy<NBTILE_H;iy++)
   52A5 14            [ 4] 3950 	inc	d
   52A6 7A            [ 4] 3951 	ld	a,d
   52A7 D6 0C         [ 7] 3952 	sub	a, #0x0C
   52A9 38 E3         [12] 3953 	jr	C,00109$
                           3954 ;src/includes/world.h:232: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   52AB DD 4E 04      [19] 3955 	ld	c,4 (ix)
   52AE 06 00         [ 7] 3956 	ld	b,#0x00
   52B0 69            [ 4] 3957 	ld	l, c
   52B1 60            [ 4] 3958 	ld	h, b
   52B2 29            [11] 3959 	add	hl, hl
   52B3 29            [11] 3960 	add	hl, hl
   52B4 29            [11] 3961 	add	hl, hl
   52B5 09            [11] 3962 	add	hl, bc
   52B6 29            [11] 3963 	add	hl, hl
   52B7 09            [11] 3964 	add	hl, bc
   52B8 29            [11] 3965 	add	hl, hl
   52B9 29            [11] 3966 	add	hl, hl
   52BA 01 3C 00      [10] 3967 	ld	bc,#0x003C
   52BD C5            [11] 3968 	push	bc
   52BE E5            [11] 3969 	push	hl
   52BF CD 83 60      [17] 3970 	call	__divsint
   52C2 F1            [10] 3971 	pop	af
   52C3 F1            [10] 3972 	pop	af
   52C4 55            [ 4] 3973 	ld	d,l
                           3974 ;src/includes/world.h:233: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   52C5 DD 4E 05      [19] 3975 	ld	c,5 (ix)
   52C8 06 00         [ 7] 3976 	ld	b,#0x00
   52CA 69            [ 4] 3977 	ld	l, c
   52CB 60            [ 4] 3978 	ld	h, b
   52CC 29            [11] 3979 	add	hl, hl
   52CD 29            [11] 3980 	add	hl, hl
   52CE 09            [11] 3981 	add	hl, bc
   52CF 29            [11] 3982 	add	hl, hl
   52D0 09            [11] 3983 	add	hl, bc
   52D1 29            [11] 3984 	add	hl, hl
   52D2 29            [11] 3985 	add	hl, hl
   52D3 29            [11] 3986 	add	hl, hl
   52D4 29            [11] 3987 	add	hl, hl
   52D5 D5            [11] 3988 	push	de
   52D6 01 24 00      [10] 3989 	ld	bc,#0x0024
   52D9 C5            [11] 3990 	push	bc
   52DA E5            [11] 3991 	push	hl
   52DB CD 83 60      [17] 3992 	call	__divsint
   52DE F1            [10] 3993 	pop	af
   52DF F1            [10] 3994 	pop	af
   52E0 D1            [10] 3995 	pop	de
   52E1 DD 75 FF      [19] 3996 	ld	-1 (ix),l
                           3997 ;src/includes/world.h:235: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   52E4 AF            [ 4] 3998 	xor	a, a
   52E5 F5            [11] 3999 	push	af
   52E6 33            [ 6] 4000 	inc	sp
   52E7 D5            [11] 4001 	push	de
   52E8 33            [ 6] 4002 	inc	sp
   52E9 21 00 C0      [10] 4003 	ld	hl,#0xC000
   52EC E5            [11] 4004 	push	hl
   52ED CD 32 60      [17] 4005 	call	_cpct_getScreenPtr
                           4006 ;src/includes/world.h:236: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   52F0 E5            [11] 4007 	push	hl
   52F1 21 00 00      [10] 4008 	ld	hl,#0x0000
   52F4 E5            [11] 4009 	push	hl
   52F5 2E 00         [ 7] 4010 	ld	l, #0x00
   52F7 E5            [11] 4011 	push	hl
   52F8 CD 41 5F      [17] 4012 	call	_cpct_px2byteM1
   52FB F1            [10] 4013 	pop	af
   52FC F1            [10] 4014 	pop	af
   52FD 45            [ 4] 4015 	ld	b,l
   52FE D1            [10] 4016 	pop	de
   52FF 21 04 04      [10] 4017 	ld	hl,#0x0404
   5302 E5            [11] 4018 	push	hl
   5303 C5            [11] 4019 	push	bc
   5304 33            [ 6] 4020 	inc	sp
   5305 D5            [11] 4021 	push	de
   5306 CD 79 5F      [17] 4022 	call	_cpct_drawSolidBox
   5309 F1            [10] 4023 	pop	af
   530A F1            [10] 4024 	pop	af
   530B 33            [ 6] 4025 	inc	sp
                           4026 ;src/includes/world.h:238: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   530C DD 7E FF      [19] 4027 	ld	a,-1 (ix)
   530F F5            [11] 4028 	push	af
   5310 33            [ 6] 4029 	inc	sp
   5311 AF            [ 4] 4030 	xor	a, a
   5312 F5            [11] 4031 	push	af
   5313 33            [ 6] 4032 	inc	sp
   5314 21 00 C0      [10] 4033 	ld	hl,#0xC000
   5317 E5            [11] 4034 	push	hl
   5318 CD 32 60      [17] 4035 	call	_cpct_getScreenPtr
                           4036 ;src/includes/world.h:239: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   531B E5            [11] 4037 	push	hl
   531C 21 00 00      [10] 4038 	ld	hl,#0x0000
   531F E5            [11] 4039 	push	hl
   5320 2E 00         [ 7] 4040 	ld	l, #0x00
   5322 E5            [11] 4041 	push	hl
   5323 CD 41 5F      [17] 4042 	call	_cpct_px2byteM1
   5326 F1            [10] 4043 	pop	af
   5327 F1            [10] 4044 	pop	af
   5328 45            [ 4] 4045 	ld	b,l
   5329 D1            [10] 4046 	pop	de
   532A 21 01 10      [10] 4047 	ld	hl,#0x1001
   532D E5            [11] 4048 	push	hl
   532E C5            [11] 4049 	push	bc
   532F 33            [ 6] 4050 	inc	sp
   5330 D5            [11] 4051 	push	de
   5331 CD 79 5F      [17] 4052 	call	_cpct_drawSolidBox
   5334 F1            [10] 4053 	pop	af
   5335 F1            [10] 4054 	pop	af
   5336 33            [ 6] 4055 	inc	sp
   5337 33            [ 6] 4056 	inc	sp
   5338 DD E1         [14] 4057 	pop	ix
   533A C9            [10] 4058 	ret
                           4059 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           4060 ;	---------------------------------
                           4061 ; Function windowInfoTile
                           4062 ; ---------------------------------
   533B                    4063 _windowInfoTile::
   533B DD E5         [15] 4064 	push	ix
   533D DD 21 00 00   [14] 4065 	ld	ix,#0
   5341 DD 39         [15] 4066 	add	ix,sp
   5343 21 F8 FF      [10] 4067 	ld	hl,#-8
   5346 39            [11] 4068 	add	hl,sp
   5347 F9            [ 6] 4069 	ld	sp,hl
                           4070 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   5348 DD 4E 05      [19] 4071 	ld	c,5 (ix)
   534B 06 00         [ 7] 4072 	ld	b,#0x00
   534D 69            [ 4] 4073 	ld	l, c
   534E 60            [ 4] 4074 	ld	h, b
   534F 29            [11] 4075 	add	hl, hl
   5350 29            [11] 4076 	add	hl, hl
   5351 09            [11] 4077 	add	hl, bc
   5352 29            [11] 4078 	add	hl, hl
   5353 29            [11] 4079 	add	hl, hl
   5354 29            [11] 4080 	add	hl, hl
   5355 29            [11] 4081 	add	hl, hl
   5356 DD 5E 04      [19] 4082 	ld	e,4 (ix)
   5359 16 00         [ 7] 4083 	ld	d,#0x00
   535B 19            [11] 4084 	add	hl,de
   535C 11 DF 60      [10] 4085 	ld	de,#_p_world
   535F 19            [11] 4086 	add	hl,de
   5360 4E            [ 7] 4087 	ld	c,(hl)
   5361 3E 09         [ 7] 4088 	ld	a,#0x09
   5363 91            [ 4] 4089 	sub	a, c
   5364 DA 95 54      [10] 4090 	jp	C,00111$
   5367 59            [ 4] 4091 	ld	e,c
   5368 16 00         [ 7] 4092 	ld	d,#0x00
   536A 21 71 53      [10] 4093 	ld	hl,#00119$
   536D 19            [11] 4094 	add	hl,de
   536E 19            [11] 4095 	add	hl,de
   536F 19            [11] 4096 	add	hl,de
   5370 E9            [ 4] 4097 	jp	(hl)
   5371                    4098 00119$:
   5371 C3 8F 53      [10] 4099 	jp	00101$
   5374 C3 8F 53      [10] 4100 	jp	00102$
   5377 C3 BB 53      [10] 4101 	jp	00103$
   537A C3 BB 53      [10] 4102 	jp	00104$
   537D C3 BB 53      [10] 4103 	jp	00105$
   5380 C3 E7 53      [10] 4104 	jp	00106$
   5383 C3 E7 53      [10] 4105 	jp	00107$
   5386 C3 13 54      [10] 4106 	jp	00108$
   5389 C3 3F 54      [10] 4107 	jp	00109$
   538C C3 6A 54      [10] 4108 	jp	00110$
                           4109 ;src/includes/game.h:7: case GRASS1:
   538F                    4110 00101$:
                           4111 ;src/includes/game.h:8: case GRASS2:
   538F                    4112 00102$:
                           4113 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   538F 21 00 00      [10] 4114 	ld	hl,#0x0000
   5392 39            [11] 4115 	add	hl,sp
   5393 5D            [ 4] 4116 	ld	e,l
   5394 54            [ 4] 4117 	ld	d,h
   5395 36 D0         [10] 4118 	ld	(hl),#<(___str_2)
   5397 23            [ 6] 4119 	inc	hl
   5398 36 54         [10] 4120 	ld	(hl),#>(___str_2)
                           4121 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   539A 6B            [ 4] 4122 	ld	l, e
   539B 62            [ 4] 4123 	ld	h, d
   539C 23            [ 6] 4124 	inc	hl
   539D 23            [ 6] 4125 	inc	hl
   539E 01 DA 54      [10] 4126 	ld	bc,#___str_3+0
   53A1 71            [ 7] 4127 	ld	(hl),c
   53A2 23            [ 6] 4128 	inc	hl
   53A3 70            [ 7] 4129 	ld	(hl),b
                           4130 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   53A4 21 04 00      [10] 4131 	ld	hl,#0x0004
   53A7 19            [11] 4132 	add	hl,de
   53A8 01 DB 54      [10] 4133 	ld	bc,#___str_4+0
   53AB 71            [ 7] 4134 	ld	(hl),c
   53AC 23            [ 6] 4135 	inc	hl
   53AD 70            [ 7] 4136 	ld	(hl),b
                           4137 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   53AE 21 06 00      [10] 4138 	ld	hl,#0x0006
   53B1 19            [11] 4139 	add	hl,de
   53B2 11 EF 54      [10] 4140 	ld	de,#___str_5+0
   53B5 73            [ 7] 4141 	ld	(hl),e
   53B6 23            [ 6] 4142 	inc	hl
   53B7 72            [ 7] 4143 	ld	(hl),d
                           4144 ;src/includes/game.h:13: break;
   53B8 C3 BE 54      [10] 4145 	jp	00112$
                           4146 ;src/includes/game.h:14: case DWELLINGS1:
   53BB                    4147 00103$:
                           4148 ;src/includes/game.h:15: case DWELLINGS2:
   53BB                    4149 00104$:
                           4150 ;src/includes/game.h:16: case DWELLINGS3:
   53BB                    4151 00105$:
                           4152 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   53BB 21 00 00      [10] 4153 	ld	hl,#0x0000
   53BE 39            [11] 4154 	add	hl,sp
   53BF 5D            [ 4] 4155 	ld	e,l
   53C0 54            [ 4] 4156 	ld	d,h
   53C1 36 FF         [10] 4157 	ld	(hl),#<(___str_6)
   53C3 23            [ 6] 4158 	inc	hl
   53C4 36 54         [10] 4159 	ld	(hl),#>(___str_6)
                           4160 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   53C6 6B            [ 4] 4161 	ld	l, e
   53C7 62            [ 4] 4162 	ld	h, d
   53C8 23            [ 6] 4163 	inc	hl
   53C9 23            [ 6] 4164 	inc	hl
   53CA 01 DA 54      [10] 4165 	ld	bc,#___str_3+0
   53CD 71            [ 7] 4166 	ld	(hl),c
   53CE 23            [ 6] 4167 	inc	hl
   53CF 70            [ 7] 4168 	ld	(hl),b
                           4169 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   53D0 21 04 00      [10] 4170 	ld	hl,#0x0004
   53D3 19            [11] 4171 	add	hl,de
   53D4 01 04 55      [10] 4172 	ld	bc,#___str_7+0
   53D7 71            [ 7] 4173 	ld	(hl),c
   53D8 23            [ 6] 4174 	inc	hl
   53D9 70            [ 7] 4175 	ld	(hl),b
                           4176 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   53DA 21 06 00      [10] 4177 	ld	hl,#0x0006
   53DD 19            [11] 4178 	add	hl,de
   53DE 11 21 55      [10] 4179 	ld	de,#___str_8+0
   53E1 73            [ 7] 4180 	ld	(hl),e
   53E2 23            [ 6] 4181 	inc	hl
   53E3 72            [ 7] 4182 	ld	(hl),d
                           4183 ;src/includes/game.h:21: break;
   53E4 C3 BE 54      [10] 4184 	jp	00112$
                           4185 ;src/includes/game.h:22: case FARM1:
   53E7                    4186 00106$:
                           4187 ;src/includes/game.h:23: case FARM2:
   53E7                    4188 00107$:
                           4189 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   53E7 21 00 00      [10] 4190 	ld	hl,#0x0000
   53EA 39            [11] 4191 	add	hl,sp
   53EB 5D            [ 4] 4192 	ld	e,l
   53EC 54            [ 4] 4193 	ld	d,h
   53ED 36 46         [10] 4194 	ld	(hl),#<(___str_9)
   53EF 23            [ 6] 4195 	inc	hl
   53F0 36 55         [10] 4196 	ld	(hl),#>(___str_9)
                           4197 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   53F2 6B            [ 4] 4198 	ld	l, e
   53F3 62            [ 4] 4199 	ld	h, d
   53F4 23            [ 6] 4200 	inc	hl
   53F5 23            [ 6] 4201 	inc	hl
   53F6 01 DA 54      [10] 4202 	ld	bc,#___str_3+0
   53F9 71            [ 7] 4203 	ld	(hl),c
   53FA 23            [ 6] 4204 	inc	hl
   53FB 70            [ 7] 4205 	ld	(hl),b
                           4206 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   53FC 21 04 00      [10] 4207 	ld	hl,#0x0004
   53FF 19            [11] 4208 	add	hl,de
   5400 01 4B 55      [10] 4209 	ld	bc,#___str_10+0
   5403 71            [ 7] 4210 	ld	(hl),c
   5404 23            [ 6] 4211 	inc	hl
   5405 70            [ 7] 4212 	ld	(hl),b
                           4213 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   5406 21 06 00      [10] 4214 	ld	hl,#0x0006
   5409 19            [11] 4215 	add	hl,de
   540A 11 5E 55      [10] 4216 	ld	de,#___str_11+0
   540D 73            [ 7] 4217 	ld	(hl),e
   540E 23            [ 6] 4218 	inc	hl
   540F 72            [ 7] 4219 	ld	(hl),d
                           4220 ;src/includes/game.h:28: break;
   5410 C3 BE 54      [10] 4221 	jp	00112$
                           4222 ;src/includes/game.h:29: case WATER:
   5413                    4223 00108$:
                           4224 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   5413 21 00 00      [10] 4225 	ld	hl,#0x0000
   5416 39            [11] 4226 	add	hl,sp
   5417 5D            [ 4] 4227 	ld	e,l
   5418 54            [ 4] 4228 	ld	d,h
   5419 36 6E         [10] 4229 	ld	(hl),#<(___str_12)
   541B 23            [ 6] 4230 	inc	hl
   541C 36 55         [10] 4231 	ld	(hl),#>(___str_12)
                           4232 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   541E 6B            [ 4] 4233 	ld	l, e
   541F 62            [ 4] 4234 	ld	h, d
   5420 23            [ 6] 4235 	inc	hl
   5421 23            [ 6] 4236 	inc	hl
   5422 01 DA 54      [10] 4237 	ld	bc,#___str_3+0
   5425 71            [ 7] 4238 	ld	(hl),c
   5426 23            [ 6] 4239 	inc	hl
   5427 70            [ 7] 4240 	ld	(hl),b
                           4241 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   5428 21 04 00      [10] 4242 	ld	hl,#0x0004
   542B 19            [11] 4243 	add	hl,de
   542C 01 74 55      [10] 4244 	ld	bc,#___str_13+0
   542F 71            [ 7] 4245 	ld	(hl),c
   5430 23            [ 6] 4246 	inc	hl
   5431 70            [ 7] 4247 	ld	(hl),b
                           4248 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   5432 21 06 00      [10] 4249 	ld	hl,#0x0006
   5435 19            [11] 4250 	add	hl,de
   5436 11 5E 55      [10] 4251 	ld	de,#___str_11+0
   5439 73            [ 7] 4252 	ld	(hl),e
   543A 23            [ 6] 4253 	inc	hl
   543B 72            [ 7] 4254 	ld	(hl),d
                           4255 ;src/includes/game.h:34: break;
   543C C3 BE 54      [10] 4256 	jp	00112$
                           4257 ;src/includes/game.h:35: case FOREST:
   543F                    4258 00109$:
                           4259 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   543F 21 00 00      [10] 4260 	ld	hl,#0x0000
   5442 39            [11] 4261 	add	hl,sp
   5443 5D            [ 4] 4262 	ld	e,l
   5444 54            [ 4] 4263 	ld	d,h
   5445 36 88         [10] 4264 	ld	(hl),#<(___str_14)
   5447 23            [ 6] 4265 	inc	hl
   5448 36 55         [10] 4266 	ld	(hl),#>(___str_14)
                           4267 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   544A 6B            [ 4] 4268 	ld	l, e
   544B 62            [ 4] 4269 	ld	h, d
   544C 23            [ 6] 4270 	inc	hl
   544D 23            [ 6] 4271 	inc	hl
   544E 01 DA 54      [10] 4272 	ld	bc,#___str_3+0
   5451 71            [ 7] 4273 	ld	(hl),c
   5452 23            [ 6] 4274 	inc	hl
   5453 70            [ 7] 4275 	ld	(hl),b
                           4276 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   5454 21 04 00      [10] 4277 	ld	hl,#0x0004
   5457 19            [11] 4278 	add	hl,de
   5458 01 74 55      [10] 4279 	ld	bc,#___str_13+0
   545B 71            [ 7] 4280 	ld	(hl),c
   545C 23            [ 6] 4281 	inc	hl
   545D 70            [ 7] 4282 	ld	(hl),b
                           4283 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   545E 21 06 00      [10] 4284 	ld	hl,#0x0006
   5461 19            [11] 4285 	add	hl,de
   5462 11 5E 55      [10] 4286 	ld	de,#___str_11+0
   5465 73            [ 7] 4287 	ld	(hl),e
   5466 23            [ 6] 4288 	inc	hl
   5467 72            [ 7] 4289 	ld	(hl),d
                           4290 ;src/includes/game.h:40: break;
   5468 18 54         [12] 4291 	jr	00112$
                           4292 ;src/includes/game.h:41: case LIVESTOCK:
   546A                    4293 00110$:
                           4294 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   546A 21 00 00      [10] 4295 	ld	hl,#0x0000
   546D 39            [11] 4296 	add	hl,sp
   546E 5D            [ 4] 4297 	ld	e,l
   546F 54            [ 4] 4298 	ld	d,h
   5470 36 8F         [10] 4299 	ld	(hl),#<(___str_15)
   5472 23            [ 6] 4300 	inc	hl
   5473 36 55         [10] 4301 	ld	(hl),#>(___str_15)
                           4302 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   5475 6B            [ 4] 4303 	ld	l, e
   5476 62            [ 4] 4304 	ld	h, d
   5477 23            [ 6] 4305 	inc	hl
   5478 23            [ 6] 4306 	inc	hl
   5479 01 DA 54      [10] 4307 	ld	bc,#___str_3+0
   547C 71            [ 7] 4308 	ld	(hl),c
   547D 23            [ 6] 4309 	inc	hl
   547E 70            [ 7] 4310 	ld	(hl),b
                           4311 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   547F 21 04 00      [10] 4312 	ld	hl,#0x0004
   5482 19            [11] 4313 	add	hl,de
   5483 01 A1 55      [10] 4314 	ld	bc,#___str_16+0
   5486 71            [ 7] 4315 	ld	(hl),c
   5487 23            [ 6] 4316 	inc	hl
   5488 70            [ 7] 4317 	ld	(hl),b
                           4318 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   5489 21 06 00      [10] 4319 	ld	hl,#0x0006
   548C 19            [11] 4320 	add	hl,de
   548D 11 BD 55      [10] 4321 	ld	de,#___str_17+0
   5490 73            [ 7] 4322 	ld	(hl),e
   5491 23            [ 6] 4323 	inc	hl
   5492 72            [ 7] 4324 	ld	(hl),d
                           4325 ;src/includes/game.h:46: break;
   5493 18 29         [12] 4326 	jr	00112$
                           4327 ;src/includes/game.h:47: default:
   5495                    4328 00111$:
                           4329 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   5495 21 00 00      [10] 4330 	ld	hl,#0x0000
   5498 39            [11] 4331 	add	hl,sp
   5499 5D            [ 4] 4332 	ld	e,l
   549A 54            [ 4] 4333 	ld	d,h
   549B 36 CC         [10] 4334 	ld	(hl),#<(___str_18)
   549D 23            [ 6] 4335 	inc	hl
   549E 36 55         [10] 4336 	ld	(hl),#>(___str_18)
                           4337 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   54A0 6B            [ 4] 4338 	ld	l, e
   54A1 62            [ 4] 4339 	ld	h, d
   54A2 23            [ 6] 4340 	inc	hl
   54A3 23            [ 6] 4341 	inc	hl
   54A4 01 DA 54      [10] 4342 	ld	bc,#___str_3+0
   54A7 71            [ 7] 4343 	ld	(hl),c
   54A8 23            [ 6] 4344 	inc	hl
   54A9 70            [ 7] 4345 	ld	(hl),b
                           4346 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   54AA 21 04 00      [10] 4347 	ld	hl,#0x0004
   54AD 19            [11] 4348 	add	hl,de
   54AE 01 E0 55      [10] 4349 	ld	bc,#___str_19+0
   54B1 71            [ 7] 4350 	ld	(hl),c
   54B2 23            [ 6] 4351 	inc	hl
   54B3 70            [ 7] 4352 	ld	(hl),b
                           4353 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   54B4 21 06 00      [10] 4354 	ld	hl,#0x0006
   54B7 19            [11] 4355 	add	hl,de
   54B8 11 EE 55      [10] 4356 	ld	de,#___str_20+0
   54BB 73            [ 7] 4357 	ld	(hl),e
   54BC 23            [ 6] 4358 	inc	hl
   54BD 72            [ 7] 4359 	ld	(hl),d
                           4360 ;src/includes/game.h:53: }
   54BE                    4361 00112$:
                           4362 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   54BE 21 00 00      [10] 4363 	ld	hl,#0x0000
   54C1 39            [11] 4364 	add	hl,sp
   54C2 EB            [ 4] 4365 	ex	de,hl
   54C3 21 04 00      [10] 4366 	ld	hl,#0x0004
   54C6 E5            [11] 4367 	push	hl
   54C7 D5            [11] 4368 	push	de
   54C8 CD C1 4B      [17] 4369 	call	_drawWindow
   54CB DD F9         [10] 4370 	ld	sp,ix
   54CD DD E1         [14] 4371 	pop	ix
   54CF C9            [10] 4372 	ret
   54D0                    4373 ___str_2:
   54D0 47 72 61 73 73 6C  4374 	.ascii "Grassland"
        61 6E 64
   54D9 00                 4375 	.db 0x00
   54DA                    4376 ___str_3:
   54DA 00                 4377 	.db 0x00
   54DB                    4378 ___str_4:
   54DB 50 72 6F 64 75 63  4379 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   54EE 00                 4380 	.db 0x00
   54EF                    4381 ___str_5:
   54EF 44 65 6D 61 6E 64  4382 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   54FE 00                 4383 	.db 0x00
   54FF                    4384 ___str_6:
   54FF 43 69 74 79        4385 	.ascii "City"
   5503 00                 4386 	.db 0x00
   5504                    4387 ___str_7:
   5504 50 72 6F 64 75 63  4388 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   5520 00                 4389 	.db 0x00
   5521                    4390 ___str_8:
   5521 44 65 6D 61 6E 64  4391 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5545 00                 4392 	.db 0x00
   5546                    4393 ___str_9:
   5546 46 61 72 6D        4394 	.ascii "Farm"
   554A 00                 4395 	.db 0x00
   554B                    4396 ___str_10:
   554B 50 72 6F 64 75 63  4397 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   555D 00                 4398 	.db 0x00
   555E                    4399 ___str_11:
   555E 44 65 6D 61 6E 64  4400 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   556D 00                 4401 	.db 0x00
   556E                    4402 ___str_12:
   556E 57 61 74 65 72     4403 	.ascii "Water"
   5573 00                 4404 	.db 0x00
   5574                    4405 ___str_13:
   5574 50 72 6F 64 75 63  4406 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   5587 00                 4407 	.db 0x00
   5588                    4408 ___str_14:
   5588 46 6F 72 65 73 74  4409 	.ascii "Forest"
   558E 00                 4410 	.db 0x00
   558F                    4411 ___str_15:
   558F 4C 69 76 65 73 74  4412 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   55A0 00                 4413 	.db 0x00
   55A1                    4414 ___str_16:
   55A1 50 72 6F 64 75 63  4415 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   55BC 00                 4416 	.db 0x00
   55BD                    4417 ___str_17:
   55BD 44 65 6D 61 6E 64  4418 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   55CB 00                 4419 	.db 0x00
   55CC                    4420 ___str_18:
   55CC 4E 6F 74 20 79 65  4421 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   55DF 00                 4422 	.db 0x00
   55E0                    4423 ___str_19:
   55E0 50 72 6F 64 75 63  4424 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   55ED 00                 4425 	.db 0x00
   55EE                    4426 ___str_20:
   55EE 44 65 6D 61 6E 64  4427 	.ascii "Demand: ?"
        3A 20 3F
   55F7 00                 4428 	.db 0x00
                           4429 ;src/includes/game.h:58: void menuStations()
                           4430 ;	---------------------------------
                           4431 ; Function menuStations
                           4432 ; ---------------------------------
   55F8                    4433 _menuStations::
   55F8 DD E5         [15] 4434 	push	ix
   55FA DD 21 00 00   [14] 4435 	ld	ix,#0
   55FE DD 39         [15] 4436 	add	ix,sp
   5600 21 FA FF      [10] 4437 	ld	hl,#-6
   5603 39            [11] 4438 	add	hl,sp
   5604 F9            [ 6] 4439 	ld	sp,hl
                           4440 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   5605 21 00 00      [10] 4441 	ld	hl,#0x0000
   5608 39            [11] 4442 	add	hl,sp
   5609 5D            [ 4] 4443 	ld	e,l
   560A 54            [ 4] 4444 	ld	d,h
   560B 36 5A         [10] 4445 	ld	(hl),#<(___str_21)
   560D 23            [ 6] 4446 	inc	hl
   560E 36 56         [10] 4447 	ld	(hl),#>(___str_21)
   5610 6B            [ 4] 4448 	ld	l, e
   5611 62            [ 4] 4449 	ld	h, d
   5612 23            [ 6] 4450 	inc	hl
   5613 23            [ 6] 4451 	inc	hl
   5614 01 60 56      [10] 4452 	ld	bc,#___str_22+0
   5617 71            [ 7] 4453 	ld	(hl),c
   5618 23            [ 6] 4454 	inc	hl
   5619 70            [ 7] 4455 	ld	(hl),b
   561A 21 04 00      [10] 4456 	ld	hl,#0x0004
   561D 19            [11] 4457 	add	hl,de
   561E 01 67 56      [10] 4458 	ld	bc,#___str_23+0
   5621 71            [ 7] 4459 	ld	(hl),c
   5622 23            [ 6] 4460 	inc	hl
   5623 70            [ 7] 4461 	ld	(hl),b
                           4462 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   5624 3E 03         [ 7] 4463 	ld	a,#0x03
   5626 F5            [11] 4464 	push	af
   5627 33            [ 6] 4465 	inc	sp
   5628 D5            [11] 4466 	push	de
   5629 CD C3 4A      [17] 4467 	call	_drawMenu
   562C F1            [10] 4468 	pop	af
   562D 33            [ 6] 4469 	inc	sp
   562E 5D            [ 4] 4470 	ld	e,l
                           4471 ;src/includes/game.h:70: switch(result)
   562F 3E 02         [ 7] 4472 	ld	a,#0x02
   5631 93            [ 4] 4473 	sub	a, e
   5632 38 21         [12] 4474 	jr	C,00105$
   5634 16 00         [ 7] 4475 	ld	d,#0x00
   5636 21 3C 56      [10] 4476 	ld	hl,#00111$
   5639 19            [11] 4477 	add	hl,de
   563A 19            [11] 4478 	add	hl,de
                           4479 ;src/includes/game.h:72: case 0:
   563B E9            [ 4] 4480 	jp	(hl)
   563C                    4481 00111$:
   563C 18 04         [12] 4482 	jr	00101$
   563E 18 09         [12] 4483 	jr	00102$
   5640 18 0E         [12] 4484 	jr	00103$
   5642                    4485 00101$:
                           4486 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   5642 21 DF 6F      [10] 4487 	ld	hl,#_CURSOR_MODE + 0
   5645 36 02         [10] 4488 	ld	(hl), #0x02
                           4489 ;src/includes/game.h:74: break;
   5647 18 0C         [12] 4490 	jr	00105$
                           4491 ;src/includes/game.h:76: case 1:
   5649                    4492 00102$:
                           4493 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5649 21 DF 6F      [10] 4494 	ld	hl,#_CURSOR_MODE + 0
   564C 36 04         [10] 4495 	ld	(hl), #0x04
                           4496 ;src/includes/game.h:78: break;
   564E 18 05         [12] 4497 	jr	00105$
                           4498 ;src/includes/game.h:80: case 2:
   5650                    4499 00103$:
                           4500 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   5650 21 DF 6F      [10] 4501 	ld	hl,#_CURSOR_MODE + 0
   5653 36 06         [10] 4502 	ld	(hl), #0x06
                           4503 ;src/includes/game.h:83: }
   5655                    4504 00105$:
   5655 DD F9         [10] 4505 	ld	sp, ix
   5657 DD E1         [14] 4506 	pop	ix
   5659 C9            [10] 4507 	ret
   565A                    4508 ___str_21:
   565A 53 6D 61 6C 6C     4509 	.ascii "Small"
   565F 00                 4510 	.db 0x00
   5660                    4511 ___str_22:
   5660 4D 65 64 69 75 6D  4512 	.ascii "Medium"
   5666 00                 4513 	.db 0x00
   5667                    4514 ___str_23:
   5667 4C 61 72 67 65     4515 	.ascii "Large"
   566C 00                 4516 	.db 0x00
                           4517 ;src/includes/game.h:87: void menuTile(u8 x, u8 y)
                           4518 ;	---------------------------------
                           4519 ; Function menuTile
                           4520 ; ---------------------------------
   566D                    4521 _menuTile::
   566D DD E5         [15] 4522 	push	ix
   566F DD 21 00 00   [14] 4523 	ld	ix,#0
   5673 DD 39         [15] 4524 	add	ix,sp
   5675 21 E8 FF      [10] 4525 	ld	hl,#-24
   5678 39            [11] 4526 	add	hl,sp
   5679 F9            [ 6] 4527 	ld	sp,hl
                           4528 ;src/includes/game.h:91: const char *txtMenuTile[] = { 
   567A 21 06 00      [10] 4529 	ld	hl,#0x0006
   567D 39            [11] 4530 	add	hl,sp
   567E 5D            [ 4] 4531 	ld	e,l
   567F 54            [ 4] 4532 	ld	d,h
   5680 36 86         [10] 4533 	ld	(hl),#<(___str_24)
   5682 23            [ 6] 4534 	inc	hl
   5683 36 57         [10] 4535 	ld	(hl),#>(___str_24)
   5685 6B            [ 4] 4536 	ld	l, e
   5686 62            [ 4] 4537 	ld	h, d
   5687 23            [ 6] 4538 	inc	hl
   5688 23            [ 6] 4539 	inc	hl
   5689 01 96 57      [10] 4540 	ld	bc,#___str_25+0
   568C 71            [ 7] 4541 	ld	(hl),c
   568D 23            [ 6] 4542 	inc	hl
   568E 70            [ 7] 4543 	ld	(hl),b
   568F 21 04 00      [10] 4544 	ld	hl,#0x0004
   5692 19            [11] 4545 	add	hl,de
   5693 01 A6 57      [10] 4546 	ld	bc,#___str_26+0
   5696 71            [ 7] 4547 	ld	(hl),c
   5697 23            [ 6] 4548 	inc	hl
   5698 70            [ 7] 4549 	ld	(hl),b
   5699 21 06 00      [10] 4550 	ld	hl,#0x0006
   569C 19            [11] 4551 	add	hl,de
   569D 01 B6 57      [10] 4552 	ld	bc,#___str_27+0
   56A0 71            [ 7] 4553 	ld	(hl),c
   56A1 23            [ 6] 4554 	inc	hl
   56A2 70            [ 7] 4555 	ld	(hl),b
   56A3 21 08 00      [10] 4556 	ld	hl,#0x0008
   56A6 19            [11] 4557 	add	hl,de
   56A7 01 BE 57      [10] 4558 	ld	bc,#___str_28+0
   56AA 71            [ 7] 4559 	ld	(hl),c
   56AB 23            [ 6] 4560 	inc	hl
   56AC 70            [ 7] 4561 	ld	(hl),b
   56AD 21 0A 00      [10] 4562 	ld	hl,#0x000A
   56B0 19            [11] 4563 	add	hl,de
   56B1 01 CD 57      [10] 4564 	ld	bc,#___str_29+0
   56B4 71            [ 7] 4565 	ld	(hl),c
   56B5 23            [ 6] 4566 	inc	hl
   56B6 70            [ 7] 4567 	ld	(hl),b
   56B7 21 0C 00      [10] 4568 	ld	hl,#0x000C
   56BA 19            [11] 4569 	add	hl,de
   56BB 01 D8 57      [10] 4570 	ld	bc,#___str_30+0
   56BE 71            [ 7] 4571 	ld	(hl),c
   56BF 23            [ 6] 4572 	inc	hl
   56C0 70            [ 7] 4573 	ld	(hl),b
                           4574 ;src/includes/game.h:101: const char *txtWindowDestroy[] = { 
   56C1 21 00 00      [10] 4575 	ld	hl,#0x0000
   56C4 39            [11] 4576 	add	hl,sp
   56C5 4D            [ 4] 4577 	ld	c,l
   56C6 44            [ 4] 4578 	ld	b,h
   56C7 36 DF         [10] 4579 	ld	(hl),#<(___str_31)
   56C9 23            [ 6] 4580 	inc	hl
   56CA 36 57         [10] 4581 	ld	(hl),#>(___str_31)
   56CC 21 02 00      [10] 4582 	ld	hl,#0x0002
   56CF 09            [11] 4583 	add	hl,bc
   56D0 DD 75 FE      [19] 4584 	ld	-2 (ix),l
   56D3 DD 74 FF      [19] 4585 	ld	-1 (ix),h
   56D6 DD 6E FE      [19] 4586 	ld	l,-2 (ix)
   56D9 DD 66 FF      [19] 4587 	ld	h,-1 (ix)
   56DC 36 02         [10] 4588 	ld	(hl),#<(___str_32)
   56DE 23            [ 6] 4589 	inc	hl
   56DF 36 58         [10] 4590 	ld	(hl),#>(___str_32)
   56E1 21 04 00      [10] 4591 	ld	hl,#0x0004
   56E4 09            [11] 4592 	add	hl,bc
   56E5 DD 75 FE      [19] 4593 	ld	-2 (ix),l
   56E8 DD 74 FF      [19] 4594 	ld	-1 (ix),h
   56EB DD 6E FE      [19] 4595 	ld	l,-2 (ix)
   56EE DD 66 FF      [19] 4596 	ld	h,-1 (ix)
   56F1 36 03         [10] 4597 	ld	(hl),#<(___str_33)
   56F3 23            [ 6] 4598 	inc	hl
   56F4 36 58         [10] 4599 	ld	(hl),#>(___str_33)
                           4600 ;src/includes/game.h:108: putM2();
   56F6 C5            [11] 4601 	push	bc
   56F7 D5            [11] 4602 	push	de
   56F8 CD BD 46      [17] 4603 	call	_putM2
   56FB D1            [10] 4604 	pop	de
   56FC C1            [10] 4605 	pop	bc
                           4606 ;src/includes/game.h:110: do{
   56FD D5            [11] 4607 	push	de
   56FE DD 5E 05      [19] 4608 	ld	e,5 (ix)
   5701 16 00         [ 7] 4609 	ld	d,#0x00
   5703 6B            [ 4] 4610 	ld	l, e
   5704 62            [ 4] 4611 	ld	h, d
   5705 29            [11] 4612 	add	hl, hl
   5706 29            [11] 4613 	add	hl, hl
   5707 19            [11] 4614 	add	hl, de
   5708 29            [11] 4615 	add	hl, hl
   5709 29            [11] 4616 	add	hl, hl
   570A 29            [11] 4617 	add	hl, hl
   570B 29            [11] 4618 	add	hl, hl
   570C D1            [10] 4619 	pop	de
   570D DD 75 FE      [19] 4620 	ld	-2 (ix),l
   5710 DD 74 FF      [19] 4621 	ld	-1 (ix),h
   5713 DD 71 FC      [19] 4622 	ld	-4 (ix),c
   5716 DD 70 FD      [19] 4623 	ld	-3 (ix),b
   5719                    4624 00111$:
                           4625 ;src/includes/game.h:111: menuChoice = drawMenu(txtMenuTile,7);
   5719 4B            [ 4] 4626 	ld	c, e
   571A 42            [ 4] 4627 	ld	b, d
   571B D5            [11] 4628 	push	de
   571C 3E 07         [ 7] 4629 	ld	a,#0x07
   571E F5            [11] 4630 	push	af
   571F 33            [ 6] 4631 	inc	sp
   5720 C5            [11] 4632 	push	bc
   5721 CD C3 4A      [17] 4633 	call	_drawMenu
   5724 F1            [10] 4634 	pop	af
   5725 33            [ 6] 4635 	inc	sp
   5726 D1            [10] 4636 	pop	de
   5727 45            [ 4] 4637 	ld	b,l
                           4638 ;src/includes/game.h:113: if(menuChoice==0)
   5728 78            [ 4] 4639 	ld	a,b
   5729 B7            [ 4] 4640 	or	a, a
   572A 20 11         [12] 4641 	jr	NZ,00109$
                           4642 ;src/includes/game.h:114: windowInfoTile(x, y);
   572C C5            [11] 4643 	push	bc
   572D D5            [11] 4644 	push	de
   572E DD 66 05      [19] 4645 	ld	h,5 (ix)
   5731 DD 6E 04      [19] 4646 	ld	l,4 (ix)
   5734 E5            [11] 4647 	push	hl
   5735 CD 3B 53      [17] 4648 	call	_windowInfoTile
   5738 F1            [10] 4649 	pop	af
   5739 D1            [10] 4650 	pop	de
   573A C1            [10] 4651 	pop	bc
   573B 18 3C         [12] 4652 	jr	00112$
   573D                    4653 00109$:
                           4654 ;src/includes/game.h:115: else if(menuChoice==2)
   573D 78            [ 4] 4655 	ld	a,b
   573E D6 02         [ 7] 4656 	sub	a, #0x02
   5740 20 09         [12] 4657 	jr	NZ,00106$
                           4658 ;src/includes/game.h:117: menuStations();
   5742 D5            [11] 4659 	push	de
   5743 CD F8 55      [17] 4660 	call	_menuStations
   5746 D1            [10] 4661 	pop	de
                           4662 ;src/includes/game.h:118: menuChoice=6;
   5747 06 06         [ 7] 4663 	ld	b,#0x06
   5749 18 2E         [12] 4664 	jr	00112$
   574B                    4665 00106$:
                           4666 ;src/includes/game.h:120: else if(menuChoice==3)
   574B 78            [ 4] 4667 	ld	a,b
   574C D6 03         [ 7] 4668 	sub	a, #0x03
   574E 20 29         [12] 4669 	jr	NZ,00112$
                           4670 ;src/includes/game.h:122: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5750 DD 4E FC      [19] 4671 	ld	c,-4 (ix)
   5753 DD 46 FD      [19] 4672 	ld	b,-3 (ix)
   5756 D5            [11] 4673 	push	de
   5757 21 03 01      [10] 4674 	ld	hl,#0x0103
   575A E5            [11] 4675 	push	hl
   575B C5            [11] 4676 	push	bc
   575C CD C1 4B      [17] 4677 	call	_drawWindow
   575F F1            [10] 4678 	pop	af
   5760 F1            [10] 4679 	pop	af
   5761 D1            [10] 4680 	pop	de
   5762 2D            [ 4] 4681 	dec	l
   5763 20 12         [12] 4682 	jr	NZ,00102$
                           4683 ;src/includes/game.h:123: p_world[x+y*WIDTH] = GRASS1;
   5765 DD 6E 04      [19] 4684 	ld	l,4 (ix)
   5768 26 00         [ 7] 4685 	ld	h,#0x00
   576A DD 4E FE      [19] 4686 	ld	c,-2 (ix)
   576D DD 46 FF      [19] 4687 	ld	b,-1 (ix)
   5770 09            [11] 4688 	add	hl,bc
   5771 01 DF 60      [10] 4689 	ld	bc,#_p_world
   5774 09            [11] 4690 	add	hl,bc
   5775 36 00         [10] 4691 	ld	(hl),#0x00
   5777                    4692 00102$:
                           4693 ;src/includes/game.h:125: menuChoice=6;
   5777 06 06         [ 7] 4694 	ld	b,#0x06
   5779                    4695 00112$:
                           4696 ;src/includes/game.h:129: while(menuChoice!=6);
   5779 78            [ 4] 4697 	ld	a,b
   577A D6 06         [ 7] 4698 	sub	a, #0x06
   577C 20 9B         [12] 4699 	jr	NZ,00111$
                           4700 ;src/includes/game.h:131: putM1();
   577E CD A9 46      [17] 4701 	call	_putM1
   5781 DD F9         [10] 4702 	ld	sp, ix
   5783 DD E1         [14] 4703 	pop	ix
   5785 C9            [10] 4704 	ret
   5786                    4705 ___str_24:
   5786 41 62 6F 75 74 20  4706 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5795 00                 4707 	.db 0x00
   5796                    4708 ___str_25:
   5796 42 75 69 6C 64 20  4709 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   57A5 00                 4710 	.db 0x00
   57A6                    4711 ___str_26:
   57A6 42 75 69 6C 64 20  4712 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   57B5 00                 4713 	.db 0x00
   57B6                    4714 ___str_27:
   57B6 44 65 73 74 72 6F  4715 	.ascii "Destroy"
        79
   57BD 00                 4716 	.db 0x00
   57BE                    4717 ___str_28:
   57BE 52 61 69 6C 72 6F  4718 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   57CC 00                 4719 	.db 0x00
   57CD                    4720 ___str_29:
   57CD 41 63 63 6F 75 6E  4721 	.ascii "Accounting"
        74 69 6E 67
   57D7 00                 4722 	.db 0x00
   57D8                    4723 ___str_30:
   57D8 52 65 73 75 6D 65  4724 	.ascii "Resume"
   57DE 00                 4725 	.db 0x00
   57DF                    4726 ___str_31:
   57DF 44 65 73 74 72 6F  4727 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   5801 00                 4728 	.db 0x00
   5802                    4729 ___str_32:
   5802 00                 4730 	.db 0x00
   5803                    4731 ___str_33:
   5803 43 6F 6E 74 69 6E  4732 	.ascii "Continue ?"
        75 65 20 3F
   580D 00                 4733 	.db 0x00
                           4734 ;src/includes/game.h:135: void game()
                           4735 ;	---------------------------------
                           4736 ; Function game
                           4737 ; ---------------------------------
   580E                    4738 _game::
   580E DD E5         [15] 4739 	push	ix
   5810 DD 21 00 00   [14] 4740 	ld	ix,#0
   5814 DD 39         [15] 4741 	add	ix,sp
   5816 21 F1 FF      [10] 4742 	ld	hl,#-15
   5819 39            [11] 4743 	add	hl,sp
   581A F9            [ 6] 4744 	ld	sp,hl
                           4745 ;src/includes/game.h:138: int ulx = 0;
   581B DD 36 F5 00   [19] 4746 	ld	-11 (ix),#0x00
   581F DD 36 F6 00   [19] 4747 	ld	-10 (ix),#0x00
                           4748 ;src/includes/game.h:139: int uly = 0;
   5823 DD 36 F7 00   [19] 4749 	ld	-9 (ix),#0x00
   5827 DD 36 F8 00   [19] 4750 	ld	-8 (ix),#0x00
                           4751 ;src/includes/game.h:140: int xCursor = 10;
   582B DD 36 F9 0A   [19] 4752 	ld	-7 (ix),#0x0A
   582F DD 36 FA 00   [19] 4753 	ld	-6 (ix),#0x00
                           4754 ;src/includes/game.h:141: int yCursor = 6;
   5833 DD 36 F3 06   [19] 4755 	ld	-13 (ix),#0x06
   5837 DD 36 F4 00   [19] 4756 	ld	-12 (ix),#0x00
                           4757 ;src/includes/game.h:143: u8 exit=0;
   583B DD 36 FB 00   [19] 4758 	ld	-5 (ix),#0x00
                           4759 ;src/includes/game.h:145: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   583F 21 00 00      [10] 4760 	ld	hl,#0x0000
   5842 E5            [11] 4761 	push	hl
   5843 2E 00         [ 7] 4762 	ld	l, #0x00
   5845 E5            [11] 4763 	push	hl
   5846 CD 41 5F      [17] 4764 	call	_cpct_px2byteM1
   5849 F1            [10] 4765 	pop	af
   584A F1            [10] 4766 	pop	af
   584B 65            [ 4] 4767 	ld	h,l
   584C 01 00 40      [10] 4768 	ld	bc,#0x4000
   584F C5            [11] 4769 	push	bc
   5850 E5            [11] 4770 	push	hl
   5851 33            [ 6] 4771 	inc	sp
   5852 21 00 C0      [10] 4772 	ld	hl,#0xC000
   5855 E5            [11] 4773 	push	hl
   5856 CD 33 5F      [17] 4774 	call	_cpct_memset
                           4775 ;src/includes/game.h:147: generateWorld();
   5859 CD D9 4E      [17] 4776 	call	_generateWorld
                           4777 ;src/includes/game.h:149: drawWorld(ulx, uly);
   585C 21 00 00      [10] 4778 	ld	hl,#0x0000
   585F E5            [11] 4779 	push	hl
   5860 CD 83 52      [17] 4780 	call	_drawWorld
   5863 F1            [10] 4781 	pop	af
                           4782 ;src/includes/game.h:151: do{
   5864                    4783 00157$:
                           4784 ;src/includes/game.h:152: cpct_scanKeyboard(); 
   5864 CD 52 60      [17] 4785 	call	_cpct_scanKeyboard
                           4786 ;src/includes/game.h:154: if ( cpct_isKeyPressed(Key_CursorUp) )
   5867 21 00 01      [10] 4787 	ld	hl,#0x0100
   586A CD 34 5D      [17] 4788 	call	_cpct_isKeyPressed
                           4789 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   586D DD 7E F9      [19] 4790 	ld	a,-7 (ix)
   5870 DD 77 FF      [19] 4791 	ld	-1 (ix),a
   5873 DD 7E F7      [19] 4792 	ld	a,-9 (ix)
   5876 DD 77 FE      [19] 4793 	ld	-2 (ix),a
   5879 DD 7E F5      [19] 4794 	ld	a,-11 (ix)
   587C DD 77 FD      [19] 4795 	ld	-3 (ix),a
                           4796 ;src/includes/game.h:154: if ( cpct_isKeyPressed(Key_CursorUp) )
   587F 7D            [ 4] 4797 	ld	a,l
   5880 B7            [ 4] 4798 	or	a, a
   5881 28 6C         [12] 4799 	jr	Z,00107$
                           4800 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   5883 DD 7E F3      [19] 4801 	ld	a,-13 (ix)
   5886 DD 77 FC      [19] 4802 	ld	-4 (ix), a
   5889 F5            [11] 4803 	push	af
   588A 33            [ 6] 4804 	inc	sp
   588B DD 7E FF      [19] 4805 	ld	a,-1 (ix)
   588E F5            [11] 4806 	push	af
   588F 33            [ 6] 4807 	inc	sp
   5890 DD 7E FE      [19] 4808 	ld	a,-2 (ix)
   5893 F5            [11] 4809 	push	af
   5894 33            [ 6] 4810 	inc	sp
   5895 DD 7E FD      [19] 4811 	ld	a,-3 (ix)
   5898 F5            [11] 4812 	push	af
   5899 33            [ 6] 4813 	inc	sp
   589A CD 5B 50      [17] 4814 	call	_drawTile
   589D F1            [10] 4815 	pop	af
   589E F1            [10] 4816 	pop	af
                           4817 ;src/includes/game.h:158: yCursor-=1;
   589F DD 6E F3      [19] 4818 	ld	l,-13 (ix)
   58A2 DD 66 F4      [19] 4819 	ld	h,-12 (ix)
   58A5 2B            [ 6] 4820 	dec	hl
   58A6 DD 75 F3      [19] 4821 	ld	-13 (ix),l
   58A9 DD 74 F4      [19] 4822 	ld	-12 (ix),h
                           4823 ;src/includes/game.h:161: if(yCursor<0)
   58AC DD CB F4 7E   [20] 4824 	bit	7, -12 (ix)
   58B0 28 35         [12] 4825 	jr	Z,00186$
                           4826 ;src/includes/game.h:163: yCursor=0;
   58B2 DD 36 F3 00   [19] 4827 	ld	-13 (ix),#0x00
   58B6 DD 36 F4 00   [19] 4828 	ld	-12 (ix),#0x00
                           4829 ;src/includes/game.h:166: if(uly>0)
   58BA AF            [ 4] 4830 	xor	a, a
   58BB DD BE F7      [19] 4831 	cp	a, -9 (ix)
   58BE DD 9E F8      [19] 4832 	sbc	a, -8 (ix)
   58C1 E2 C6 58      [10] 4833 	jp	PO, 00321$
   58C4 EE 80         [ 7] 4834 	xor	a, #0x80
   58C6                    4835 00321$:
   58C6 F2 E7 58      [10] 4836 	jp	P,00186$
                           4837 ;src/includes/game.h:168: uly-=1;
   58C9 DD 6E F7      [19] 4838 	ld	l,-9 (ix)
   58CC DD 66 F8      [19] 4839 	ld	h,-8 (ix)
   58CF 2B            [ 6] 4840 	dec	hl
   58D0 DD 75 F7      [19] 4841 	ld	-9 (ix),l
   58D3 DD 74 F8      [19] 4842 	ld	-8 (ix),h
                           4843 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   58D6 DD 7E F7      [19] 4844 	ld	a,-9 (ix)
                           4845 ;src/includes/game.h:169: drawWorld(ulx, uly);
   58D9 DD 77 FE      [19] 4846 	ld	-2 (ix), a
   58DC F5            [11] 4847 	push	af
   58DD 33            [ 6] 4848 	inc	sp
   58DE DD 7E FD      [19] 4849 	ld	a,-3 (ix)
   58E1 F5            [11] 4850 	push	af
   58E2 33            [ 6] 4851 	inc	sp
   58E3 CD 83 52      [17] 4852 	call	_drawWorld
   58E6 F1            [10] 4853 	pop	af
                           4854 ;src/includes/game.h:174: for(i=0; i<14000; i++) {}
   58E7                    4855 00186$:
   58E7 11 B0 36      [10] 4856 	ld	de,#0x36B0
   58EA                    4857 00162$:
   58EA 1B            [ 6] 4858 	dec	de
   58EB 7A            [ 4] 4859 	ld	a,d
   58EC B3            [ 4] 4860 	or	a,e
   58ED 20 FB         [12] 4861 	jr	NZ,00162$
   58EF                    4862 00107$:
                           4863 ;src/includes/game.h:177: if ( cpct_isKeyPressed(Key_CursorDown) )
   58EF 21 00 04      [10] 4864 	ld	hl,#0x0400
   58F2 CD 34 5D      [17] 4865 	call	_cpct_isKeyPressed
   58F5 7D            [ 4] 4866 	ld	a,l
   58F6 B7            [ 4] 4867 	or	a, a
   58F7 28 73         [12] 4868 	jr	Z,00114$
                           4869 ;src/includes/game.h:179: drawTile(ulx, uly, xCursor, yCursor);
   58F9 DD 66 F3      [19] 4870 	ld	h,-13 (ix)
   58FC E5            [11] 4871 	push	hl
   58FD 33            [ 6] 4872 	inc	sp
   58FE DD 7E FF      [19] 4873 	ld	a,-1 (ix)
   5901 F5            [11] 4874 	push	af
   5902 33            [ 6] 4875 	inc	sp
   5903 DD 7E FE      [19] 4876 	ld	a,-2 (ix)
   5906 F5            [11] 4877 	push	af
   5907 33            [ 6] 4878 	inc	sp
   5908 DD 7E FD      [19] 4879 	ld	a,-3 (ix)
   590B F5            [11] 4880 	push	af
   590C 33            [ 6] 4881 	inc	sp
   590D CD 5B 50      [17] 4882 	call	_drawTile
   5910 F1            [10] 4883 	pop	af
   5911 F1            [10] 4884 	pop	af
                           4885 ;src/includes/game.h:180: yCursor+=1;
   5912 DD 34 F3      [23] 4886 	inc	-13 (ix)
   5915 20 03         [12] 4887 	jr	NZ,00322$
   5917 DD 34 F4      [23] 4888 	inc	-12 (ix)
   591A                    4889 00322$:
                           4890 ;src/includes/game.h:181: if(yCursor>NBTILE_H-1)
   591A 3E 0B         [ 7] 4891 	ld	a,#0x0B
   591C DD BE F3      [19] 4892 	cp	a, -13 (ix)
   591F 3E 00         [ 7] 4893 	ld	a,#0x00
   5921 DD 9E F4      [19] 4894 	sbc	a, -12 (ix)
   5924 E2 29 59      [10] 4895 	jp	PO, 00323$
   5927 EE 80         [ 7] 4896 	xor	a, #0x80
   5929                    4897 00323$:
   5929 F2 5C 59      [10] 4898 	jp	P,00191$
                           4899 ;src/includes/game.h:183: yCursor=NBTILE_H-1;
   592C DD 36 F3 0B   [19] 4900 	ld	-13 (ix),#0x0B
   5930 DD 36 F4 00   [19] 4901 	ld	-12 (ix),#0x00
                           4902 ;src/includes/game.h:184: if(uly<HEIGHT-NBTILE_H)
   5934 DD 7E F7      [19] 4903 	ld	a,-9 (ix)
   5937 D6 24         [ 7] 4904 	sub	a, #0x24
   5939 DD 7E F8      [19] 4905 	ld	a,-8 (ix)
   593C 17            [ 4] 4906 	rla
   593D 3F            [ 4] 4907 	ccf
   593E 1F            [ 4] 4908 	rra
   593F DE 80         [ 7] 4909 	sbc	a, #0x80
   5941 30 19         [12] 4910 	jr	NC,00191$
                           4911 ;src/includes/game.h:186: uly+=1;
   5943 DD 34 F7      [23] 4912 	inc	-9 (ix)
   5946 20 03         [12] 4913 	jr	NZ,00324$
   5948 DD 34 F8      [23] 4914 	inc	-8 (ix)
   594B                    4915 00324$:
                           4916 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   594B DD 7E F7      [19] 4917 	ld	a,-9 (ix)
                           4918 ;src/includes/game.h:187: drawWorld(ulx, uly);
   594E DD 77 FE      [19] 4919 	ld	-2 (ix), a
   5951 F5            [11] 4920 	push	af
   5952 33            [ 6] 4921 	inc	sp
   5953 DD 7E FD      [19] 4922 	ld	a,-3 (ix)
   5956 F5            [11] 4923 	push	af
   5957 33            [ 6] 4924 	inc	sp
   5958 CD 83 52      [17] 4925 	call	_drawWorld
   595B F1            [10] 4926 	pop	af
                           4927 ;src/includes/game.h:192: for(i=0; i<14000; i++) {}
   595C                    4928 00191$:
   595C 21 B0 36      [10] 4929 	ld	hl,#0x36B0
   595F E3            [19] 4930 	ex	(sp), hl
   5960                    4931 00165$:
   5960 E1            [10] 4932 	pop	hl
   5961 E5            [11] 4933 	push	hl
   5962 2B            [ 6] 4934 	dec	hl
   5963 E3            [19] 4935 	ex	(sp), hl
   5964 DD 7E F2      [19] 4936 	ld	a,-14 (ix)
   5967 DD B6 F1      [19] 4937 	or	a,-15 (ix)
   596A 20 F4         [12] 4938 	jr	NZ,00165$
   596C                    4939 00114$:
                           4940 ;src/includes/game.h:195: if ( cpct_isKeyPressed(Key_CursorLeft) )
   596C 21 01 01      [10] 4941 	ld	hl,#0x0101
   596F CD 34 5D      [17] 4942 	call	_cpct_isKeyPressed
                           4943 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   5972 DD 7E F3      [19] 4944 	ld	a,-13 (ix)
   5975 DD 77 FC      [19] 4945 	ld	-4 (ix),a
                           4946 ;src/includes/game.h:195: if ( cpct_isKeyPressed(Key_CursorLeft) )
   5978 7D            [ 4] 4947 	ld	a,l
   5979 B7            [ 4] 4948 	or	a, a
   597A 28 6C         [12] 4949 	jr	Z,00121$
                           4950 ;src/includes/game.h:197: drawTile(ulx, uly, xCursor, yCursor);
   597C DD 7E FC      [19] 4951 	ld	a,-4 (ix)
   597F F5            [11] 4952 	push	af
   5980 33            [ 6] 4953 	inc	sp
   5981 DD 7E FF      [19] 4954 	ld	a,-1 (ix)
   5984 F5            [11] 4955 	push	af
   5985 33            [ 6] 4956 	inc	sp
   5986 DD 7E FE      [19] 4957 	ld	a,-2 (ix)
   5989 F5            [11] 4958 	push	af
   598A 33            [ 6] 4959 	inc	sp
   598B DD 7E FD      [19] 4960 	ld	a,-3 (ix)
   598E F5            [11] 4961 	push	af
   598F 33            [ 6] 4962 	inc	sp
   5990 CD 5B 50      [17] 4963 	call	_drawTile
   5993 F1            [10] 4964 	pop	af
   5994 F1            [10] 4965 	pop	af
                           4966 ;src/includes/game.h:198: xCursor-=1;
   5995 DD 6E F9      [19] 4967 	ld	l,-7 (ix)
   5998 DD 66 FA      [19] 4968 	ld	h,-6 (ix)
   599B 2B            [ 6] 4969 	dec	hl
   599C DD 75 F9      [19] 4970 	ld	-7 (ix),l
   599F DD 74 FA      [19] 4971 	ld	-6 (ix),h
                           4972 ;src/includes/game.h:199: if(xCursor<0)
   59A2 DD CB FA 7E   [20] 4973 	bit	7, -6 (ix)
   59A6 28 38         [12] 4974 	jr	Z,00196$
                           4975 ;src/includes/game.h:201: xCursor=0;
   59A8 DD 36 F9 00   [19] 4976 	ld	-7 (ix),#0x00
   59AC DD 36 FA 00   [19] 4977 	ld	-6 (ix),#0x00
                           4978 ;src/includes/game.h:202: if(ulx>0)
   59B0 AF            [ 4] 4979 	xor	a, a
   59B1 DD BE F5      [19] 4980 	cp	a, -11 (ix)
   59B4 DD 9E F6      [19] 4981 	sbc	a, -10 (ix)
   59B7 E2 BC 59      [10] 4982 	jp	PO, 00325$
   59BA EE 80         [ 7] 4983 	xor	a, #0x80
   59BC                    4984 00325$:
   59BC F2 E0 59      [10] 4985 	jp	P,00196$
                           4986 ;src/includes/game.h:204: ulx-=1;
   59BF DD 6E F5      [19] 4987 	ld	l,-11 (ix)
   59C2 DD 66 F6      [19] 4988 	ld	h,-10 (ix)
   59C5 2B            [ 6] 4989 	dec	hl
   59C6 DD 75 F5      [19] 4990 	ld	-11 (ix),l
   59C9 DD 74 F6      [19] 4991 	ld	-10 (ix),h
                           4992 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   59CC DD 7E F5      [19] 4993 	ld	a,-11 (ix)
   59CF DD 77 FD      [19] 4994 	ld	-3 (ix),a
                           4995 ;src/includes/game.h:205: drawWorld(ulx, uly);
   59D2 DD 7E FE      [19] 4996 	ld	a,-2 (ix)
   59D5 F5            [11] 4997 	push	af
   59D6 33            [ 6] 4998 	inc	sp
   59D7 DD 7E FD      [19] 4999 	ld	a,-3 (ix)
   59DA F5            [11] 5000 	push	af
   59DB 33            [ 6] 5001 	inc	sp
   59DC CD 83 52      [17] 5002 	call	_drawWorld
   59DF F1            [10] 5003 	pop	af
                           5004 ;src/includes/game.h:210: for(i=0; i<14000; i++) {}
   59E0                    5005 00196$:
   59E0 11 B0 36      [10] 5006 	ld	de,#0x36B0
   59E3                    5007 00168$:
   59E3 1B            [ 6] 5008 	dec	de
   59E4 7A            [ 4] 5009 	ld	a,d
   59E5 B3            [ 4] 5010 	or	a,e
   59E6 20 FB         [12] 5011 	jr	NZ,00168$
   59E8                    5012 00121$:
                           5013 ;src/includes/game.h:213: if ( cpct_isKeyPressed(Key_CursorRight) )
   59E8 21 00 02      [10] 5014 	ld	hl,#0x0200
   59EB CD 34 5D      [17] 5015 	call	_cpct_isKeyPressed
   59EE 7D            [ 4] 5016 	ld	a,l
   59EF B7            [ 4] 5017 	or	a, a
   59F0 28 6E         [12] 5018 	jr	Z,00128$
                           5019 ;src/includes/game.h:215: drawTile(ulx, uly, xCursor, yCursor);
   59F2 DD 56 F9      [19] 5020 	ld	d,-7 (ix)
   59F5 DD 7E FC      [19] 5021 	ld	a,-4 (ix)
   59F8 F5            [11] 5022 	push	af
   59F9 33            [ 6] 5023 	inc	sp
   59FA D5            [11] 5024 	push	de
   59FB 33            [ 6] 5025 	inc	sp
   59FC DD 7E FE      [19] 5026 	ld	a,-2 (ix)
   59FF F5            [11] 5027 	push	af
   5A00 33            [ 6] 5028 	inc	sp
   5A01 DD 7E FD      [19] 5029 	ld	a,-3 (ix)
   5A04 F5            [11] 5030 	push	af
   5A05 33            [ 6] 5031 	inc	sp
   5A06 CD 5B 50      [17] 5032 	call	_drawTile
   5A09 F1            [10] 5033 	pop	af
   5A0A F1            [10] 5034 	pop	af
                           5035 ;src/includes/game.h:216: xCursor+=1;
   5A0B DD 34 F9      [23] 5036 	inc	-7 (ix)
   5A0E 20 03         [12] 5037 	jr	NZ,00326$
   5A10 DD 34 FA      [23] 5038 	inc	-6 (ix)
   5A13                    5039 00326$:
                           5040 ;src/includes/game.h:217: if(xCursor>NBTILE_W-1)
   5A13 3E 13         [ 7] 5041 	ld	a,#0x13
   5A15 DD BE F9      [19] 5042 	cp	a, -7 (ix)
   5A18 3E 00         [ 7] 5043 	ld	a,#0x00
   5A1A DD 9E FA      [19] 5044 	sbc	a, -6 (ix)
   5A1D E2 22 5A      [10] 5045 	jp	PO, 00327$
   5A20 EE 80         [ 7] 5046 	xor	a, #0x80
   5A22                    5047 00327$:
   5A22 F2 58 5A      [10] 5048 	jp	P,00201$
                           5049 ;src/includes/game.h:219: xCursor=NBTILE_W-1;
   5A25 DD 36 F9 13   [19] 5050 	ld	-7 (ix),#0x13
   5A29 DD 36 FA 00   [19] 5051 	ld	-6 (ix),#0x00
                           5052 ;src/includes/game.h:220: if(ulx<WIDTH-NBTILE_W)
   5A2D DD 7E F5      [19] 5053 	ld	a,-11 (ix)
   5A30 D6 3C         [ 7] 5054 	sub	a, #0x3C
   5A32 DD 7E F6      [19] 5055 	ld	a,-10 (ix)
   5A35 17            [ 4] 5056 	rla
   5A36 3F            [ 4] 5057 	ccf
   5A37 1F            [ 4] 5058 	rra
   5A38 DE 80         [ 7] 5059 	sbc	a, #0x80
   5A3A 30 1C         [12] 5060 	jr	NC,00201$
                           5061 ;src/includes/game.h:222: ulx+=1;
   5A3C DD 34 F5      [23] 5062 	inc	-11 (ix)
   5A3F 20 03         [12] 5063 	jr	NZ,00328$
   5A41 DD 34 F6      [23] 5064 	inc	-10 (ix)
   5A44                    5065 00328$:
                           5066 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   5A44 DD 7E F5      [19] 5067 	ld	a,-11 (ix)
   5A47 DD 77 FD      [19] 5068 	ld	-3 (ix),a
                           5069 ;src/includes/game.h:223: drawWorld(ulx, uly);
   5A4A DD 7E FE      [19] 5070 	ld	a,-2 (ix)
   5A4D F5            [11] 5071 	push	af
   5A4E 33            [ 6] 5072 	inc	sp
   5A4F DD 7E FD      [19] 5073 	ld	a,-3 (ix)
   5A52 F5            [11] 5074 	push	af
   5A53 33            [ 6] 5075 	inc	sp
   5A54 CD 83 52      [17] 5076 	call	_drawWorld
   5A57 F1            [10] 5077 	pop	af
                           5078 ;src/includes/game.h:228: for(i=0; i<14000; i++) {}
   5A58                    5079 00201$:
   5A58 11 B0 36      [10] 5080 	ld	de,#0x36B0
   5A5B                    5081 00171$:
   5A5B 1B            [ 6] 5082 	dec	de
   5A5C 7A            [ 4] 5083 	ld	a,d
   5A5D B3            [ 4] 5084 	or	a,e
   5A5E 20 FB         [12] 5085 	jr	NZ,00171$
   5A60                    5086 00128$:
                           5087 ;src/includes/game.h:232: if ( cpct_isKeyPressed(Key_Space) )
   5A60 21 05 80      [10] 5088 	ld	hl,#0x8005
   5A63 CD 34 5D      [17] 5089 	call	_cpct_isKeyPressed
   5A66 7D            [ 4] 5090 	ld	a,l
   5A67 B7            [ 4] 5091 	or	a, a
   5A68 28 5E         [12] 5092 	jr	Z,00138$
                           5093 ;src/includes/game.h:234: switch(CURSOR_MODE)
   5A6A 3A DF 6F      [13] 5094 	ld	a,(#_CURSOR_MODE + 0)
   5A6D D6 01         [ 7] 5095 	sub	a, #0x01
   5A6F 38 4F         [12] 5096 	jr	C,00206$
   5A71 3E 06         [ 7] 5097 	ld	a,#0x06
   5A73 FD 21 DF 6F   [14] 5098 	ld	iy,#_CURSOR_MODE
   5A77 FD 96 00      [19] 5099 	sub	a, 0 (iy)
   5A7A 38 44         [12] 5100 	jr	C,00206$
   5A7C FD 21 DF 6F   [14] 5101 	ld	iy,#_CURSOR_MODE
   5A80 FD 5E 00      [19] 5102 	ld	e,0 (iy)
   5A83 1D            [ 4] 5103 	dec	e
   5A84 16 00         [ 7] 5104 	ld	d,#0x00
   5A86 21 8C 5A      [10] 5105 	ld	hl,#00329$
   5A89 19            [11] 5106 	add	hl,de
   5A8A 19            [11] 5107 	add	hl,de
                           5108 ;src/includes/game.h:236: case T_SSNS:
   5A8B E9            [ 4] 5109 	jp	(hl)
   5A8C                    5110 00329$:
   5A8C 18 0A         [12] 5111 	jr	00129$
   5A8E 18 0F         [12] 5112 	jr	00130$
   5A90 18 14         [12] 5113 	jr	00131$
   5A92 18 19         [12] 5114 	jr	00132$
   5A94 18 1E         [12] 5115 	jr	00133$
   5A96 18 23         [12] 5116 	jr	00134$
   5A98                    5117 00129$:
                           5118 ;src/includes/game.h:237: CURSOR_MODE=T_SSEW;
   5A98 21 DF 6F      [10] 5119 	ld	hl,#_CURSOR_MODE + 0
   5A9B 36 02         [10] 5120 	ld	(hl), #0x02
                           5121 ;src/includes/game.h:238: break;
   5A9D 18 21         [12] 5122 	jr	00206$
                           5123 ;src/includes/game.h:239: case T_SSEW:
   5A9F                    5124 00130$:
                           5125 ;src/includes/game.h:240: CURSOR_MODE=T_SSNS;
   5A9F 21 DF 6F      [10] 5126 	ld	hl,#_CURSOR_MODE + 0
   5AA2 36 01         [10] 5127 	ld	(hl), #0x01
                           5128 ;src/includes/game.h:241: break;
   5AA4 18 1A         [12] 5129 	jr	00206$
                           5130 ;src/includes/game.h:242: case T_SMNS:
   5AA6                    5131 00131$:
                           5132 ;src/includes/game.h:243: CURSOR_MODE=T_SMEW;
   5AA6 21 DF 6F      [10] 5133 	ld	hl,#_CURSOR_MODE + 0
   5AA9 36 04         [10] 5134 	ld	(hl), #0x04
                           5135 ;src/includes/game.h:244: break;
   5AAB 18 13         [12] 5136 	jr	00206$
                           5137 ;src/includes/game.h:245: case T_SMEW:
   5AAD                    5138 00132$:
                           5139 ;src/includes/game.h:246: CURSOR_MODE=T_SMNS;
   5AAD 21 DF 6F      [10] 5140 	ld	hl,#_CURSOR_MODE + 0
   5AB0 36 03         [10] 5141 	ld	(hl), #0x03
                           5142 ;src/includes/game.h:247: break;
   5AB2 18 0C         [12] 5143 	jr	00206$
                           5144 ;src/includes/game.h:248: case T_SLNS:
   5AB4                    5145 00133$:
                           5146 ;src/includes/game.h:249: CURSOR_MODE=T_SLEW;
   5AB4 21 DF 6F      [10] 5147 	ld	hl,#_CURSOR_MODE + 0
   5AB7 36 06         [10] 5148 	ld	(hl), #0x06
                           5149 ;src/includes/game.h:250: break;
   5AB9 18 05         [12] 5150 	jr	00206$
                           5151 ;src/includes/game.h:251: case T_SLEW:
   5ABB                    5152 00134$:
                           5153 ;src/includes/game.h:252: CURSOR_MODE=T_SLNS;
   5ABB 21 DF 6F      [10] 5154 	ld	hl,#_CURSOR_MODE + 0
   5ABE 36 05         [10] 5155 	ld	(hl), #0x05
                           5156 ;src/includes/game.h:256: for(i=0; i<14000; i++) {}
   5AC0                    5157 00206$:
   5AC0 21 B0 36      [10] 5158 	ld	hl,#0x36B0
   5AC3                    5159 00174$:
   5AC3 2B            [ 6] 5160 	dec	hl
   5AC4 7C            [ 4] 5161 	ld	a,h
   5AC5 B5            [ 4] 5162 	or	a,l
   5AC6 20 FB         [12] 5163 	jr	NZ,00174$
   5AC8                    5164 00138$:
                           5165 ;src/includes/game.h:259: if ( cpct_isKeyPressed(Key_Esc) )
   5AC8 21 08 04      [10] 5166 	ld	hl,#0x0408
   5ACB CD 34 5D      [17] 5167 	call	_cpct_isKeyPressed
                           5168 ;src/includes/game.h:156: drawTile(ulx, uly, xCursor, yCursor);
   5ACE DD 46 F9      [19] 5169 	ld	b,-7 (ix)
                           5170 ;src/includes/game.h:259: if ( cpct_isKeyPressed(Key_Esc) )
   5AD1 7D            [ 4] 5171 	ld	a,l
   5AD2 B7            [ 4] 5172 	or	a, a
   5AD3 28 46         [12] 5173 	jr	Z,00147$
                           5174 ;src/includes/game.h:262: if(CURSOR_MODE==NONE)
   5AD5 3A DF 6F      [13] 5175 	ld	a,(#_CURSOR_MODE + 0)
   5AD8 B7            [ 4] 5176 	or	a, a
   5AD9 20 06         [12] 5177 	jr	NZ,00143$
                           5178 ;src/includes/game.h:263: exit=1;
   5ADB DD 36 FB 01   [19] 5179 	ld	-5 (ix),#0x01
   5ADF 18 32         [12] 5180 	jr	00212$
   5AE1                    5181 00143$:
                           5182 ;src/includes/game.h:264: else if(CURSOR_MODE>=T_SSNS && CURSOR_MODE<=T_SLEW)
   5AE1 3A DF 6F      [13] 5183 	ld	a,(#_CURSOR_MODE + 0)
   5AE4 D6 01         [ 7] 5184 	sub	a, #0x01
   5AE6 38 2B         [12] 5185 	jr	C,00212$
   5AE8 3E 06         [ 7] 5186 	ld	a,#0x06
   5AEA FD 21 DF 6F   [14] 5187 	ld	iy,#_CURSOR_MODE
   5AEE FD 96 00      [19] 5188 	sub	a, 0 (iy)
   5AF1 38 20         [12] 5189 	jr	C,00212$
                           5190 ;src/includes/game.h:266: CURSOR_MODE=NONE;
   5AF3 FD 21 DF 6F   [14] 5191 	ld	iy,#_CURSOR_MODE
   5AF7 FD 36 00 00   [19] 5192 	ld	0 (iy),#0x00
                           5193 ;src/includes/game.h:267: drawTile(ulx, uly, xCursor, yCursor);
   5AFB C5            [11] 5194 	push	bc
   5AFC DD 7E FC      [19] 5195 	ld	a,-4 (ix)
   5AFF F5            [11] 5196 	push	af
   5B00 33            [ 6] 5197 	inc	sp
   5B01 C5            [11] 5198 	push	bc
   5B02 33            [ 6] 5199 	inc	sp
   5B03 DD 7E FE      [19] 5200 	ld	a,-2 (ix)
   5B06 F5            [11] 5201 	push	af
   5B07 33            [ 6] 5202 	inc	sp
   5B08 DD 7E FD      [19] 5203 	ld	a,-3 (ix)
   5B0B F5            [11] 5204 	push	af
   5B0C 33            [ 6] 5205 	inc	sp
   5B0D CD 5B 50      [17] 5206 	call	_drawTile
   5B10 F1            [10] 5207 	pop	af
   5B11 F1            [10] 5208 	pop	af
   5B12 C1            [10] 5209 	pop	bc
                           5210 ;src/includes/game.h:271: for(i=0; i<14000; i++) {}
   5B13                    5211 00212$:
   5B13 21 B0 36      [10] 5212 	ld	hl,#0x36B0
   5B16                    5213 00177$:
   5B16 2B            [ 6] 5214 	dec	hl
   5B17 7C            [ 4] 5215 	ld	a,h
   5B18 B5            [ 4] 5216 	or	a,l
   5B19 20 FB         [12] 5217 	jr	NZ,00177$
   5B1B                    5218 00147$:
                           5219 ;src/includes/game.h:274: if ( cpct_isKeyPressed(Key_Return) )
   5B1B C5            [11] 5220 	push	bc
   5B1C 21 02 04      [10] 5221 	ld	hl,#0x0402
   5B1F CD 34 5D      [17] 5222 	call	_cpct_isKeyPressed
   5B22 7D            [ 4] 5223 	ld	a,l
   5B23 C1            [10] 5224 	pop	bc
   5B24 B7            [ 4] 5225 	or	a, a
   5B25 CA C7 5B      [10] 5226 	jp	Z,00156$
                           5227 ;src/includes/game.h:277: if(CURSOR_MODE==NONE)
   5B28 3A DF 6F      [13] 5228 	ld	a,(#_CURSOR_MODE + 0)
   5B2B B7            [ 4] 5229 	or	a, a
   5B2C 20 44         [12] 5230 	jr	NZ,00152$
                           5231 ;src/includes/game.h:279: menuTile(ulx+xCursor, uly+yCursor);
   5B2E DD 7E F7      [19] 5232 	ld	a, -9 (ix)
   5B31 DD 66 F3      [19] 5233 	ld	h, -13 (ix)
   5B34 84            [ 4] 5234 	add	a, h
   5B35 67            [ 4] 5235 	ld	h,a
   5B36 DD 6E F5      [19] 5236 	ld	l,-11 (ix)
   5B39 DD 56 F9      [19] 5237 	ld	d,-7 (ix)
   5B3C 7D            [ 4] 5238 	ld	a,l
   5B3D 82            [ 4] 5239 	add	a, d
   5B3E C5            [11] 5240 	push	bc
   5B3F E5            [11] 5241 	push	hl
   5B40 33            [ 6] 5242 	inc	sp
   5B41 F5            [11] 5243 	push	af
   5B42 33            [ 6] 5244 	inc	sp
   5B43 CD 6D 56      [17] 5245 	call	_menuTile
   5B46 F1            [10] 5246 	pop	af
   5B47 21 00 00      [10] 5247 	ld	hl,#0x0000
   5B4A E5            [11] 5248 	push	hl
   5B4B 2E 00         [ 7] 5249 	ld	l, #0x00
   5B4D E5            [11] 5250 	push	hl
   5B4E CD 41 5F      [17] 5251 	call	_cpct_px2byteM1
   5B51 F1            [10] 5252 	pop	af
   5B52 F1            [10] 5253 	pop	af
   5B53 65            [ 4] 5254 	ld	h,l
   5B54 11 00 40      [10] 5255 	ld	de,#0x4000
   5B57 D5            [11] 5256 	push	de
   5B58 E5            [11] 5257 	push	hl
   5B59 33            [ 6] 5258 	inc	sp
   5B5A 21 00 C0      [10] 5259 	ld	hl,#0xC000
   5B5D E5            [11] 5260 	push	hl
   5B5E CD 33 5F      [17] 5261 	call	_cpct_memset
   5B61 DD 7E FE      [19] 5262 	ld	a,-2 (ix)
   5B64 F5            [11] 5263 	push	af
   5B65 33            [ 6] 5264 	inc	sp
   5B66 DD 7E FD      [19] 5265 	ld	a,-3 (ix)
   5B69 F5            [11] 5266 	push	af
   5B6A 33            [ 6] 5267 	inc	sp
   5B6B CD 83 52      [17] 5268 	call	_drawWorld
   5B6E F1            [10] 5269 	pop	af
   5B6F C1            [10] 5270 	pop	bc
   5B70 18 4D         [12] 5271 	jr	00218$
   5B72                    5272 00152$:
                           5273 ;src/includes/game.h:284: else if(CURSOR_MODE>=T_SSNS && CURSOR_MODE<=T_SLEW)
   5B72 3A DF 6F      [13] 5274 	ld	a,(#_CURSOR_MODE + 0)
   5B75 D6 01         [ 7] 5275 	sub	a, #0x01
   5B77 38 46         [12] 5276 	jr	C,00218$
   5B79 3E 06         [ 7] 5277 	ld	a,#0x06
   5B7B FD 21 DF 6F   [14] 5278 	ld	iy,#_CURSOR_MODE
   5B7F FD 96 00      [19] 5279 	sub	a, 0 (iy)
   5B82 38 3B         [12] 5280 	jr	C,00218$
                           5281 ;src/includes/game.h:286: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   5B84 DD 7E F5      [19] 5282 	ld	a,-11 (ix)
   5B87 DD 86 F9      [19] 5283 	add	a, -7 (ix)
   5B8A 5F            [ 4] 5284 	ld	e,a
   5B8B DD 7E F6      [19] 5285 	ld	a,-10 (ix)
   5B8E DD 8E FA      [19] 5286 	adc	a, -6 (ix)
   5B91 57            [ 4] 5287 	ld	d,a
   5B92 DD 7E F7      [19] 5288 	ld	a,-9 (ix)
   5B95 DD 86 F3      [19] 5289 	add	a, -13 (ix)
   5B98 6F            [ 4] 5290 	ld	l,a
   5B99 DD 7E F8      [19] 5291 	ld	a,-8 (ix)
   5B9C DD 8E F4      [19] 5292 	adc	a, -12 (ix)
   5B9F 67            [ 4] 5293 	ld	h,a
   5BA0 D5            [11] 5294 	push	de
   5BA1 5D            [ 4] 5295 	ld	e, l
   5BA2 54            [ 4] 5296 	ld	d, h
   5BA3 29            [11] 5297 	add	hl, hl
   5BA4 29            [11] 5298 	add	hl, hl
   5BA5 19            [11] 5299 	add	hl, de
   5BA6 29            [11] 5300 	add	hl, hl
   5BA7 29            [11] 5301 	add	hl, hl
   5BA8 29            [11] 5302 	add	hl, hl
   5BA9 29            [11] 5303 	add	hl, hl
   5BAA D1            [10] 5304 	pop	de
   5BAB 19            [11] 5305 	add	hl,de
   5BAC 3E DF         [ 7] 5306 	ld	a,#<(_p_world)
   5BAE 85            [ 4] 5307 	add	a, l
   5BAF 5F            [ 4] 5308 	ld	e,a
   5BB0 3E 60         [ 7] 5309 	ld	a,#>(_p_world)
   5BB2 8C            [ 4] 5310 	adc	a, h
   5BB3 57            [ 4] 5311 	ld	d,a
   5BB4 3A DF 6F      [13] 5312 	ld	a,(#_CURSOR_MODE + 0)
   5BB7 C6 09         [ 7] 5313 	add	a, #0x09
   5BB9 12            [ 7] 5314 	ld	(de),a
                           5315 ;src/includes/game.h:287: CURSOR_MODE=NONE;
   5BBA 21 DF 6F      [10] 5316 	ld	hl,#_CURSOR_MODE + 0
   5BBD 36 00         [10] 5317 	ld	(hl), #0x00
                           5318 ;src/includes/game.h:291: for(i=0; i<14000; i++) {}
   5BBF                    5319 00218$:
   5BBF 21 B0 36      [10] 5320 	ld	hl,#0x36B0
   5BC2                    5321 00180$:
   5BC2 2B            [ 6] 5322 	dec	hl
   5BC3 7C            [ 4] 5323 	ld	a,h
   5BC4 B5            [ 4] 5324 	or	a,l
   5BC5 20 FB         [12] 5325 	jr	NZ,00180$
   5BC7                    5326 00156$:
                           5327 ;src/includes/game.h:295: drawCursor(xCursor, yCursor, 0);
   5BC7 AF            [ 4] 5328 	xor	a, a
   5BC8 F5            [11] 5329 	push	af
   5BC9 33            [ 6] 5330 	inc	sp
   5BCA DD 7E FC      [19] 5331 	ld	a,-4 (ix)
   5BCD F5            [11] 5332 	push	af
   5BCE 33            [ 6] 5333 	inc	sp
   5BCF C5            [11] 5334 	push	bc
   5BD0 33            [ 6] 5335 	inc	sp
   5BD1 CD 5E 4D      [17] 5336 	call	_drawCursor
   5BD4 F1            [10] 5337 	pop	af
   5BD5 33            [ 6] 5338 	inc	sp
                           5339 ;src/includes/game.h:297: while(!exit);
   5BD6 DD 7E FB      [19] 5340 	ld	a,-5 (ix)
   5BD9 B7            [ 4] 5341 	or	a, a
   5BDA CA 64 58      [10] 5342 	jp	Z,00157$
   5BDD DD F9         [10] 5343 	ld	sp, ix
   5BDF DD E1         [14] 5344 	pop	ix
   5BE1 C9            [10] 5345 	ret
                           5346 ;src/main.c:17: void drawTrain() 
                           5347 ;	---------------------------------
                           5348 ; Function drawTrain
                           5349 ; ---------------------------------
   5BE2                    5350 _drawTrain::
                           5351 ;src/main.c:55: }
   5BE2 C9            [10] 5352 	ret
                           5353 ;src/main.c:58: void main(void)
                           5354 ;	---------------------------------
                           5355 ; Function main
                           5356 ; ---------------------------------
   5BE3                    5357 _main::
   5BE3 DD E5         [15] 5358 	push	ix
   5BE5 DD 21 00 00   [14] 5359 	ld	ix,#0
   5BE9 DD 39         [15] 5360 	add	ix,sp
   5BEB 21 ED FF      [10] 5361 	ld	hl,#-19
   5BEE 39            [11] 5362 	add	hl,sp
   5BEF F9            [ 6] 5363 	ld	sp,hl
                           5364 ;src/main.c:63: const char *menuMain[] = { 
   5BF0 21 09 00      [10] 5365 	ld	hl,#0x0009
   5BF3 39            [11] 5366 	add	hl,sp
   5BF4 5D            [ 4] 5367 	ld	e,l
   5BF5 54            [ 4] 5368 	ld	d,h
   5BF6 36 DD         [10] 5369 	ld	(hl),#<(___str_34)
   5BF8 23            [ 6] 5370 	inc	hl
   5BF9 36 5C         [10] 5371 	ld	(hl),#>(___str_34)
   5BFB 6B            [ 4] 5372 	ld	l, e
   5BFC 62            [ 4] 5373 	ld	h, d
   5BFD 23            [ 6] 5374 	inc	hl
   5BFE 23            [ 6] 5375 	inc	hl
   5BFF 01 E6 5C      [10] 5376 	ld	bc,#___str_35+0
   5C02 71            [ 7] 5377 	ld	(hl),c
   5C03 23            [ 6] 5378 	inc	hl
   5C04 70            [ 7] 5379 	ld	(hl),b
   5C05 21 04 00      [10] 5380 	ld	hl,#0x0004
   5C08 19            [11] 5381 	add	hl,de
   5C09 01 EE 5C      [10] 5382 	ld	bc,#___str_36+0
   5C0C 71            [ 7] 5383 	ld	(hl),c
   5C0D 23            [ 6] 5384 	inc	hl
   5C0E 70            [ 7] 5385 	ld	(hl),b
                           5386 ;src/main.c:69: const char *windowCredit[] = { 
   5C0F 21 00 00      [10] 5387 	ld	hl,#0x0000
   5C12 39            [11] 5388 	add	hl,sp
   5C13 DD 75 FC      [19] 5389 	ld	-4 (ix),l
   5C16 DD 74 FD      [19] 5390 	ld	-3 (ix),h
   5C19 DD 6E FC      [19] 5391 	ld	l,-4 (ix)
   5C1C DD 66 FD      [19] 5392 	ld	h,-3 (ix)
   5C1F 36 F3         [10] 5393 	ld	(hl),#<(___str_37)
   5C21 23            [ 6] 5394 	inc	hl
   5C22 36 5C         [10] 5395 	ld	(hl),#>(___str_37)
   5C24 DD 6E FC      [19] 5396 	ld	l,-4 (ix)
   5C27 DD 66 FD      [19] 5397 	ld	h,-3 (ix)
   5C2A 23            [ 6] 5398 	inc	hl
   5C2B 23            [ 6] 5399 	inc	hl
   5C2C 01 FC 5C      [10] 5400 	ld	bc,#___str_38+0
   5C2F 71            [ 7] 5401 	ld	(hl),c
   5C30 23            [ 6] 5402 	inc	hl
   5C31 70            [ 7] 5403 	ld	(hl),b
   5C32 DD 7E FC      [19] 5404 	ld	a,-4 (ix)
   5C35 C6 04         [ 7] 5405 	add	a, #0x04
   5C37 6F            [ 4] 5406 	ld	l,a
   5C38 DD 7E FD      [19] 5407 	ld	a,-3 (ix)
   5C3B CE 00         [ 7] 5408 	adc	a, #0x00
   5C3D 67            [ 4] 5409 	ld	h,a
   5C3E 01 FD 5C      [10] 5410 	ld	bc,#___str_39+0
   5C41 71            [ 7] 5411 	ld	(hl),c
   5C42 23            [ 6] 5412 	inc	hl
   5C43 70            [ 7] 5413 	ld	(hl),b
                           5414 ;src/main.c:75: firmware = cpct_disableFirmware();
   5C44 D5            [11] 5415 	push	de
   5C45 CD 69 5F      [17] 5416 	call	_cpct_disableFirmware
   5C48 D1            [10] 5417 	pop	de
   5C49 DD 75 F4      [19] 5418 	ld	-12 (ix),l
   5C4C DD 74 F5      [19] 5419 	ld	-11 (ix),h
                           5420 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   5C4F 21 13 40      [10] 5421 	ld	hl,#_paletteTrains
   5C52 D5            [11] 5422 	push	de
   5C53 01 10 00      [10] 5423 	ld	bc,#0x0010
   5C56 C5            [11] 5424 	push	bc
   5C57 E5            [11] 5425 	push	hl
   5C58 CD 75 5E      [17] 5426 	call	_cpct_fw2hw
   5C5B D1            [10] 5427 	pop	de
                           5428 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   5C5C 21 27 40      [10] 5429 	ld	hl,#_paletteMenusM2
   5C5F D5            [11] 5430 	push	de
   5C60 01 02 00      [10] 5431 	ld	bc,#0x0002
   5C63 C5            [11] 5432 	push	bc
   5C64 E5            [11] 5433 	push	hl
   5C65 CD 75 5E      [17] 5434 	call	_cpct_fw2hw
   5C68 D1            [10] 5435 	pop	de
                           5436 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   5C69 21 23 40      [10] 5437 	ld	hl,#_paletteMenusM1
   5C6C D5            [11] 5438 	push	de
   5C6D 01 04 00      [10] 5439 	ld	bc,#0x0004
   5C70 C5            [11] 5440 	push	bc
   5C71 E5            [11] 5441 	push	hl
   5C72 CD 75 5E      [17] 5442 	call	_cpct_fw2hw
   5C75 D1            [10] 5443 	pop	de
                           5444 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   5C76 3A 1F 40      [13] 5445 	ld	a, (#_paletteTrains + 12)
   5C79 D5            [11] 5446 	push	de
   5C7A 57            [ 4] 5447 	ld	d,a
   5C7B 1E 10         [ 7] 5448 	ld	e,#0x10
   5C7D D5            [11] 5449 	push	de
   5C7E CD 40 5D      [17] 5450 	call	_cpct_setPALColour
   5C81 CD BD 46      [17] 5451 	call	_putM2
   5C84 D1            [10] 5452 	pop	de
                           5453 ;src/main.c:85: do{
   5C85 DD 73 FE      [19] 5454 	ld	-2 (ix),e
   5C88 DD 72 FF      [19] 5455 	ld	-1 (ix),d
   5C8B                    5456 00105$:
                           5457 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   5C8B DD 5E FE      [19] 5458 	ld	e,-2 (ix)
   5C8E DD 56 FF      [19] 5459 	ld	d,-1 (ix)
   5C91 3E 03         [ 7] 5460 	ld	a,#0x03
   5C93 F5            [11] 5461 	push	af
   5C94 33            [ 6] 5462 	inc	sp
   5C95 D5            [11] 5463 	push	de
   5C96 CD C3 4A      [17] 5464 	call	_drawMenu
   5C99 F1            [10] 5465 	pop	af
   5C9A 33            [ 6] 5466 	inc	sp
                           5467 ;src/main.c:88: if(menuChoice==0)
   5C9B DD 75 F3      [19] 5468 	ld	-13 (ix), l
   5C9E 7D            [ 4] 5469 	ld	a, l
   5C9F B7            [ 4] 5470 	or	a, a
   5CA0 20 09         [12] 5471 	jr	NZ,00102$
                           5472 ;src/main.c:90: putM1();
   5CA2 CD A9 46      [17] 5473 	call	_putM1
                           5474 ;src/main.c:92: game();
   5CA5 CD 0E 58      [17] 5475 	call	_game
                           5476 ;src/main.c:94: putM2();
   5CA8 CD BD 46      [17] 5477 	call	_putM2
   5CAB                    5478 00102$:
                           5479 ;src/main.c:97: if(menuChoice==1)
   5CAB DD 7E F3      [19] 5480 	ld	a,-13 (ix)
   5CAE 3D            [ 4] 5481 	dec	a
   5CAF 20 10         [12] 5482 	jr	NZ,00106$
                           5483 ;src/main.c:98: drawWindow(windowCredit,3,0);
   5CB1 DD 5E FC      [19] 5484 	ld	e,-4 (ix)
   5CB4 DD 56 FD      [19] 5485 	ld	d,-3 (ix)
   5CB7 21 03 00      [10] 5486 	ld	hl,#0x0003
   5CBA E5            [11] 5487 	push	hl
   5CBB D5            [11] 5488 	push	de
   5CBC CD C1 4B      [17] 5489 	call	_drawWindow
   5CBF F1            [10] 5490 	pop	af
   5CC0 F1            [10] 5491 	pop	af
   5CC1                    5492 00106$:
                           5493 ;src/main.c:100: while(menuChoice!=2);
   5CC1 DD 7E F3      [19] 5494 	ld	a,-13 (ix)
   5CC4 D6 02         [ 7] 5495 	sub	a, #0x02
   5CC6 20 C3         [12] 5496 	jr	NZ,00105$
                           5497 ;src/main.c:102: cpct_setVideoMode(0);
   5CC8 AF            [ 4] 5498 	xor	a, a
   5CC9 F5            [11] 5499 	push	af
   5CCA 33            [ 6] 5500 	inc	sp
   5CCB CD 05 5F      [17] 5501 	call	_cpct_setVideoMode
   5CCE 33            [ 6] 5502 	inc	sp
                           5503 ;src/main.c:103: cpct_reenableFirmware(firmware);
   5CCF DD 6E F4      [19] 5504 	ld	l,-12 (ix)
   5CD2 DD 66 F5      [19] 5505 	ld	h,-11 (ix)
   5CD5 CD D3 5E      [17] 5506 	call	_cpct_reenableFirmware
   5CD8 DD F9         [10] 5507 	ld	sp, ix
   5CDA DD E1         [14] 5508 	pop	ix
   5CDC C9            [10] 5509 	ret
   5CDD                    5510 ___str_34:
   5CDD 4E 65 77 20 67 61  5511 	.ascii "New game"
        6D 65
   5CE5 00                 5512 	.db 0x00
   5CE6                    5513 ___str_35:
   5CE6 43 72 65 64 69 74  5514 	.ascii "Credits"
        73
   5CED 00                 5515 	.db 0x00
   5CEE                    5516 ___str_36:
   5CEE 51 75 69 74        5517 	.ascii "Quit"
   5CF2 00                 5518 	.db 0x00
   5CF3                    5519 ___str_37:
   5CF3 52 61 69 6C 77 61  5520 	.ascii "Railways"
        79 73
   5CFB 00                 5521 	.db 0x00
   5CFC                    5522 ___str_38:
   5CFC 00                 5523 	.db 0x00
   5CFD                    5524 ___str_39:
   5CFD 54 72 65 77 64 62  5525 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   5D17 00                 5526 	.db 0x00
                           5527 	.area _CODE
                           5528 	.area _INITIALIZER
   6FE0                    5529 __xinit__CURSOR_MODE:
   6FE0 00                 5530 	.db #0x00	; 0
                           5531 	.area _CABS (ABS)
