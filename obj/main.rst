                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Wed Feb  3 21:20:51 2016
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
                             34 	.globl _cpct_setRandomSeedUniform_u8
                             35 	.globl _cpct_getRandomUniform_u8_f
                             36 	.globl _cpct_getScreenPtr
                             37 	.globl _cpct_setPALColour
                             38 	.globl _cpct_setPalette
                             39 	.globl _cpct_fw2hw
                             40 	.globl _cpct_count2VSYNC
                             41 	.globl _cpct_setVideoMode
                             42 	.globl _cpct_drawStringM2
                             43 	.globl _cpct_drawSolidBox
                             44 	.globl _cpct_drawSprite
                             45 	.globl _cpct_px2byteM1
                             46 	.globl _cpct_px2byteM0
                             47 	.globl _cpct_getBit
                             48 	.globl _cpct_isKeyPressed
                             49 	.globl _cpct_scanKeyboard
                             50 	.globl _cpct_memset
                             51 	.globl _cpct_disableFirmware
                             52 	.globl _cpct_reenableFirmware
                             53 	.globl _CURSOR_MODE
                             54 	.globl _p_world
                             55 	.globl _rail_ns_e
                             56 	.globl _rail_ns_w
                             57 	.globl _rail_ew_s
                             58 	.globl _rail_ew_n
                             59 	.globl _rail_ws
                             60 	.globl _rail_wn
                             61 	.globl _rail_es
                             62 	.globl _rail_en
                             63 	.globl _rail_ns
                             64 	.globl _rail_ew
                             65 	.globl _station_large_ew
                             66 	.globl _station_large_ns
                             67 	.globl _station_medium_ew
                             68 	.globl _station_medium_ns
                             69 	.globl _station_small_ew
                             70 	.globl _station_small_ns
                             71 	.globl _livestock
                             72 	.globl _farm2
                             73 	.globl _farm1
                             74 	.globl _water
                             75 	.globl _dwellings3
                             76 	.globl _dwellings2
                             77 	.globl _dwellings1
                             78 	.globl _forest
                             79 	.globl _grass2
                             80 	.globl _grass1
                             81 	.globl _paletteMenusM2
                             82 	.globl _paletteMenusM1
                             83 	.globl _paletteTrains
                             84 ;--------------------------------------------------------
                             85 ; special function registers
                             86 ;--------------------------------------------------------
                             87 ;--------------------------------------------------------
                             88 ; ram data
                             89 ;--------------------------------------------------------
                             90 	.area _DATA
   678A                      91 _p_world::
   678A                      92 	.ds 3840
                             93 ;--------------------------------------------------------
                             94 ; ram data
                             95 ;--------------------------------------------------------
                             96 	.area _INITIALIZED
   768A                      97 _CURSOR_MODE::
   768A                      98 	.ds 1
                             99 ;--------------------------------------------------------
                            100 ; absolute external ram data
                            101 ;--------------------------------------------------------
                            102 	.area _DABS (ABS)
                            103 ;--------------------------------------------------------
                            104 ; global & static initialisations
                            105 ;--------------------------------------------------------
                            106 	.area _HOME
                            107 	.area _GSINIT
                            108 	.area _GSFINAL
                            109 	.area _GSINIT
                            110 ;--------------------------------------------------------
                            111 ; Home
                            112 ;--------------------------------------------------------
                            113 	.area _HOME
                            114 	.area _HOME
                            115 ;--------------------------------------------------------
                            116 ; code
                            117 ;--------------------------------------------------------
                            118 	.area _CODE
                            119 ;src/includes/gui.h:1: void putM0(void)
                            120 ;	---------------------------------
                            121 ; Function putM0
                            122 ; ---------------------------------
   4000                     123 _putM0::
                            124 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]  125 	xor	a, a
   4001 F5            [11]  126 	push	af
   4002 33            [ 6]  127 	inc	sp
   4003 CD B0 65      [17]  128 	call	_cpct_setVideoMode
   4006 33            [ 6]  129 	inc	sp
                            130 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  131 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  132 	ld	bc,#0x0010
   400D C5            [11]  133 	push	bc
   400E E5            [11]  134 	push	hl
   400F CD 95 63      [17]  135 	call	_cpct_setPalette
   4012 C9            [10]  136 	ret
   4013                     137 _paletteTrains:
   4013 00                  138 	.db #0x00	; 0
   4014 1A                  139 	.db #0x1A	; 26
   4015 0D                  140 	.db #0x0D	; 13
   4016 03                  141 	.db #0x03	; 3
   4017 0F                  142 	.db #0x0F	; 15
   4018 06                  143 	.db #0x06	; 6
   4019 10                  144 	.db #0x10	; 16
   401A 09                  145 	.db #0x09	; 9
   401B 0A                  146 	.db #0x0A	; 10
   401C 14                  147 	.db #0x14	; 20
   401D 02                  148 	.db #0x02	; 2
   401E 01                  149 	.db #0x01	; 1
   401F 13                  150 	.db #0x13	; 19
   4020 18                  151 	.db #0x18	; 24
   4021 0B                  152 	.db #0x0B	; 11
   4022 19                  153 	.db #0x19	; 25
   4023                     154 _paletteMenusM1:
   4023 00                  155 	.db #0x00	; 0
   4024 0F                  156 	.db #0x0F	; 15
   4025 09                  157 	.db #0x09	; 9
   4026 16                  158 	.db #0x16	; 22
   4027                     159 _paletteMenusM2:
   4027 00                  160 	.db #0x00	; 0
   4028 14                  161 	.db #0x14	; 20
   4029                     162 _grass1:
   4029 0F                  163 	.db #0x0F	; 15
   402A 0F                  164 	.db #0x0F	; 15
   402B 0F                  165 	.db #0x0F	; 15
   402C 8F                  166 	.db #0x8F	; 143
   402D 0F                  167 	.db #0x0F	; 15
   402E 0F                  168 	.db #0x0F	; 15
   402F 0F                  169 	.db #0x0F	; 15
   4030 0F                  170 	.db #0x0F	; 15
   4031 1F                  171 	.db #0x1F	; 31
   4032 0F                  172 	.db #0x0F	; 15
   4033 2F                  173 	.db #0x2F	; 47
   4034 0F                  174 	.db #0x0F	; 15
   4035 0F                  175 	.db #0x0F	; 15
   4036 0F                  176 	.db #0x0F	; 15
   4037 0F                  177 	.db #0x0F	; 15
   4038 0F                  178 	.db #0x0F	; 15
   4039 0F                  179 	.db #0x0F	; 15
   403A 0F                  180 	.db #0x0F	; 15
   403B 0F                  181 	.db #0x0F	; 15
   403C 0F                  182 	.db #0x0F	; 15
   403D 0F                  183 	.db #0x0F	; 15
   403E 0F                  184 	.db #0x0F	; 15
   403F 0F                  185 	.db #0x0F	; 15
   4040 0F                  186 	.db #0x0F	; 15
   4041 0F                  187 	.db #0x0F	; 15
   4042 0F                  188 	.db #0x0F	; 15
   4043 0F                  189 	.db #0x0F	; 15
   4044 0F                  190 	.db #0x0F	; 15
   4045 4F                  191 	.db #0x4F	; 79	'O'
   4046 0F                  192 	.db #0x0F	; 15
   4047 0F                  193 	.db #0x0F	; 15
   4048 8F                  194 	.db #0x8F	; 143
   4049 0F                  195 	.db #0x0F	; 15
   404A 4F                  196 	.db #0x4F	; 79	'O'
   404B 0F                  197 	.db #0x0F	; 15
   404C 0F                  198 	.db #0x0F	; 15
   404D 0F                  199 	.db #0x0F	; 15
   404E 0F                  200 	.db #0x0F	; 15
   404F 0F                  201 	.db #0x0F	; 15
   4050 0F                  202 	.db #0x0F	; 15
   4051 0F                  203 	.db #0x0F	; 15
   4052 0F                  204 	.db #0x0F	; 15
   4053 0F                  205 	.db #0x0F	; 15
   4054 0F                  206 	.db #0x0F	; 15
   4055 0F                  207 	.db #0x0F	; 15
   4056 1F                  208 	.db #0x1F	; 31
   4057 0F                  209 	.db #0x0F	; 15
   4058 0F                  210 	.db #0x0F	; 15
   4059 0F                  211 	.db #0x0F	; 15
   405A 0F                  212 	.db #0x0F	; 15
   405B 0F                  213 	.db #0x0F	; 15
   405C 8F                  214 	.db #0x8F	; 143
   405D 0F                  215 	.db #0x0F	; 15
   405E 0F                  216 	.db #0x0F	; 15
   405F 0F                  217 	.db #0x0F	; 15
   4060 0F                  218 	.db #0x0F	; 15
   4061 0F                  219 	.db #0x0F	; 15
   4062 0F                  220 	.db #0x0F	; 15
   4063 0F                  221 	.db #0x0F	; 15
   4064 0F                  222 	.db #0x0F	; 15
   4065 4F                  223 	.db #0x4F	; 79	'O'
   4066 0F                  224 	.db #0x0F	; 15
   4067 8F                  225 	.db #0x8F	; 143
   4068 0F                  226 	.db #0x0F	; 15
   4069                     227 _grass2:
   4069 0F                  228 	.db #0x0F	; 15
   406A 0F                  229 	.db #0x0F	; 15
   406B 0F                  230 	.db #0x0F	; 15
   406C 0F                  231 	.db #0x0F	; 15
   406D 0F                  232 	.db #0x0F	; 15
   406E 0F                  233 	.db #0x0F	; 15
   406F 0F                  234 	.db #0x0F	; 15
   4070 2F                  235 	.db #0x2F	; 47
   4071 0F                  236 	.db #0x0F	; 15
   4072 8F                  237 	.db #0x8F	; 143
   4073 0F                  238 	.db #0x0F	; 15
   4074 0F                  239 	.db #0x0F	; 15
   4075 0F                  240 	.db #0x0F	; 15
   4076 0F                  241 	.db #0x0F	; 15
   4077 0F                  242 	.db #0x0F	; 15
   4078 0F                  243 	.db #0x0F	; 15
   4079 0F                  244 	.db #0x0F	; 15
   407A 0F                  245 	.db #0x0F	; 15
   407B 0F                  246 	.db #0x0F	; 15
   407C 0F                  247 	.db #0x0F	; 15
   407D 4F                  248 	.db #0x4F	; 79	'O'
   407E 0F                  249 	.db #0x0F	; 15
   407F 0F                  250 	.db #0x0F	; 15
   4080 0F                  251 	.db #0x0F	; 15
   4081 0F                  252 	.db #0x0F	; 15
   4082 0F                  253 	.db #0x0F	; 15
   4083 2F                  254 	.db #0x2F	; 47
   4084 0F                  255 	.db #0x0F	; 15
   4085 0F                  256 	.db #0x0F	; 15
   4086 0F                  257 	.db #0x0F	; 15
   4087 0F                  258 	.db #0x0F	; 15
   4088 0F                  259 	.db #0x0F	; 15
   4089 0F                  260 	.db #0x0F	; 15
   408A 4F                  261 	.db #0x4F	; 79	'O'
   408B 0F                  262 	.db #0x0F	; 15
   408C 0F                  263 	.db #0x0F	; 15
   408D 0F                  264 	.db #0x0F	; 15
   408E 0F                  265 	.db #0x0F	; 15
   408F 0F                  266 	.db #0x0F	; 15
   4090 0F                  267 	.db #0x0F	; 15
   4091 0F                  268 	.db #0x0F	; 15
   4092 0F                  269 	.db #0x0F	; 15
   4093 0F                  270 	.db #0x0F	; 15
   4094 0F                  271 	.db #0x0F	; 15
   4095 0F                  272 	.db #0x0F	; 15
   4096 0F                  273 	.db #0x0F	; 15
   4097 0F                  274 	.db #0x0F	; 15
   4098 8F                  275 	.db #0x8F	; 143
   4099 0F                  276 	.db #0x0F	; 15
   409A 0F                  277 	.db #0x0F	; 15
   409B 0F                  278 	.db #0x0F	; 15
   409C 0F                  279 	.db #0x0F	; 15
   409D 2F                  280 	.db #0x2F	; 47
   409E 1F                  281 	.db #0x1F	; 31
   409F 0F                  282 	.db #0x0F	; 15
   40A0 0F                  283 	.db #0x0F	; 15
   40A1 0F                  284 	.db #0x0F	; 15
   40A2 0F                  285 	.db #0x0F	; 15
   40A3 0F                  286 	.db #0x0F	; 15
   40A4 2F                  287 	.db #0x2F	; 47
   40A5 0F                  288 	.db #0x0F	; 15
   40A6 0F                  289 	.db #0x0F	; 15
   40A7 0F                  290 	.db #0x0F	; 15
   40A8 0F                  291 	.db #0x0F	; 15
   40A9                     292 _forest:
   40A9 0F                  293 	.db #0x0F	; 15
   40AA 0F                  294 	.db #0x0F	; 15
   40AB 0E                  295 	.db #0x0E	; 14
   40AC 03                  296 	.db #0x03	; 3
   40AD 0E                  297 	.db #0x0E	; 14
   40AE 03                  298 	.db #0x03	; 3
   40AF 0E                  299 	.db #0x0E	; 14
   40B0 EF                  300 	.db #0xEF	; 239
   40B1 0E                  301 	.db #0x0E	; 14
   40B2 EF                  302 	.db #0xEF	; 239
   40B3 0F                  303 	.db #0x0F	; 15
   40B4 EF                  304 	.db #0xEF	; 239
   40B5 0E                  305 	.db #0x0E	; 14
   40B6 FF                  306 	.db #0xFF	; 255
   40B7 0F                  307 	.db #0x0F	; 15
   40B8 0F                  308 	.db #0x0F	; 15
   40B9 07                  309 	.db #0x07	; 7
   40BA 6F                  310 	.db #0x6F	; 111	'o'
   40BB 0C                  311 	.db #0x0C	; 12
   40BC 0F                  312 	.db #0x0F	; 15
   40BD CF                  313 	.db #0xCF	; 207
   40BE 0F                  314 	.db #0x0F	; 15
   40BF 19                  315 	.db #0x19	; 25
   40C0 8F                  316 	.db #0x8F	; 143
   40C1 CE                  317 	.db #0xCE	; 206
   40C2 03                  318 	.db #0x03	; 3
   40C3 3B                  319 	.db #0x3B	; 59
   40C4 8F                  320 	.db #0x8F	; 143
   40C5 CE                  321 	.db #0xCE	; 206
   40C6 CF                  322 	.db #0xCF	; 207
   40C7 3B                  323 	.db #0x3B	; 59
   40C8 0F                  324 	.db #0x0F	; 15
   40C9 0E                  325 	.db #0x0E	; 14
   40CA EF                  326 	.db #0xEF	; 239
   40CB 3F                  327 	.db #0x3F	; 63
   40CC 0F                  328 	.db #0x0F	; 15
   40CD 0F                  329 	.db #0x0F	; 15
   40CE EF                  330 	.db #0xEF	; 239
   40CF 0F                  331 	.db #0x0F	; 15
   40D0 0F                  332 	.db #0x0F	; 15
   40D1 0E                  333 	.db #0x0E	; 14
   40D2 07                  334 	.db #0x07	; 7
   40D3 03                  335 	.db #0x03	; 3
   40D4 0F                  336 	.db #0x0F	; 15
   40D5 1D                  337 	.db #0x1D	; 29
   40D6 CE                  338 	.db #0xCE	; 206
   40D7 EF                  339 	.db #0xEF	; 239
   40D8 09                  340 	.db #0x09	; 9
   40D9 3B                  341 	.db #0x3B	; 59
   40DA 8F                  342 	.db #0x8F	; 143
   40DB CE                  343 	.db #0xCE	; 206
   40DC 67                  344 	.db #0x67	; 103	'g'
   40DD 3B                  345 	.db #0x3B	; 59
   40DE 8F                  346 	.db #0x8F	; 143
   40DF 1D                  347 	.db #0x1D	; 29
   40E0 EF                  348 	.db #0xEF	; 239
   40E1 2F                  349 	.db #0x2F	; 47
   40E2 0F                  350 	.db #0x0F	; 15
   40E3 1D                  351 	.db #0x1D	; 29
   40E4 EF                  352 	.db #0xEF	; 239
   40E5 0F                  353 	.db #0x0F	; 15
   40E6 0F                  354 	.db #0x0F	; 15
   40E7 0F                  355 	.db #0x0F	; 15
   40E8 CF                  356 	.db #0xCF	; 207
   40E9                     357 _dwellings1:
   40E9 0F                  358 	.db #0x0F	; 15
   40EA 0F                  359 	.db #0x0F	; 15
   40EB 0F                  360 	.db #0x0F	; 15
   40EC 0F                  361 	.db #0x0F	; 15
   40ED 08                  362 	.db #0x08	; 8
   40EE 03                  363 	.db #0x03	; 3
   40EF 0C                  364 	.db #0x0C	; 12
   40F0 07                  365 	.db #0x07	; 7
   40F1 38                  366 	.db #0x38	; 56	'8'
   40F2 E1                  367 	.db #0xE1	; 225
   40F3 1C                  368 	.db #0x1C	; 28
   40F4 C3                  369 	.db #0xC3	; 195
   40F5 3C                  370 	.db #0x3C	; 60
   40F6 E1                  371 	.db #0xE1	; 225
   40F7 1C                  372 	.db #0x1C	; 28
   40F8 C3                  373 	.db #0xC3	; 195
   40F9 0F                  374 	.db #0x0F	; 15
   40FA 0F                  375 	.db #0x0F	; 15
   40FB 1E                  376 	.db #0x1E	; 30
   40FC C3                  377 	.db #0xC3	; 195
   40FD 0F                  378 	.db #0x0F	; 15
   40FE 0F                  379 	.db #0x0F	; 15
   40FF 0F                  380 	.db #0x0F	; 15
   4100 0F                  381 	.db #0x0F	; 15
   4101 0F                  382 	.db #0x0F	; 15
   4102 0F                  383 	.db #0x0F	; 15
   4103 0E                  384 	.db #0x0E	; 14
   4104 03                  385 	.db #0x03	; 3
   4105 0F                  386 	.db #0x0F	; 15
   4106 0E                  387 	.db #0x0E	; 14
   4107 06                  388 	.db #0x06	; 6
   4108 E1                  389 	.db #0xE1	; 225
   4109 0F                  390 	.db #0x0F	; 15
   410A 0E                  391 	.db #0x0E	; 14
   410B C2                  392 	.db #0xC2	; 194
   410C E1                  393 	.db #0xE1	; 225
   410D 0F                  394 	.db #0x0F	; 15
   410E 0E                  395 	.db #0x0E	; 14
   410F C2                  396 	.db #0xC2	; 194
   4110 E1                  397 	.db #0xE1	; 225
   4111 0F                  398 	.db #0x0F	; 15
   4112 0E                  399 	.db #0x0E	; 14
   4113 C3                  400 	.db #0xC3	; 195
   4114 E1                  401 	.db #0xE1	; 225
   4115 0F                  402 	.db #0x0F	; 15
   4116 0E                  403 	.db #0x0E	; 14
   4117 C3                  404 	.db #0xC3	; 195
   4118 0F                  405 	.db #0x0F	; 15
   4119 0F                  406 	.db #0x0F	; 15
   411A 0F                  407 	.db #0x0F	; 15
   411B C3                  408 	.db #0xC3	; 195
   411C 0F                  409 	.db #0x0F	; 15
   411D 08                  410 	.db #0x08	; 8
   411E 07                  411 	.db #0x07	; 7
   411F 0F                  412 	.db #0x0F	; 15
   4120 0F                  413 	.db #0x0F	; 15
   4121 38                  414 	.db #0x38	; 56	'8'
   4122 C3                  415 	.db #0xC3	; 195
   4123 0F                  416 	.db #0x0F	; 15
   4124 0F                  417 	.db #0x0F	; 15
   4125 3C                  418 	.db #0x3C	; 60
   4126 C3                  419 	.db #0xC3	; 195
   4127 0F                  420 	.db #0x0F	; 15
   4128 0F                  421 	.db #0x0F	; 15
   4129                     422 _dwellings2:
   4129 0F                  423 	.db #0x0F	; 15
   412A 0F                  424 	.db #0x0F	; 15
   412B 0F                  425 	.db #0x0F	; 15
   412C 0F                  426 	.db #0x0F	; 15
   412D 0F                  427 	.db #0x0F	; 15
   412E 01                  428 	.db #0x01	; 1
   412F 0F                  429 	.db #0x0F	; 15
   4130 0F                  430 	.db #0x0F	; 15
   4131 0F                  431 	.db #0x0F	; 15
   4132 70                  432 	.db #0x70	; 112	'p'
   4133 0C                  433 	.db #0x0C	; 12
   4134 0F                  434 	.db #0x0F	; 15
   4135 09                  435 	.db #0x09	; 9
   4136 78                  436 	.db #0x78	; 120	'x'
   4137 1C                  437 	.db #0x1C	; 28
   4138 87                  438 	.db #0x87	; 135
   4139 38                  439 	.db #0x38	; 56	'8'
   413A 0F                  440 	.db #0x0F	; 15
   413B 1C                  441 	.db #0x1C	; 28
   413C 87                  442 	.db #0x87	; 135
   413D 38                  443 	.db #0x38	; 56	'8'
   413E 0F                  444 	.db #0x0F	; 15
   413F 1E                  445 	.db #0x1E	; 30
   4140 87                  446 	.db #0x87	; 135
   4141 3C                  447 	.db #0x3C	; 60
   4142 0F                  448 	.db #0x0F	; 15
   4143 0F                  449 	.db #0x0F	; 15
   4144 0F                  450 	.db #0x0F	; 15
   4145 0F                  451 	.db #0x0F	; 15
   4146 0F                  452 	.db #0x0F	; 15
   4147 0F                  453 	.db #0x0F	; 15
   4148 0F                  454 	.db #0x0F	; 15
   4149 0E                  455 	.db #0x0E	; 14
   414A 07                  456 	.db #0x07	; 7
   414B 0F                  457 	.db #0x0F	; 15
   414C 0F                  458 	.db #0x0F	; 15
   414D 0E                  459 	.db #0x0E	; 14
   414E C3                  460 	.db #0xC3	; 195
   414F 00                  461 	.db #0x00	; 0
   4150 07                  462 	.db #0x07	; 7
   4151 0E                  463 	.db #0x0E	; 14
   4152 C3                  464 	.db #0xC3	; 195
   4153 70                  465 	.db #0x70	; 112	'p'
   4154 C3                  466 	.db #0xC3	; 195
   4155 0F                  467 	.db #0x0F	; 15
   4156 C3                  468 	.db #0xC3	; 195
   4157 70                  469 	.db #0x70	; 112	'p'
   4158 C3                  470 	.db #0xC3	; 195
   4159 03                  471 	.db #0x03	; 3
   415A 0F                  472 	.db #0x0F	; 15
   415B 78                  473 	.db #0x78	; 120	'x'
   415C C3                  474 	.db #0xC3	; 195
   415D 61                  475 	.db #0x61	; 97	'a'
   415E 0F                  476 	.db #0x0F	; 15
   415F 0F                  477 	.db #0x0F	; 15
   4160 0F                  478 	.db #0x0F	; 15
   4161 69                  479 	.db #0x69	; 105	'i'
   4162 0F                  480 	.db #0x0F	; 15
   4163 0F                  481 	.db #0x0F	; 15
   4164 0F                  482 	.db #0x0F	; 15
   4165 0F                  483 	.db #0x0F	; 15
   4166 0F                  484 	.db #0x0F	; 15
   4167 0F                  485 	.db #0x0F	; 15
   4168 0F                  486 	.db #0x0F	; 15
   4169                     487 _dwellings3:
   4169 0F                  488 	.db #0x0F	; 15
   416A 0F                  489 	.db #0x0F	; 15
   416B 09                  490 	.db #0x09	; 9
   416C 09                  491 	.db #0x09	; 9
   416D 0F                  492 	.db #0x0F	; 15
   416E 0F                  493 	.db #0x0F	; 15
   416F 38                  494 	.db #0x38	; 56	'8'
   4170 38                  495 	.db #0x38	; 56	'8'
   4171 0E                  496 	.db #0x0E	; 14
   4172 03                  497 	.db #0x03	; 3
   4173 38                  498 	.db #0x38	; 56	'8'
   4174 38                  499 	.db #0x38	; 56	'8'
   4175 0E                  500 	.db #0x0E	; 14
   4176 E1                  501 	.db #0xE1	; 225
   4177 3C                  502 	.db #0x3C	; 60
   4178 3C                  503 	.db #0x3C	; 60
   4179 0E                  504 	.db #0x0E	; 14
   417A E1                  505 	.db #0xE1	; 225
   417B 0F                  506 	.db #0x0F	; 15
   417C 0F                  507 	.db #0x0F	; 15
   417D 0E                  508 	.db #0x0E	; 14
   417E E1                  509 	.db #0xE1	; 225
   417F 08                  510 	.db #0x08	; 8
   4180 07                  511 	.db #0x07	; 7
   4181 0F                  512 	.db #0x0F	; 15
   4182 E1                  513 	.db #0xE1	; 225
   4183 38                  514 	.db #0x38	; 56	'8'
   4184 C3                  515 	.db #0xC3	; 195
   4185 0F                  516 	.db #0x0F	; 15
   4186 0F                  517 	.db #0x0F	; 15
   4187 3C                  518 	.db #0x3C	; 60
   4188 C3                  519 	.db #0xC3	; 195
   4189 0C                  520 	.db #0x0C	; 12
   418A 0F                  521 	.db #0x0F	; 15
   418B 0F                  522 	.db #0x0F	; 15
   418C 0F                  523 	.db #0x0F	; 15
   418D 1C                  524 	.db #0x1C	; 28
   418E 87                  525 	.db #0x87	; 135
   418F 0F                  526 	.db #0x0F	; 15
   4190 0F                  527 	.db #0x0F	; 15
   4191 1E                  528 	.db #0x1E	; 30
   4192 87                  529 	.db #0x87	; 135
   4193 0C                  530 	.db #0x0C	; 12
   4194 07                  531 	.db #0x07	; 7
   4195 0F                  532 	.db #0x0F	; 15
   4196 0F                  533 	.db #0x0F	; 15
   4197 1C                  534 	.db #0x1C	; 28
   4198 C3                  535 	.db #0xC3	; 195
   4199 0F                  536 	.db #0x0F	; 15
   419A 09                  537 	.db #0x09	; 9
   419B 1C                  538 	.db #0x1C	; 28
   419C C3                  539 	.db #0xC3	; 195
   419D 0F                  540 	.db #0x0F	; 15
   419E 38                  541 	.db #0x38	; 56	'8'
   419F 1C                  542 	.db #0x1C	; 28
   41A0 C3                  543 	.db #0xC3	; 195
   41A1 0F                  544 	.db #0x0F	; 15
   41A2 3C                  545 	.db #0x3C	; 60
   41A3 1E                  546 	.db #0x1E	; 30
   41A4 C3                  547 	.db #0xC3	; 195
   41A5 0F                  548 	.db #0x0F	; 15
   41A6 0F                  549 	.db #0x0F	; 15
   41A7 0F                  550 	.db #0x0F	; 15
   41A8 0F                  551 	.db #0x0F	; 15
   41A9                     552 _water:
   41A9 5F                  553 	.db #0x5F	; 95
   41AA 5F                  554 	.db #0x5F	; 95
   41AB 5F                  555 	.db #0x5F	; 95
   41AC 5F                  556 	.db #0x5F	; 95
   41AD AF                  557 	.db #0xAF	; 175
   41AE AF                  558 	.db #0xAF	; 175
   41AF AF                  559 	.db #0xAF	; 175
   41B0 AF                  560 	.db #0xAF	; 175
   41B1 5F                  561 	.db #0x5F	; 95
   41B2 5F                  562 	.db #0x5F	; 95
   41B3 5F                  563 	.db #0x5F	; 95
   41B4 5F                  564 	.db #0x5F	; 95
   41B5 AF                  565 	.db #0xAF	; 175
   41B6 AF                  566 	.db #0xAF	; 175
   41B7 AF                  567 	.db #0xAF	; 175
   41B8 AF                  568 	.db #0xAF	; 175
   41B9 5F                  569 	.db #0x5F	; 95
   41BA 5F                  570 	.db #0x5F	; 95
   41BB 5F                  571 	.db #0x5F	; 95
   41BC 5F                  572 	.db #0x5F	; 95
   41BD AF                  573 	.db #0xAF	; 175
   41BE AF                  574 	.db #0xAF	; 175
   41BF AF                  575 	.db #0xAF	; 175
   41C0 AF                  576 	.db #0xAF	; 175
   41C1 5F                  577 	.db #0x5F	; 95
   41C2 5F                  578 	.db #0x5F	; 95
   41C3 5F                  579 	.db #0x5F	; 95
   41C4 5F                  580 	.db #0x5F	; 95
   41C5 AF                  581 	.db #0xAF	; 175
   41C6 AF                  582 	.db #0xAF	; 175
   41C7 AF                  583 	.db #0xAF	; 175
   41C8 AF                  584 	.db #0xAF	; 175
   41C9 5F                  585 	.db #0x5F	; 95
   41CA 5F                  586 	.db #0x5F	; 95
   41CB 5F                  587 	.db #0x5F	; 95
   41CC 5F                  588 	.db #0x5F	; 95
   41CD AF                  589 	.db #0xAF	; 175
   41CE AF                  590 	.db #0xAF	; 175
   41CF AF                  591 	.db #0xAF	; 175
   41D0 AF                  592 	.db #0xAF	; 175
   41D1 5F                  593 	.db #0x5F	; 95
   41D2 5F                  594 	.db #0x5F	; 95
   41D3 5F                  595 	.db #0x5F	; 95
   41D4 5F                  596 	.db #0x5F	; 95
   41D5 AF                  597 	.db #0xAF	; 175
   41D6 AF                  598 	.db #0xAF	; 175
   41D7 AF                  599 	.db #0xAF	; 175
   41D8 AF                  600 	.db #0xAF	; 175
   41D9 5F                  601 	.db #0x5F	; 95
   41DA 5F                  602 	.db #0x5F	; 95
   41DB 5F                  603 	.db #0x5F	; 95
   41DC 5F                  604 	.db #0x5F	; 95
   41DD AF                  605 	.db #0xAF	; 175
   41DE AF                  606 	.db #0xAF	; 175
   41DF AF                  607 	.db #0xAF	; 175
   41E0 AF                  608 	.db #0xAF	; 175
   41E1 5F                  609 	.db #0x5F	; 95
   41E2 5F                  610 	.db #0x5F	; 95
   41E3 5F                  611 	.db #0x5F	; 95
   41E4 5F                  612 	.db #0x5F	; 95
   41E5 AF                  613 	.db #0xAF	; 175
   41E6 AF                  614 	.db #0xAF	; 175
   41E7 AF                  615 	.db #0xAF	; 175
   41E8 AF                  616 	.db #0xAF	; 175
   41E9                     617 _farm1:
   41E9 03                  618 	.db #0x03	; 3
   41EA 0F                  619 	.db #0x0F	; 15
   41EB 78                  620 	.db #0x78	; 120	'x'
   41EC F0                  621 	.db #0xF0	; 240
   41ED 61                  622 	.db #0x61	; 97	'a'
   41EE 01                  623 	.db #0x01	; 1
   41EF 5F                  624 	.db #0x5F	; 95
   41F0 5F                  625 	.db #0x5F	; 95
   41F1 61                  626 	.db #0x61	; 97	'a'
   41F2 70                  627 	.db #0x70	; 112	'p'
   41F3 78                  628 	.db #0x78	; 120	'x'
   41F4 F0                  629 	.db #0xF0	; 240
   41F5 69                  630 	.db #0x69	; 105	'i'
   41F6 78                  631 	.db #0x78	; 120	'x'
   41F7 2F                  632 	.db #0x2F	; 47
   41F8 AF                  633 	.db #0xAF	; 175
   41F9 0F                  634 	.db #0x0F	; 15
   41FA 0F                  635 	.db #0x0F	; 15
   41FB 78                  636 	.db #0x78	; 120	'x'
   41FC F0                  637 	.db #0xF0	; 240
   41FD 7A                  638 	.db #0x7A	; 122	'z'
   41FE 7A                  639 	.db #0x7A	; 122	'z'
   41FF 5F                  640 	.db #0x5F	; 95
   4200 5F                  641 	.db #0x5F	; 95
   4201 5A                  642 	.db #0x5A	; 90	'Z'
   4202 DA                  643 	.db #0xDA	; 218
   4203 78                  644 	.db #0x78	; 120	'x'
   4204 F0                  645 	.db #0xF0	; 240
   4205 7A                  646 	.db #0x7A	; 122	'z'
   4206 7A                  647 	.db #0x7A	; 122	'z'
   4207 0F                  648 	.db #0x0F	; 15
   4208 0F                  649 	.db #0x0F	; 15
   4209 5A                  650 	.db #0x5A	; 90	'Z'
   420A DA                  651 	.db #0xDA	; 218
   420B 0F                  652 	.db #0x0F	; 15
   420C 0F                  653 	.db #0x0F	; 15
   420D 7A                  654 	.db #0x7A	; 122	'z'
   420E 7A                  655 	.db #0x7A	; 122	'z'
   420F 78                  656 	.db #0x78	; 120	'x'
   4210 F0                  657 	.db #0xF0	; 240
   4211 5A                  658 	.db #0x5A	; 90	'Z'
   4212 DA                  659 	.db #0xDA	; 218
   4213 5F                  660 	.db #0x5F	; 95
   4214 5F                  661 	.db #0x5F	; 95
   4215 7A                  662 	.db #0x7A	; 122	'z'
   4216 7A                  663 	.db #0x7A	; 122	'z'
   4217 78                  664 	.db #0x78	; 120	'x'
   4218 F0                  665 	.db #0xF0	; 240
   4219 5A                  666 	.db #0x5A	; 90	'Z'
   421A DA                  667 	.db #0xDA	; 218
   421B 2F                  668 	.db #0x2F	; 47
   421C AF                  669 	.db #0xAF	; 175
   421D 7A                  670 	.db #0x7A	; 122	'z'
   421E 7A                  671 	.db #0x7A	; 122	'z'
   421F 78                  672 	.db #0x78	; 120	'x'
   4220 F0                  673 	.db #0xF0	; 240
   4221 5A                  674 	.db #0x5A	; 90	'Z'
   4222 DA                  675 	.db #0xDA	; 218
   4223 5F                  676 	.db #0x5F	; 95
   4224 5F                  677 	.db #0x5F	; 95
   4225 7A                  678 	.db #0x7A	; 122	'z'
   4226 7A                  679 	.db #0x7A	; 122	'z'
   4227 78                  680 	.db #0x78	; 120	'x'
   4228 F0                  681 	.db #0xF0	; 240
   4229                     682 _farm2:
   4229 0F                  683 	.db #0x0F	; 15
   422A 0F                  684 	.db #0x0F	; 15
   422B 0F                  685 	.db #0x0F	; 15
   422C 0F                  686 	.db #0x0F	; 15
   422D 7F                  687 	.db #0x7F	; 127
   422E FF                  688 	.db #0xFF	; 255
   422F FF                  689 	.db #0xFF	; 255
   4230 EF                  690 	.db #0xEF	; 239
   4231 2D                  691 	.db #0x2D	; 45
   4232 A5                  692 	.db #0xA5	; 165
   4233 A5                  693 	.db #0xA5	; 165
   4234 A5                  694 	.db #0xA5	; 165
   4235 7F                  695 	.db #0x7F	; 127
   4236 FF                  696 	.db #0xFF	; 255
   4237 FF                  697 	.db #0xFF	; 255
   4238 EF                  698 	.db #0xEF	; 239
   4239 5A                  699 	.db #0x5A	; 90	'Z'
   423A 5A                  700 	.db #0x5A	; 90	'Z'
   423B 5A                  701 	.db #0x5A	; 90	'Z'
   423C 4B                  702 	.db #0x4B	; 75	'K'
   423D 7F                  703 	.db #0x7F	; 127
   423E FF                  704 	.db #0xFF	; 255
   423F FF                  705 	.db #0xFF	; 255
   4240 EF                  706 	.db #0xEF	; 239
   4241 2D                  707 	.db #0x2D	; 45
   4242 A5                  708 	.db #0xA5	; 165
   4243 A5                  709 	.db #0xA5	; 165
   4244 A5                  710 	.db #0xA5	; 165
   4245 7F                  711 	.db #0x7F	; 127
   4246 FF                  712 	.db #0xFF	; 255
   4247 FF                  713 	.db #0xFF	; 255
   4248 EF                  714 	.db #0xEF	; 239
   4249 5A                  715 	.db #0x5A	; 90	'Z'
   424A 5A                  716 	.db #0x5A	; 90	'Z'
   424B 5A                  717 	.db #0x5A	; 90	'Z'
   424C 4B                  718 	.db #0x4B	; 75	'K'
   424D 7F                  719 	.db #0x7F	; 127
   424E FF                  720 	.db #0xFF	; 255
   424F FF                  721 	.db #0xFF	; 255
   4250 EF                  722 	.db #0xEF	; 239
   4251 0F                  723 	.db #0x0F	; 15
   4252 0F                  724 	.db #0x0F	; 15
   4253 0F                  725 	.db #0x0F	; 15
   4254 0F                  726 	.db #0x0F	; 15
   4255 0E                  727 	.db #0x0E	; 14
   4256 07                  728 	.db #0x07	; 7
   4257 AF                  729 	.db #0xAF	; 175
   4258 AF                  730 	.db #0xAF	; 175
   4259 02                  731 	.db #0x02	; 2
   425A C3                  732 	.db #0xC3	; 195
   425B AF                  733 	.db #0xAF	; 175
   425C AF                  734 	.db #0xAF	; 175
   425D 60                  735 	.db #0x60	; 96
   425E C3                  736 	.db #0xC3	; 195
   425F AF                  737 	.db #0xAF	; 175
   4260 AF                  738 	.db #0xAF	; 175
   4261 69                  739 	.db #0x69	; 105	'i'
   4262 C3                  740 	.db #0xC3	; 195
   4263 AF                  741 	.db #0xAF	; 175
   4264 AF                  742 	.db #0xAF	; 175
   4265 0F                  743 	.db #0x0F	; 15
   4266 0F                  744 	.db #0x0F	; 15
   4267 0F                  745 	.db #0x0F	; 15
   4268 0F                  746 	.db #0x0F	; 15
   4269                     747 _livestock:
   4269 03                  748 	.db #0x03	; 3
   426A 0F                  749 	.db #0x0F	; 15
   426B 0F                  750 	.db #0x0F	; 15
   426C 0F                  751 	.db #0x0F	; 15
   426D 61                  752 	.db #0x61	; 97	'a'
   426E F5                  753 	.db #0xF5	; 245
   426F F5                  754 	.db #0xF5	; 245
   4270 E5                  755 	.db #0xE5	; 229
   4271 61                  756 	.db #0x61	; 97	'a'
   4272 8F                  757 	.db #0x8F	; 143
   4273 0F                  758 	.db #0x0F	; 15
   4274 2F                  759 	.db #0x2F	; 47
   4275 69                  760 	.db #0x69	; 105	'i'
   4276 87                  761 	.db #0x87	; 135
   4277 0F                  762 	.db #0x0F	; 15
   4278 AD                  763 	.db #0xAD	; 173
   4279 0F                  764 	.db #0x0F	; 15
   427A 9F                  765 	.db #0x9F	; 159
   427B 0F                  766 	.db #0x0F	; 15
   427C 2F                  767 	.db #0x2F	; 47
   427D 7D                  768 	.db #0x7D	; 125
   427E 87                  769 	.db #0x87	; 135
   427F 0F                  770 	.db #0x0F	; 15
   4280 2D                  771 	.db #0x2D	; 45
   4281 4B                  772 	.db #0x4B	; 75	'K'
   4282 0F                  773 	.db #0x0F	; 15
   4283 2F                  774 	.db #0x2F	; 47
   4284 2F                  775 	.db #0x2F	; 47
   4285 4F                  776 	.db #0x4F	; 79	'O'
   4286 0F                  777 	.db #0x0F	; 15
   4287 0F                  778 	.db #0x0F	; 15
   4288 2D                  779 	.db #0x2D	; 45
   4289 5B                  780 	.db #0x5B	; 91
   428A 1F                  781 	.db #0x1F	; 31
   428B 0F                  782 	.db #0x0F	; 15
   428C 2F                  783 	.db #0x2F	; 47
   428D 4F                  784 	.db #0x4F	; 79	'O'
   428E 0F                  785 	.db #0x0F	; 15
   428F 1F                  786 	.db #0x1F	; 31
   4290 2D                  787 	.db #0x2D	; 45
   4291 4B                  788 	.db #0x4B	; 75	'K'
   4292 0F                  789 	.db #0x0F	; 15
   4293 0F                  790 	.db #0x0F	; 15
   4294 2F                  791 	.db #0x2F	; 47
   4295 4F                  792 	.db #0x4F	; 79	'O'
   4296 4F                  793 	.db #0x4F	; 79	'O'
   4297 0F                  794 	.db #0x0F	; 15
   4298 2D                  795 	.db #0x2D	; 45
   4299 4B                  796 	.db #0x4B	; 75	'K'
   429A 0F                  797 	.db #0x0F	; 15
   429B 2F                  798 	.db #0x2F	; 47
   429C 2F                  799 	.db #0x2F	; 47
   429D 4F                  800 	.db #0x4F	; 79	'O'
   429E 0F                  801 	.db #0x0F	; 15
   429F 0F                  802 	.db #0x0F	; 15
   42A0 2D                  803 	.db #0x2D	; 45
   42A1 7A                  804 	.db #0x7A	; 122	'z'
   42A2 FA                  805 	.db #0xFA	; 250
   42A3 FA                  806 	.db #0xFA	; 250
   42A4 EB                  807 	.db #0xEB	; 235
   42A5 0F                  808 	.db #0x0F	; 15
   42A6 0F                  809 	.db #0x0F	; 15
   42A7 0F                  810 	.db #0x0F	; 15
   42A8 0F                  811 	.db #0x0F	; 15
   42A9                     812 _station_small_ns:
   42A9 0F                  813 	.db #0x0F	; 15
   42AA 1E                  814 	.db #0x1E	; 30
   42AB 43                  815 	.db #0x43	; 67	'C'
   42AC 0F                  816 	.db #0x0F	; 15
   42AD 0F                  817 	.db #0x0F	; 15
   42AE 1E                  818 	.db #0x1E	; 30
   42AF 43                  819 	.db #0x43	; 67	'C'
   42B0 4F                  820 	.db #0x4F	; 79	'O'
   42B1 0F                  821 	.db #0x0F	; 15
   42B2 5E                  822 	.db #0x5E	; 94
   42B3 43                  823 	.db #0x43	; 67	'C'
   42B4 0F                  824 	.db #0x0F	; 15
   42B5 0F                  825 	.db #0x0F	; 15
   42B6 1E                  826 	.db #0x1E	; 30
   42B7 43                  827 	.db #0x43	; 67	'C'
   42B8 0F                  828 	.db #0x0F	; 15
   42B9 4F                  829 	.db #0x4F	; 79	'O'
   42BA 1E                  830 	.db #0x1E	; 30
   42BB 43                  831 	.db #0x43	; 67	'C'
   42BC 8F                  832 	.db #0x8F	; 143
   42BD 0F                  833 	.db #0x0F	; 15
   42BE 1E                  834 	.db #0x1E	; 30
   42BF 43                  835 	.db #0x43	; 67	'C'
   42C0 0F                  836 	.db #0x0F	; 15
   42C1 0F                  837 	.db #0x0F	; 15
   42C2 1E                  838 	.db #0x1E	; 30
   42C3 43                  839 	.db #0x43	; 67	'C'
   42C4 0F                  840 	.db #0x0F	; 15
   42C5 0E                  841 	.db #0x0E	; 14
   42C6 16                  842 	.db #0x16	; 22
   42C7 43                  843 	.db #0x43	; 67	'C'
   42C8 0F                  844 	.db #0x0F	; 15
   42C9 0E                  845 	.db #0x0E	; 14
   42CA D2                  846 	.db #0xD2	; 210
   42CB 43                  847 	.db #0x43	; 67	'C'
   42CC 0F                  848 	.db #0x0F	; 15
   42CD 4F                  849 	.db #0x4F	; 79	'O'
   42CE D2                  850 	.db #0xD2	; 210
   42CF 43                  851 	.db #0x43	; 67	'C'
   42D0 0F                  852 	.db #0x0F	; 15
   42D1 0F                  853 	.db #0x0F	; 15
   42D2 1E                  854 	.db #0x1E	; 30
   42D3 53                  855 	.db #0x53	; 83	'S'
   42D4 0F                  856 	.db #0x0F	; 15
   42D5 0F                  857 	.db #0x0F	; 15
   42D6 1E                  858 	.db #0x1E	; 30
   42D7 43                  859 	.db #0x43	; 67	'C'
   42D8 0F                  860 	.db #0x0F	; 15
   42D9 0F                  861 	.db #0x0F	; 15
   42DA 5E                  862 	.db #0x5E	; 94
   42DB 43                  863 	.db #0x43	; 67	'C'
   42DC 0F                  864 	.db #0x0F	; 15
   42DD 0F                  865 	.db #0x0F	; 15
   42DE 1E                  866 	.db #0x1E	; 30
   42DF 43                  867 	.db #0x43	; 67	'C'
   42E0 1F                  868 	.db #0x1F	; 31
   42E1 4F                  869 	.db #0x4F	; 79	'O'
   42E2 1E                  870 	.db #0x1E	; 30
   42E3 43                  871 	.db #0x43	; 67	'C'
   42E4 0F                  872 	.db #0x0F	; 15
   42E5 0F                  873 	.db #0x0F	; 15
   42E6 1E                  874 	.db #0x1E	; 30
   42E7 43                  875 	.db #0x43	; 67	'C'
   42E8 0F                  876 	.db #0x0F	; 15
   42E9                     877 _station_small_ew:
   42E9 0F                  878 	.db #0x0F	; 15
   42EA 2F                  879 	.db #0x2F	; 47
   42EB 0F                  880 	.db #0x0F	; 15
   42EC 0F                  881 	.db #0x0F	; 15
   42ED 0F                  882 	.db #0x0F	; 15
   42EE 0F                  883 	.db #0x0F	; 15
   42EF 0F                  884 	.db #0x0F	; 15
   42F0 4F                  885 	.db #0x4F	; 79	'O'
   42F1 0F                  886 	.db #0x0F	; 15
   42F2 0F                  887 	.db #0x0F	; 15
   42F3 0F                  888 	.db #0x0F	; 15
   42F4 0F                  889 	.db #0x0F	; 15
   42F5 2F                  890 	.db #0x2F	; 47
   42F6 0C                  891 	.db #0x0C	; 12
   42F7 0F                  892 	.db #0x0F	; 15
   42F8 0F                  893 	.db #0x0F	; 15
   42F9 0F                  894 	.db #0x0F	; 15
   42FA 1C                  895 	.db #0x1C	; 28
   42FB 87                  896 	.db #0x87	; 135
   42FC 8F                  897 	.db #0x8F	; 143
   42FD 0F                  898 	.db #0x0F	; 15
   42FE 1E                  899 	.db #0x1E	; 30
   42FF 87                  900 	.db #0x87	; 135
   4300 0F                  901 	.db #0x0F	; 15
   4301 0F                  902 	.db #0x0F	; 15
   4302 0F                  903 	.db #0x0F	; 15
   4303 0F                  904 	.db #0x0F	; 15
   4304 0F                  905 	.db #0x0F	; 15
   4305 F0                  906 	.db #0xF0	; 240
   4306 F0                  907 	.db #0xF0	; 240
   4307 F0                  908 	.db #0xF0	; 240
   4308 F0                  909 	.db #0xF0	; 240
   4309 00                  910 	.db #0x00	; 0
   430A 00                  911 	.db #0x00	; 0
   430B 00                  912 	.db #0x00	; 0
   430C 00                  913 	.db #0x00	; 0
   430D F0                  914 	.db #0xF0	; 240
   430E F0                  915 	.db #0xF0	; 240
   430F F0                  916 	.db #0xF0	; 240
   4310 F0                  917 	.db #0xF0	; 240
   4311 0F                  918 	.db #0x0F	; 15
   4312 0F                  919 	.db #0x0F	; 15
   4313 0F                  920 	.db #0x0F	; 15
   4314 0F                  921 	.db #0x0F	; 15
   4315 0F                  922 	.db #0x0F	; 15
   4316 8F                  923 	.db #0x8F	; 143
   4317 0F                  924 	.db #0x0F	; 15
   4318 8F                  925 	.db #0x8F	; 143
   4319 0F                  926 	.db #0x0F	; 15
   431A 0F                  927 	.db #0x0F	; 15
   431B 0F                  928 	.db #0x0F	; 15
   431C 0F                  929 	.db #0x0F	; 15
   431D 0F                  930 	.db #0x0F	; 15
   431E 0F                  931 	.db #0x0F	; 15
   431F 8F                  932 	.db #0x8F	; 143
   4320 0F                  933 	.db #0x0F	; 15
   4321 4F                  934 	.db #0x4F	; 79	'O'
   4322 0F                  935 	.db #0x0F	; 15
   4323 1F                  936 	.db #0x1F	; 31
   4324 0F                  937 	.db #0x0F	; 15
   4325 0F                  938 	.db #0x0F	; 15
   4326 0F                  939 	.db #0x0F	; 15
   4327 0F                  940 	.db #0x0F	; 15
   4328 1F                  941 	.db #0x1F	; 31
   4329                     942 _station_medium_ns:
   4329 0F                  943 	.db #0x0F	; 15
   432A 1E                  944 	.db #0x1E	; 30
   432B 70                  945 	.db #0x70	; 112	'p'
   432C 0F                  946 	.db #0x0F	; 15
   432D 2F                  947 	.db #0x2F	; 47
   432E 1E                  948 	.db #0x1E	; 30
   432F 50                  949 	.db #0x50	; 80	'P'
   4330 0F                  950 	.db #0x0F	; 15
   4331 0F                  951 	.db #0x0F	; 15
   4332 1E                  952 	.db #0x1E	; 30
   4333 50                  953 	.db #0x50	; 80	'P'
   4334 2F                  954 	.db #0x2F	; 47
   4335 0F                  955 	.db #0x0F	; 15
   4336 1E                  956 	.db #0x1E	; 30
   4337 50                  957 	.db #0x50	; 80	'P'
   4338 0F                  958 	.db #0x0F	; 15
   4339 0F                  959 	.db #0x0F	; 15
   433A 1E                  960 	.db #0x1E	; 30
   433B 50                  961 	.db #0x50	; 80	'P'
   433C 0F                  962 	.db #0x0F	; 15
   433D 0E                  963 	.db #0x0E	; 14
   433E 16                  964 	.db #0x16	; 22
   433F 50                  965 	.db #0x50	; 80	'P'
   4340 0F                  966 	.db #0x0F	; 15
   4341 0E                  967 	.db #0x0E	; 14
   4342 D2                  968 	.db #0xD2	; 210
   4343 50                  969 	.db #0x50	; 80	'P'
   4344 2F                  970 	.db #0x2F	; 47
   4345 0E                  971 	.db #0x0E	; 14
   4346 D2                  972 	.db #0xD2	; 210
   4347 50                  973 	.db #0x50	; 80	'P'
   4348 0F                  974 	.db #0x0F	; 15
   4349 0E                  975 	.db #0x0E	; 14
   434A D2                  976 	.db #0xD2	; 210
   434B 50                  977 	.db #0x50	; 80	'P'
   434C 0F                  978 	.db #0x0F	; 15
   434D 0E                  979 	.db #0x0E	; 14
   434E D2                  980 	.db #0xD2	; 210
   434F 50                  981 	.db #0x50	; 80	'P'
   4350 0F                  982 	.db #0x0F	; 15
   4351 0F                  983 	.db #0x0F	; 15
   4352 D2                  984 	.db #0xD2	; 210
   4353 50                  985 	.db #0x50	; 80	'P'
   4354 1F                  986 	.db #0x1F	; 31
   4355 4F                  987 	.db #0x4F	; 79	'O'
   4356 1E                  988 	.db #0x1E	; 30
   4357 50                  989 	.db #0x50	; 80	'P'
   4358 0F                  990 	.db #0x0F	; 15
   4359 0F                  991 	.db #0x0F	; 15
   435A 1E                  992 	.db #0x1E	; 30
   435B 50                  993 	.db #0x50	; 80	'P'
   435C 0F                  994 	.db #0x0F	; 15
   435D 0F                  995 	.db #0x0F	; 15
   435E 1E                  996 	.db #0x1E	; 30
   435F 50                  997 	.db #0x50	; 80	'P'
   4360 0F                  998 	.db #0x0F	; 15
   4361 0F                  999 	.db #0x0F	; 15
   4362 9E                 1000 	.db #0x9E	; 158
   4363 21                 1001 	.db #0x21	; 33
   4364 0F                 1002 	.db #0x0F	; 15
   4365 0F                 1003 	.db #0x0F	; 15
   4366 1E                 1004 	.db #0x1E	; 30
   4367 43                 1005 	.db #0x43	; 67	'C'
   4368 4F                 1006 	.db #0x4F	; 79	'O'
   4369                    1007 _station_medium_ew:
   4369 0F                 1008 	.db #0x0F	; 15
   436A 0F                 1009 	.db #0x0F	; 15
   436B 0F                 1010 	.db #0x0F	; 15
   436C 0F                 1011 	.db #0x0F	; 15
   436D 0F                 1012 	.db #0x0F	; 15
   436E 2F                 1013 	.db #0x2F	; 47
   436F 0F                 1014 	.db #0x0F	; 15
   4370 03                 1015 	.db #0x03	; 3
   4371 0F                 1016 	.db #0x0F	; 15
   4372 0F                 1017 	.db #0x0F	; 15
   4373 0E                 1018 	.db #0x0E	; 14
   4374 67                 1019 	.db #0x67	; 103	'g'
   4375 4F                 1020 	.db #0x4F	; 79	'O'
   4376 00                 1021 	.db #0x00	; 0
   4377 06                 1022 	.db #0x06	; 6
   4378 EF                 1023 	.db #0xEF	; 239
   4379 0F                 1024 	.db #0x0F	; 15
   437A 70                 1025 	.db #0x70	; 112	'p'
   437B C3                 1026 	.db #0xC3	; 195
   437C CF                 1027 	.db #0xCF	; 207
   437D 0F                 1028 	.db #0x0F	; 15
   437E 78                 1029 	.db #0x78	; 120	'x'
   437F C3                 1030 	.db #0xC3	; 195
   4380 0F                 1031 	.db #0x0F	; 15
   4381 0F                 1032 	.db #0x0F	; 15
   4382 0F                 1033 	.db #0x0F	; 15
   4383 0F                 1034 	.db #0x0F	; 15
   4384 0F                 1035 	.db #0x0F	; 15
   4385 F0                 1036 	.db #0xF0	; 240
   4386 F0                 1037 	.db #0xF0	; 240
   4387 F0                 1038 	.db #0xF0	; 240
   4388 F0                 1039 	.db #0xF0	; 240
   4389 00                 1040 	.db #0x00	; 0
   438A 00                 1041 	.db #0x00	; 0
   438B 00                 1042 	.db #0x00	; 0
   438C 00                 1043 	.db #0x00	; 0
   438D B0                 1044 	.db #0xB0	; 176
   438E F0                 1045 	.db #0xF0	; 240
   438F F0                 1046 	.db #0xF0	; 240
   4390 F0                 1047 	.db #0xF0	; 240
   4391 48                 1048 	.db #0x48	; 72	'H'
   4392 00                 1049 	.db #0x00	; 0
   4393 00                 1050 	.db #0x00	; 0
   4394 10                 1051 	.db #0x10	; 16
   4395 3C                 1052 	.db #0x3C	; 60
   4396 F0                 1053 	.db #0xF0	; 240
   4397 F0                 1054 	.db #0xF0	; 240
   4398 F0                 1055 	.db #0xF0	; 240
   4399 0F                 1056 	.db #0x0F	; 15
   439A 4F                 1057 	.db #0x4F	; 79	'O'
   439B 0F                 1058 	.db #0x0F	; 15
   439C 0F                 1059 	.db #0x0F	; 15
   439D 0F                 1060 	.db #0x0F	; 15
   439E 0F                 1061 	.db #0x0F	; 15
   439F 0F                 1062 	.db #0x0F	; 15
   43A0 0F                 1063 	.db #0x0F	; 15
   43A1 2F                 1064 	.db #0x2F	; 47
   43A2 0F                 1065 	.db #0x0F	; 15
   43A3 0F                 1066 	.db #0x0F	; 15
   43A4 4F                 1067 	.db #0x4F	; 79	'O'
   43A5 0F                 1068 	.db #0x0F	; 15
   43A6 0F                 1069 	.db #0x0F	; 15
   43A7 0F                 1070 	.db #0x0F	; 15
   43A8 0F                 1071 	.db #0x0F	; 15
   43A9                    1072 _station_large_ns:
   43A9 0F                 1073 	.db #0x0F	; 15
   43AA 1E                 1074 	.db #0x1E	; 30
   43AB 43                 1075 	.db #0x43	; 67	'C'
   43AC 4F                 1076 	.db #0x4F	; 79	'O'
   43AD 0E                 1077 	.db #0x0E	; 14
   43AE 16                 1078 	.db #0x16	; 22
   43AF 21                 1079 	.db #0x21	; 33
   43B0 0F                 1080 	.db #0x0F	; 15
   43B1 0E                 1081 	.db #0x0E	; 14
   43B2 D2                 1082 	.db #0xD2	; 210
   43B3 50                 1083 	.db #0x50	; 80	'P'
   43B4 0F                 1084 	.db #0x0F	; 15
   43B5 0E                 1085 	.db #0x0E	; 14
   43B6 D2                 1086 	.db #0xD2	; 210
   43B7 40                 1087 	.db #0x40	; 64
   43B8 87                 1088 	.db #0x87	; 135
   43B9 0E                 1089 	.db #0x0E	; 14
   43BA D2                 1090 	.db #0xD2	; 210
   43BB 50                 1091 	.db #0x50	; 80	'P'
   43BC 43                 1092 	.db #0x43	; 67	'C'
   43BD 0C                 1093 	.db #0x0C	; 12
   43BE D2                 1094 	.db #0xD2	; 210
   43BF 50                 1095 	.db #0x50	; 80	'P'
   43C0 21                 1096 	.db #0x21	; 33
   43C1 1C                 1097 	.db #0x1C	; 28
   43C2 D2                 1098 	.db #0xD2	; 210
   43C3 50                 1099 	.db #0x50	; 80	'P'
   43C4 50                 1100 	.db #0x50	; 80	'P'
   43C5 1C                 1101 	.db #0x1C	; 28
   43C6 D2                 1102 	.db #0xD2	; 210
   43C7 50                 1103 	.db #0x50	; 80	'P'
   43C8 50                 1104 	.db #0x50	; 80	'P'
   43C9 1C                 1105 	.db #0x1C	; 28
   43CA D2                 1106 	.db #0xD2	; 210
   43CB 50                 1107 	.db #0x50	; 80	'P'
   43CC 50                 1108 	.db #0x50	; 80	'P'
   43CD 1C                 1109 	.db #0x1C	; 28
   43CE D2                 1110 	.db #0xD2	; 210
   43CF 50                 1111 	.db #0x50	; 80	'P'
   43D0 50                 1112 	.db #0x50	; 80	'P'
   43D1 1C                 1113 	.db #0x1C	; 28
   43D2 D2                 1114 	.db #0xD2	; 210
   43D3 50                 1115 	.db #0x50	; 80	'P'
   43D4 50                 1116 	.db #0x50	; 80	'P'
   43D5 0E                 1117 	.db #0x0E	; 14
   43D6 D2                 1118 	.db #0xD2	; 210
   43D7 50                 1119 	.db #0x50	; 80	'P'
   43D8 50                 1120 	.db #0x50	; 80	'P'
   43D9 0E                 1121 	.db #0x0E	; 14
   43DA D2                 1122 	.db #0xD2	; 210
   43DB 50                 1123 	.db #0x50	; 80	'P'
   43DC 50                 1124 	.db #0x50	; 80	'P'
   43DD 4E                 1125 	.db #0x4E	; 78	'N'
   43DE D2                 1126 	.db #0xD2	; 210
   43DF 50                 1127 	.db #0x50	; 80	'P'
   43E0 50                 1128 	.db #0x50	; 80	'P'
   43E1 0F                 1129 	.db #0x0F	; 15
   43E2 D2                 1130 	.db #0xD2	; 210
   43E3 50                 1131 	.db #0x50	; 80	'P'
   43E4 50                 1132 	.db #0x50	; 80	'P'
   43E5 0F                 1133 	.db #0x0F	; 15
   43E6 1E                 1134 	.db #0x1E	; 30
   43E7 70                 1135 	.db #0x70	; 112	'p'
   43E8 F0                 1136 	.db #0xF0	; 240
   43E9                    1137 _station_large_ew:
   43E9 0F                 1138 	.db #0x0F	; 15
   43EA 0F                 1139 	.db #0x0F	; 15
   43EB 0F                 1140 	.db #0x0F	; 15
   43EC 0F                 1141 	.db #0x0F	; 15
   43ED 0F                 1142 	.db #0x0F	; 15
   43EE 0F                 1143 	.db #0x0F	; 15
   43EF 0F                 1144 	.db #0x0F	; 15
   43F0 0F                 1145 	.db #0x0F	; 15
   43F1 0F                 1146 	.db #0x0F	; 15
   43F2 08                 1147 	.db #0x08	; 8
   43F3 01                 1148 	.db #0x01	; 1
   43F4 0F                 1149 	.db #0x0F	; 15
   43F5 08                 1150 	.db #0x08	; 8
   43F6 30                 1151 	.db #0x30	; 48	'0'
   43F7 E0                 1152 	.db #0xE0	; 224
   43F8 01                 1153 	.db #0x01	; 1
   43F9 38                 1154 	.db #0x38	; 56	'8'
   43FA F0                 1155 	.db #0xF0	; 240
   43FB F0                 1156 	.db #0xF0	; 240
   43FC E1                 1157 	.db #0xE1	; 225
   43FD 3C                 1158 	.db #0x3C	; 60
   43FE F0                 1159 	.db #0xF0	; 240
   43FF F0                 1160 	.db #0xF0	; 240
   4400 E1                 1161 	.db #0xE1	; 225
   4401 0F                 1162 	.db #0x0F	; 15
   4402 0F                 1163 	.db #0x0F	; 15
   4403 0F                 1164 	.db #0x0F	; 15
   4404 0F                 1165 	.db #0x0F	; 15
   4405 F0                 1166 	.db #0xF0	; 240
   4406 F0                 1167 	.db #0xF0	; 240
   4407 F0                 1168 	.db #0xF0	; 240
   4408 F0                 1169 	.db #0xF0	; 240
   4409 00                 1170 	.db #0x00	; 0
   440A 00                 1171 	.db #0x00	; 0
   440B 00                 1172 	.db #0x00	; 0
   440C 00                 1173 	.db #0x00	; 0
   440D F0                 1174 	.db #0xF0	; 240
   440E F0                 1175 	.db #0xF0	; 240
   440F F0                 1176 	.db #0xF0	; 240
   4410 D0                 1177 	.db #0xD0	; 208
   4411 80                 1178 	.db #0x80	; 128
   4412 00                 1179 	.db #0x00	; 0
   4413 00                 1180 	.db #0x00	; 0
   4414 21                 1181 	.db #0x21	; 33
   4415 F0                 1182 	.db #0xF0	; 240
   4416 F0                 1183 	.db #0xF0	; 240
   4417 F0                 1184 	.db #0xF0	; 240
   4418 43                 1185 	.db #0x43	; 67	'C'
   4419 80                 1186 	.db #0x80	; 128
   441A 00                 1187 	.db #0x00	; 0
   441B 00                 1188 	.db #0x00	; 0
   441C 87                 1189 	.db #0x87	; 135
   441D F0                 1190 	.db #0xF0	; 240
   441E F0                 1191 	.db #0xF0	; 240
   441F D0                 1192 	.db #0xD0	; 208
   4420 0F                 1193 	.db #0x0F	; 15
   4421 80                 1194 	.db #0x80	; 128
   4422 00                 1195 	.db #0x00	; 0
   4423 21                 1196 	.db #0x21	; 33
   4424 0F                 1197 	.db #0x0F	; 15
   4425 F0                 1198 	.db #0xF0	; 240
   4426 F0                 1199 	.db #0xF0	; 240
   4427 C3                 1200 	.db #0xC3	; 195
   4428 0F                 1201 	.db #0x0F	; 15
   4429                    1202 _rail_ew:
   4429 0F                 1203 	.db #0x0F	; 15
   442A 0F                 1204 	.db #0x0F	; 15
   442B 0F                 1205 	.db #0x0F	; 15
   442C 0F                 1206 	.db #0x0F	; 15
   442D 2F                 1207 	.db #0x2F	; 47
   442E 0F                 1208 	.db #0x0F	; 15
   442F 2F                 1209 	.db #0x2F	; 47
   4430 2F                 1210 	.db #0x2F	; 47
   4431 0F                 1211 	.db #0x0F	; 15
   4432 0F                 1212 	.db #0x0F	; 15
   4433 0F                 1213 	.db #0x0F	; 15
   4434 0F                 1214 	.db #0x0F	; 15
   4435 0F                 1215 	.db #0x0F	; 15
   4436 0F                 1216 	.db #0x0F	; 15
   4437 0F                 1217 	.db #0x0F	; 15
   4438 0F                 1218 	.db #0x0F	; 15
   4439 0F                 1219 	.db #0x0F	; 15
   443A 2F                 1220 	.db #0x2F	; 47
   443B 0F                 1221 	.db #0x0F	; 15
   443C 0F                 1222 	.db #0x0F	; 15
   443D 4F                 1223 	.db #0x4F	; 79	'O'
   443E 0F                 1224 	.db #0x0F	; 15
   443F 0F                 1225 	.db #0x0F	; 15
   4440 4F                 1226 	.db #0x4F	; 79	'O'
   4441 0F                 1227 	.db #0x0F	; 15
   4442 0F                 1228 	.db #0x0F	; 15
   4443 0F                 1229 	.db #0x0F	; 15
   4444 0F                 1230 	.db #0x0F	; 15
   4445 F0                 1231 	.db #0xF0	; 240
   4446 F0                 1232 	.db #0xF0	; 240
   4447 F0                 1233 	.db #0xF0	; 240
   4448 F0                 1234 	.db #0xF0	; 240
   4449 00                 1235 	.db #0x00	; 0
   444A 00                 1236 	.db #0x00	; 0
   444B 00                 1237 	.db #0x00	; 0
   444C 00                 1238 	.db #0x00	; 0
   444D F0                 1239 	.db #0xF0	; 240
   444E F0                 1240 	.db #0xF0	; 240
   444F F0                 1241 	.db #0xF0	; 240
   4450 F0                 1242 	.db #0xF0	; 240
   4451 0F                 1243 	.db #0x0F	; 15
   4452 0F                 1244 	.db #0x0F	; 15
   4453 0F                 1245 	.db #0x0F	; 15
   4454 0F                 1246 	.db #0x0F	; 15
   4455 0F                 1247 	.db #0x0F	; 15
   4456 0F                 1248 	.db #0x0F	; 15
   4457 8F                 1249 	.db #0x8F	; 143
   4458 0F                 1250 	.db #0x0F	; 15
   4459 0F                 1251 	.db #0x0F	; 15
   445A 8F                 1252 	.db #0x8F	; 143
   445B 0F                 1253 	.db #0x0F	; 15
   445C 4F                 1254 	.db #0x4F	; 79	'O'
   445D 0F                 1255 	.db #0x0F	; 15
   445E 0F                 1256 	.db #0x0F	; 15
   445F 0F                 1257 	.db #0x0F	; 15
   4460 0F                 1258 	.db #0x0F	; 15
   4461 0F                 1259 	.db #0x0F	; 15
   4462 0F                 1260 	.db #0x0F	; 15
   4463 0F                 1261 	.db #0x0F	; 15
   4464 0F                 1262 	.db #0x0F	; 15
   4465 2F                 1263 	.db #0x2F	; 47
   4466 0F                 1264 	.db #0x0F	; 15
   4467 2F                 1265 	.db #0x2F	; 47
   4468 0F                 1266 	.db #0x0F	; 15
   4469                    1267 _rail_ns:
   4469 0F                 1268 	.db #0x0F	; 15
   446A 1E                 1269 	.db #0x1E	; 30
   446B 43                 1270 	.db #0x43	; 67	'C'
   446C 0F                 1271 	.db #0x0F	; 15
   446D 0F                 1272 	.db #0x0F	; 15
   446E 9E                 1273 	.db #0x9E	; 158
   446F 43                 1274 	.db #0x43	; 67	'C'
   4470 8F                 1275 	.db #0x8F	; 143
   4471 0F                 1276 	.db #0x0F	; 15
   4472 1E                 1277 	.db #0x1E	; 30
   4473 43                 1278 	.db #0x43	; 67	'C'
   4474 0F                 1279 	.db #0x0F	; 15
   4475 0F                 1280 	.db #0x0F	; 15
   4476 1E                 1281 	.db #0x1E	; 30
   4477 43                 1282 	.db #0x43	; 67	'C'
   4478 0F                 1283 	.db #0x0F	; 15
   4479 0F                 1284 	.db #0x0F	; 15
   447A 1E                 1285 	.db #0x1E	; 30
   447B 43                 1286 	.db #0x43	; 67	'C'
   447C 0F                 1287 	.db #0x0F	; 15
   447D 0F                 1288 	.db #0x0F	; 15
   447E 1E                 1289 	.db #0x1E	; 30
   447F 43                 1290 	.db #0x43	; 67	'C'
   4480 2F                 1291 	.db #0x2F	; 47
   4481 0F                 1292 	.db #0x0F	; 15
   4482 1E                 1293 	.db #0x1E	; 30
   4483 43                 1294 	.db #0x43	; 67	'C'
   4484 0F                 1295 	.db #0x0F	; 15
   4485 2F                 1296 	.db #0x2F	; 47
   4486 1E                 1297 	.db #0x1E	; 30
   4487 43                 1298 	.db #0x43	; 67	'C'
   4488 0F                 1299 	.db #0x0F	; 15
   4489 0F                 1300 	.db #0x0F	; 15
   448A 1E                 1301 	.db #0x1E	; 30
   448B 43                 1302 	.db #0x43	; 67	'C'
   448C 0F                 1303 	.db #0x0F	; 15
   448D 0F                 1304 	.db #0x0F	; 15
   448E 1E                 1305 	.db #0x1E	; 30
   448F 43                 1306 	.db #0x43	; 67	'C'
   4490 0F                 1307 	.db #0x0F	; 15
   4491 0F                 1308 	.db #0x0F	; 15
   4492 1E                 1309 	.db #0x1E	; 30
   4493 43                 1310 	.db #0x43	; 67	'C'
   4494 0F                 1311 	.db #0x0F	; 15
   4495 0F                 1312 	.db #0x0F	; 15
   4496 1E                 1313 	.db #0x1E	; 30
   4497 53                 1314 	.db #0x53	; 83	'S'
   4498 0F                 1315 	.db #0x0F	; 15
   4499 0F                 1316 	.db #0x0F	; 15
   449A 9E                 1317 	.db #0x9E	; 158
   449B 43                 1318 	.db #0x43	; 67	'C'
   449C 0F                 1319 	.db #0x0F	; 15
   449D 4F                 1320 	.db #0x4F	; 79	'O'
   449E 1E                 1321 	.db #0x1E	; 30
   449F 43                 1322 	.db #0x43	; 67	'C'
   44A0 0F                 1323 	.db #0x0F	; 15
   44A1 0F                 1324 	.db #0x0F	; 15
   44A2 1E                 1325 	.db #0x1E	; 30
   44A3 43                 1326 	.db #0x43	; 67	'C'
   44A4 4F                 1327 	.db #0x4F	; 79	'O'
   44A5 0F                 1328 	.db #0x0F	; 15
   44A6 1E                 1329 	.db #0x1E	; 30
   44A7 43                 1330 	.db #0x43	; 67	'C'
   44A8 0F                 1331 	.db #0x0F	; 15
   44A9                    1332 _rail_en:
   44A9 0F                 1333 	.db #0x0F	; 15
   44AA 1E                 1334 	.db #0x1E	; 30
   44AB 43                 1335 	.db #0x43	; 67	'C'
   44AC 0F                 1336 	.db #0x0F	; 15
   44AD 2F                 1337 	.db #0x2F	; 47
   44AE 1E                 1338 	.db #0x1E	; 30
   44AF 43                 1339 	.db #0x43	; 67	'C'
   44B0 8F                 1340 	.db #0x8F	; 143
   44B1 0F                 1341 	.db #0x0F	; 15
   44B2 0F                 1342 	.db #0x0F	; 15
   44B3 A1                 1343 	.db #0xA1	; 161
   44B4 0F                 1344 	.db #0x0F	; 15
   44B5 0F                 1345 	.db #0x0F	; 15
   44B6 0F                 1346 	.db #0x0F	; 15
   44B7 58                 1347 	.db #0x58	; 88	'X'
   44B8 0F                 1348 	.db #0x0F	; 15
   44B9 0F                 1349 	.db #0x0F	; 15
   44BA 4F                 1350 	.db #0x4F	; 79	'O'
   44BB 2C                 1351 	.db #0x2C	; 44
   44BC 87                 1352 	.db #0x87	; 135
   44BD 0F                 1353 	.db #0x0F	; 15
   44BE 0F                 1354 	.db #0x0F	; 15
   44BF 1E                 1355 	.db #0x1E	; 30
   44C0 43                 1356 	.db #0x43	; 67	'C'
   44C1 0F                 1357 	.db #0x0F	; 15
   44C2 0F                 1358 	.db #0x0F	; 15
   44C3 8F                 1359 	.db #0x8F	; 143
   44C4 A1                 1360 	.db #0xA1	; 161
   44C5 0F                 1361 	.db #0x0F	; 15
   44C6 0F                 1362 	.db #0x0F	; 15
   44C7 0F                 1363 	.db #0x0F	; 15
   44C8 58                 1364 	.db #0x58	; 88	'X'
   44C9 2F                 1365 	.db #0x2F	; 47
   44CA 0F                 1366 	.db #0x0F	; 15
   44CB 0F                 1367 	.db #0x0F	; 15
   44CC 2C                 1368 	.db #0x2C	; 44
   44CD 0F                 1369 	.db #0x0F	; 15
   44CE 0F                 1370 	.db #0x0F	; 15
   44CF 0F                 1371 	.db #0x0F	; 15
   44D0 1E                 1372 	.db #0x1E	; 30
   44D1 0F                 1373 	.db #0x0F	; 15
   44D2 0F                 1374 	.db #0x0F	; 15
   44D3 0F                 1375 	.db #0x0F	; 15
   44D4 4F                 1376 	.db #0x4F	; 79	'O'
   44D5 0F                 1377 	.db #0x0F	; 15
   44D6 0F                 1378 	.db #0x0F	; 15
   44D7 0F                 1379 	.db #0x0F	; 15
   44D8 0F                 1380 	.db #0x0F	; 15
   44D9 2F                 1381 	.db #0x2F	; 47
   44DA 4F                 1382 	.db #0x4F	; 79	'O'
   44DB 2F                 1383 	.db #0x2F	; 47
   44DC 0F                 1384 	.db #0x0F	; 15
   44DD 0F                 1385 	.db #0x0F	; 15
   44DE 0F                 1386 	.db #0x0F	; 15
   44DF 0F                 1387 	.db #0x0F	; 15
   44E0 0F                 1388 	.db #0x0F	; 15
   44E1 0F                 1389 	.db #0x0F	; 15
   44E2 0F                 1390 	.db #0x0F	; 15
   44E3 0F                 1391 	.db #0x0F	; 15
   44E4 2F                 1392 	.db #0x2F	; 47
   44E5 0F                 1393 	.db #0x0F	; 15
   44E6 0F                 1394 	.db #0x0F	; 15
   44E7 0F                 1395 	.db #0x0F	; 15
   44E8 0F                 1396 	.db #0x0F	; 15
   44E9                    1397 _rail_es:
   44E9 0F                 1398 	.db #0x0F	; 15
   44EA 0F                 1399 	.db #0x0F	; 15
   44EB 0F                 1400 	.db #0x0F	; 15
   44EC 0F                 1401 	.db #0x0F	; 15
   44ED 0F                 1402 	.db #0x0F	; 15
   44EE 0F                 1403 	.db #0x0F	; 15
   44EF 0F                 1404 	.db #0x0F	; 15
   44F0 2F                 1405 	.db #0x2F	; 47
   44F1 0F                 1406 	.db #0x0F	; 15
   44F2 2F                 1407 	.db #0x2F	; 47
   44F3 0F                 1408 	.db #0x0F	; 15
   44F4 0F                 1409 	.db #0x0F	; 15
   44F5 1F                 1410 	.db #0x1F	; 31
   44F6 0F                 1411 	.db #0x0F	; 15
   44F7 0F                 1412 	.db #0x0F	; 15
   44F8 0F                 1413 	.db #0x0F	; 15
   44F9 0F                 1414 	.db #0x0F	; 15
   44FA 0F                 1415 	.db #0x0F	; 15
   44FB 0F                 1416 	.db #0x0F	; 15
   44FC 0F                 1417 	.db #0x0F	; 15
   44FD 0F                 1418 	.db #0x0F	; 15
   44FE 0F                 1419 	.db #0x0F	; 15
   44FF 1F                 1420 	.db #0x1F	; 31
   4500 0F                 1421 	.db #0x0F	; 15
   4501 0F                 1422 	.db #0x0F	; 15
   4502 0F                 1423 	.db #0x0F	; 15
   4503 0F                 1424 	.db #0x0F	; 15
   4504 0F                 1425 	.db #0x0F	; 15
   4505 4F                 1426 	.db #0x4F	; 79	'O'
   4506 0F                 1427 	.db #0x0F	; 15
   4507 0F                 1428 	.db #0x0F	; 15
   4508 3C                 1429 	.db #0x3C	; 60
   4509 0F                 1430 	.db #0x0F	; 15
   450A 4F                 1431 	.db #0x4F	; 79	'O'
   450B 0F                 1432 	.db #0x0F	; 15
   450C 48                 1433 	.db #0x48	; 72	'H'
   450D 0F                 1434 	.db #0x0F	; 15
   450E 0F                 1435 	.db #0x0F	; 15
   450F 4F                 1436 	.db #0x4F	; 79	'O'
   4510 B0                 1437 	.db #0xB0	; 176
   4511 0F                 1438 	.db #0x0F	; 15
   4512 0F                 1439 	.db #0x0F	; 15
   4513 1E                 1440 	.db #0x1E	; 30
   4514 43                 1441 	.db #0x43	; 67	'C'
   4515 0F                 1442 	.db #0x0F	; 15
   4516 0F                 1443 	.db #0x0F	; 15
   4517 2C                 1444 	.db #0x2C	; 44
   4518 87                 1445 	.db #0x87	; 135
   4519 0F                 1446 	.db #0x0F	; 15
   451A 0F                 1447 	.db #0x0F	; 15
   451B 58                 1448 	.db #0x58	; 88	'X'
   451C 0F                 1449 	.db #0x0F	; 15
   451D 0F                 1450 	.db #0x0F	; 15
   451E 8F                 1451 	.db #0x8F	; 143
   451F A1                 1452 	.db #0xA1	; 161
   4520 0F                 1453 	.db #0x0F	; 15
   4521 0F                 1454 	.db #0x0F	; 15
   4522 1E                 1455 	.db #0x1E	; 30
   4523 43                 1456 	.db #0x43	; 67	'C'
   4524 8F                 1457 	.db #0x8F	; 143
   4525 0F                 1458 	.db #0x0F	; 15
   4526 1E                 1459 	.db #0x1E	; 30
   4527 43                 1460 	.db #0x43	; 67	'C'
   4528 0F                 1461 	.db #0x0F	; 15
   4529                    1462 _rail_wn:
   4529 0F                 1463 	.db #0x0F	; 15
   452A 1E                 1464 	.db #0x1E	; 30
   452B 43                 1465 	.db #0x43	; 67	'C'
   452C 0F                 1466 	.db #0x0F	; 15
   452D 0F                 1467 	.db #0x0F	; 15
   452E 1E                 1468 	.db #0x1E	; 30
   452F 53                 1469 	.db #0x53	; 83	'S'
   4530 0F                 1470 	.db #0x0F	; 15
   4531 0F                 1471 	.db #0x0F	; 15
   4532 2C                 1472 	.db #0x2C	; 44
   4533 87                 1473 	.db #0x87	; 135
   4534 0F                 1474 	.db #0x0F	; 15
   4535 2F                 1475 	.db #0x2F	; 47
   4536 58                 1476 	.db #0x58	; 88	'X'
   4537 0F                 1477 	.db #0x0F	; 15
   4538 0F                 1478 	.db #0x0F	; 15
   4539 0F                 1479 	.db #0x0F	; 15
   453A A1                 1480 	.db #0xA1	; 161
   453B 0F                 1481 	.db #0x0F	; 15
   453C 0F                 1482 	.db #0x0F	; 15
   453D 1E                 1483 	.db #0x1E	; 30
   453E 43                 1484 	.db #0x43	; 67	'C'
   453F 0F                 1485 	.db #0x0F	; 15
   4540 8F                 1486 	.db #0x8F	; 143
   4541 2C                 1487 	.db #0x2C	; 44
   4542 87                 1488 	.db #0x87	; 135
   4543 0F                 1489 	.db #0x0F	; 15
   4544 0F                 1490 	.db #0x0F	; 15
   4545 D0                 1491 	.db #0xD0	; 208
   4546 1F                 1492 	.db #0x1F	; 31
   4547 0F                 1493 	.db #0x0F	; 15
   4548 0F                 1494 	.db #0x0F	; 15
   4549 21                 1495 	.db #0x21	; 33
   454A 0F                 1496 	.db #0x0F	; 15
   454B 0F                 1497 	.db #0x0F	; 15
   454C 0F                 1498 	.db #0x0F	; 15
   454D C3                 1499 	.db #0xC3	; 195
   454E 0F                 1500 	.db #0x0F	; 15
   454F 0F                 1501 	.db #0x0F	; 15
   4550 0F                 1502 	.db #0x0F	; 15
   4551 0F                 1503 	.db #0x0F	; 15
   4552 0F                 1504 	.db #0x0F	; 15
   4553 0F                 1505 	.db #0x0F	; 15
   4554 0F                 1506 	.db #0x0F	; 15
   4555 1F                 1507 	.db #0x1F	; 31
   4556 0F                 1508 	.db #0x0F	; 15
   4557 4F                 1509 	.db #0x4F	; 79	'O'
   4558 4F                 1510 	.db #0x4F	; 79	'O'
   4559 0F                 1511 	.db #0x0F	; 15
   455A 0F                 1512 	.db #0x0F	; 15
   455B 0F                 1513 	.db #0x0F	; 15
   455C 0F                 1514 	.db #0x0F	; 15
   455D 0F                 1515 	.db #0x0F	; 15
   455E 1F                 1516 	.db #0x1F	; 31
   455F 0F                 1517 	.db #0x0F	; 15
   4560 0F                 1518 	.db #0x0F	; 15
   4561 2F                 1519 	.db #0x2F	; 47
   4562 0F                 1520 	.db #0x0F	; 15
   4563 0F                 1521 	.db #0x0F	; 15
   4564 0F                 1522 	.db #0x0F	; 15
   4565 0F                 1523 	.db #0x0F	; 15
   4566 0F                 1524 	.db #0x0F	; 15
   4567 0F                 1525 	.db #0x0F	; 15
   4568 0F                 1526 	.db #0x0F	; 15
   4569                    1527 _rail_ws:
   4569 0F                 1528 	.db #0x0F	; 15
   456A 0F                 1529 	.db #0x0F	; 15
   456B 0F                 1530 	.db #0x0F	; 15
   456C 0F                 1531 	.db #0x0F	; 15
   456D 0F                 1532 	.db #0x0F	; 15
   456E 0F                 1533 	.db #0x0F	; 15
   456F 0F                 1534 	.db #0x0F	; 15
   4570 0F                 1535 	.db #0x0F	; 15
   4571 2F                 1536 	.db #0x2F	; 47
   4572 0F                 1537 	.db #0x0F	; 15
   4573 4F                 1538 	.db #0x4F	; 79	'O'
   4574 2F                 1539 	.db #0x2F	; 47
   4575 0F                 1540 	.db #0x0F	; 15
   4576 0F                 1541 	.db #0x0F	; 15
   4577 0F                 1542 	.db #0x0F	; 15
   4578 0F                 1543 	.db #0x0F	; 15
   4579 0F                 1544 	.db #0x0F	; 15
   457A 0F                 1545 	.db #0x0F	; 15
   457B 0F                 1546 	.db #0x0F	; 15
   457C 0F                 1547 	.db #0x0F	; 15
   457D 0F                 1548 	.db #0x0F	; 15
   457E 0F                 1549 	.db #0x0F	; 15
   457F 0F                 1550 	.db #0x0F	; 15
   4580 0F                 1551 	.db #0x0F	; 15
   4581 0F                 1552 	.db #0x0F	; 15
   4582 2F                 1553 	.db #0x2F	; 47
   4583 0F                 1554 	.db #0x0F	; 15
   4584 0F                 1555 	.db #0x0F	; 15
   4585 C3                 1556 	.db #0xC3	; 195
   4586 0F                 1557 	.db #0x0F	; 15
   4587 0F                 1558 	.db #0x0F	; 15
   4588 0F                 1559 	.db #0x0F	; 15
   4589 21                 1560 	.db #0x21	; 33
   458A 0F                 1561 	.db #0x0F	; 15
   458B 2F                 1562 	.db #0x2F	; 47
   458C 0F                 1563 	.db #0x0F	; 15
   458D D0                 1564 	.db #0xD0	; 208
   458E 0F                 1565 	.db #0x0F	; 15
   458F 0F                 1566 	.db #0x0F	; 15
   4590 0F                 1567 	.db #0x0F	; 15
   4591 2C                 1568 	.db #0x2C	; 44
   4592 87                 1569 	.db #0x87	; 135
   4593 0F                 1570 	.db #0x0F	; 15
   4594 0F                 1571 	.db #0x0F	; 15
   4595 1E                 1572 	.db #0x1E	; 30
   4596 43                 1573 	.db #0x43	; 67	'C'
   4597 0F                 1574 	.db #0x0F	; 15
   4598 2F                 1575 	.db #0x2F	; 47
   4599 4F                 1576 	.db #0x4F	; 79	'O'
   459A A1                 1577 	.db #0xA1	; 161
   459B 0F                 1578 	.db #0x0F	; 15
   459C 0F                 1579 	.db #0x0F	; 15
   459D 0F                 1580 	.db #0x0F	; 15
   459E 58                 1581 	.db #0x58	; 88	'X'
   459F 4F                 1582 	.db #0x4F	; 79	'O'
   45A0 0F                 1583 	.db #0x0F	; 15
   45A1 0F                 1584 	.db #0x0F	; 15
   45A2 2C                 1585 	.db #0x2C	; 44
   45A3 87                 1586 	.db #0x87	; 135
   45A4 4F                 1587 	.db #0x4F	; 79	'O'
   45A5 0F                 1588 	.db #0x0F	; 15
   45A6 1E                 1589 	.db #0x1E	; 30
   45A7 43                 1590 	.db #0x43	; 67	'C'
   45A8 0F                 1591 	.db #0x0F	; 15
   45A9                    1592 _rail_ew_n:
   45A9 0F                 1593 	.db #0x0F	; 15
   45AA 1E                 1594 	.db #0x1E	; 30
   45AB 43                 1595 	.db #0x43	; 67	'C'
   45AC 0F                 1596 	.db #0x0F	; 15
   45AD 0F                 1597 	.db #0x0F	; 15
   45AE 9E                 1598 	.db #0x9E	; 158
   45AF 43                 1599 	.db #0x43	; 67	'C'
   45B0 0F                 1600 	.db #0x0F	; 15
   45B1 0F                 1601 	.db #0x0F	; 15
   45B2 1E                 1602 	.db #0x1E	; 30
   45B3 53                 1603 	.db #0x53	; 83	'S'
   45B4 0F                 1604 	.db #0x0F	; 15
   45B5 0F                 1605 	.db #0x0F	; 15
   45B6 2C                 1606 	.db #0x2C	; 44
   45B7 87                 1607 	.db #0x87	; 135
   45B8 0F                 1608 	.db #0x0F	; 15
   45B9 4F                 1609 	.db #0x4F	; 79	'O'
   45BA 58                 1610 	.db #0x58	; 88	'X'
   45BB 0F                 1611 	.db #0x0F	; 15
   45BC 0F                 1612 	.db #0x0F	; 15
   45BD 0F                 1613 	.db #0x0F	; 15
   45BE A1                 1614 	.db #0xA1	; 161
   45BF 0F                 1615 	.db #0x0F	; 15
   45C0 8F                 1616 	.db #0x8F	; 143
   45C1 1E                 1617 	.db #0x1E	; 30
   45C2 43                 1618 	.db #0x43	; 67	'C'
   45C3 0F                 1619 	.db #0x0F	; 15
   45C4 0F                 1620 	.db #0x0F	; 15
   45C5 E0                 1621 	.db #0xE0	; 224
   45C6 F0                 1622 	.db #0xF0	; 240
   45C7 F0                 1623 	.db #0xF0	; 240
   45C8 F0                 1624 	.db #0xF0	; 240
   45C9 00                 1625 	.db #0x00	; 0
   45CA 00                 1626 	.db #0x00	; 0
   45CB 00                 1627 	.db #0x00	; 0
   45CC 00                 1628 	.db #0x00	; 0
   45CD F0                 1629 	.db #0xF0	; 240
   45CE F0                 1630 	.db #0xF0	; 240
   45CF F0                 1631 	.db #0xF0	; 240
   45D0 F0                 1632 	.db #0xF0	; 240
   45D1 0F                 1633 	.db #0x0F	; 15
   45D2 0F                 1634 	.db #0x0F	; 15
   45D3 0F                 1635 	.db #0x0F	; 15
   45D4 0F                 1636 	.db #0x0F	; 15
   45D5 2F                 1637 	.db #0x2F	; 47
   45D6 1F                 1638 	.db #0x1F	; 31
   45D7 0F                 1639 	.db #0x0F	; 15
   45D8 4F                 1640 	.db #0x4F	; 79	'O'
   45D9 0F                 1641 	.db #0x0F	; 15
   45DA 0F                 1642 	.db #0x0F	; 15
   45DB 0F                 1643 	.db #0x0F	; 15
   45DC 0F                 1644 	.db #0x0F	; 15
   45DD 0F                 1645 	.db #0x0F	; 15
   45DE 0F                 1646 	.db #0x0F	; 15
   45DF 0F                 1647 	.db #0x0F	; 15
   45E0 0F                 1648 	.db #0x0F	; 15
   45E1 0F                 1649 	.db #0x0F	; 15
   45E2 8F                 1650 	.db #0x8F	; 143
   45E3 4F                 1651 	.db #0x4F	; 79	'O'
   45E4 0F                 1652 	.db #0x0F	; 15
   45E5 0F                 1653 	.db #0x0F	; 15
   45E6 0F                 1654 	.db #0x0F	; 15
   45E7 0F                 1655 	.db #0x0F	; 15
   45E8 0F                 1656 	.db #0x0F	; 15
   45E9                    1657 _rail_ew_s:
   45E9 0F                 1658 	.db #0x0F	; 15
   45EA 0F                 1659 	.db #0x0F	; 15
   45EB 0F                 1660 	.db #0x0F	; 15
   45EC 0F                 1661 	.db #0x0F	; 15
   45ED 0F                 1662 	.db #0x0F	; 15
   45EE 0F                 1663 	.db #0x0F	; 15
   45EF 0F                 1664 	.db #0x0F	; 15
   45F0 8F                 1665 	.db #0x8F	; 143
   45F1 0F                 1666 	.db #0x0F	; 15
   45F2 4F                 1667 	.db #0x4F	; 79	'O'
   45F3 0F                 1668 	.db #0x0F	; 15
   45F4 0F                 1669 	.db #0x0F	; 15
   45F5 0F                 1670 	.db #0x0F	; 15
   45F6 0F                 1671 	.db #0x0F	; 15
   45F7 0F                 1672 	.db #0x0F	; 15
   45F8 0F                 1673 	.db #0x0F	; 15
   45F9 0F                 1674 	.db #0x0F	; 15
   45FA 0F                 1675 	.db #0x0F	; 15
   45FB 4F                 1676 	.db #0x4F	; 79	'O'
   45FC 0F                 1677 	.db #0x0F	; 15
   45FD 4F                 1678 	.db #0x4F	; 79	'O'
   45FE 0F                 1679 	.db #0x0F	; 15
   45FF 0F                 1680 	.db #0x0F	; 15
   4600 2F                 1681 	.db #0x2F	; 47
   4601 0F                 1682 	.db #0x0F	; 15
   4602 0F                 1683 	.db #0x0F	; 15
   4603 0F                 1684 	.db #0x0F	; 15
   4604 0F                 1685 	.db #0x0F	; 15
   4605 F0                 1686 	.db #0xF0	; 240
   4606 F0                 1687 	.db #0xF0	; 240
   4607 F0                 1688 	.db #0xF0	; 240
   4608 F0                 1689 	.db #0xF0	; 240
   4609 00                 1690 	.db #0x00	; 0
   460A 00                 1691 	.db #0x00	; 0
   460B 00                 1692 	.db #0x00	; 0
   460C 00                 1693 	.db #0x00	; 0
   460D E0                 1694 	.db #0xE0	; 224
   460E F0                 1695 	.db #0xF0	; 240
   460F F0                 1696 	.db #0xF0	; 240
   4610 F0                 1697 	.db #0xF0	; 240
   4611 1E                 1698 	.db #0x1E	; 30
   4612 43                 1699 	.db #0x43	; 67	'C'
   4613 0F                 1700 	.db #0x0F	; 15
   4614 0F                 1701 	.db #0x0F	; 15
   4615 0F                 1702 	.db #0x0F	; 15
   4616 A1                 1703 	.db #0xA1	; 161
   4617 4F                 1704 	.db #0x4F	; 79	'O'
   4618 0F                 1705 	.db #0x0F	; 15
   4619 0F                 1706 	.db #0x0F	; 15
   461A 58                 1707 	.db #0x58	; 88	'X'
   461B 0F                 1708 	.db #0x0F	; 15
   461C 0F                 1709 	.db #0x0F	; 15
   461D 0F                 1710 	.db #0x0F	; 15
   461E 2C                 1711 	.db #0x2C	; 44
   461F 87                 1712 	.db #0x87	; 135
   4620 8F                 1713 	.db #0x8F	; 143
   4621 4F                 1714 	.db #0x4F	; 79	'O'
   4622 1E                 1715 	.db #0x1E	; 30
   4623 43                 1716 	.db #0x43	; 67	'C'
   4624 0F                 1717 	.db #0x0F	; 15
   4625 0F                 1718 	.db #0x0F	; 15
   4626 1E                 1719 	.db #0x1E	; 30
   4627 43                 1720 	.db #0x43	; 67	'C'
   4628 0F                 1721 	.db #0x0F	; 15
   4629                    1722 _rail_ns_w:
   4629 0F                 1723 	.db #0x0F	; 15
   462A 1E                 1724 	.db #0x1E	; 30
   462B 43                 1725 	.db #0x43	; 67	'C'
   462C 0F                 1726 	.db #0x0F	; 15
   462D 4F                 1727 	.db #0x4F	; 79	'O'
   462E 1E                 1728 	.db #0x1E	; 30
   462F 43                 1729 	.db #0x43	; 67	'C'
   4630 2F                 1730 	.db #0x2F	; 47
   4631 0F                 1731 	.db #0x0F	; 15
   4632 1E                 1732 	.db #0x1E	; 30
   4633 43                 1733 	.db #0x43	; 67	'C'
   4634 0F                 1734 	.db #0x0F	; 15
   4635 0F                 1735 	.db #0x0F	; 15
   4636 1E                 1736 	.db #0x1E	; 30
   4637 43                 1737 	.db #0x43	; 67	'C'
   4638 0F                 1738 	.db #0x0F	; 15
   4639 0F                 1739 	.db #0x0F	; 15
   463A 5E                 1740 	.db #0x5E	; 94
   463B 43                 1741 	.db #0x43	; 67	'C'
   463C 0F                 1742 	.db #0x0F	; 15
   463D 0F                 1743 	.db #0x0F	; 15
   463E 1E                 1744 	.db #0x1E	; 30
   463F 43                 1745 	.db #0x43	; 67	'C'
   4640 0F                 1746 	.db #0x0F	; 15
   4641 0F                 1747 	.db #0x0F	; 15
   4642 1E                 1748 	.db #0x1E	; 30
   4643 43                 1749 	.db #0x43	; 67	'C'
   4644 0F                 1750 	.db #0x0F	; 15
   4645 E1                 1751 	.db #0xE1	; 225
   4646 1E                 1752 	.db #0x1E	; 30
   4647 43                 1753 	.db #0x43	; 67	'C'
   4648 4F                 1754 	.db #0x4F	; 79	'O'
   4649 10                 1755 	.db #0x10	; 16
   464A 1E                 1756 	.db #0x1E	; 30
   464B 43                 1757 	.db #0x43	; 67	'C'
   464C 0F                 1758 	.db #0x0F	; 15
   464D E0                 1759 	.db #0xE0	; 224
   464E 96                 1760 	.db #0x96	; 150
   464F 43                 1761 	.db #0x43	; 67	'C'
   4650 0F                 1762 	.db #0x0F	; 15
   4651 1E                 1763 	.db #0x1E	; 30
   4652 52                 1764 	.db #0x52	; 82	'R'
   4653 43                 1765 	.db #0x43	; 67	'C'
   4654 0F                 1766 	.db #0x0F	; 15
   4655 0F                 1767 	.db #0x0F	; 15
   4656 B0                 1768 	.db #0xB0	; 176
   4657 53                 1769 	.db #0x53	; 83	'S'
   4658 0F                 1770 	.db #0x0F	; 15
   4659 0F                 1771 	.db #0x0F	; 15
   465A 58                 1772 	.db #0x58	; 88	'X'
   465B 43                 1773 	.db #0x43	; 67	'C'
   465C 0F                 1774 	.db #0x0F	; 15
   465D 2F                 1775 	.db #0x2F	; 47
   465E 2C                 1776 	.db #0x2C	; 44
   465F 43                 1777 	.db #0x43	; 67	'C'
   4660 0F                 1778 	.db #0x0F	; 15
   4661 0F                 1779 	.db #0x0F	; 15
   4662 1E                 1780 	.db #0x1E	; 30
   4663 43                 1781 	.db #0x43	; 67	'C'
   4664 2F                 1782 	.db #0x2F	; 47
   4665 0F                 1783 	.db #0x0F	; 15
   4666 1E                 1784 	.db #0x1E	; 30
   4667 43                 1785 	.db #0x43	; 67	'C'
   4668 0F                 1786 	.db #0x0F	; 15
   4669                    1787 _rail_ns_e:
   4669 0F                 1788 	.db #0x0F	; 15
   466A 1E                 1789 	.db #0x1E	; 30
   466B 43                 1790 	.db #0x43	; 67	'C'
   466C 0F                 1791 	.db #0x0F	; 15
   466D 0F                 1792 	.db #0x0F	; 15
   466E 1E                 1793 	.db #0x1E	; 30
   466F 43                 1794 	.db #0x43	; 67	'C'
   4670 2F                 1795 	.db #0x2F	; 47
   4671 0F                 1796 	.db #0x0F	; 15
   4672 9E                 1797 	.db #0x9E	; 158
   4673 43                 1798 	.db #0x43	; 67	'C'
   4674 0F                 1799 	.db #0x0F	; 15
   4675 0F                 1800 	.db #0x0F	; 15
   4676 1E                 1801 	.db #0x1E	; 30
   4677 43                 1802 	.db #0x43	; 67	'C'
   4678 0F                 1803 	.db #0x0F	; 15
   4679 0F                 1804 	.db #0x0F	; 15
   467A 1E                 1805 	.db #0x1E	; 30
   467B 43                 1806 	.db #0x43	; 67	'C'
   467C 8F                 1807 	.db #0x8F	; 143
   467D 0F                 1808 	.db #0x0F	; 15
   467E 1E                 1809 	.db #0x1E	; 30
   467F 43                 1810 	.db #0x43	; 67	'C'
   4680 0F                 1811 	.db #0x0F	; 15
   4681 0F                 1812 	.db #0x0F	; 15
   4682 5E                 1813 	.db #0x5E	; 94
   4683 43                 1814 	.db #0x43	; 67	'C'
   4684 0F                 1815 	.db #0x0F	; 15
   4685 4F                 1816 	.db #0x4F	; 79	'O'
   4686 1E                 1817 	.db #0x1E	; 30
   4687 43                 1818 	.db #0x43	; 67	'C'
   4688 3C                 1819 	.db #0x3C	; 60
   4689 0F                 1820 	.db #0x0F	; 15
   468A 1E                 1821 	.db #0x1E	; 30
   468B 43                 1822 	.db #0x43	; 67	'C'
   468C 48                 1823 	.db #0x48	; 72	'H'
   468D 0F                 1824 	.db #0x0F	; 15
   468E 1E                 1825 	.db #0x1E	; 30
   468F 43                 1826 	.db #0x43	; 67	'C'
   4690 B0                 1827 	.db #0xB0	; 176
   4691 0F                 1828 	.db #0x0F	; 15
   4692 1E                 1829 	.db #0x1E	; 30
   4693 52                 1830 	.db #0x52	; 82	'R'
   4694 43                 1831 	.db #0x43	; 67	'C'
   4695 0F                 1832 	.db #0x0F	; 15
   4696 5E                 1833 	.db #0x5E	; 94
   4697 60                 1834 	.db #0x60	; 96
   4698 87                 1835 	.db #0x87	; 135
   4699 0F                 1836 	.db #0x0F	; 15
   469A 1E                 1837 	.db #0x1E	; 30
   469B 50                 1838 	.db #0x50	; 80	'P'
   469C 0F                 1839 	.db #0x0F	; 15
   469D 0F                 1840 	.db #0x0F	; 15
   469E 1E                 1841 	.db #0x1E	; 30
   469F 21                 1842 	.db #0x21	; 33
   46A0 0F                 1843 	.db #0x0F	; 15
   46A1 2F                 1844 	.db #0x2F	; 47
   46A2 1E                 1845 	.db #0x1E	; 30
   46A3 43                 1846 	.db #0x43	; 67	'C'
   46A4 8F                 1847 	.db #0x8F	; 143
   46A5 0F                 1848 	.db #0x0F	; 15
   46A6 1E                 1849 	.db #0x1E	; 30
   46A7 43                 1850 	.db #0x43	; 67	'C'
   46A8 0F                 1851 	.db #0x0F	; 15
                           1852 ;src/includes/gui.h:8: void putM1(void)
                           1853 ;	---------------------------------
                           1854 ; Function putM1
                           1855 ; ---------------------------------
   46A9                    1856 _putM1::
                           1857 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   46A9 3E 01         [ 7] 1858 	ld	a,#0x01
   46AB F5            [11] 1859 	push	af
   46AC 33            [ 6] 1860 	inc	sp
   46AD CD B0 65      [17] 1861 	call	_cpct_setVideoMode
   46B0 33            [ 6] 1862 	inc	sp
                           1863 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   46B1 21 23 40      [10] 1864 	ld	hl,#_paletteMenusM1
   46B4 01 04 00      [10] 1865 	ld	bc,#0x0004
   46B7 C5            [11] 1866 	push	bc
   46B8 E5            [11] 1867 	push	hl
   46B9 CD 95 63      [17] 1868 	call	_cpct_setPalette
   46BC C9            [10] 1869 	ret
                           1870 ;src/includes/gui.h:15: void putM2(void)
                           1871 ;	---------------------------------
                           1872 ; Function putM2
                           1873 ; ---------------------------------
   46BD                    1874 _putM2::
                           1875 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   46BD 3E 02         [ 7] 1876 	ld	a,#0x02
   46BF F5            [11] 1877 	push	af
   46C0 33            [ 6] 1878 	inc	sp
   46C1 CD B0 65      [17] 1879 	call	_cpct_setVideoMode
   46C4 33            [ 6] 1880 	inc	sp
                           1881 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   46C5 21 27 40      [10] 1882 	ld	hl,#_paletteMenusM2
   46C8 01 02 00      [10] 1883 	ld	bc,#0x0002
   46CB C5            [11] 1884 	push	bc
   46CC E5            [11] 1885 	push	hl
   46CD CD 95 63      [17] 1886 	call	_cpct_setPalette
                           1887 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   46D0 21 00 40      [10] 1888 	ld	hl,#0x4000
   46D3 E5            [11] 1889 	push	hl
   46D4 3E FF         [ 7] 1890 	ld	a,#0xFF
   46D6 F5            [11] 1891 	push	af
   46D7 33            [ 6] 1892 	inc	sp
   46D8 26 C0         [ 7] 1893 	ld	h, #0xC0
   46DA E5            [11] 1894 	push	hl
   46DB CD DE 65      [17] 1895 	call	_cpct_memset
   46DE C9            [10] 1896 	ret
                           1897 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                           1898 ;	---------------------------------
                           1899 ; Function drawBoxM0
                           1900 ; ---------------------------------
   46DF                    1901 _drawBoxM0::
   46DF DD E5         [15] 1902 	push	ix
   46E1 DD 21 00 00   [14] 1903 	ld	ix,#0
   46E5 DD 39         [15] 1904 	add	ix,sp
   46E7 21 F9 FF      [10] 1905 	ld	hl,#-7
   46EA 39            [11] 1906 	add	hl,sp
   46EB F9            [ 6] 1907 	ld	sp,hl
                           1908 ;src/includes/gui.h:28: int left = (80-width_)/2;
   46EC 3E 50         [ 7] 1909 	ld	a,#0x50
   46EE DD 96 04      [19] 1910 	sub	a, 4 (ix)
   46F1 57            [ 4] 1911 	ld	d,a
   46F2 3E 00         [ 7] 1912 	ld	a,#0x00
   46F4 DD 9E 05      [19] 1913 	sbc	a, 5 (ix)
   46F7 5F            [ 4] 1914 	ld	e,a
   46F8 6A            [ 4] 1915 	ld	l, d
   46F9 63            [ 4] 1916 	ld	h, e
   46FA CB 7B         [ 8] 1917 	bit	7, e
   46FC 28 03         [12] 1918 	jr	Z,00103$
   46FE 6A            [ 4] 1919 	ld	l, d
   46FF 63            [ 4] 1920 	ld	h, e
   4700 23            [ 6] 1921 	inc	hl
   4701                    1922 00103$:
   4701 DD 75 F9      [19] 1923 	ld	-7 (ix),l
   4704 DD 74 FA      [19] 1924 	ld	-6 (ix),h
   4707 DD CB FA 2E   [23] 1925 	sra	-6 (ix)
   470B DD CB F9 1E   [23] 1926 	rr	-7 (ix)
                           1927 ;src/includes/gui.h:29: int top = (200-height_)/2;
   470F 3E C8         [ 7] 1928 	ld	a,#0xC8
   4711 DD 96 06      [19] 1929 	sub	a, 6 (ix)
   4714 4F            [ 4] 1930 	ld	c,a
   4715 3E 00         [ 7] 1931 	ld	a,#0x00
   4717 DD 9E 07      [19] 1932 	sbc	a, 7 (ix)
   471A 47            [ 4] 1933 	ld	b,a
   471B 61            [ 4] 1934 	ld	h,c
   471C 50            [ 4] 1935 	ld	d,b
   471D CB 78         [ 8] 1936 	bit	7, b
   471F 28 03         [12] 1937 	jr	Z,00104$
   4721 03            [ 6] 1938 	inc	bc
   4722 61            [ 4] 1939 	ld	h,c
   4723 50            [ 4] 1940 	ld	d,b
   4724                    1941 00104$:
   4724 5C            [ 4] 1942 	ld	e, h
   4725 CB 2A         [ 8] 1943 	sra	d
   4727 CB 1B         [ 8] 1944 	rr	e
                           1945 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   4729 D5            [11] 1946 	push	de
   472A 21 09 09      [10] 1947 	ld	hl,#0x0909
   472D E5            [11] 1948 	push	hl
   472E CD C2 65      [17] 1949 	call	_cpct_px2byteM0
   4731 65            [ 4] 1950 	ld	h,l
   4732 01 00 40      [10] 1951 	ld	bc,#0x4000
   4735 C5            [11] 1952 	push	bc
   4736 E5            [11] 1953 	push	hl
   4737 33            [ 6] 1954 	inc	sp
   4738 21 00 C0      [10] 1955 	ld	hl,#0xC000
   473B E5            [11] 1956 	push	hl
   473C CD DE 65      [17] 1957 	call	_cpct_memset
   473F D1            [10] 1958 	pop	de
                           1959 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4740 DD 73 FB      [19] 1960 	ld	-5 (ix), e
   4743 63            [ 4] 1961 	ld	h, e
   4744 24            [ 4] 1962 	inc	h
   4745 24            [ 4] 1963 	inc	h
   4746 24            [ 4] 1964 	inc	h
   4747 24            [ 4] 1965 	inc	h
   4748 DD 7E F9      [19] 1966 	ld	a,-7 (ix)
   474B 3C            [ 4] 1967 	inc	a
   474C DD 77 FC      [19] 1968 	ld	-4 (ix),a
   474F D5            [11] 1969 	push	de
   4750 E5            [11] 1970 	push	hl
   4751 33            [ 6] 1971 	inc	sp
   4752 DD 7E FC      [19] 1972 	ld	a,-4 (ix)
   4755 F5            [11] 1973 	push	af
   4756 33            [ 6] 1974 	inc	sp
   4757 21 00 C0      [10] 1975 	ld	hl,#0xC000
   475A E5            [11] 1976 	push	hl
   475B CD DD 66      [17] 1977 	call	_cpct_getScreenPtr
   475E D1            [10] 1978 	pop	de
   475F 4D            [ 4] 1979 	ld	c, l
   4760 44            [ 4] 1980 	ld	b, h
                           1981 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4761 DD 7E 06      [19] 1982 	ld	a,6 (ix)
   4764 DD 77 FD      [19] 1983 	ld	-3 (ix),a
   4767 DD 7E 04      [19] 1984 	ld	a,4 (ix)
   476A DD 77 FE      [19] 1985 	ld	-2 (ix),a
   476D C5            [11] 1986 	push	bc
   476E D5            [11] 1987 	push	de
   476F 21 02 02      [10] 1988 	ld	hl,#0x0202
   4772 E5            [11] 1989 	push	hl
   4773 CD C2 65      [17] 1990 	call	_cpct_px2byteM0
   4776 DD 75 FF      [19] 1991 	ld	-1 (ix),l
   4779 D1            [10] 1992 	pop	de
   477A C1            [10] 1993 	pop	bc
   477B D5            [11] 1994 	push	de
   477C DD 66 FD      [19] 1995 	ld	h,-3 (ix)
   477F DD 6E FE      [19] 1996 	ld	l,-2 (ix)
   4782 E5            [11] 1997 	push	hl
   4783 DD 7E FF      [19] 1998 	ld	a,-1 (ix)
   4786 F5            [11] 1999 	push	af
   4787 33            [ 6] 2000 	inc	sp
   4788 C5            [11] 2001 	push	bc
   4789 CD 24 66      [17] 2002 	call	_cpct_drawSolidBox
   478C F1            [10] 2003 	pop	af
   478D F1            [10] 2004 	pop	af
   478E 33            [ 6] 2005 	inc	sp
   478F D1            [10] 2006 	pop	de
                           2007 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4790 63            [ 4] 2008 	ld	h,e
   4791 DD 56 F9      [19] 2009 	ld	d,-7 (ix)
   4794 E5            [11] 2010 	push	hl
   4795 33            [ 6] 2011 	inc	sp
   4796 D5            [11] 2012 	push	de
   4797 33            [ 6] 2013 	inc	sp
   4798 21 00 C0      [10] 2014 	ld	hl,#0xC000
   479B E5            [11] 2015 	push	hl
   479C CD DD 66      [17] 2016 	call	_cpct_getScreenPtr
                           2017 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   479F E5            [11] 2018 	push	hl
   47A0 21 06 06      [10] 2019 	ld	hl,#0x0606
   47A3 E5            [11] 2020 	push	hl
   47A4 CD C2 65      [17] 2021 	call	_cpct_px2byteM0
   47A7 45            [ 4] 2022 	ld	b,l
   47A8 D1            [10] 2023 	pop	de
   47A9 DD 66 FD      [19] 2024 	ld	h,-3 (ix)
   47AC DD 6E FE      [19] 2025 	ld	l,-2 (ix)
   47AF E5            [11] 2026 	push	hl
   47B0 C5            [11] 2027 	push	bc
   47B1 33            [ 6] 2028 	inc	sp
   47B2 D5            [11] 2029 	push	de
   47B3 CD 24 66      [17] 2030 	call	_cpct_drawSolidBox
   47B6 F1            [10] 2031 	pop	af
   47B7 F1            [10] 2032 	pop	af
   47B8 33            [ 6] 2033 	inc	sp
                           2034 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   47B9 DD 66 FB      [19] 2035 	ld	h,-5 (ix)
   47BC 24            [ 4] 2036 	inc	h
   47BD 24            [ 4] 2037 	inc	h
   47BE E5            [11] 2038 	push	hl
   47BF 33            [ 6] 2039 	inc	sp
   47C0 DD 7E FC      [19] 2040 	ld	a,-4 (ix)
   47C3 F5            [11] 2041 	push	af
   47C4 33            [ 6] 2042 	inc	sp
   47C5 21 00 C0      [10] 2043 	ld	hl,#0xC000
   47C8 E5            [11] 2044 	push	hl
   47C9 CD DD 66      [17] 2045 	call	_cpct_getScreenPtr
   47CC EB            [ 4] 2046 	ex	de,hl
                           2047 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   47CD DD 7E 06      [19] 2048 	ld	a,6 (ix)
   47D0 C6 FC         [ 7] 2049 	add	a,#0xFC
   47D2 4F            [ 4] 2050 	ld	c,a
   47D3 DD 46 04      [19] 2051 	ld	b,4 (ix)
   47D6 05            [ 4] 2052 	dec	b
   47D7 05            [ 4] 2053 	dec	b
   47D8 C5            [11] 2054 	push	bc
   47D9 D5            [11] 2055 	push	de
   47DA 21 00 00      [10] 2056 	ld	hl,#0x0000
   47DD E5            [11] 2057 	push	hl
   47DE CD C2 65      [17] 2058 	call	_cpct_px2byteM0
   47E1 DD 75 FF      [19] 2059 	ld	-1 (ix),l
   47E4 D1            [10] 2060 	pop	de
   47E5 C1            [10] 2061 	pop	bc
   47E6 79            [ 4] 2062 	ld	a,c
   47E7 F5            [11] 2063 	push	af
   47E8 33            [ 6] 2064 	inc	sp
   47E9 C5            [11] 2065 	push	bc
   47EA 33            [ 6] 2066 	inc	sp
   47EB DD 7E FF      [19] 2067 	ld	a,-1 (ix)
   47EE F5            [11] 2068 	push	af
   47EF 33            [ 6] 2069 	inc	sp
   47F0 D5            [11] 2070 	push	de
   47F1 CD 24 66      [17] 2071 	call	_cpct_drawSolidBox
   47F4 DD F9         [10] 2072 	ld	sp,ix
   47F6 DD E1         [14] 2073 	pop	ix
   47F8 C9            [10] 2074 	ret
                           2075 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           2076 ;	---------------------------------
                           2077 ; Function drawBoxM2
                           2078 ; ---------------------------------
   47F9                    2079 _drawBoxM2::
   47F9 DD E5         [15] 2080 	push	ix
   47FB DD 21 00 00   [14] 2081 	ld	ix,#0
   47FF DD 39         [15] 2082 	add	ix,sp
   4801 21 FA FF      [10] 2083 	ld	hl,#-6
   4804 39            [11] 2084 	add	hl,sp
   4805 F9            [ 6] 2085 	ld	sp,hl
                           2086 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4806 3E 50         [ 7] 2087 	ld	a,#0x50
   4808 DD 96 04      [19] 2088 	sub	a, 4 (ix)
   480B 4F            [ 4] 2089 	ld	c,a
   480C 3E 00         [ 7] 2090 	ld	a,#0x00
   480E DD 9E 05      [19] 2091 	sbc	a, 5 (ix)
   4811 47            [ 4] 2092 	ld	b,a
   4812 61            [ 4] 2093 	ld	h,c
   4813 50            [ 4] 2094 	ld	d,b
   4814 CB 78         [ 8] 2095 	bit	7, b
   4816 28 03         [12] 2096 	jr	Z,00103$
   4818 03            [ 6] 2097 	inc	bc
   4819 61            [ 4] 2098 	ld	h,c
   481A 50            [ 4] 2099 	ld	d,b
   481B                    2100 00103$:
   481B 5C            [ 4] 2101 	ld	e, h
   481C CB 2A         [ 8] 2102 	sra	d
   481E CB 1B         [ 8] 2103 	rr	e
                           2104 ;src/includes/gui.h:53: int top = (200-height_)/2;
   4820 3E C8         [ 7] 2105 	ld	a,#0xC8
   4822 DD 96 06      [19] 2106 	sub	a, 6 (ix)
   4825 4F            [ 4] 2107 	ld	c,a
   4826 3E 00         [ 7] 2108 	ld	a,#0x00
   4828 DD 9E 07      [19] 2109 	sbc	a, 7 (ix)
   482B 47            [ 4] 2110 	ld	b,a
   482C 61            [ 4] 2111 	ld	h,c
   482D 68            [ 4] 2112 	ld	l,b
   482E CB 78         [ 8] 2113 	bit	7, b
   4830 28 03         [12] 2114 	jr	Z,00104$
   4832 03            [ 6] 2115 	inc	bc
   4833 61            [ 4] 2116 	ld	h,c
   4834 68            [ 4] 2117 	ld	l,b
   4835                    2118 00104$:
   4835 DD 74 FA      [19] 2119 	ld	-6 (ix),h
   4838 DD 75 FB      [19] 2120 	ld	-5 (ix),l
   483B DD CB FB 2E   [23] 2121 	sra	-5 (ix)
   483F DD CB FA 1E   [23] 2122 	rr	-6 (ix)
                           2123 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   4843 DD 7E FA      [19] 2124 	ld	a,-6 (ix)
   4846 DD 77 FC      [19] 2125 	ld	-4 (ix), a
   4849 C6 05         [ 7] 2126 	add	a, #0x05
   484B 4F            [ 4] 2127 	ld	c,a
   484C DD 73 FD      [19] 2128 	ld	-3 (ix), e
   484F 63            [ 4] 2129 	ld	h, e
   4850 24            [ 4] 2130 	inc	h
   4851 24            [ 4] 2131 	inc	h
   4852 D5            [11] 2132 	push	de
   4853 79            [ 4] 2133 	ld	a,c
   4854 F5            [11] 2134 	push	af
   4855 33            [ 6] 2135 	inc	sp
   4856 E5            [11] 2136 	push	hl
   4857 33            [ 6] 2137 	inc	sp
   4858 21 00 C0      [10] 2138 	ld	hl,#0xC000
   485B E5            [11] 2139 	push	hl
   485C CD DD 66      [17] 2140 	call	_cpct_getScreenPtr
   485F D1            [10] 2141 	pop	de
                           2142 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4860 DD 46 06      [19] 2143 	ld	b,6 (ix)
   4863 DD 4E 04      [19] 2144 	ld	c,4 (ix)
   4866 79            [ 4] 2145 	ld	a,c
   4867 C6 FF         [ 7] 2146 	add	a,#0xFF
   4869 DD 75 FE      [19] 2147 	ld	-2 (ix),l
   486C DD 74 FF      [19] 2148 	ld	-1 (ix),h
   486F C5            [11] 2149 	push	bc
   4870 D5            [11] 2150 	push	de
   4871 C5            [11] 2151 	push	bc
   4872 33            [ 6] 2152 	inc	sp
   4873 F5            [11] 2153 	push	af
   4874 33            [ 6] 2154 	inc	sp
   4875 AF            [ 4] 2155 	xor	a, a
   4876 F5            [11] 2156 	push	af
   4877 33            [ 6] 2157 	inc	sp
   4878 DD 6E FE      [19] 2158 	ld	l,-2 (ix)
   487B DD 66 FF      [19] 2159 	ld	h,-1 (ix)
   487E E5            [11] 2160 	push	hl
   487F CD 24 66      [17] 2161 	call	_cpct_drawSolidBox
   4882 F1            [10] 2162 	pop	af
   4883 F1            [10] 2163 	pop	af
   4884 33            [ 6] 2164 	inc	sp
   4885 D1            [10] 2165 	pop	de
   4886 C1            [10] 2166 	pop	bc
                           2167 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4887 DD 66 FA      [19] 2168 	ld	h,-6 (ix)
   488A 53            [ 4] 2169 	ld	d,e
   488B C5            [11] 2170 	push	bc
   488C E5            [11] 2171 	push	hl
   488D 33            [ 6] 2172 	inc	sp
   488E D5            [11] 2173 	push	de
   488F 33            [ 6] 2174 	inc	sp
   4890 21 00 C0      [10] 2175 	ld	hl,#0xC000
   4893 E5            [11] 2176 	push	hl
   4894 CD DD 66      [17] 2177 	call	_cpct_getScreenPtr
   4897 C1            [10] 2178 	pop	bc
                           2179 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4898 DD 7E 04      [19] 2180 	ld	a,4 (ix)
   489B EB            [ 4] 2181 	ex	de,hl
   489C C5            [11] 2182 	push	bc
   489D C5            [11] 2183 	push	bc
   489E 33            [ 6] 2184 	inc	sp
   489F 47            [ 4] 2185 	ld	b,a
   48A0 0E F8         [ 7] 2186 	ld	c,#0xF8
   48A2 C5            [11] 2187 	push	bc
   48A3 D5            [11] 2188 	push	de
   48A4 CD 24 66      [17] 2189 	call	_cpct_drawSolidBox
   48A7 F1            [10] 2190 	pop	af
   48A8 F1            [10] 2191 	pop	af
   48A9 33            [ 6] 2192 	inc	sp
   48AA C1            [10] 2193 	pop	bc
                           2194 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   48AB DD 66 FC      [19] 2195 	ld	h,-4 (ix)
   48AE 24            [ 4] 2196 	inc	h
   48AF DD 56 FD      [19] 2197 	ld	d,-3 (ix)
   48B2 14            [ 4] 2198 	inc	d
   48B3 C5            [11] 2199 	push	bc
   48B4 E5            [11] 2200 	push	hl
   48B5 33            [ 6] 2201 	inc	sp
   48B6 D5            [11] 2202 	push	de
   48B7 33            [ 6] 2203 	inc	sp
   48B8 21 00 C0      [10] 2204 	ld	hl,#0xC000
   48BB E5            [11] 2205 	push	hl
   48BC CD DD 66      [17] 2206 	call	_cpct_getScreenPtr
   48BF C1            [10] 2207 	pop	bc
   48C0 5D            [ 4] 2208 	ld	e, l
   48C1 54            [ 4] 2209 	ld	d, h
                           2210 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   48C2 DD 66 06      [19] 2211 	ld	h,6 (ix)
   48C5 25            [ 4] 2212 	dec	h
   48C6 25            [ 4] 2213 	dec	h
   48C7 79            [ 4] 2214 	ld	a,c
   48C8 C6 FE         [ 7] 2215 	add	a,#0xFE
   48CA E5            [11] 2216 	push	hl
   48CB 33            [ 6] 2217 	inc	sp
   48CC 47            [ 4] 2218 	ld	b,a
   48CD 0E FF         [ 7] 2219 	ld	c,#0xFF
   48CF C5            [11] 2220 	push	bc
   48D0 D5            [11] 2221 	push	de
   48D1 CD 24 66      [17] 2222 	call	_cpct_drawSolidBox
   48D4 DD F9         [10] 2223 	ld	sp,ix
   48D6 DD E1         [14] 2224 	pop	ix
   48D8 C9            [10] 2225 	ret
                           2226 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2227 ;	---------------------------------
                           2228 ; Function EraseMenuEntry
                           2229 ; ---------------------------------
   48D9                    2230 _EraseMenuEntry::
   48D9 DD E5         [15] 2231 	push	ix
   48DB DD 21 00 00   [14] 2232 	ld	ix,#0
   48DF DD 39         [15] 2233 	add	ix,sp
   48E1 3B            [ 6] 2234 	dec	sp
                           2235 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   48E2 DD 4E 06      [19] 2236 	ld	c,6 (ix)
   48E5 06 00         [ 7] 2237 	ld	b,#0x00
   48E7 69            [ 4] 2238 	ld	l, c
   48E8 60            [ 4] 2239 	ld	h, b
   48E9 29            [11] 2240 	add	hl, hl
   48EA 29            [11] 2241 	add	hl, hl
   48EB 09            [11] 2242 	add	hl, bc
   48EC 29            [11] 2243 	add	hl, hl
   48ED 4D            [ 4] 2244 	ld	c,l
   48EE 44            [ 4] 2245 	ld	b,h
   48EF 3E C9         [ 7] 2246 	ld	a,#0xC9
   48F1 91            [ 4] 2247 	sub	a, c
   48F2 57            [ 4] 2248 	ld	d,a
   48F3 3E 00         [ 7] 2249 	ld	a,#0x00
   48F5 98            [ 4] 2250 	sbc	a, b
   48F6 5F            [ 4] 2251 	ld	e,a
   48F7 6A            [ 4] 2252 	ld	l, d
   48F8 63            [ 4] 2253 	ld	h, e
   48F9 CB 7B         [ 8] 2254 	bit	7, e
   48FB 28 03         [12] 2255 	jr	Z,00103$
   48FD 6A            [ 4] 2256 	ld	l, d
   48FE 63            [ 4] 2257 	ld	h, e
   48FF 23            [ 6] 2258 	inc	hl
   4900                    2259 00103$:
   4900 CB 2C         [ 8] 2260 	sra	h
   4902 CB 1D         [ 8] 2261 	rr	l
   4904 55            [ 4] 2262 	ld	d,l
   4905 DD 7E 07      [19] 2263 	ld	a,7 (ix)
   4908 5F            [ 4] 2264 	ld	e,a
   4909 87            [ 4] 2265 	add	a, a
   490A 87            [ 4] 2266 	add	a, a
   490B 83            [ 4] 2267 	add	a, e
   490C 87            [ 4] 2268 	add	a, a
   490D DD 77 FF      [19] 2269 	ld	-1 (ix),a
   4910 7A            [ 4] 2270 	ld	a,d
   4911 DD 86 FF      [19] 2271 	add	a, -1 (ix)
   4914 C5            [11] 2272 	push	bc
   4915 57            [ 4] 2273 	ld	d,a
   4916 1E 20         [ 7] 2274 	ld	e,#0x20
   4918 D5            [11] 2275 	push	de
   4919 21 00 C0      [10] 2276 	ld	hl,#0xC000
   491C E5            [11] 2277 	push	hl
   491D CD DD 66      [17] 2278 	call	_cpct_getScreenPtr
   4920 C1            [10] 2279 	pop	bc
                           2280 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   4921 EB            [ 4] 2281 	ex	de,hl
   4922 C5            [11] 2282 	push	bc
   4923 21 11 0A      [10] 2283 	ld	hl,#0x0A11
   4926 E5            [11] 2284 	push	hl
   4927 3E FF         [ 7] 2285 	ld	a,#0xFF
   4929 F5            [11] 2286 	push	af
   492A 33            [ 6] 2287 	inc	sp
   492B D5            [11] 2288 	push	de
   492C CD 24 66      [17] 2289 	call	_cpct_drawSolidBox
   492F F1            [10] 2290 	pop	af
   4930 F1            [10] 2291 	pop	af
   4931 33            [ 6] 2292 	inc	sp
   4932 C1            [10] 2293 	pop	bc
                           2294 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   4933 3E CA         [ 7] 2295 	ld	a,#0xCA
   4935 91            [ 4] 2296 	sub	a, c
   4936 57            [ 4] 2297 	ld	d,a
   4937 3E 00         [ 7] 2298 	ld	a,#0x00
   4939 98            [ 4] 2299 	sbc	a, b
   493A 5F            [ 4] 2300 	ld	e,a
   493B 6A            [ 4] 2301 	ld	l, d
   493C 63            [ 4] 2302 	ld	h, e
   493D CB 7B         [ 8] 2303 	bit	7, e
   493F 28 03         [12] 2304 	jr	Z,00104$
   4941 6A            [ 4] 2305 	ld	l, d
   4942 63            [ 4] 2306 	ld	h, e
   4943 23            [ 6] 2307 	inc	hl
   4944                    2308 00104$:
   4944 CB 2C         [ 8] 2309 	sra	h
   4946 CB 1D         [ 8] 2310 	rr	l
   4948 7D            [ 4] 2311 	ld	a,l
   4949 DD 86 FF      [19] 2312 	add	a, -1 (ix)
   494C 4F            [ 4] 2313 	ld	c,a
   494D DD 6E 07      [19] 2314 	ld	l,7 (ix)
   4950 26 00         [ 7] 2315 	ld	h,#0x00
   4952 29            [11] 2316 	add	hl, hl
   4953 EB            [ 4] 2317 	ex	de,hl
   4954 DD 6E 04      [19] 2318 	ld	l,4 (ix)
   4957 DD 66 05      [19] 2319 	ld	h,5 (ix)
   495A 19            [11] 2320 	add	hl,de
   495B E5            [11] 2321 	push	hl
   495C 5E            [ 7] 2322 	ld	e,(hl)
   495D 23            [ 6] 2323 	inc	hl
   495E 56            [ 7] 2324 	ld	d,(hl)
   495F C5            [11] 2325 	push	bc
   4960 D5            [11] 2326 	push	de
   4961 CD 05 66      [17] 2327 	call	_strlen
   4964 F1            [10] 2328 	pop	af
   4965 EB            [ 4] 2329 	ex	de,hl
   4966 C1            [10] 2330 	pop	bc
   4967 E1            [10] 2331 	pop	hl
   4968 3E 52         [ 7] 2332 	ld	a,#0x52
   496A 93            [ 4] 2333 	sub	a, e
   496B 5F            [ 4] 2334 	ld	e,a
   496C 3E 00         [ 7] 2335 	ld	a,#0x00
   496E 9A            [ 4] 2336 	sbc	a, d
   496F 57            [ 4] 2337 	ld	d,a
   4970 CB 3A         [ 8] 2338 	srl	d
   4972 CB 1B         [ 8] 2339 	rr	e
   4974 E5            [11] 2340 	push	hl
   4975 51            [ 4] 2341 	ld	d, c
   4976 D5            [11] 2342 	push	de
   4977 01 00 C0      [10] 2343 	ld	bc,#0xC000
   497A C5            [11] 2344 	push	bc
   497B CD DD 66      [17] 2345 	call	_cpct_getScreenPtr
   497E 4D            [ 4] 2346 	ld	c,l
   497F 44            [ 4] 2347 	ld	b,h
   4980 E1            [10] 2348 	pop	hl
                           2349 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4981 5E            [ 7] 2350 	ld	e,(hl)
   4982 23            [ 6] 2351 	inc	hl
   4983 56            [ 7] 2352 	ld	d,(hl)
   4984 AF            [ 4] 2353 	xor	a, a
   4985 F5            [11] 2354 	push	af
   4986 33            [ 6] 2355 	inc	sp
   4987 C5            [11] 2356 	push	bc
   4988 D5            [11] 2357 	push	de
   4989 CD E3 63      [17] 2358 	call	_cpct_drawStringM2
   498C F1            [10] 2359 	pop	af
   498D F1            [10] 2360 	pop	af
   498E 33            [ 6] 2361 	inc	sp
   498F 33            [ 6] 2362 	inc	sp
   4990 DD E1         [14] 2363 	pop	ix
   4992 C9            [10] 2364 	ret
                           2365 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2366 ;	---------------------------------
                           2367 ; Function drawMenuEntry
                           2368 ; ---------------------------------
   4993                    2369 _drawMenuEntry::
   4993 DD E5         [15] 2370 	push	ix
   4995 DD 21 00 00   [14] 2371 	ld	ix,#0
   4999 DD 39         [15] 2372 	add	ix,sp
   499B 21 FA FF      [10] 2373 	ld	hl,#-6
   499E 39            [11] 2374 	add	hl,sp
   499F F9            [ 6] 2375 	ld	sp,hl
                           2376 ;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   49A0 DD 4E 06      [19] 2377 	ld	c,6 (ix)
   49A3 06 00         [ 7] 2378 	ld	b,#0x00
   49A5 69            [ 4] 2379 	ld	l, c
   49A6 60            [ 4] 2380 	ld	h, b
   49A7 29            [11] 2381 	add	hl, hl
   49A8 29            [11] 2382 	add	hl, hl
   49A9 09            [11] 2383 	add	hl, bc
   49AA 29            [11] 2384 	add	hl, hl
   49AB 4D            [ 4] 2385 	ld	c,l
   49AC 44            [ 4] 2386 	ld	b,h
   49AD 3E C9         [ 7] 2387 	ld	a,#0xC9
   49AF 91            [ 4] 2388 	sub	a, c
   49B0 57            [ 4] 2389 	ld	d,a
   49B1 3E 00         [ 7] 2390 	ld	a,#0x00
   49B3 98            [ 4] 2391 	sbc	a, b
   49B4 5F            [ 4] 2392 	ld	e,a
   49B5 6A            [ 4] 2393 	ld	l, d
   49B6 63            [ 4] 2394 	ld	h, e
   49B7 CB 7B         [ 8] 2395 	bit	7, e
   49B9 28 03         [12] 2396 	jr	Z,00114$
   49BB 6A            [ 4] 2397 	ld	l, d
   49BC 63            [ 4] 2398 	ld	h, e
   49BD 23            [ 6] 2399 	inc	hl
   49BE                    2400 00114$:
   49BE CB 2C         [ 8] 2401 	sra	h
   49C0 CB 1D         [ 8] 2402 	rr	l
   49C2 55            [ 4] 2403 	ld	d,l
   49C3 DD 7E 07      [19] 2404 	ld	a,7 (ix)
   49C6 5F            [ 4] 2405 	ld	e,a
   49C7 87            [ 4] 2406 	add	a, a
   49C8 87            [ 4] 2407 	add	a, a
   49C9 83            [ 4] 2408 	add	a, e
   49CA 87            [ 4] 2409 	add	a, a
   49CB 82            [ 4] 2410 	add	a,d
   49CC C5            [11] 2411 	push	bc
   49CD 57            [ 4] 2412 	ld	d,a
   49CE 1E 20         [ 7] 2413 	ld	e,#0x20
   49D0 D5            [11] 2414 	push	de
   49D1 21 00 C0      [10] 2415 	ld	hl,#0xC000
   49D4 E5            [11] 2416 	push	hl
   49D5 CD DD 66      [17] 2417 	call	_cpct_getScreenPtr
   49D8 C1            [10] 2418 	pop	bc
                           2419 ;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   49D9 EB            [ 4] 2420 	ex	de,hl
   49DA C5            [11] 2421 	push	bc
   49DB 21 11 0A      [10] 2422 	ld	hl,#0x0A11
   49DE E5            [11] 2423 	push	hl
   49DF AF            [ 4] 2424 	xor	a, a
   49E0 F5            [11] 2425 	push	af
   49E1 33            [ 6] 2426 	inc	sp
   49E2 D5            [11] 2427 	push	de
   49E3 CD 24 66      [17] 2428 	call	_cpct_drawSolidBox
   49E6 F1            [10] 2429 	pop	af
   49E7 F1            [10] 2430 	pop	af
   49E8 33            [ 6] 2431 	inc	sp
   49E9 C1            [10] 2432 	pop	bc
                           2433 ;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
   49EA 21 B0 36      [10] 2434 	ld	hl,#0x36B0
   49ED                    2435 00108$:
   49ED 2B            [ 6] 2436 	dec	hl
   49EE 7C            [ 4] 2437 	ld	a,h
   49EF B5            [ 4] 2438 	or	a,l
   49F0 20 FB         [12] 2439 	jr	NZ,00108$
                           2440 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   49F2 3E CA         [ 7] 2441 	ld	a,#0xCA
   49F4 91            [ 4] 2442 	sub	a, c
   49F5 DD 77 FC      [19] 2443 	ld	-4 (ix),a
   49F8 3E 00         [ 7] 2444 	ld	a,#0x00
   49FA 98            [ 4] 2445 	sbc	a, b
   49FB DD 77 FD      [19] 2446 	ld	-3 (ix), a
   49FE 07            [ 4] 2447 	rlca
   49FF E6 01         [ 7] 2448 	and	a,#0x01
   4A01 5F            [ 4] 2449 	ld	e,a
   4A02 21 00 00      [10] 2450 	ld	hl,#0x0000
   4A05 E3            [19] 2451 	ex	(sp), hl
   4A06                    2452 00110$:
   4A06 DD 66 06      [19] 2453 	ld	h,6 (ix)
   4A09 2E 00         [ 7] 2454 	ld	l,#0x00
   4A0B DD 7E FA      [19] 2455 	ld	a,-6 (ix)
   4A0E 94            [ 4] 2456 	sub	a, h
   4A0F DD 7E FB      [19] 2457 	ld	a,-5 (ix)
   4A12 9D            [ 4] 2458 	sbc	a, l
   4A13 E2 18 4A      [10] 2459 	jp	PO, 00146$
   4A16 EE 80         [ 7] 2460 	xor	a, #0x80
   4A18                    2461 00146$:
   4A18 F2 BE 4A      [10] 2462 	jp	P,00112$
                           2463 ;src/includes/gui.h:97: if(i==iSelect)
   4A1B DD 56 07      [19] 2464 	ld	d,7 (ix)
   4A1E 06 00         [ 7] 2465 	ld	b,#0x00
   4A20 DD 7E FA      [19] 2466 	ld	a,-6 (ix)
   4A23 92            [ 4] 2467 	sub	a, d
   4A24 20 0A         [12] 2468 	jr	NZ,00103$
   4A26 DD 7E FB      [19] 2469 	ld	a,-5 (ix)
   4A29 90            [ 4] 2470 	sub	a, b
   4A2A 20 04         [12] 2471 	jr	NZ,00103$
                           2472 ;src/includes/gui.h:98: penSelected = 1;
   4A2C 0E 01         [ 7] 2473 	ld	c,#0x01
   4A2E 18 02         [12] 2474 	jr	00104$
   4A30                    2475 00103$:
                           2476 ;src/includes/gui.h:100: penSelected = 0;
   4A30 0E 00         [ 7] 2477 	ld	c,#0x00
   4A32                    2478 00104$:
                           2479 ;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4A32 DD 6E FC      [19] 2480 	ld	l,-4 (ix)
   4A35 DD 66 FD      [19] 2481 	ld	h,-3 (ix)
   4A38 7B            [ 4] 2482 	ld	a,e
   4A39 B7            [ 4] 2483 	or	a, a
   4A3A 28 07         [12] 2484 	jr	Z,00115$
   4A3C DD 6E FC      [19] 2485 	ld	l,-4 (ix)
   4A3F DD 66 FD      [19] 2486 	ld	h,-3 (ix)
   4A42 23            [ 6] 2487 	inc	hl
   4A43                    2488 00115$:
   4A43 CB 2C         [ 8] 2489 	sra	h
   4A45 CB 1D         [ 8] 2490 	rr	l
   4A47 45            [ 4] 2491 	ld	b,l
   4A48 DD 6E FA      [19] 2492 	ld	l,-6 (ix)
   4A4B D5            [11] 2493 	push	de
   4A4C 5D            [ 4] 2494 	ld	e,l
   4A4D 29            [11] 2495 	add	hl, hl
   4A4E 29            [11] 2496 	add	hl, hl
   4A4F 19            [11] 2497 	add	hl, de
   4A50 29            [11] 2498 	add	hl, hl
   4A51 D1            [10] 2499 	pop	de
   4A52 78            [ 4] 2500 	ld	a,b
   4A53 85            [ 4] 2501 	add	a, l
   4A54 DD 77 FF      [19] 2502 	ld	-1 (ix),a
   4A57 DD 56 FA      [19] 2503 	ld	d,-6 (ix)
   4A5A DD 46 FB      [19] 2504 	ld	b,-5 (ix)
   4A5D CB 22         [ 8] 2505 	sla	d
   4A5F CB 10         [ 8] 2506 	rl	b
   4A61 DD 7E 04      [19] 2507 	ld	a,4 (ix)
   4A64 82            [ 4] 2508 	add	a, d
   4A65 57            [ 4] 2509 	ld	d,a
   4A66 DD 7E 05      [19] 2510 	ld	a,5 (ix)
   4A69 88            [ 4] 2511 	adc	a, b
   4A6A 47            [ 4] 2512 	ld	b,a
   4A6B 6A            [ 4] 2513 	ld	l, d
   4A6C 60            [ 4] 2514 	ld	h, b
   4A6D 7E            [ 7] 2515 	ld	a, (hl)
   4A6E 23            [ 6] 2516 	inc	hl
   4A6F 66            [ 7] 2517 	ld	h,(hl)
   4A70 6F            [ 4] 2518 	ld	l,a
   4A71 C5            [11] 2519 	push	bc
   4A72 D5            [11] 2520 	push	de
   4A73 E5            [11] 2521 	push	hl
   4A74 CD 05 66      [17] 2522 	call	_strlen
   4A77 F1            [10] 2523 	pop	af
   4A78 D1            [10] 2524 	pop	de
   4A79 C1            [10] 2525 	pop	bc
   4A7A 3E 52         [ 7] 2526 	ld	a,#0x52
   4A7C 95            [ 4] 2527 	sub	a, l
   4A7D 6F            [ 4] 2528 	ld	l,a
   4A7E 3E 00         [ 7] 2529 	ld	a,#0x00
   4A80 9C            [ 4] 2530 	sbc	a, h
   4A81 67            [ 4] 2531 	ld	h,a
   4A82 CB 3C         [ 8] 2532 	srl	h
   4A84 CB 1D         [ 8] 2533 	rr	l
   4A86 DD 75 FE      [19] 2534 	ld	-2 (ix),l
   4A89 C5            [11] 2535 	push	bc
   4A8A D5            [11] 2536 	push	de
   4A8B DD 66 FF      [19] 2537 	ld	h,-1 (ix)
   4A8E DD 6E FE      [19] 2538 	ld	l,-2 (ix)
   4A91 E5            [11] 2539 	push	hl
   4A92 21 00 C0      [10] 2540 	ld	hl,#0xC000
   4A95 E5            [11] 2541 	push	hl
   4A96 CD DD 66      [17] 2542 	call	_cpct_getScreenPtr
   4A99 D1            [10] 2543 	pop	de
   4A9A C1            [10] 2544 	pop	bc
   4A9B E5            [11] 2545 	push	hl
   4A9C FD E1         [14] 2546 	pop	iy
                           2547 ;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
   4A9E 6A            [ 4] 2548 	ld	l, d
   4A9F 60            [ 4] 2549 	ld	h, b
   4AA0 7E            [ 7] 2550 	ld	a, (hl)
   4AA1 23            [ 6] 2551 	inc	hl
   4AA2 66            [ 7] 2552 	ld	h,(hl)
   4AA3 6F            [ 4] 2553 	ld	l,a
   4AA4 D5            [11] 2554 	push	de
   4AA5 79            [ 4] 2555 	ld	a,c
   4AA6 F5            [11] 2556 	push	af
   4AA7 33            [ 6] 2557 	inc	sp
   4AA8 FD E5         [15] 2558 	push	iy
   4AAA E5            [11] 2559 	push	hl
   4AAB CD E3 63      [17] 2560 	call	_cpct_drawStringM2
   4AAE F1            [10] 2561 	pop	af
   4AAF F1            [10] 2562 	pop	af
   4AB0 33            [ 6] 2563 	inc	sp
   4AB1 D1            [10] 2564 	pop	de
                           2565 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4AB2 DD 34 FA      [23] 2566 	inc	-6 (ix)
   4AB5 C2 06 4A      [10] 2567 	jp	NZ,00110$
   4AB8 DD 34 FB      [23] 2568 	inc	-5 (ix)
   4ABB C3 06 4A      [10] 2569 	jp	00110$
   4ABE                    2570 00112$:
   4ABE DD F9         [10] 2571 	ld	sp, ix
   4AC0 DD E1         [14] 2572 	pop	ix
   4AC2 C9            [10] 2573 	ret
                           2574 ;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
                           2575 ;	---------------------------------
                           2576 ; Function drawMenu
                           2577 ; ---------------------------------
   4AC3                    2578 _drawMenu::
   4AC3 DD E5         [15] 2579 	push	ix
   4AC5 DD 21 00 00   [14] 2580 	ld	ix,#0
   4AC9 DD 39         [15] 2581 	add	ix,sp
   4ACB F5            [11] 2582 	push	af
                           2583 ;src/includes/gui.h:110: u8 iSelect=0;
   4ACC 06 00         [ 7] 2584 	ld	b,#0x00
                           2585 ;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
   4ACE C5            [11] 2586 	push	bc
   4ACF 21 00 40      [10] 2587 	ld	hl,#0x4000
   4AD2 E5            [11] 2588 	push	hl
   4AD3 3E FF         [ 7] 2589 	ld	a,#0xFF
   4AD5 F5            [11] 2590 	push	af
   4AD6 33            [ 6] 2591 	inc	sp
   4AD7 26 C0         [ 7] 2592 	ld	h, #0xC0
   4AD9 E5            [11] 2593 	push	hl
   4ADA CD DE 65      [17] 2594 	call	_cpct_memset
   4ADD C1            [10] 2595 	pop	bc
                           2596 ;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
   4ADE DD 5E 06      [19] 2597 	ld	e,6 (ix)
   4AE1 16 00         [ 7] 2598 	ld	d,#0x00
   4AE3 6B            [ 4] 2599 	ld	l, e
   4AE4 62            [ 4] 2600 	ld	h, d
   4AE5 29            [11] 2601 	add	hl, hl
   4AE6 19            [11] 2602 	add	hl, de
   4AE7 29            [11] 2603 	add	hl, hl
   4AE8 29            [11] 2604 	add	hl, hl
   4AE9 C5            [11] 2605 	push	bc
   4AEA E5            [11] 2606 	push	hl
   4AEB 21 1E 00      [10] 2607 	ld	hl,#0x001E
   4AEE E5            [11] 2608 	push	hl
   4AEF CD F9 47      [17] 2609 	call	_drawBoxM2
   4AF2 F1            [10] 2610 	pop	af
   4AF3 F1            [10] 2611 	pop	af
   4AF4 AF            [ 4] 2612 	xor	a, a
   4AF5 F5            [11] 2613 	push	af
   4AF6 33            [ 6] 2614 	inc	sp
   4AF7 DD 7E 06      [19] 2615 	ld	a,6 (ix)
   4AFA F5            [11] 2616 	push	af
   4AFB 33            [ 6] 2617 	inc	sp
   4AFC DD 6E 04      [19] 2618 	ld	l,4 (ix)
   4AFF DD 66 05      [19] 2619 	ld	h,5 (ix)
   4B02 E5            [11] 2620 	push	hl
   4B03 CD 93 49      [17] 2621 	call	_drawMenuEntry
   4B06 F1            [10] 2622 	pop	af
   4B07 F1            [10] 2623 	pop	af
   4B08 C1            [10] 2624 	pop	bc
                           2625 ;src/includes/gui.h:118: do{
   4B09 DD 4E 06      [19] 2626 	ld	c,6 (ix)
   4B0C 0D            [ 4] 2627 	dec	c
   4B0D                    2628 00111$:
                           2629 ;src/includes/gui.h:119: cpct_scanKeyboard(); 
   4B0D C5            [11] 2630 	push	bc
   4B0E CD FD 66      [17] 2631 	call	_cpct_scanKeyboard
   4B11 21 00 01      [10] 2632 	ld	hl,#0x0100
   4B14 CD AC 63      [17] 2633 	call	_cpct_isKeyPressed
   4B17 7D            [ 4] 2634 	ld	a,l
   4B18 C1            [10] 2635 	pop	bc
   4B19 B7            [ 4] 2636 	or	a, a
   4B1A 28 32         [12] 2637 	jr	Z,00105$
                           2638 ;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
   4B1C C5            [11] 2639 	push	bc
   4B1D C5            [11] 2640 	push	bc
   4B1E 33            [ 6] 2641 	inc	sp
   4B1F DD 7E 06      [19] 2642 	ld	a,6 (ix)
   4B22 F5            [11] 2643 	push	af
   4B23 33            [ 6] 2644 	inc	sp
   4B24 DD 6E 04      [19] 2645 	ld	l,4 (ix)
   4B27 DD 66 05      [19] 2646 	ld	h,5 (ix)
   4B2A E5            [11] 2647 	push	hl
   4B2B CD D9 48      [17] 2648 	call	_EraseMenuEntry
   4B2E F1            [10] 2649 	pop	af
   4B2F F1            [10] 2650 	pop	af
   4B30 C1            [10] 2651 	pop	bc
                           2652 ;src/includes/gui.h:125: if(iSelect ==0)
   4B31 78            [ 4] 2653 	ld	a,b
   4B32 B7            [ 4] 2654 	or	a, a
   4B33 20 03         [12] 2655 	jr	NZ,00102$
                           2656 ;src/includes/gui.h:126: iSelect = nbEntry-1;
   4B35 41            [ 4] 2657 	ld	b,c
   4B36 18 01         [12] 2658 	jr	00103$
   4B38                    2659 00102$:
                           2660 ;src/includes/gui.h:128: iSelect--;
   4B38 05            [ 4] 2661 	dec	b
   4B39                    2662 00103$:
                           2663 ;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
   4B39 C5            [11] 2664 	push	bc
   4B3A C5            [11] 2665 	push	bc
   4B3B 33            [ 6] 2666 	inc	sp
   4B3C DD 7E 06      [19] 2667 	ld	a,6 (ix)
   4B3F F5            [11] 2668 	push	af
   4B40 33            [ 6] 2669 	inc	sp
   4B41 DD 6E 04      [19] 2670 	ld	l,4 (ix)
   4B44 DD 66 05      [19] 2671 	ld	h,5 (ix)
   4B47 E5            [11] 2672 	push	hl
   4B48 CD 93 49      [17] 2673 	call	_drawMenuEntry
   4B4B F1            [10] 2674 	pop	af
   4B4C F1            [10] 2675 	pop	af
   4B4D C1            [10] 2676 	pop	bc
   4B4E                    2677 00105$:
                           2678 ;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
   4B4E C5            [11] 2679 	push	bc
   4B4F 21 00 04      [10] 2680 	ld	hl,#0x0400
   4B52 CD AC 63      [17] 2681 	call	_cpct_isKeyPressed
   4B55 5D            [ 4] 2682 	ld	e,l
   4B56 C1            [10] 2683 	pop	bc
   4B57 7B            [ 4] 2684 	ld	a,e
   4B58 B7            [ 4] 2685 	or	a, a
   4B59 28 48         [12] 2686 	jr	Z,00112$
                           2687 ;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
   4B5B C5            [11] 2688 	push	bc
   4B5C C5            [11] 2689 	push	bc
   4B5D 33            [ 6] 2690 	inc	sp
   4B5E DD 7E 06      [19] 2691 	ld	a,6 (ix)
   4B61 F5            [11] 2692 	push	af
   4B62 33            [ 6] 2693 	inc	sp
   4B63 DD 6E 04      [19] 2694 	ld	l,4 (ix)
   4B66 DD 66 05      [19] 2695 	ld	h,5 (ix)
   4B69 E5            [11] 2696 	push	hl
   4B6A CD D9 48      [17] 2697 	call	_EraseMenuEntry
   4B6D F1            [10] 2698 	pop	af
   4B6E F1            [10] 2699 	pop	af
   4B6F C1            [10] 2700 	pop	bc
                           2701 ;src/includes/gui.h:137: if(iSelect == nbEntry-1)
   4B70 DD 5E 06      [19] 2702 	ld	e,6 (ix)
   4B73 16 00         [ 7] 2703 	ld	d,#0x00
   4B75 1B            [ 6] 2704 	dec	de
   4B76 DD 70 FE      [19] 2705 	ld	-2 (ix),b
   4B79 DD 36 FF 00   [19] 2706 	ld	-1 (ix),#0x00
   4B7D 7B            [ 4] 2707 	ld	a,e
   4B7E DD 96 FE      [19] 2708 	sub	a, -2 (ix)
   4B81 20 0A         [12] 2709 	jr	NZ,00107$
   4B83 7A            [ 4] 2710 	ld	a,d
   4B84 DD 96 FF      [19] 2711 	sub	a, -1 (ix)
   4B87 20 04         [12] 2712 	jr	NZ,00107$
                           2713 ;src/includes/gui.h:138: iSelect = 0;
   4B89 06 00         [ 7] 2714 	ld	b,#0x00
   4B8B 18 01         [12] 2715 	jr	00108$
   4B8D                    2716 00107$:
                           2717 ;src/includes/gui.h:140: iSelect++;
   4B8D 04            [ 4] 2718 	inc	b
   4B8E                    2719 00108$:
                           2720 ;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
   4B8E C5            [11] 2721 	push	bc
   4B8F C5            [11] 2722 	push	bc
   4B90 33            [ 6] 2723 	inc	sp
   4B91 DD 7E 06      [19] 2724 	ld	a,6 (ix)
   4B94 F5            [11] 2725 	push	af
   4B95 33            [ 6] 2726 	inc	sp
   4B96 DD 6E 04      [19] 2727 	ld	l,4 (ix)
   4B99 DD 66 05      [19] 2728 	ld	h,5 (ix)
   4B9C E5            [11] 2729 	push	hl
   4B9D CD 93 49      [17] 2730 	call	_drawMenuEntry
   4BA0 F1            [10] 2731 	pop	af
   4BA1 F1            [10] 2732 	pop	af
   4BA2 C1            [10] 2733 	pop	bc
   4BA3                    2734 00112$:
                           2735 ;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
   4BA3 C5            [11] 2736 	push	bc
   4BA4 21 02 04      [10] 2737 	ld	hl,#0x0402
   4BA7 CD AC 63      [17] 2738 	call	_cpct_isKeyPressed
   4BAA 7D            [ 4] 2739 	ld	a,l
   4BAB C1            [10] 2740 	pop	bc
   4BAC B7            [ 4] 2741 	or	a, a
   4BAD CA 0D 4B      [10] 2742 	jp	Z,00111$
                           2743 ;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
   4BB0 21 B0 36      [10] 2744 	ld	hl,#0x36B0
   4BB3                    2745 00117$:
   4BB3 EB            [ 4] 2746 	ex	de,hl
   4BB4 1B            [ 6] 2747 	dec	de
   4BB5 6B            [ 4] 2748 	ld	l, e
   4BB6 7A            [ 4] 2749 	ld	a,d
   4BB7 67            [ 4] 2750 	ld	h,a
   4BB8 B3            [ 4] 2751 	or	a,e
   4BB9 20 F8         [12] 2752 	jr	NZ,00117$
                           2753 ;src/includes/gui.h:150: return iSelect;
   4BBB 68            [ 4] 2754 	ld	l,b
   4BBC DD F9         [10] 2755 	ld	sp, ix
   4BBE DD E1         [14] 2756 	pop	ix
   4BC0 C9            [10] 2757 	ret
                           2758 ;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           2759 ;	---------------------------------
                           2760 ; Function drawWindow
                           2761 ; ---------------------------------
   4BC1                    2762 _drawWindow::
   4BC1 DD E5         [15] 2763 	push	ix
   4BC3 DD 21 00 00   [14] 2764 	ld	ix,#0
   4BC7 DD 39         [15] 2765 	add	ix,sp
   4BC9 21 F5 FF      [10] 2766 	ld	hl,#-11
   4BCC 39            [11] 2767 	add	hl,sp
   4BCD F9            [ 6] 2768 	ld	sp,hl
                           2769 ;src/includes/gui.h:164: u8 valueReturn=0;
   4BCE DD 36 F5 00   [19] 2770 	ld	-11 (ix),#0x00
                           2771 ;src/includes/gui.h:167: if(button == 0)
   4BD2 DD 7E 07      [19] 2772 	ld	a,7 (ix)
   4BD5 B7            [ 4] 2773 	or	a, a
   4BD6 20 05         [12] 2774 	jr	NZ,00102$
                           2775 ;src/includes/gui.h:168: buttonTxt = "<OK>";
   4BD8 11 4A 4D      [10] 2776 	ld	de,#___str_0
   4BDB 18 03         [12] 2777 	jr	00103$
   4BDD                    2778 00102$:
                           2779 ;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
   4BDD 11 4F 4D      [10] 2780 	ld	de,#___str_1+0
   4BE0                    2781 00103$:
                           2782 ;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
   4BE0 DD 4E 06      [19] 2783 	ld	c,6 (ix)
   4BE3 06 00         [ 7] 2784 	ld	b,#0x00
   4BE5 03            [ 6] 2785 	inc	bc
   4BE6 03            [ 6] 2786 	inc	bc
   4BE7 69            [ 4] 2787 	ld	l, c
   4BE8 60            [ 4] 2788 	ld	h, b
   4BE9 29            [11] 2789 	add	hl, hl
   4BEA 09            [11] 2790 	add	hl, bc
   4BEB 29            [11] 2791 	add	hl, hl
   4BEC 29            [11] 2792 	add	hl, hl
   4BED C5            [11] 2793 	push	bc
   4BEE D5            [11] 2794 	push	de
   4BEF E5            [11] 2795 	push	hl
   4BF0 21 32 00      [10] 2796 	ld	hl,#0x0032
   4BF3 E5            [11] 2797 	push	hl
   4BF4 CD F9 47      [17] 2798 	call	_drawBoxM2
   4BF7 F1            [10] 2799 	pop	af
   4BF8 F1            [10] 2800 	pop	af
   4BF9 D1            [10] 2801 	pop	de
   4BFA C1            [10] 2802 	pop	bc
                           2803 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4BFB 69            [ 4] 2804 	ld	l, c
   4BFC 60            [ 4] 2805 	ld	h, b
   4BFD 29            [11] 2806 	add	hl, hl
   4BFE 29            [11] 2807 	add	hl, hl
   4BFF 09            [11] 2808 	add	hl, bc
   4C00 29            [11] 2809 	add	hl, hl
   4C01 3E CA         [ 7] 2810 	ld	a,#0xCA
   4C03 95            [ 4] 2811 	sub	a, l
   4C04 DD 77 FE      [19] 2812 	ld	-2 (ix),a
   4C07 3E 00         [ 7] 2813 	ld	a,#0x00
   4C09 9C            [ 4] 2814 	sbc	a, h
   4C0A DD 77 FF      [19] 2815 	ld	-1 (ix), a
   4C0D 07            [ 4] 2816 	rlca
   4C0E E6 01         [ 7] 2817 	and	a,#0x01
   4C10 DD 77 F7      [19] 2818 	ld	-9 (ix),a
   4C13 DD 36 F6 00   [19] 2819 	ld	-10 (ix),#0x00
   4C17 DD 36 FD 00   [19] 2820 	ld	-3 (ix),#0x00
   4C1B                    2821 00114$:
                           2822 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C1B DD 7E FE      [19] 2823 	ld	a,-2 (ix)
   4C1E C6 01         [ 7] 2824 	add	a, #0x01
   4C20 DD 77 FB      [19] 2825 	ld	-5 (ix),a
   4C23 DD 7E FF      [19] 2826 	ld	a,-1 (ix)
   4C26 CE 00         [ 7] 2827 	adc	a, #0x00
   4C28 DD 77 FC      [19] 2828 	ld	-4 (ix),a
                           2829 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4C2B DD 7E F6      [19] 2830 	ld	a,-10 (ix)
   4C2E DD 96 06      [19] 2831 	sub	a, 6 (ix)
   4C31 D2 BD 4C      [10] 2832 	jp	NC,00104$
                           2833 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C34 DD 6E FE      [19] 2834 	ld	l,-2 (ix)
   4C37 DD 66 FF      [19] 2835 	ld	h,-1 (ix)
   4C3A DD 7E F7      [19] 2836 	ld	a,-9 (ix)
   4C3D B7            [ 4] 2837 	or	a, a
   4C3E 28 06         [12] 2838 	jr	Z,00118$
   4C40 DD 6E FB      [19] 2839 	ld	l,-5 (ix)
   4C43 DD 66 FC      [19] 2840 	ld	h,-4 (ix)
   4C46                    2841 00118$:
   4C46 CB 2C         [ 8] 2842 	sra	h
   4C48 CB 1D         [ 8] 2843 	rr	l
   4C4A DD 66 FD      [19] 2844 	ld	h,-3 (ix)
   4C4D 7D            [ 4] 2845 	ld	a,l
   4C4E 84            [ 4] 2846 	add	a, h
   4C4F DD 77 FA      [19] 2847 	ld	-6 (ix),a
   4C52 DD 6E F6      [19] 2848 	ld	l,-10 (ix)
   4C55 26 00         [ 7] 2849 	ld	h,#0x00
   4C57 29            [11] 2850 	add	hl, hl
   4C58 45            [ 4] 2851 	ld	b,l
   4C59 4C            [ 4] 2852 	ld	c,h
   4C5A DD 7E 04      [19] 2853 	ld	a,4 (ix)
   4C5D 80            [ 4] 2854 	add	a, b
   4C5E DD 77 F8      [19] 2855 	ld	-8 (ix),a
   4C61 DD 7E 05      [19] 2856 	ld	a,5 (ix)
   4C64 89            [ 4] 2857 	adc	a, c
   4C65 DD 77 F9      [19] 2858 	ld	-7 (ix),a
   4C68 DD 6E F8      [19] 2859 	ld	l,-8 (ix)
   4C6B DD 66 F9      [19] 2860 	ld	h,-7 (ix)
   4C6E 4E            [ 7] 2861 	ld	c,(hl)
   4C6F 23            [ 6] 2862 	inc	hl
   4C70 46            [ 7] 2863 	ld	b,(hl)
   4C71 D5            [11] 2864 	push	de
   4C72 C5            [11] 2865 	push	bc
   4C73 CD 05 66      [17] 2866 	call	_strlen
   4C76 F1            [10] 2867 	pop	af
   4C77 D1            [10] 2868 	pop	de
   4C78 3E 52         [ 7] 2869 	ld	a,#0x52
   4C7A 95            [ 4] 2870 	sub	a, l
   4C7B 6F            [ 4] 2871 	ld	l,a
   4C7C 3E 00         [ 7] 2872 	ld	a,#0x00
   4C7E 9C            [ 4] 2873 	sbc	a, h
   4C7F 67            [ 4] 2874 	ld	h,a
   4C80 CB 3C         [ 8] 2875 	srl	h
   4C82 CB 1D         [ 8] 2876 	rr	l
   4C84 45            [ 4] 2877 	ld	b,l
   4C85 D5            [11] 2878 	push	de
   4C86 DD 7E FA      [19] 2879 	ld	a,-6 (ix)
   4C89 F5            [11] 2880 	push	af
   4C8A 33            [ 6] 2881 	inc	sp
   4C8B C5            [11] 2882 	push	bc
   4C8C 33            [ 6] 2883 	inc	sp
   4C8D 21 00 C0      [10] 2884 	ld	hl,#0xC000
   4C90 E5            [11] 2885 	push	hl
   4C91 CD DD 66      [17] 2886 	call	_cpct_getScreenPtr
   4C94 D1            [10] 2887 	pop	de
   4C95 E5            [11] 2888 	push	hl
   4C96 FD E1         [14] 2889 	pop	iy
                           2890 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4C98 DD 6E F8      [19] 2891 	ld	l,-8 (ix)
   4C9B DD 66 F9      [19] 2892 	ld	h,-7 (ix)
   4C9E 4E            [ 7] 2893 	ld	c,(hl)
   4C9F 23            [ 6] 2894 	inc	hl
   4CA0 46            [ 7] 2895 	ld	b,(hl)
   4CA1 D5            [11] 2896 	push	de
   4CA2 AF            [ 4] 2897 	xor	a, a
   4CA3 F5            [11] 2898 	push	af
   4CA4 33            [ 6] 2899 	inc	sp
   4CA5 FD E5         [15] 2900 	push	iy
   4CA7 C5            [11] 2901 	push	bc
   4CA8 CD E3 63      [17] 2902 	call	_cpct_drawStringM2
   4CAB F1            [10] 2903 	pop	af
   4CAC F1            [10] 2904 	pop	af
   4CAD 33            [ 6] 2905 	inc	sp
   4CAE D1            [10] 2906 	pop	de
                           2907 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4CAF DD 7E FD      [19] 2908 	ld	a,-3 (ix)
   4CB2 C6 0A         [ 7] 2909 	add	a, #0x0A
   4CB4 DD 77 FD      [19] 2910 	ld	-3 (ix),a
   4CB7 DD 34 F6      [23] 2911 	inc	-10 (ix)
   4CBA C3 1B 4C      [10] 2912 	jp	00114$
   4CBD                    2913 00104$:
                           2914 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4CBD DD 46 FE      [19] 2915 	ld	b,-2 (ix)
   4CC0 DD 66 FF      [19] 2916 	ld	h,-1 (ix)
   4CC3 DD 7E F7      [19] 2917 	ld	a,-9 (ix)
   4CC6 B7            [ 4] 2918 	or	a, a
   4CC7 28 06         [12] 2919 	jr	Z,00119$
   4CC9 DD 46 FB      [19] 2920 	ld	b,-5 (ix)
   4CCC DD 66 FC      [19] 2921 	ld	h,-4 (ix)
   4CCF                    2922 00119$:
   4CCF CB 2C         [ 8] 2923 	sra	h
   4CD1 CB 18         [ 8] 2924 	rr	b
   4CD3 DD 4E 06      [19] 2925 	ld	c,6 (ix)
   4CD6 0C            [ 4] 2926 	inc	c
   4CD7 79            [ 4] 2927 	ld	a,c
   4CD8 87            [ 4] 2928 	add	a, a
   4CD9 87            [ 4] 2929 	add	a, a
   4CDA 81            [ 4] 2930 	add	a, c
   4CDB 87            [ 4] 2931 	add	a, a
   4CDC 67            [ 4] 2932 	ld	h, a
   4CDD 80            [ 4] 2933 	add	a,b
   4CDE 47            [ 4] 2934 	ld	b,a
   4CDF C5            [11] 2935 	push	bc
   4CE0 D5            [11] 2936 	push	de
   4CE1 D5            [11] 2937 	push	de
   4CE2 CD 05 66      [17] 2938 	call	_strlen
   4CE5 F1            [10] 2939 	pop	af
   4CE6 D1            [10] 2940 	pop	de
   4CE7 C1            [10] 2941 	pop	bc
   4CE8 3E 52         [ 7] 2942 	ld	a,#0x52
   4CEA 95            [ 4] 2943 	sub	a, l
   4CEB 6F            [ 4] 2944 	ld	l,a
   4CEC 3E 00         [ 7] 2945 	ld	a,#0x00
   4CEE 9C            [ 4] 2946 	sbc	a, h
   4CEF 67            [ 4] 2947 	ld	h,a
   4CF0 CB 3C         [ 8] 2948 	srl	h
   4CF2 CB 1D         [ 8] 2949 	rr	l
   4CF4 7D            [ 4] 2950 	ld	a,l
   4CF5 D5            [11] 2951 	push	de
   4CF6 C5            [11] 2952 	push	bc
   4CF7 33            [ 6] 2953 	inc	sp
   4CF8 F5            [11] 2954 	push	af
   4CF9 33            [ 6] 2955 	inc	sp
   4CFA 21 00 C0      [10] 2956 	ld	hl,#0xC000
   4CFD E5            [11] 2957 	push	hl
   4CFE CD DD 66      [17] 2958 	call	_cpct_getScreenPtr
   4D01 D1            [10] 2959 	pop	de
                           2960 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4D02 4D            [ 4] 2961 	ld	c, l
   4D03 44            [ 4] 2962 	ld	b, h
   4D04 AF            [ 4] 2963 	xor	a, a
   4D05 F5            [11] 2964 	push	af
   4D06 33            [ 6] 2965 	inc	sp
   4D07 C5            [11] 2966 	push	bc
   4D08 D5            [11] 2967 	push	de
   4D09 CD E3 63      [17] 2968 	call	_cpct_drawStringM2
   4D0C F1            [10] 2969 	pop	af
   4D0D F1            [10] 2970 	pop	af
   4D0E 33            [ 6] 2971 	inc	sp
                           2972 ;src/includes/gui.h:184: do{
   4D0F                    2973 00110$:
                           2974 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4D0F CD FD 66      [17] 2975 	call	_cpct_scanKeyboard
                           2976 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4D12 21 02 04      [10] 2977 	ld	hl,#0x0402
   4D15 CD AC 63      [17] 2978 	call	_cpct_isKeyPressed
   4D18 7D            [ 4] 2979 	ld	a,l
   4D19 B7            [ 4] 2980 	or	a, a
   4D1A 28 04         [12] 2981 	jr	Z,00106$
                           2982 ;src/includes/gui.h:188: valueReturn=1;
   4D1C DD 36 F5 01   [19] 2983 	ld	-11 (ix),#0x01
   4D20                    2984 00106$:
                           2985 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4D20 21 08 04      [10] 2986 	ld	hl,#0x0408
   4D23 CD AC 63      [17] 2987 	call	_cpct_isKeyPressed
   4D26 7D            [ 4] 2988 	ld	a,l
   4D27 B7            [ 4] 2989 	or	a, a
   4D28 28 04         [12] 2990 	jr	Z,00111$
                           2991 ;src/includes/gui.h:191: valueReturn=0;
   4D2A DD 36 F5 00   [19] 2992 	ld	-11 (ix),#0x00
   4D2E                    2993 00111$:
                           2994 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4D2E 21 02 04      [10] 2995 	ld	hl,#0x0402
   4D31 CD AC 63      [17] 2996 	call	_cpct_isKeyPressed
   4D34 7D            [ 4] 2997 	ld	a,l
   4D35 B7            [ 4] 2998 	or	a, a
   4D36 20 0A         [12] 2999 	jr	NZ,00112$
   4D38 21 08 04      [10] 3000 	ld	hl,#0x0408
   4D3B CD AC 63      [17] 3001 	call	_cpct_isKeyPressed
   4D3E 7D            [ 4] 3002 	ld	a,l
   4D3F B7            [ 4] 3003 	or	a, a
   4D40 28 CD         [12] 3004 	jr	Z,00110$
   4D42                    3005 00112$:
                           3006 ;src/includes/gui.h:195: return valueReturn;
   4D42 DD 6E F5      [19] 3007 	ld	l,-11 (ix)
   4D45 DD F9         [10] 3008 	ld	sp, ix
   4D47 DD E1         [14] 3009 	pop	ix
   4D49 C9            [10] 3010 	ret
   4D4A                    3011 ___str_0:
   4D4A 3C 4F 4B 3E        3012 	.ascii "<OK>"
   4D4E 00                 3013 	.db 0x00
   4D4F                    3014 ___str_1:
   4D4F 3C 4F 4B 3E 20 20  3015 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   4D5D 00                 3016 	.db 0x00
                           3017 ;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
                           3018 ;	---------------------------------
                           3019 ; Function drawCursor
                           3020 ; ---------------------------------
   4D5E                    3021 _drawCursor::
   4D5E DD E5         [15] 3022 	push	ix
   4D60 DD 21 00 00   [14] 3023 	ld	ix,#0
   4D64 DD 39         [15] 3024 	add	ix,sp
   4D66 3B            [ 6] 3025 	dec	sp
                           3026 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4D67 DD 7E 05      [19] 3027 	ld	a,5 (ix)
   4D6A 07            [ 4] 3028 	rlca
   4D6B 07            [ 4] 3029 	rlca
   4D6C 07            [ 4] 3030 	rlca
   4D6D 07            [ 4] 3031 	rlca
   4D6E E6 F0         [ 7] 3032 	and	a,#0xF0
   4D70 5F            [ 4] 3033 	ld	e,a
   4D71 DD 7E 04      [19] 3034 	ld	a,4 (ix)
   4D74 87            [ 4] 3035 	add	a, a
   4D75 87            [ 4] 3036 	add	a, a
   4D76 57            [ 4] 3037 	ld	d,a
   4D77 D5            [11] 3038 	push	de
   4D78 7B            [ 4] 3039 	ld	a,e
   4D79 F5            [11] 3040 	push	af
   4D7A 33            [ 6] 3041 	inc	sp
   4D7B D5            [11] 3042 	push	de
   4D7C 33            [ 6] 3043 	inc	sp
   4D7D 21 00 C0      [10] 3044 	ld	hl,#0xC000
   4D80 E5            [11] 3045 	push	hl
   4D81 CD DD 66      [17] 3046 	call	_cpct_getScreenPtr
   4D84 D1            [10] 3047 	pop	de
   4D85 4D            [ 4] 3048 	ld	c, l
   4D86 44            [ 4] 3049 	ld	b, h
                           3050 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D87 3E 10         [ 7] 3051 	ld	a,#0x10
   4D89 FD 21 8A 76   [14] 3052 	ld	iy,#_CURSOR_MODE
   4D8D FD 96 00      [19] 3053 	sub	a, 0 (iy)
   4D90 DA 8F 4F      [10] 3054 	jp	C,00119$
   4D93 D5            [11] 3055 	push	de
   4D94 FD 21 8A 76   [14] 3056 	ld	iy,#_CURSOR_MODE
   4D98 FD 5E 00      [19] 3057 	ld	e,0 (iy)
   4D9B 16 00         [ 7] 3058 	ld	d,#0x00
   4D9D 21 A5 4D      [10] 3059 	ld	hl,#00125$
   4DA0 19            [11] 3060 	add	hl,de
   4DA1 19            [11] 3061 	add	hl,de
   4DA2 19            [11] 3062 	add	hl,de
   4DA3 D1            [10] 3063 	pop	de
   4DA4 E9            [ 4] 3064 	jp	(hl)
   4DA5                    3065 00125$:
   4DA5 C3 D8 4D      [10] 3066 	jp	00101$
   4DA8 C3 AA 4E      [10] 3067 	jp	00102$
   4DAB C3 B9 4E      [10] 3068 	jp	00103$
   4DAE C3 C8 4E      [10] 3069 	jp	00104$
   4DB1 C3 D7 4E      [10] 3070 	jp	00105$
   4DB4 C3 E6 4E      [10] 3071 	jp	00106$
   4DB7 C3 F5 4E      [10] 3072 	jp	00107$
   4DBA C3 04 4F      [10] 3073 	jp	00108$
   4DBD C3 13 4F      [10] 3074 	jp	00109$
   4DC0 C3 21 4F      [10] 3075 	jp	00110$
   4DC3 C3 2F 4F      [10] 3076 	jp	00111$
   4DC6 C3 3D 4F      [10] 3077 	jp	00112$
   4DC9 C3 4B 4F      [10] 3078 	jp	00113$
   4DCC C3 59 4F      [10] 3079 	jp	00114$
   4DCF C3 67 4F      [10] 3080 	jp	00115$
   4DD2 C3 75 4F      [10] 3081 	jp	00116$
   4DD5 C3 83 4F      [10] 3082 	jp	00117$
                           3083 ;src/includes/world.h:8: case NONE:
   4DD8                    3084 00101$:
                           3085 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DD8 C5            [11] 3086 	push	bc
   4DD9 D5            [11] 3087 	push	de
   4DDA DD 66 06      [19] 3088 	ld	h,6 (ix)
   4DDD DD 6E 06      [19] 3089 	ld	l,6 (ix)
   4DE0 E5            [11] 3090 	push	hl
   4DE1 DD 66 06      [19] 3091 	ld	h,6 (ix)
   4DE4 DD 6E 06      [19] 3092 	ld	l,6 (ix)
   4DE7 E5            [11] 3093 	push	hl
   4DE8 CD EC 65      [17] 3094 	call	_cpct_px2byteM1
   4DEB F1            [10] 3095 	pop	af
   4DEC F1            [10] 3096 	pop	af
   4DED DD 75 FF      [19] 3097 	ld	-1 (ix),l
   4DF0 D1            [10] 3098 	pop	de
   4DF1 C1            [10] 3099 	pop	bc
   4DF2 D5            [11] 3100 	push	de
   4DF3 21 04 00      [10] 3101 	ld	hl,#0x0004
   4DF6 E5            [11] 3102 	push	hl
   4DF7 DD 7E FF      [19] 3103 	ld	a,-1 (ix)
   4DFA F5            [11] 3104 	push	af
   4DFB 33            [ 6] 3105 	inc	sp
   4DFC C5            [11] 3106 	push	bc
   4DFD CD DE 65      [17] 3107 	call	_cpct_memset
   4E00 D1            [10] 3108 	pop	de
                           3109 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4E01 63            [ 4] 3110 	ld	h,e
   4E02 24            [ 4] 3111 	inc	h
   4E03 D5            [11] 3112 	push	de
   4E04 E5            [11] 3113 	push	hl
   4E05 33            [ 6] 3114 	inc	sp
   4E06 D5            [11] 3115 	push	de
   4E07 33            [ 6] 3116 	inc	sp
   4E08 21 00 C0      [10] 3117 	ld	hl,#0xC000
   4E0B E5            [11] 3118 	push	hl
   4E0C CD DD 66      [17] 3119 	call	_cpct_getScreenPtr
   4E0F D1            [10] 3120 	pop	de
                           3121 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E10 E5            [11] 3122 	push	hl
   4E11 D5            [11] 3123 	push	de
   4E12 DD 66 06      [19] 3124 	ld	h,6 (ix)
   4E15 DD 6E 06      [19] 3125 	ld	l,6 (ix)
   4E18 E5            [11] 3126 	push	hl
   4E19 DD 66 06      [19] 3127 	ld	h,6 (ix)
   4E1C DD 6E 06      [19] 3128 	ld	l,6 (ix)
   4E1F E5            [11] 3129 	push	hl
   4E20 CD EC 65      [17] 3130 	call	_cpct_px2byteM1
   4E23 F1            [10] 3131 	pop	af
   4E24 F1            [10] 3132 	pop	af
   4E25 5D            [ 4] 3133 	ld	e,l
   4E26 F1            [10] 3134 	pop	af
   4E27 57            [ 4] 3135 	ld	d,a
   4E28 C1            [10] 3136 	pop	bc
   4E29 D5            [11] 3137 	push	de
   4E2A 21 04 00      [10] 3138 	ld	hl,#0x0004
   4E2D E5            [11] 3139 	push	hl
   4E2E 7B            [ 4] 3140 	ld	a,e
   4E2F F5            [11] 3141 	push	af
   4E30 33            [ 6] 3142 	inc	sp
   4E31 C5            [11] 3143 	push	bc
   4E32 CD DE 65      [17] 3144 	call	_cpct_memset
   4E35 D1            [10] 3145 	pop	de
                           3146 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E36 DD 7E 05      [19] 3147 	ld	a,5 (ix)
   4E39 3C            [ 4] 3148 	inc	a
   4E3A 07            [ 4] 3149 	rlca
   4E3B 07            [ 4] 3150 	rlca
   4E3C 07            [ 4] 3151 	rlca
   4E3D 07            [ 4] 3152 	rlca
   4E3E E6 F0         [ 7] 3153 	and	a,#0xF0
   4E40 5F            [ 4] 3154 	ld	e,a
   4E41 63            [ 4] 3155 	ld	h,e
   4E42 25            [ 4] 3156 	dec	h
   4E43 D5            [11] 3157 	push	de
   4E44 E5            [11] 3158 	push	hl
   4E45 33            [ 6] 3159 	inc	sp
   4E46 D5            [11] 3160 	push	de
   4E47 33            [ 6] 3161 	inc	sp
   4E48 21 00 C0      [10] 3162 	ld	hl,#0xC000
   4E4B E5            [11] 3163 	push	hl
   4E4C CD DD 66      [17] 3164 	call	_cpct_getScreenPtr
   4E4F D1            [10] 3165 	pop	de
                           3166 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E50 E5            [11] 3167 	push	hl
   4E51 D5            [11] 3168 	push	de
   4E52 DD 66 06      [19] 3169 	ld	h,6 (ix)
   4E55 DD 6E 06      [19] 3170 	ld	l,6 (ix)
   4E58 E5            [11] 3171 	push	hl
   4E59 DD 66 06      [19] 3172 	ld	h,6 (ix)
   4E5C DD 6E 06      [19] 3173 	ld	l,6 (ix)
   4E5F E5            [11] 3174 	push	hl
   4E60 CD EC 65      [17] 3175 	call	_cpct_px2byteM1
   4E63 F1            [10] 3176 	pop	af
   4E64 F1            [10] 3177 	pop	af
   4E65 DD 75 FF      [19] 3178 	ld	-1 (ix),l
   4E68 D1            [10] 3179 	pop	de
   4E69 C1            [10] 3180 	pop	bc
   4E6A D5            [11] 3181 	push	de
   4E6B 21 04 00      [10] 3182 	ld	hl,#0x0004
   4E6E E5            [11] 3183 	push	hl
   4E6F DD 7E FF      [19] 3184 	ld	a,-1 (ix)
   4E72 F5            [11] 3185 	push	af
   4E73 33            [ 6] 3186 	inc	sp
   4E74 C5            [11] 3187 	push	bc
   4E75 CD DE 65      [17] 3188 	call	_cpct_memset
   4E78 D1            [10] 3189 	pop	de
                           3190 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4E79 63            [ 4] 3191 	ld	h,e
   4E7A 25            [ 4] 3192 	dec	h
   4E7B 25            [ 4] 3193 	dec	h
   4E7C E5            [11] 3194 	push	hl
   4E7D 33            [ 6] 3195 	inc	sp
   4E7E D5            [11] 3196 	push	de
   4E7F 33            [ 6] 3197 	inc	sp
   4E80 21 00 C0      [10] 3198 	ld	hl,#0xC000
   4E83 E5            [11] 3199 	push	hl
   4E84 CD DD 66      [17] 3200 	call	_cpct_getScreenPtr
                           3201 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E87 E5            [11] 3202 	push	hl
   4E88 DD 66 06      [19] 3203 	ld	h,6 (ix)
   4E8B DD 6E 06      [19] 3204 	ld	l,6 (ix)
   4E8E E5            [11] 3205 	push	hl
   4E8F DD 66 06      [19] 3206 	ld	h,6 (ix)
   4E92 DD 6E 06      [19] 3207 	ld	l,6 (ix)
   4E95 E5            [11] 3208 	push	hl
   4E96 CD EC 65      [17] 3209 	call	_cpct_px2byteM1
   4E99 F1            [10] 3210 	pop	af
   4E9A F1            [10] 3211 	pop	af
   4E9B 65            [ 4] 3212 	ld	h,l
   4E9C D1            [10] 3213 	pop	de
   4E9D 01 04 00      [10] 3214 	ld	bc,#0x0004
   4EA0 C5            [11] 3215 	push	bc
   4EA1 E5            [11] 3216 	push	hl
   4EA2 33            [ 6] 3217 	inc	sp
   4EA3 D5            [11] 3218 	push	de
   4EA4 CD DE 65      [17] 3219 	call	_cpct_memset
                           3220 ;src/includes/world.h:18: break;
   4EA7 C3 8F 4F      [10] 3221 	jp	00119$
                           3222 ;src/includes/world.h:19: case T_SSNS:
   4EAA                    3223 00102$:
                           3224 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EAA 11 A9 42      [10] 3225 	ld	de,#_station_small_ns
   4EAD 21 04 10      [10] 3226 	ld	hl,#0x1004
   4EB0 E5            [11] 3227 	push	hl
   4EB1 C5            [11] 3228 	push	bc
   4EB2 D5            [11] 3229 	push	de
   4EB3 CD 04 64      [17] 3230 	call	_cpct_drawSprite
                           3231 ;src/includes/world.h:21: break;
   4EB6 C3 8F 4F      [10] 3232 	jp	00119$
                           3233 ;src/includes/world.h:22: case T_SSEW:
   4EB9                    3234 00103$:
                           3235 ;src/includes/world.h:23: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EB9 11 E9 42      [10] 3236 	ld	de,#_station_small_ew
   4EBC 21 04 10      [10] 3237 	ld	hl,#0x1004
   4EBF E5            [11] 3238 	push	hl
   4EC0 C5            [11] 3239 	push	bc
   4EC1 D5            [11] 3240 	push	de
   4EC2 CD 04 64      [17] 3241 	call	_cpct_drawSprite
                           3242 ;src/includes/world.h:24: break;
   4EC5 C3 8F 4F      [10] 3243 	jp	00119$
                           3244 ;src/includes/world.h:25: case T_SMNS:
   4EC8                    3245 00104$:
                           3246 ;src/includes/world.h:26: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EC8 11 29 43      [10] 3247 	ld	de,#_station_medium_ns
   4ECB 21 04 10      [10] 3248 	ld	hl,#0x1004
   4ECE E5            [11] 3249 	push	hl
   4ECF C5            [11] 3250 	push	bc
   4ED0 D5            [11] 3251 	push	de
   4ED1 CD 04 64      [17] 3252 	call	_cpct_drawSprite
                           3253 ;src/includes/world.h:27: break;
   4ED4 C3 8F 4F      [10] 3254 	jp	00119$
                           3255 ;src/includes/world.h:28: case T_SMEW:
   4ED7                    3256 00105$:
                           3257 ;src/includes/world.h:29: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4ED7 11 69 43      [10] 3258 	ld	de,#_station_medium_ew
   4EDA 21 04 10      [10] 3259 	ld	hl,#0x1004
   4EDD E5            [11] 3260 	push	hl
   4EDE C5            [11] 3261 	push	bc
   4EDF D5            [11] 3262 	push	de
   4EE0 CD 04 64      [17] 3263 	call	_cpct_drawSprite
                           3264 ;src/includes/world.h:30: break;
   4EE3 C3 8F 4F      [10] 3265 	jp	00119$
                           3266 ;src/includes/world.h:31: case T_SLNS:
   4EE6                    3267 00106$:
                           3268 ;src/includes/world.h:32: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EE6 11 A9 43      [10] 3269 	ld	de,#_station_large_ns
   4EE9 21 04 10      [10] 3270 	ld	hl,#0x1004
   4EEC E5            [11] 3271 	push	hl
   4EED C5            [11] 3272 	push	bc
   4EEE D5            [11] 3273 	push	de
   4EEF CD 04 64      [17] 3274 	call	_cpct_drawSprite
                           3275 ;src/includes/world.h:33: break;
   4EF2 C3 8F 4F      [10] 3276 	jp	00119$
                           3277 ;src/includes/world.h:34: case T_SLEW:
   4EF5                    3278 00107$:
                           3279 ;src/includes/world.h:35: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EF5 11 E9 43      [10] 3280 	ld	de,#_station_large_ew
   4EF8 21 04 10      [10] 3281 	ld	hl,#0x1004
   4EFB E5            [11] 3282 	push	hl
   4EFC C5            [11] 3283 	push	bc
   4EFD D5            [11] 3284 	push	de
   4EFE CD 04 64      [17] 3285 	call	_cpct_drawSprite
                           3286 ;src/includes/world.h:36: break;
   4F01 C3 8F 4F      [10] 3287 	jp	00119$
                           3288 ;src/includes/world.h:37: case T_REW:
   4F04                    3289 00108$:
                           3290 ;src/includes/world.h:38: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4F04 11 29 44      [10] 3291 	ld	de,#_rail_ew
   4F07 21 04 10      [10] 3292 	ld	hl,#0x1004
   4F0A E5            [11] 3293 	push	hl
   4F0B C5            [11] 3294 	push	bc
   4F0C D5            [11] 3295 	push	de
   4F0D CD 04 64      [17] 3296 	call	_cpct_drawSprite
                           3297 ;src/includes/world.h:39: break;
   4F10 C3 8F 4F      [10] 3298 	jp	00119$
                           3299 ;src/includes/world.h:40: case T_RNS:
   4F13                    3300 00109$:
                           3301 ;src/includes/world.h:41: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4F13 11 69 44      [10] 3302 	ld	de,#_rail_ns
   4F16 21 04 10      [10] 3303 	ld	hl,#0x1004
   4F19 E5            [11] 3304 	push	hl
   4F1A C5            [11] 3305 	push	bc
   4F1B D5            [11] 3306 	push	de
   4F1C CD 04 64      [17] 3307 	call	_cpct_drawSprite
                           3308 ;src/includes/world.h:42: break;
   4F1F 18 6E         [12] 3309 	jr	00119$
                           3310 ;src/includes/world.h:43: case T_REN:
   4F21                    3311 00110$:
                           3312 ;src/includes/world.h:44: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4F21 11 A9 44      [10] 3313 	ld	de,#_rail_en
   4F24 21 04 10      [10] 3314 	ld	hl,#0x1004
   4F27 E5            [11] 3315 	push	hl
   4F28 C5            [11] 3316 	push	bc
   4F29 D5            [11] 3317 	push	de
   4F2A CD 04 64      [17] 3318 	call	_cpct_drawSprite
                           3319 ;src/includes/world.h:45: break;
   4F2D 18 60         [12] 3320 	jr	00119$
                           3321 ;src/includes/world.h:46: case T_RES:
   4F2F                    3322 00111$:
                           3323 ;src/includes/world.h:47: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4F2F 11 E9 44      [10] 3324 	ld	de,#_rail_es
   4F32 21 04 10      [10] 3325 	ld	hl,#0x1004
   4F35 E5            [11] 3326 	push	hl
   4F36 C5            [11] 3327 	push	bc
   4F37 D5            [11] 3328 	push	de
   4F38 CD 04 64      [17] 3329 	call	_cpct_drawSprite
                           3330 ;src/includes/world.h:48: break;
   4F3B 18 52         [12] 3331 	jr	00119$
                           3332 ;src/includes/world.h:49: case T_RWN:
   4F3D                    3333 00112$:
                           3334 ;src/includes/world.h:50: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4F3D 11 29 45      [10] 3335 	ld	de,#_rail_wn
   4F40 21 04 10      [10] 3336 	ld	hl,#0x1004
   4F43 E5            [11] 3337 	push	hl
   4F44 C5            [11] 3338 	push	bc
   4F45 D5            [11] 3339 	push	de
   4F46 CD 04 64      [17] 3340 	call	_cpct_drawSprite
                           3341 ;src/includes/world.h:51: break;
   4F49 18 44         [12] 3342 	jr	00119$
                           3343 ;src/includes/world.h:52: case T_RWS:
   4F4B                    3344 00113$:
                           3345 ;src/includes/world.h:53: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4F4B 11 69 45      [10] 3346 	ld	de,#_rail_ws
   4F4E 21 04 10      [10] 3347 	ld	hl,#0x1004
   4F51 E5            [11] 3348 	push	hl
   4F52 C5            [11] 3349 	push	bc
   4F53 D5            [11] 3350 	push	de
   4F54 CD 04 64      [17] 3351 	call	_cpct_drawSprite
                           3352 ;src/includes/world.h:54: break;
   4F57 18 36         [12] 3353 	jr	00119$
                           3354 ;src/includes/world.h:55: case T_REWN:
   4F59                    3355 00114$:
                           3356 ;src/includes/world.h:56: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4F59 11 A9 45      [10] 3357 	ld	de,#_rail_ew_n
   4F5C 21 04 10      [10] 3358 	ld	hl,#0x1004
   4F5F E5            [11] 3359 	push	hl
   4F60 C5            [11] 3360 	push	bc
   4F61 D5            [11] 3361 	push	de
   4F62 CD 04 64      [17] 3362 	call	_cpct_drawSprite
                           3363 ;src/includes/world.h:57: break;
   4F65 18 28         [12] 3364 	jr	00119$
                           3365 ;src/includes/world.h:58: case T_REWS:
   4F67                    3366 00115$:
                           3367 ;src/includes/world.h:59: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4F67 11 E9 45      [10] 3368 	ld	de,#_rail_ew_s
   4F6A 21 04 10      [10] 3369 	ld	hl,#0x1004
   4F6D E5            [11] 3370 	push	hl
   4F6E C5            [11] 3371 	push	bc
   4F6F D5            [11] 3372 	push	de
   4F70 CD 04 64      [17] 3373 	call	_cpct_drawSprite
                           3374 ;src/includes/world.h:60: break;
   4F73 18 1A         [12] 3375 	jr	00119$
                           3376 ;src/includes/world.h:61: case T_RNSE:
   4F75                    3377 00116$:
                           3378 ;src/includes/world.h:62: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4F75 11 69 46      [10] 3379 	ld	de,#_rail_ns_e
   4F78 21 04 10      [10] 3380 	ld	hl,#0x1004
   4F7B E5            [11] 3381 	push	hl
   4F7C C5            [11] 3382 	push	bc
   4F7D D5            [11] 3383 	push	de
   4F7E CD 04 64      [17] 3384 	call	_cpct_drawSprite
                           3385 ;src/includes/world.h:63: break;
   4F81 18 0C         [12] 3386 	jr	00119$
                           3387 ;src/includes/world.h:64: case T_RNSW:
   4F83                    3388 00117$:
                           3389 ;src/includes/world.h:65: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4F83 11 29 46      [10] 3390 	ld	de,#_rail_ns_w
   4F86 21 04 10      [10] 3391 	ld	hl,#0x1004
   4F89 E5            [11] 3392 	push	hl
   4F8A C5            [11] 3393 	push	bc
   4F8B D5            [11] 3394 	push	de
   4F8C CD 04 64      [17] 3395 	call	_cpct_drawSprite
                           3396 ;src/includes/world.h:67: }
   4F8F                    3397 00119$:
   4F8F 33            [ 6] 3398 	inc	sp
   4F90 DD E1         [14] 3399 	pop	ix
   4F92 C9            [10] 3400 	ret
                           3401 ;src/includes/world.h:70: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                           3402 ;	---------------------------------
                           3403 ; Function patternTile
                           3404 ; ---------------------------------
   4F93                    3405 _patternTile::
   4F93 DD E5         [15] 3406 	push	ix
   4F95 DD 21 00 00   [14] 3407 	ld	ix,#0
   4F99 DD 39         [15] 3408 	add	ix,sp
   4F9B 21 F5 FF      [10] 3409 	ld	hl,#-11
   4F9E 39            [11] 3410 	add	hl,sp
   4F9F F9            [ 6] 3411 	ld	sp,hl
                           3412 ;src/includes/world.h:75: for(iy=0; iy<nBitsY; iy++)
   4FA0 DD 7E 04      [19] 3413 	ld	a,4 (ix)
   4FA3 D6 08         [ 7] 3414 	sub	a, #0x08
   4FA5 20 04         [12] 3415 	jr	NZ,00153$
   4FA7 3E 01         [ 7] 3416 	ld	a,#0x01
   4FA9 18 01         [12] 3417 	jr	00154$
   4FAB                    3418 00153$:
   4FAB AF            [ 4] 3419 	xor	a,a
   4FAC                    3420 00154$:
   4FAC DD 77 FA      [19] 3421 	ld	-6 (ix),a
   4FAF DD 7E 04      [19] 3422 	ld	a,4 (ix)
   4FB2 D6 02         [ 7] 3423 	sub	a, #0x02
   4FB4 20 04         [12] 3424 	jr	NZ,00155$
   4FB6 3E 01         [ 7] 3425 	ld	a,#0x01
   4FB8 18 01         [12] 3426 	jr	00156$
   4FBA                    3427 00155$:
   4FBA AF            [ 4] 3428 	xor	a,a
   4FBB                    3429 00156$:
   4FBB DD 77 F9      [19] 3430 	ld	-7 (ix),a
   4FBE DD 36 F6 00   [19] 3431 	ld	-10 (ix),#0x00
   4FC2 11 00 00      [10] 3432 	ld	de,#0x0000
   4FC5                    3433 00115$:
   4FC5 DD 7E F6      [19] 3434 	ld	a,-10 (ix)
   4FC8 DD 96 08      [19] 3435 	sub	a, 8 (ix)
   4FCB D2 8B 50      [10] 3436 	jp	NC,00117$
                           3437 ;src/includes/world.h:77: for(ix=0; ix<nBitsX; ix++)
   4FCE DD 7E 05      [19] 3438 	ld	a,5 (ix)
   4FD1 83            [ 4] 3439 	add	a, e
   4FD2 DD 77 F7      [19] 3440 	ld	-9 (ix),a
   4FD5 DD 7E 06      [19] 3441 	ld	a,6 (ix)
   4FD8 8A            [ 4] 3442 	adc	a, d
   4FD9 DD 77 F8      [19] 3443 	ld	-8 (ix),a
   4FDC D5            [11] 3444 	push	de
   4FDD DD 5E 07      [19] 3445 	ld	e,7 (ix)
   4FE0 DD 66 F6      [19] 3446 	ld	h,-10 (ix)
   4FE3 2E 00         [ 7] 3447 	ld	l, #0x00
   4FE5 55            [ 4] 3448 	ld	d, l
   4FE6 06 08         [ 7] 3449 	ld	b, #0x08
   4FE8                    3450 00157$:
   4FE8 29            [11] 3451 	add	hl,hl
   4FE9 30 01         [12] 3452 	jr	NC,00158$
   4FEB 19            [11] 3453 	add	hl,de
   4FEC                    3454 00158$:
   4FEC 10 FA         [13] 3455 	djnz	00157$
   4FEE D1            [10] 3456 	pop	de
   4FEF DD 75 FE      [19] 3457 	ld	-2 (ix),l
   4FF2 DD 74 FF      [19] 3458 	ld	-1 (ix),h
   4FF5 DD 36 F5 00   [19] 3459 	ld	-11 (ix),#0x00
   4FF9                    3460 00112$:
   4FF9 DD 7E F5      [19] 3461 	ld	a,-11 (ix)
   4FFC DD 96 07      [19] 3462 	sub	a, 7 (ix)
   4FFF D2 80 50      [10] 3463 	jp	NC,00116$
                           3464 ;src/includes/world.h:79: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   5002 DD 7E F5      [19] 3465 	ld	a,-11 (ix)
   5005 DD 77 FC      [19] 3466 	ld	-4 (ix),a
   5008 DD 36 FD 00   [19] 3467 	ld	-3 (ix),#0x00
   500C DD 7E FE      [19] 3468 	ld	a,-2 (ix)
   500F DD 86 FC      [19] 3469 	add	a, -4 (ix)
   5012 6F            [ 4] 3470 	ld	l,a
   5013 DD 7E FF      [19] 3471 	ld	a,-1 (ix)
   5016 DD 8E FD      [19] 3472 	adc	a, -3 (ix)
   5019 67            [ 4] 3473 	ld	h,a
   501A DD 4E 09      [19] 3474 	ld	c,9 (ix)
   501D DD 46 0A      [19] 3475 	ld	b,10 (ix)
   5020 D5            [11] 3476 	push	de
   5021 E5            [11] 3477 	push	hl
   5022 C5            [11] 3478 	push	bc
   5023 CD C4 63      [17] 3479 	call	_cpct_getBit
   5026 DD 75 FB      [19] 3480 	ld	-5 (ix),l
   5029 D1            [10] 3481 	pop	de
   502A DD 7E FB      [19] 3482 	ld	a,-5 (ix)
   502D B7            [ 4] 3483 	or	a, a
   502E 28 4A         [12] 3484 	jr	Z,00113$
   5030 DD 7E F7      [19] 3485 	ld	a,-9 (ix)
   5033 DD 86 FC      [19] 3486 	add	a, -4 (ix)
   5036 4F            [ 4] 3487 	ld	c,a
   5037 DD 7E F8      [19] 3488 	ld	a,-8 (ix)
   503A DD 8E FD      [19] 3489 	adc	a, -3 (ix)
   503D 47            [ 4] 3490 	ld	b,a
   503E EE 80         [ 7] 3491 	xor	a, #0x80
   5040 D6 8F         [ 7] 3492 	sub	a, #0x8F
   5042 30 36         [12] 3493 	jr	NC,00113$
                           3494 ;src/includes/world.h:82: p_world[index+iy*WIDTH+ix] = tileType;
   5044 21 8A 67      [10] 3495 	ld	hl,#_p_world
   5047 09            [11] 3496 	add	hl,bc
   5048 4D            [ 4] 3497 	ld	c,l
   5049 44            [ 4] 3498 	ld	b,h
                           3499 ;src/includes/world.h:81: if(tileType == FOREST)
   504A DD 7E FA      [19] 3500 	ld	a,-6 (ix)
   504D B7            [ 4] 3501 	or	a, a
   504E 28 06         [12] 3502 	jr	Z,00104$
                           3503 ;src/includes/world.h:82: p_world[index+iy*WIDTH+ix] = tileType;
   5050 DD 7E 04      [19] 3504 	ld	a,4 (ix)
   5053 02            [ 7] 3505 	ld	(bc),a
   5054 18 24         [12] 3506 	jr	00113$
   5056                    3507 00104$:
                           3508 ;src/includes/world.h:83: else if(tileType==DWELLINGS1)
   5056 DD 7E F9      [19] 3509 	ld	a,-7 (ix)
   5059 B7            [ 4] 3510 	or	a, a
   505A 28 1E         [12] 3511 	jr	Z,00113$
                           3512 ;src/includes/world.h:84: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   505C C5            [11] 3513 	push	bc
   505D D5            [11] 3514 	push	de
   505E CD 1F 65      [17] 3515 	call	_cpct_count2VSYNC
   5061 CD 9F 65      [17] 3516 	call	_cpct_getRandomUniform_u8_f
   5064 DD 75 FB      [19] 3517 	ld	-5 (ix),l
   5067 3E 03         [ 7] 3518 	ld	a,#0x03
   5069 F5            [11] 3519 	push	af
   506A 33            [ 6] 3520 	inc	sp
   506B DD 7E FB      [19] 3521 	ld	a,-5 (ix)
   506E F5            [11] 3522 	push	af
   506F 33            [ 6] 3523 	inc	sp
   5070 CD A9 64      [17] 3524 	call	__moduchar
   5073 F1            [10] 3525 	pop	af
   5074 7D            [ 4] 3526 	ld	a,l
   5075 D1            [10] 3527 	pop	de
   5076 C1            [10] 3528 	pop	bc
   5077 C6 02         [ 7] 3529 	add	a, #0x02
   5079 02            [ 7] 3530 	ld	(bc),a
   507A                    3531 00113$:
                           3532 ;src/includes/world.h:77: for(ix=0; ix<nBitsX; ix++)
   507A DD 34 F5      [23] 3533 	inc	-11 (ix)
   507D C3 F9 4F      [10] 3534 	jp	00112$
   5080                    3535 00116$:
                           3536 ;src/includes/world.h:75: for(iy=0; iy<nBitsY; iy++)
   5080 21 50 00      [10] 3537 	ld	hl,#0x0050
   5083 19            [11] 3538 	add	hl,de
   5084 EB            [ 4] 3539 	ex	de,hl
   5085 DD 34 F6      [23] 3540 	inc	-10 (ix)
   5088 C3 C5 4F      [10] 3541 	jp	00115$
   508B                    3542 00117$:
   508B DD F9         [10] 3543 	ld	sp, ix
   508D DD E1         [14] 3544 	pop	ix
   508F C9            [10] 3545 	ret
                           3546 ;src/includes/world.h:91: void generateWorld()
                           3547 ;	---------------------------------
                           3548 ; Function generateWorld
                           3549 ; ---------------------------------
   5090                    3550 _generateWorld::
   5090 DD E5         [15] 3551 	push	ix
   5092 DD 21 00 00   [14] 3552 	ld	ix,#0
   5096 DD 39         [15] 3553 	add	ix,sp
   5098 21 E0 FF      [10] 3554 	ld	hl,#-32
   509B 39            [11] 3555 	add	hl,sp
   509C F9            [ 6] 3556 	ld	sp,hl
                           3557 ;src/includes/world.h:101: cpct_setRandomSeedUniform_u8(0);
   509D 2E 00         [ 7] 3558 	ld	l,#0x00
   509F CD 90 63      [17] 3559 	call	_cpct_setRandomSeedUniform_u8
                           3560 ;src/includes/world.h:103: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   50A2 01 8A 67      [10] 3561 	ld	bc,#_p_world+0
   50A5 11 00 00      [10] 3562 	ld	de,#0x0000
   50A8                    3563 00128$:
                           3564 ;src/includes/world.h:105: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   50A8 69            [ 4] 3565 	ld	l, c
   50A9 60            [ 4] 3566 	ld	h, b
   50AA 19            [11] 3567 	add	hl,de
   50AB E5            [11] 3568 	push	hl
   50AC C5            [11] 3569 	push	bc
   50AD D5            [11] 3570 	push	de
   50AE 2E 00         [ 7] 3571 	ld	l,#0x00
   50B0 CD 9F 65      [17] 3572 	call	_cpct_getRandomUniform_u8_f
   50B3 7D            [ 4] 3573 	ld	a,l
   50B4 D1            [10] 3574 	pop	de
   50B5 C1            [10] 3575 	pop	bc
   50B6 E1            [10] 3576 	pop	hl
   50B7 E6 01         [ 7] 3577 	and	a, #0x01
   50B9 77            [ 7] 3578 	ld	(hl),a
                           3579 ;src/includes/world.h:103: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   50BA 13            [ 6] 3580 	inc	de
   50BB 7A            [ 4] 3581 	ld	a,d
   50BC EE 80         [ 7] 3582 	xor	a, #0x80
   50BE D6 8F         [ 7] 3583 	sub	a, #0x8F
   50C0 38 E6         [12] 3584 	jr	C,00128$
                           3585 ;src/includes/world.h:109: for(ix=0; ix<NBFOREST; ix++)
   50C2 21 02 00      [10] 3586 	ld	hl,#0x0002
   50C5 39            [11] 3587 	add	hl,sp
   50C6 EB            [ 4] 3588 	ex	de,hl
   50C7 21 00 00      [10] 3589 	ld	hl,#0x0000
   50CA E3            [19] 3590 	ex	(sp), hl
   50CB                    3591 00130$:
                           3592 ;src/includes/world.h:111: iy = cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)*15;
   50CB C5            [11] 3593 	push	bc
   50CC D5            [11] 3594 	push	de
   50CD CD 1F 65      [17] 3595 	call	_cpct_count2VSYNC
   50D0 D1            [10] 3596 	pop	de
   50D1 C1            [10] 3597 	pop	bc
   50D2 DD 7E E0      [19] 3598 	ld	a,-32 (ix)
   50D5 DD 77 FA      [19] 3599 	ld	-6 (ix),a
   50D8 DD 7E E1      [19] 3600 	ld	a,-31 (ix)
   50DB DD 77 FB      [19] 3601 	ld	-5 (ix),a
   50DE 7D            [ 4] 3602 	ld	a,l
   50DF DD 86 FA      [19] 3603 	add	a, -6 (ix)
   50E2 6F            [ 4] 3604 	ld	l,a
   50E3 7C            [ 4] 3605 	ld	a,h
   50E4 DD 8E FB      [19] 3606 	adc	a, -5 (ix)
   50E7 C5            [11] 3607 	push	bc
   50E8 D5            [11] 3608 	push	de
   50E9 CD 9F 65      [17] 3609 	call	_cpct_getRandomUniform_u8_f
   50EC D1            [10] 3610 	pop	de
   50ED C1            [10] 3611 	pop	bc
   50EE D5            [11] 3612 	push	de
   50EF 5D            [ 4] 3613 	ld	e,l
   50F0 16 00         [ 7] 3614 	ld	d,#0x00
   50F2 6B            [ 4] 3615 	ld	l, e
   50F3 62            [ 4] 3616 	ld	h, d
   50F4 29            [11] 3617 	add	hl, hl
   50F5 19            [11] 3618 	add	hl, de
   50F6 29            [11] 3619 	add	hl, hl
   50F7 19            [11] 3620 	add	hl, de
   50F8 29            [11] 3621 	add	hl, hl
   50F9 19            [11] 3622 	add	hl, de
   50FA D1            [10] 3623 	pop	de
   50FB DD 75 FC      [19] 3624 	ld	-4 (ix),l
   50FE DD 74 FD      [19] 3625 	ld	-3 (ix),h
                           3626 ;src/includes/world.h:113: switch(cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)%4)
   5101 C5            [11] 3627 	push	bc
   5102 D5            [11] 3628 	push	de
   5103 CD 1F 65      [17] 3629 	call	_cpct_count2VSYNC
   5106 D1            [10] 3630 	pop	de
   5107 C1            [10] 3631 	pop	bc
   5108 DD 7E FA      [19] 3632 	ld	a,-6 (ix)
   510B 85            [ 4] 3633 	add	a, l
   510C 6F            [ 4] 3634 	ld	l,a
   510D DD 7E FB      [19] 3635 	ld	a,-5 (ix)
   5110 8C            [ 4] 3636 	adc	a, h
   5111 C5            [11] 3637 	push	bc
   5112 D5            [11] 3638 	push	de
   5113 CD 9F 65      [17] 3639 	call	_cpct_getRandomUniform_u8_f
   5116 7D            [ 4] 3640 	ld	a,l
   5117 D1            [10] 3641 	pop	de
   5118 C1            [10] 3642 	pop	bc
   5119 E6 03         [ 7] 3643 	and	a, #0x03
   511B DD 77 FA      [19] 3644 	ld	-6 (ix),a
   511E 3E 03         [ 7] 3645 	ld	a,#0x03
   5120 DD 96 FA      [19] 3646 	sub	a, -6 (ix)
   5123 DA 65 52      [10] 3647 	jp	C,00106$
                           3648 ;src/includes/world.h:117: p_forest[1] = 0b11000111;
   5126 21 01 00      [10] 3649 	ld	hl,#0x0001
   5129 19            [11] 3650 	add	hl,de
   512A DD 75 F8      [19] 3651 	ld	-8 (ix),l
   512D DD 74 F9      [19] 3652 	ld	-7 (ix),h
                           3653 ;src/includes/world.h:118: p_forest[2] = 0b11011110;
   5130 21 02 00      [10] 3654 	ld	hl,#0x0002
   5133 19            [11] 3655 	add	hl,de
   5134 DD 75 FE      [19] 3656 	ld	-2 (ix),l
   5137 DD 74 FF      [19] 3657 	ld	-1 (ix),h
                           3658 ;src/includes/world.h:119: p_forest[3] = 0b01111110;
   513A 21 03 00      [10] 3659 	ld	hl,#0x0003
   513D 19            [11] 3660 	add	hl,de
   513E DD 75 F0      [19] 3661 	ld	-16 (ix),l
   5141 DD 74 F1      [19] 3662 	ld	-15 (ix),h
                           3663 ;src/includes/world.h:120: p_forest[4] = 0b11111110; 
   5144 21 04 00      [10] 3664 	ld	hl,#0x0004
   5147 19            [11] 3665 	add	hl,de
   5148 DD 75 F2      [19] 3666 	ld	-14 (ix),l
   514B DD 74 F3      [19] 3667 	ld	-13 (ix),h
                           3668 ;src/includes/world.h:121: p_forest[5] = 0b01111111;
   514E 21 05 00      [10] 3669 	ld	hl,#0x0005
   5151 19            [11] 3670 	add	hl,de
   5152 DD 75 F4      [19] 3671 	ld	-12 (ix),l
   5155 DD 74 F5      [19] 3672 	ld	-11 (ix),h
                           3673 ;src/includes/world.h:122: p_forest[6] = 0b11101111;
   5158 21 06 00      [10] 3674 	ld	hl,#0x0006
   515B 19            [11] 3675 	add	hl,de
   515C DD 75 F6      [19] 3676 	ld	-10 (ix),l
   515F DD 74 F7      [19] 3677 	ld	-9 (ix),h
                           3678 ;src/includes/world.h:123: p_forest[7] = 0b11001111;
   5162 FD 21 07 00   [14] 3679 	ld	iy,#0x0007
   5166 FD 19         [15] 3680 	add	iy, de
                           3681 ;src/includes/world.h:113: switch(cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)%4)
   5168 D5            [11] 3682 	push	de
   5169 DD 5E FA      [19] 3683 	ld	e,-6 (ix)
   516C 16 00         [ 7] 3684 	ld	d,#0x00
   516E 21 76 51      [10] 3685 	ld	hl,#00224$
   5171 19            [11] 3686 	add	hl,de
   5172 19            [11] 3687 	add	hl,de
   5173 19            [11] 3688 	add	hl,de
   5174 D1            [10] 3689 	pop	de
   5175 E9            [ 4] 3690 	jp	(hl)
   5176                    3691 00224$:
   5176 C3 82 51      [10] 3692 	jp	00102$
   5179 C3 BC 51      [10] 3693 	jp	00103$
   517C C3 F5 51      [10] 3694 	jp	00104$
   517F C3 2E 52      [10] 3695 	jp	00105$
                           3696 ;src/includes/world.h:115: case 0:
   5182                    3697 00102$:
                           3698 ;src/includes/world.h:116: p_forest[0] = 0b10000100;
   5182 3E 84         [ 7] 3699 	ld	a,#0x84
   5184 12            [ 7] 3700 	ld	(de),a
                           3701 ;src/includes/world.h:117: p_forest[1] = 0b11000111;
   5185 DD 6E F8      [19] 3702 	ld	l,-8 (ix)
   5188 DD 66 F9      [19] 3703 	ld	h,-7 (ix)
   518B 36 C7         [10] 3704 	ld	(hl),#0xC7
                           3705 ;src/includes/world.h:118: p_forest[2] = 0b11011110;
   518D DD 6E FE      [19] 3706 	ld	l,-2 (ix)
   5190 DD 66 FF      [19] 3707 	ld	h,-1 (ix)
   5193 36 DE         [10] 3708 	ld	(hl),#0xDE
                           3709 ;src/includes/world.h:119: p_forest[3] = 0b01111110;
   5195 DD 6E F0      [19] 3710 	ld	l,-16 (ix)
   5198 DD 66 F1      [19] 3711 	ld	h,-15 (ix)
   519B 36 7E         [10] 3712 	ld	(hl),#0x7E
                           3713 ;src/includes/world.h:120: p_forest[4] = 0b11111110; 
   519D DD 6E F2      [19] 3714 	ld	l,-14 (ix)
   51A0 DD 66 F3      [19] 3715 	ld	h,-13 (ix)
   51A3 36 FE         [10] 3716 	ld	(hl),#0xFE
                           3717 ;src/includes/world.h:121: p_forest[5] = 0b01111111;
   51A5 DD 6E F4      [19] 3718 	ld	l,-12 (ix)
   51A8 DD 66 F5      [19] 3719 	ld	h,-11 (ix)
   51AB 36 7F         [10] 3720 	ld	(hl),#0x7F
                           3721 ;src/includes/world.h:122: p_forest[6] = 0b11101111;
   51AD DD 6E F6      [19] 3722 	ld	l,-10 (ix)
   51B0 DD 66 F7      [19] 3723 	ld	h,-9 (ix)
   51B3 36 EF         [10] 3724 	ld	(hl),#0xEF
                           3725 ;src/includes/world.h:123: p_forest[7] = 0b11001111;
   51B5 FD 36 00 CF   [19] 3726 	ld	0 (iy), #0xCF
                           3727 ;src/includes/world.h:124: break;
   51B9 C3 65 52      [10] 3728 	jp	00106$
                           3729 ;src/includes/world.h:125: case 1:
   51BC                    3730 00103$:
                           3731 ;src/includes/world.h:126: p_forest[0] = 0b00001100;
   51BC 3E 0C         [ 7] 3732 	ld	a,#0x0C
   51BE 12            [ 7] 3733 	ld	(de),a
                           3734 ;src/includes/world.h:127: p_forest[1] = 0b11111000;
   51BF DD 6E F8      [19] 3735 	ld	l,-8 (ix)
   51C2 DD 66 F9      [19] 3736 	ld	h,-7 (ix)
   51C5 36 F8         [10] 3737 	ld	(hl),#0xF8
                           3738 ;src/includes/world.h:128: p_forest[2] = 0b00111111;
   51C7 DD 6E FE      [19] 3739 	ld	l,-2 (ix)
   51CA DD 66 FF      [19] 3740 	ld	h,-1 (ix)
   51CD 36 3F         [10] 3741 	ld	(hl),#0x3F
                           3742 ;src/includes/world.h:129: p_forest[3] = 0b01111110;
   51CF DD 6E F0      [19] 3743 	ld	l,-16 (ix)
   51D2 DD 66 F1      [19] 3744 	ld	h,-15 (ix)
   51D5 36 7E         [10] 3745 	ld	(hl),#0x7E
                           3746 ;src/includes/world.h:130: p_forest[4] = 0b11111110; 
   51D7 DD 6E F2      [19] 3747 	ld	l,-14 (ix)
   51DA DD 66 F3      [19] 3748 	ld	h,-13 (ix)
   51DD 36 FE         [10] 3749 	ld	(hl),#0xFE
                           3750 ;src/includes/world.h:131: p_forest[5] = 0b01011111;
   51DF DD 6E F4      [19] 3751 	ld	l,-12 (ix)
   51E2 DD 66 F5      [19] 3752 	ld	h,-11 (ix)
   51E5 36 5F         [10] 3753 	ld	(hl),#0x5F
                           3754 ;src/includes/world.h:132: p_forest[6] = 0b11001111;
   51E7 DD 6E F6      [19] 3755 	ld	l,-10 (ix)
   51EA DD 66 F7      [19] 3756 	ld	h,-9 (ix)
   51ED 36 CF         [10] 3757 	ld	(hl),#0xCF
                           3758 ;src/includes/world.h:133: p_forest[7] = 0b10001100;
   51EF FD 36 00 8C   [19] 3759 	ld	0 (iy), #0x8C
                           3760 ;src/includes/world.h:134: break;
   51F3 18 70         [12] 3761 	jr	00106$
                           3762 ;src/includes/world.h:135: case 2:
   51F5                    3763 00104$:
                           3764 ;src/includes/world.h:136: p_forest[0] = 0b00110000;
   51F5 3E 30         [ 7] 3765 	ld	a,#0x30
   51F7 12            [ 7] 3766 	ld	(de),a
                           3767 ;src/includes/world.h:137: p_forest[1] = 0b11110100;
   51F8 DD 6E F8      [19] 3768 	ld	l,-8 (ix)
   51FB DD 66 F9      [19] 3769 	ld	h,-7 (ix)
   51FE 36 F4         [10] 3770 	ld	(hl),#0xF4
                           3771 ;src/includes/world.h:138: p_forest[2] = 0b11111111;
   5200 DD 6E FE      [19] 3772 	ld	l,-2 (ix)
   5203 DD 66 FF      [19] 3773 	ld	h,-1 (ix)
   5206 36 FF         [10] 3774 	ld	(hl),#0xFF
                           3775 ;src/includes/world.h:139: p_forest[3] = 0b11111111;
   5208 DD 6E F0      [19] 3776 	ld	l,-16 (ix)
   520B DD 66 F1      [19] 3777 	ld	h,-15 (ix)
   520E 36 FF         [10] 3778 	ld	(hl),#0xFF
                           3779 ;src/includes/world.h:140: p_forest[4] = 0b01111100;
   5210 DD 6E F2      [19] 3780 	ld	l,-14 (ix)
   5213 DD 66 F3      [19] 3781 	ld	h,-13 (ix)
   5216 36 7C         [10] 3782 	ld	(hl),#0x7C
                           3783 ;src/includes/world.h:141: p_forest[5] = 0b01111110;
   5218 DD 6E F4      [19] 3784 	ld	l,-12 (ix)
   521B DD 66 F5      [19] 3785 	ld	h,-11 (ix)
   521E 36 7E         [10] 3786 	ld	(hl),#0x7E
                           3787 ;src/includes/world.h:142: p_forest[6] = 0b00111110;
   5220 DD 6E F6      [19] 3788 	ld	l,-10 (ix)
   5223 DD 66 F7      [19] 3789 	ld	h,-9 (ix)
   5226 36 3E         [10] 3790 	ld	(hl),#0x3E
                           3791 ;src/includes/world.h:143: p_forest[7] = 0b00011000;
   5228 FD 36 00 18   [19] 3792 	ld	0 (iy), #0x18
                           3793 ;src/includes/world.h:144: break;
   522C 18 37         [12] 3794 	jr	00106$
                           3795 ;src/includes/world.h:145: case 3:
   522E                    3796 00105$:
                           3797 ;src/includes/world.h:146: p_forest[0] = 0b11000000 , 
   522E 3E C0         [ 7] 3798 	ld	a,#0xC0
   5230 12            [ 7] 3799 	ld	(de),a
                           3800 ;src/includes/world.h:147: p_forest[1] = 0b11100111;
   5231 DD 6E F8      [19] 3801 	ld	l,-8 (ix)
   5234 DD 66 F9      [19] 3802 	ld	h,-7 (ix)
   5237 36 E7         [10] 3803 	ld	(hl),#0xE7
                           3804 ;src/includes/world.h:148: p_forest[2] = 0b01111110;
   5239 DD 6E FE      [19] 3805 	ld	l,-2 (ix)
   523C DD 66 FF      [19] 3806 	ld	h,-1 (ix)
   523F 36 7E         [10] 3807 	ld	(hl),#0x7E
                           3808 ;src/includes/world.h:149: p_forest[3] = 0b01111110;
   5241 DD 6E F0      [19] 3809 	ld	l,-16 (ix)
   5244 DD 66 F1      [19] 3810 	ld	h,-15 (ix)
   5247 36 7E         [10] 3811 	ld	(hl),#0x7E
                           3812 ;src/includes/world.h:150: p_forest[4] = 0b11111110;
   5249 DD 6E F2      [19] 3813 	ld	l,-14 (ix)
   524C DD 66 F3      [19] 3814 	ld	h,-13 (ix)
   524F 36 FE         [10] 3815 	ld	(hl),#0xFE
                           3816 ;src/includes/world.h:151: p_forest[5] = 0b11111100;
   5251 DD 6E F4      [19] 3817 	ld	l,-12 (ix)
   5254 DD 66 F5      [19] 3818 	ld	h,-11 (ix)
   5257 36 FC         [10] 3819 	ld	(hl),#0xFC
                           3820 ;src/includes/world.h:152: p_forest[6] = 0b01111000;
   5259 DD 6E F6      [19] 3821 	ld	l,-10 (ix)
   525C DD 66 F7      [19] 3822 	ld	h,-9 (ix)
   525F 36 78         [10] 3823 	ld	(hl),#0x78
                           3824 ;src/includes/world.h:153: p_forest[7] = 0b00110000;
   5261 FD 36 00 30   [19] 3825 	ld	0 (iy), #0x30
                           3826 ;src/includes/world.h:155: }
   5265                    3827 00106$:
                           3828 ;src/includes/world.h:156: patternTile(FOREST, iy, 8, 8, p_forest);
   5265 6B            [ 4] 3829 	ld	l, e
   5266 62            [ 4] 3830 	ld	h, d
   5267 C5            [11] 3831 	push	bc
   5268 D5            [11] 3832 	push	de
   5269 E5            [11] 3833 	push	hl
   526A 21 08 08      [10] 3834 	ld	hl,#0x0808
   526D E5            [11] 3835 	push	hl
   526E DD 6E FC      [19] 3836 	ld	l,-4 (ix)
   5271 DD 66 FD      [19] 3837 	ld	h,-3 (ix)
   5274 E5            [11] 3838 	push	hl
   5275 3E 08         [ 7] 3839 	ld	a,#0x08
   5277 F5            [11] 3840 	push	af
   5278 33            [ 6] 3841 	inc	sp
   5279 CD 93 4F      [17] 3842 	call	_patternTile
   527C 21 07 00      [10] 3843 	ld	hl,#7
   527F 39            [11] 3844 	add	hl,sp
   5280 F9            [ 6] 3845 	ld	sp,hl
   5281 D1            [10] 3846 	pop	de
   5282 C1            [10] 3847 	pop	bc
                           3848 ;src/includes/world.h:109: for(ix=0; ix<NBFOREST; ix++)
   5283 DD 34 E0      [23] 3849 	inc	-32 (ix)
   5286 20 03         [12] 3850 	jr	NZ,00225$
   5288 DD 34 E1      [23] 3851 	inc	-31 (ix)
   528B                    3852 00225$:
   528B DD 7E E0      [19] 3853 	ld	a,-32 (ix)
   528E D6 32         [ 7] 3854 	sub	a, #0x32
   5290 DD 7E E1      [19] 3855 	ld	a,-31 (ix)
   5293 17            [ 4] 3856 	rla
   5294 3F            [ 4] 3857 	ccf
   5295 1F            [ 4] 3858 	rra
   5296 DE 80         [ 7] 3859 	sbc	a, #0x80
   5298 DA CB 50      [10] 3860 	jp	C,00130$
                           3861 ;src/includes/world.h:161: cpct_setRandomSeedUniform_u8(1);
   529B C5            [11] 3862 	push	bc
   529C 2E 01         [ 7] 3863 	ld	l,#0x01
   529E CD 90 63      [17] 3864 	call	_cpct_setRandomSeedUniform_u8
   52A1 C1            [10] 3865 	pop	bc
                           3866 ;src/includes/world.h:163: for(ix=0; ix<NBFARM; ix++)
   52A2 21 00 00      [10] 3867 	ld	hl,#0x0000
   52A5 E3            [19] 3868 	ex	(sp), hl
   52A6                    3869 00132$:
                           3870 ;src/includes/world.h:165: iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;
   52A6 C5            [11] 3871 	push	bc
   52A7 CD 1F 65      [17] 3872 	call	_cpct_count2VSYNC
   52AA CD 9F 65      [17] 3873 	call	_cpct_getRandomUniform_u8_f
   52AD C1            [10] 3874 	pop	bc
   52AE 5D            [ 4] 3875 	ld	e,l
   52AF 16 00         [ 7] 3876 	ld	d,#0x00
   52B1 6B            [ 4] 3877 	ld	l, e
   52B2 62            [ 4] 3878 	ld	h, d
   52B3 29            [11] 3879 	add	hl, hl
   52B4 19            [11] 3880 	add	hl, de
   52B5 29            [11] 3881 	add	hl, hl
   52B6 19            [11] 3882 	add	hl, de
   52B7 29            [11] 3883 	add	hl, hl
   52B8 19            [11] 3884 	add	hl, de
   52B9 DD 75 F6      [19] 3885 	ld	-10 (ix),l
   52BC DD 74 F7      [19] 3886 	ld	-9 (ix),h
                           3887 ;src/includes/world.h:167: shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
   52BF C5            [11] 3888 	push	bc
   52C0 CD 1F 65      [17] 3889 	call	_cpct_count2VSYNC
   52C3 CD 9F 65      [17] 3890 	call	_cpct_getRandomUniform_u8_f
   52C6 55            [ 4] 3891 	ld	d,l
   52C7 3E 0A         [ 7] 3892 	ld	a,#0x0A
   52C9 F5            [11] 3893 	push	af
   52CA 33            [ 6] 3894 	inc	sp
   52CB D5            [11] 3895 	push	de
   52CC 33            [ 6] 3896 	inc	sp
   52CD CD A9 64      [17] 3897 	call	__moduchar
   52D0 F1            [10] 3898 	pop	af
   52D1 C1            [10] 3899 	pop	bc
   52D2 26 00         [ 7] 3900 	ld	h,#0x00
                           3901 ;src/includes/world.h:168: shift=iy-shift+5;
   52D4 DD 7E F6      [19] 3902 	ld	a,-10 (ix)
   52D7 95            [ 4] 3903 	sub	a, l
   52D8 5F            [ 4] 3904 	ld	e,a
   52D9 DD 7E F7      [19] 3905 	ld	a,-9 (ix)
   52DC 9C            [ 4] 3906 	sbc	a, h
   52DD 57            [ 4] 3907 	ld	d,a
   52DE 21 05 00      [10] 3908 	ld	hl,#0x0005
   52E1 19            [11] 3909 	add	hl,de
   52E2 54            [ 4] 3910 	ld	d,h
                           3911 ;src/includes/world.h:170: if(shift>0 && shift<WIDTH*HEIGHT)
   52E3 AF            [ 4] 3912 	xor	a, a
   52E4 BD            [ 4] 3913 	cp	a, l
   52E5 9A            [ 4] 3914 	sbc	a, d
   52E6 E2 EB 52      [10] 3915 	jp	PO, 00226$
   52E9 EE 80         [ 7] 3916 	xor	a, #0x80
   52EB                    3917 00226$:
   52EB F2 07 53      [10] 3918 	jp	P,00133$
   52EE 7A            [ 4] 3919 	ld	a,d
   52EF EE 80         [ 7] 3920 	xor	a, #0x80
   52F1 D6 8F         [ 7] 3921 	sub	a, #0x8F
   52F3 30 12         [12] 3922 	jr	NC,00133$
                           3923 ;src/includes/world.h:171: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%2+5;
   52F5 62            [ 4] 3924 	ld	h, d
   52F6 09            [11] 3925 	add	hl,bc
   52F7 E5            [11] 3926 	push	hl
   52F8 C5            [11] 3927 	push	bc
   52F9 CD 1F 65      [17] 3928 	call	_cpct_count2VSYNC
   52FC CD 9F 65      [17] 3929 	call	_cpct_getRandomUniform_u8_f
   52FF 7D            [ 4] 3930 	ld	a,l
   5300 C1            [10] 3931 	pop	bc
   5301 E1            [10] 3932 	pop	hl
   5302 E6 01         [ 7] 3933 	and	a, #0x01
   5304 C6 05         [ 7] 3934 	add	a, #0x05
   5306 77            [ 7] 3935 	ld	(hl),a
   5307                    3936 00133$:
                           3937 ;src/includes/world.h:163: for(ix=0; ix<NBFARM; ix++)
   5307 DD 34 E0      [23] 3938 	inc	-32 (ix)
   530A 20 03         [12] 3939 	jr	NZ,00227$
   530C DD 34 E1      [23] 3940 	inc	-31 (ix)
   530F                    3941 00227$:
   530F DD 7E E0      [19] 3942 	ld	a,-32 (ix)
   5312 D6 3C         [ 7] 3943 	sub	a, #0x3C
   5314 DD 7E E1      [19] 3944 	ld	a,-31 (ix)
   5317 17            [ 4] 3945 	rla
   5318 3F            [ 4] 3946 	ccf
   5319 1F            [ 4] 3947 	rra
   531A DE 80         [ 7] 3948 	sbc	a, #0x80
   531C 38 88         [12] 3949 	jr	C,00132$
                           3950 ;src/includes/world.h:176: cpct_setRandomSeedUniform_u8(2);
   531E C5            [11] 3951 	push	bc
   531F 2E 02         [ 7] 3952 	ld	l,#0x02
   5321 CD 90 63      [17] 3953 	call	_cpct_setRandomSeedUniform_u8
   5324 C1            [10] 3954 	pop	bc
                           3955 ;src/includes/world.h:178: for(ix=0; ix<NBURBAN; ix++)
   5325 21 00 00      [10] 3956 	ld	hl,#0x0000
   5328 E3            [19] 3957 	ex	(sp), hl
   5329                    3958 00134$:
                           3959 ;src/includes/world.h:180: iy = cpct_getRandomUniform_u8_f(0)*15; // (WIDTH*HEIGHT)/255;
   5329 C5            [11] 3960 	push	bc
   532A 2E 00         [ 7] 3961 	ld	l,#0x00
   532C CD 9F 65      [17] 3962 	call	_cpct_getRandomUniform_u8_f
   532F C1            [10] 3963 	pop	bc
   5330 5D            [ 4] 3964 	ld	e,l
   5331 16 00         [ 7] 3965 	ld	d,#0x00
   5333 6B            [ 4] 3966 	ld	l, e
   5334 62            [ 4] 3967 	ld	h, d
   5335 29            [11] 3968 	add	hl, hl
   5336 19            [11] 3969 	add	hl, de
   5337 29            [11] 3970 	add	hl, hl
   5338 19            [11] 3971 	add	hl, de
   5339 29            [11] 3972 	add	hl, hl
   533A 19            [11] 3973 	add	hl, de
   533B DD 75 F6      [19] 3974 	ld	-10 (ix),l
   533E DD 74 F7      [19] 3975 	ld	-9 (ix),h
                           3976 ;src/includes/world.h:182: shift = cpct_getRandomUniform_u8_f(0)%10;
   5341 C5            [11] 3977 	push	bc
   5342 2E 00         [ 7] 3978 	ld	l,#0x00
   5344 CD 9F 65      [17] 3979 	call	_cpct_getRandomUniform_u8_f
   5347 55            [ 4] 3980 	ld	d,l
   5348 3E 0A         [ 7] 3981 	ld	a,#0x0A
   534A F5            [11] 3982 	push	af
   534B 33            [ 6] 3983 	inc	sp
   534C D5            [11] 3984 	push	de
   534D 33            [ 6] 3985 	inc	sp
   534E CD A9 64      [17] 3986 	call	__moduchar
   5351 F1            [10] 3987 	pop	af
   5352 C1            [10] 3988 	pop	bc
   5353 26 00         [ 7] 3989 	ld	h,#0x00
                           3990 ;src/includes/world.h:183: shift=iy-shift+5;
   5355 DD 7E F6      [19] 3991 	ld	a,-10 (ix)
   5358 95            [ 4] 3992 	sub	a, l
   5359 5F            [ 4] 3993 	ld	e,a
   535A DD 7E F7      [19] 3994 	ld	a,-9 (ix)
   535D 9C            [ 4] 3995 	sbc	a, h
   535E 57            [ 4] 3996 	ld	d,a
   535F 21 05 00      [10] 3997 	ld	hl,#0x0005
   5362 19            [11] 3998 	add	hl,de
   5363 DD 75 EA      [19] 3999 	ld	-22 (ix),l
   5366 DD 74 EB      [19] 4000 	ld	-21 (ix),h
                           4001 ;src/includes/world.h:185: if(shift>0 && shift<WIDTH*HEIGHT)
   5369 AF            [ 4] 4002 	xor	a, a
   536A DD BE EA      [19] 4003 	cp	a, -22 (ix)
   536D DD 9E EB      [19] 4004 	sbc	a, -21 (ix)
   5370 E2 75 53      [10] 4005 	jp	PO, 00228$
   5373 EE 80         [ 7] 4006 	xor	a, #0x80
   5375                    4007 00228$:
   5375 F2 AB 53      [10] 4008 	jp	P,00135$
   5378 DD 7E EB      [19] 4009 	ld	a,-21 (ix)
   537B EE 80         [ 7] 4010 	xor	a, #0x80
   537D D6 8F         [ 7] 4011 	sub	a, #0x8F
   537F 30 2A         [12] 4012 	jr	NC,00135$
                           4013 ;src/includes/world.h:186: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(0)%3+2;
   5381 79            [ 4] 4014 	ld	a,c
   5382 DD 86 EA      [19] 4015 	add	a, -22 (ix)
   5385 DD 77 F6      [19] 4016 	ld	-10 (ix),a
   5388 78            [ 4] 4017 	ld	a,b
   5389 DD 8E EB      [19] 4018 	adc	a, -21 (ix)
   538C DD 77 F7      [19] 4019 	ld	-9 (ix),a
   538F C5            [11] 4020 	push	bc
   5390 2E 00         [ 7] 4021 	ld	l,#0x00
   5392 CD 9F 65      [17] 4022 	call	_cpct_getRandomUniform_u8_f
   5395 55            [ 4] 4023 	ld	d,l
   5396 3E 03         [ 7] 4024 	ld	a,#0x03
   5398 F5            [11] 4025 	push	af
   5399 33            [ 6] 4026 	inc	sp
   539A D5            [11] 4027 	push	de
   539B 33            [ 6] 4028 	inc	sp
   539C CD A9 64      [17] 4029 	call	__moduchar
   539F F1            [10] 4030 	pop	af
   53A0 7D            [ 4] 4031 	ld	a,l
   53A1 C1            [10] 4032 	pop	bc
   53A2 C6 02         [ 7] 4033 	add	a, #0x02
   53A4 DD 6E F6      [19] 4034 	ld	l,-10 (ix)
   53A7 DD 66 F7      [19] 4035 	ld	h,-9 (ix)
   53AA 77            [ 7] 4036 	ld	(hl),a
   53AB                    4037 00135$:
                           4038 ;src/includes/world.h:178: for(ix=0; ix<NBURBAN; ix++)
   53AB DD 34 E0      [23] 4039 	inc	-32 (ix)
   53AE 20 03         [12] 4040 	jr	NZ,00229$
   53B0 DD 34 E1      [23] 4041 	inc	-31 (ix)
   53B3                    4042 00229$:
   53B3 DD 7E E0      [19] 4043 	ld	a,-32 (ix)
   53B6 D6 14         [ 7] 4044 	sub	a, #0x14
   53B8 DD 7E E1      [19] 4045 	ld	a,-31 (ix)
   53BB 17            [ 4] 4046 	rla
   53BC 3F            [ 4] 4047 	ccf
   53BD 1F            [ 4] 4048 	rra
   53BE DE 80         [ 7] 4049 	sbc	a, #0x80
   53C0 DA 29 53      [10] 4050 	jp	C,00134$
                           4051 ;src/includes/world.h:189: cpct_setRandomSeedUniform_u8(3);
   53C3 C5            [11] 4052 	push	bc
   53C4 2E 03         [ 7] 4053 	ld	l,#0x03
   53C6 CD 90 63      [17] 4054 	call	_cpct_setRandomSeedUniform_u8
   53C9 C1            [10] 4055 	pop	bc
                           4056 ;src/includes/world.h:190: for(ix=0; ix<NBURBAN; ix++)
   53CA 21 0C 00      [10] 4057 	ld	hl,#0x000C
   53CD 39            [11] 4058 	add	hl,sp
   53CE DD 75 F6      [19] 4059 	ld	-10 (ix),l
   53D1 DD 74 F7      [19] 4060 	ld	-9 (ix),h
   53D4 21 00 00      [10] 4061 	ld	hl,#0x0000
   53D7 E3            [19] 4062 	ex	(sp), hl
   53D8                    4063 00136$:
                           4064 ;src/includes/world.h:192: iy = cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)*15; // (WIDTH*HEIGHT)/255;
   53D8 C5            [11] 4065 	push	bc
   53D9 CD 1F 65      [17] 4066 	call	_cpct_count2VSYNC
   53DC C1            [10] 4067 	pop	bc
   53DD DD 7E E0      [19] 4068 	ld	a,-32 (ix)
   53E0 DD 77 F4      [19] 4069 	ld	-12 (ix),a
   53E3 DD 7E E1      [19] 4070 	ld	a,-31 (ix)
   53E6 DD 77 F5      [19] 4071 	ld	-11 (ix),a
   53E9 DD 5E F4      [19] 4072 	ld	e,-12 (ix)
   53EC DD 56 F5      [19] 4073 	ld	d,-11 (ix)
   53EF 19            [11] 4074 	add	hl,de
   53F0 C5            [11] 4075 	push	bc
   53F1 CD 9F 65      [17] 4076 	call	_cpct_getRandomUniform_u8_f
   53F4 C1            [10] 4077 	pop	bc
   53F5 5D            [ 4] 4078 	ld	e,l
   53F6 16 00         [ 7] 4079 	ld	d,#0x00
   53F8 6B            [ 4] 4080 	ld	l, e
   53F9 62            [ 4] 4081 	ld	h, d
   53FA 29            [11] 4082 	add	hl, hl
   53FB 19            [11] 4083 	add	hl, de
   53FC 29            [11] 4084 	add	hl, hl
   53FD 19            [11] 4085 	add	hl, de
   53FE 29            [11] 4086 	add	hl, hl
   53FF 19            [11] 4087 	add	hl, de
   5400 DD 75 EE      [19] 4088 	ld	-18 (ix),l
   5403 DD 74 EF      [19] 4089 	ld	-17 (ix),h
                           4090 ;src/includes/world.h:193: shift = cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()-shift)%256)%10;
   5406 C5            [11] 4091 	push	bc
   5407 CD 1F 65      [17] 4092 	call	_cpct_count2VSYNC
   540A C1            [10] 4093 	pop	bc
   540B DD 5E EA      [19] 4094 	ld	e,-22 (ix)
   540E DD 56 EB      [19] 4095 	ld	d,-21 (ix)
   5411 BF            [ 4] 4096 	cp	a, a
   5412 ED 52         [15] 4097 	sbc	hl, de
   5414 C5            [11] 4098 	push	bc
   5415 CD 9F 65      [17] 4099 	call	_cpct_getRandomUniform_u8_f
   5418 55            [ 4] 4100 	ld	d,l
   5419 3E 0A         [ 7] 4101 	ld	a,#0x0A
   541B F5            [11] 4102 	push	af
   541C 33            [ 6] 4103 	inc	sp
   541D D5            [11] 4104 	push	de
   541E 33            [ 6] 4105 	inc	sp
   541F CD A9 64      [17] 4106 	call	__moduchar
   5422 F1            [10] 4107 	pop	af
   5423 C1            [10] 4108 	pop	bc
   5424 DD 75 EA      [19] 4109 	ld	-22 (ix),l
   5427 DD 36 EB 00   [19] 4110 	ld	-21 (ix),#0x00
                           4111 ;src/includes/world.h:194: iy-=shift+5;
   542B DD 7E EA      [19] 4112 	ld	a,-22 (ix)
   542E C6 05         [ 7] 4113 	add	a, #0x05
   5430 67            [ 4] 4114 	ld	h,a
   5431 DD 7E EB      [19] 4115 	ld	a,-21 (ix)
   5434 CE 00         [ 7] 4116 	adc	a, #0x00
   5436 6F            [ 4] 4117 	ld	l,a
   5437 DD 7E EE      [19] 4118 	ld	a,-18 (ix)
   543A 94            [ 4] 4119 	sub	a, h
   543B DD 77 F2      [19] 4120 	ld	-14 (ix),a
   543E DD 7E EF      [19] 4121 	ld	a,-17 (ix)
   5441 9D            [ 4] 4122 	sbc	a, l
   5442 DD 77 F3      [19] 4123 	ld	-13 (ix),a
                           4124 ;src/includes/world.h:196: switch(cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)%6)
   5445 C5            [11] 4125 	push	bc
   5446 CD 1F 65      [17] 4126 	call	_cpct_count2VSYNC
   5449 C1            [10] 4127 	pop	bc
   544A DD 5E F4      [19] 4128 	ld	e,-12 (ix)
   544D DD 56 F5      [19] 4129 	ld	d,-11 (ix)
   5450 19            [11] 4130 	add	hl,de
   5451 C5            [11] 4131 	push	bc
   5452 CD 9F 65      [17] 4132 	call	_cpct_getRandomUniform_u8_f
   5455 55            [ 4] 4133 	ld	d,l
   5456 3E 06         [ 7] 4134 	ld	a,#0x06
   5458 F5            [11] 4135 	push	af
   5459 33            [ 6] 4136 	inc	sp
   545A D5            [11] 4137 	push	de
   545B 33            [ 6] 4138 	inc	sp
   545C CD A9 64      [17] 4139 	call	__moduchar
   545F F1            [10] 4140 	pop	af
   5460 DD 75 F4      [19] 4141 	ld	-12 (ix),l
   5463 C1            [10] 4142 	pop	bc
   5464 3E 05         [ 7] 4143 	ld	a,#0x05
   5466 DD 96 F4      [19] 4144 	sub	a, -12 (ix)
   5469 38 6C         [12] 4145 	jr	C,00122$
                           4146 ;src/includes/world.h:200: p_cities[1] = 0b01000110; // 01100010;
   546B DD 5E F6      [19] 4147 	ld	e,-10 (ix)
   546E DD 56 F7      [19] 4148 	ld	d,-9 (ix)
   5471 13            [ 6] 4149 	inc	de
                           4150 ;src/includes/world.h:196: switch(cpct_getRandomUniform_u8_f((cpct_count2VSYNC ()+ix)%256)%6)
   5472 D5            [11] 4151 	push	de
   5473 DD 5E F4      [19] 4152 	ld	e,-12 (ix)
   5476 16 00         [ 7] 4153 	ld	d,#0x00
   5478 21 7F 54      [10] 4154 	ld	hl,#00230$
   547B 19            [11] 4155 	add	hl,de
   547C 19            [11] 4156 	add	hl,de
                           4157 ;src/includes/world.h:198: case 0:
   547D D1            [10] 4158 	pop	de
   547E E9            [ 4] 4159 	jp	(hl)
   547F                    4160 00230$:
   547F 18 0A         [12] 4161 	jr	00116$
   5481 18 15         [12] 4162 	jr	00117$
   5483 18 20         [12] 4163 	jr	00118$
   5485 18 2B         [12] 4164 	jr	00119$
   5487 18 36         [12] 4165 	jr	00120$
   5489 18 41         [12] 4166 	jr	00121$
   548B                    4167 00116$:
                           4168 ;src/includes/world.h:199: p_cities[0] = 0b01110010; // 01001110;
   548B DD 6E F6      [19] 4169 	ld	l,-10 (ix)
   548E DD 66 F7      [19] 4170 	ld	h,-9 (ix)
   5491 36 72         [10] 4171 	ld	(hl),#0x72
                           4172 ;src/includes/world.h:200: p_cities[1] = 0b01000110; // 01100010;
   5493 3E 46         [ 7] 4173 	ld	a,#0x46
   5495 12            [ 7] 4174 	ld	(de),a
                           4175 ;src/includes/world.h:201: break;
   5496 18 3F         [12] 4176 	jr	00122$
                           4177 ;src/includes/world.h:203: case 1:
   5498                    4178 00117$:
                           4179 ;src/includes/world.h:204: p_cities[0] = 0b01100000; // 00000110;
   5498 DD 6E F6      [19] 4180 	ld	l,-10 (ix)
   549B DD 66 F7      [19] 4181 	ld	h,-9 (ix)
   549E 36 60         [10] 4182 	ld	(hl),#0x60
                           4183 ;src/includes/world.h:205: p_cities[1] = 0b00000110; // 01100000;
   54A0 3E 06         [ 7] 4184 	ld	a,#0x06
   54A2 12            [ 7] 4185 	ld	(de),a
                           4186 ;src/includes/world.h:206: break;
   54A3 18 32         [12] 4187 	jr	00122$
                           4188 ;src/includes/world.h:208: case 2:
   54A5                    4189 00118$:
                           4190 ;src/includes/world.h:209: p_cities[0] = 0b00010000; // 00001000;
   54A5 DD 6E F6      [19] 4191 	ld	l,-10 (ix)
   54A8 DD 66 F7      [19] 4192 	ld	h,-9 (ix)
   54AB 36 10         [10] 4193 	ld	(hl),#0x10
                           4194 ;src/includes/world.h:210: p_cities[1] = 0b00000110; // 01100000;
   54AD 3E 06         [ 7] 4195 	ld	a,#0x06
   54AF 12            [ 7] 4196 	ld	(de),a
                           4197 ;src/includes/world.h:211: break;
   54B0 18 25         [12] 4198 	jr	00122$
                           4199 ;src/includes/world.h:213: case 3:
   54B2                    4200 00119$:
                           4201 ;src/includes/world.h:214: p_cities[0] = 0b11000000; // 00000011;
   54B2 DD 6E F6      [19] 4202 	ld	l,-10 (ix)
   54B5 DD 66 F7      [19] 4203 	ld	h,-9 (ix)
   54B8 36 C0         [10] 4204 	ld	(hl),#0xC0
                           4205 ;src/includes/world.h:215: p_cities[1] = 0b00110001; // 10001100;
   54BA 3E 31         [ 7] 4206 	ld	a,#0x31
   54BC 12            [ 7] 4207 	ld	(de),a
                           4208 ;src/includes/world.h:216: break;
   54BD 18 18         [12] 4209 	jr	00122$
                           4210 ;src/includes/world.h:218: case 4:
   54BF                    4211 00120$:
                           4212 ;src/includes/world.h:219: p_cities[0] = 0b11000100; // 00100011;
   54BF DD 6E F6      [19] 4213 	ld	l,-10 (ix)
   54C2 DD 66 F7      [19] 4214 	ld	h,-9 (ix)
   54C5 36 C4         [10] 4215 	ld	(hl),#0xC4
                           4216 ;src/includes/world.h:220: p_cities[1] = 0b00001110; // 01110000;
   54C7 3E 0E         [ 7] 4217 	ld	a,#0x0E
   54C9 12            [ 7] 4218 	ld	(de),a
                           4219 ;src/includes/world.h:221: break;
   54CA 18 0B         [12] 4220 	jr	00122$
                           4221 ;src/includes/world.h:223: case 5:
   54CC                    4222 00121$:
                           4223 ;src/includes/world.h:224: p_cities[0] = 0b01000000; // 00000010;
   54CC DD 6E F6      [19] 4224 	ld	l,-10 (ix)
   54CF DD 66 F7      [19] 4225 	ld	h,-9 (ix)
   54D2 36 40         [10] 4226 	ld	(hl),#0x40
                           4227 ;src/includes/world.h:225: p_cities[1] = 0b01001110; // 01110010;
   54D4 3E 4E         [ 7] 4228 	ld	a,#0x4E
   54D6 12            [ 7] 4229 	ld	(de),a
                           4230 ;src/includes/world.h:227: }
   54D7                    4231 00122$:
                           4232 ;src/includes/world.h:229: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   54D7 DD 6E F6      [19] 4233 	ld	l,-10 (ix)
   54DA DD 66 F7      [19] 4234 	ld	h,-9 (ix)
   54DD C5            [11] 4235 	push	bc
   54DE E5            [11] 4236 	push	hl
   54DF 21 04 04      [10] 4237 	ld	hl,#0x0404
   54E2 E5            [11] 4238 	push	hl
   54E3 DD 6E F2      [19] 4239 	ld	l,-14 (ix)
   54E6 DD 66 F3      [19] 4240 	ld	h,-13 (ix)
   54E9 E5            [11] 4241 	push	hl
   54EA 3E 02         [ 7] 4242 	ld	a,#0x02
   54EC F5            [11] 4243 	push	af
   54ED 33            [ 6] 4244 	inc	sp
   54EE CD 93 4F      [17] 4245 	call	_patternTile
   54F1 21 07 00      [10] 4246 	ld	hl,#7
   54F4 39            [11] 4247 	add	hl,sp
   54F5 F9            [ 6] 4248 	ld	sp,hl
   54F6 C1            [10] 4249 	pop	bc
                           4250 ;src/includes/world.h:190: for(ix=0; ix<NBURBAN; ix++)
   54F7 DD 34 E0      [23] 4251 	inc	-32 (ix)
   54FA 20 03         [12] 4252 	jr	NZ,00231$
   54FC DD 34 E1      [23] 4253 	inc	-31 (ix)
   54FF                    4254 00231$:
   54FF DD 7E E0      [19] 4255 	ld	a,-32 (ix)
   5502 D6 14         [ 7] 4256 	sub	a, #0x14
   5504 DD 7E E1      [19] 4257 	ld	a,-31 (ix)
   5507 17            [ 4] 4258 	rla
   5508 3F            [ 4] 4259 	ccf
   5509 1F            [ 4] 4260 	rra
   550A DE 80         [ 7] 4261 	sbc	a, #0x80
   550C DA D8 53      [10] 4262 	jp	C,00136$
                           4263 ;src/includes/world.h:234: cpct_setRandomSeedUniform_u8(4);
   550F C5            [11] 4264 	push	bc
   5510 2E 04         [ 7] 4265 	ld	l,#0x04
   5512 CD 90 63      [17] 4266 	call	_cpct_setRandomSeedUniform_u8
   5515 C1            [10] 4267 	pop	bc
                           4268 ;src/includes/world.h:236: for(ix=0; ix<NBLIVESTOCK; ix++)
   5516 21 00 00      [10] 4269 	ld	hl,#0x0000
   5519 E3            [19] 4270 	ex	(sp), hl
   551A                    4271 00138$:
                           4272 ;src/includes/world.h:238: iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;
   551A C5            [11] 4273 	push	bc
   551B CD 1F 65      [17] 4274 	call	_cpct_count2VSYNC
   551E CD 9F 65      [17] 4275 	call	_cpct_getRandomUniform_u8_f
   5521 C1            [10] 4276 	pop	bc
   5522 5D            [ 4] 4277 	ld	e,l
   5523 16 00         [ 7] 4278 	ld	d,#0x00
   5525 6B            [ 4] 4279 	ld	l, e
   5526 62            [ 4] 4280 	ld	h, d
   5527 29            [11] 4281 	add	hl, hl
   5528 19            [11] 4282 	add	hl, de
   5529 29            [11] 4283 	add	hl, hl
   552A 19            [11] 4284 	add	hl, de
   552B 29            [11] 4285 	add	hl, hl
   552C 19            [11] 4286 	add	hl, de
   552D DD 75 F6      [19] 4287 	ld	-10 (ix),l
   5530 DD 74 F7      [19] 4288 	ld	-9 (ix),h
                           4289 ;src/includes/world.h:240: shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
   5533 C5            [11] 4290 	push	bc
   5534 CD 1F 65      [17] 4291 	call	_cpct_count2VSYNC
   5537 CD 9F 65      [17] 4292 	call	_cpct_getRandomUniform_u8_f
   553A 55            [ 4] 4293 	ld	d,l
   553B 3E 0A         [ 7] 4294 	ld	a,#0x0A
   553D F5            [11] 4295 	push	af
   553E 33            [ 6] 4296 	inc	sp
   553F D5            [11] 4297 	push	de
   5540 33            [ 6] 4298 	inc	sp
   5541 CD A9 64      [17] 4299 	call	__moduchar
   5544 F1            [10] 4300 	pop	af
   5545 C1            [10] 4301 	pop	bc
   5546 26 00         [ 7] 4302 	ld	h,#0x00
                           4303 ;src/includes/world.h:241: shift=iy-shift+5;
   5548 DD 7E F6      [19] 4304 	ld	a,-10 (ix)
   554B 95            [ 4] 4305 	sub	a, l
   554C 6F            [ 4] 4306 	ld	l,a
   554D DD 7E F7      [19] 4307 	ld	a,-9 (ix)
   5550 9C            [ 4] 4308 	sbc	a, h
   5551 67            [ 4] 4309 	ld	h,a
   5552 11 05 00      [10] 4310 	ld	de,#0x0005
   5555 19            [11] 4311 	add	hl,de
                           4312 ;src/includes/world.h:243: if(shift>0 && shift<WIDTH*HEIGHT)
   5556 AF            [ 4] 4313 	xor	a, a
   5557 BD            [ 4] 4314 	cp	a, l
   5558 9C            [ 4] 4315 	sbc	a, h
   5559 E2 5E 55      [10] 4316 	jp	PO, 00232$
   555C EE 80         [ 7] 4317 	xor	a, #0x80
   555E                    4318 00232$:
   555E F2 6B 55      [10] 4319 	jp	P,00139$
   5561 7C            [ 4] 4320 	ld	a,h
   5562 EE 80         [ 7] 4321 	xor	a, #0x80
   5564 D6 8F         [ 7] 4322 	sub	a, #0x8F
   5566 30 03         [12] 4323 	jr	NC,00139$
                           4324 ;src/includes/world.h:244: p_world[shift] = LIVESTOCK;
   5568 09            [11] 4325 	add	hl,bc
   5569 36 09         [10] 4326 	ld	(hl),#0x09
   556B                    4327 00139$:
                           4328 ;src/includes/world.h:236: for(ix=0; ix<NBLIVESTOCK; ix++)
   556B DD 34 E0      [23] 4329 	inc	-32 (ix)
   556E 20 03         [12] 4330 	jr	NZ,00233$
   5570 DD 34 E1      [23] 4331 	inc	-31 (ix)
   5573                    4332 00233$:
   5573 DD 7E E0      [19] 4333 	ld	a,-32 (ix)
   5576 D6 13         [ 7] 4334 	sub	a, #0x13
   5578 DD 7E E1      [19] 4335 	ld	a,-31 (ix)
   557B 17            [ 4] 4336 	rla
   557C 3F            [ 4] 4337 	ccf
   557D 1F            [ 4] 4338 	rra
   557E DE 80         [ 7] 4339 	sbc	a, #0x80
   5580 38 98         [12] 4340 	jr	C,00138$
   5582 DD F9         [10] 4341 	ld	sp, ix
   5584 DD E1         [14] 4342 	pop	ix
   5586 C9            [10] 4343 	ret
                           4344 ;src/includes/world.h:248: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           4345 ;	---------------------------------
                           4346 ; Function drawTile
                           4347 ; ---------------------------------
   5587                    4348 _drawTile::
   5587 DD E5         [15] 4349 	push	ix
   5589 DD 21 00 00   [14] 4350 	ld	ix,#0
   558D DD 39         [15] 4351 	add	ix,sp
                           4352 ;src/includes/world.h:251: int adress = (y_+iy)*WIDTH+x_+ix;
   558F DD 6E 05      [19] 4353 	ld	l,5 (ix)
   5592 26 00         [ 7] 4354 	ld	h,#0x00
   5594 DD 5E 07      [19] 4355 	ld	e,7 (ix)
   5597 16 00         [ 7] 4356 	ld	d,#0x00
   5599 19            [11] 4357 	add	hl,de
   559A 4D            [ 4] 4358 	ld	c, l
   559B 44            [ 4] 4359 	ld	b, h
   559C 29            [11] 4360 	add	hl, hl
   559D 29            [11] 4361 	add	hl, hl
   559E 09            [11] 4362 	add	hl, bc
   559F 29            [11] 4363 	add	hl, hl
   55A0 29            [11] 4364 	add	hl, hl
   55A1 29            [11] 4365 	add	hl, hl
   55A2 29            [11] 4366 	add	hl, hl
   55A3 DD 5E 04      [19] 4367 	ld	e,4 (ix)
   55A6 16 00         [ 7] 4368 	ld	d,#0x00
   55A8 19            [11] 4369 	add	hl,de
   55A9 DD 5E 06      [19] 4370 	ld	e,6 (ix)
   55AC 16 00         [ 7] 4371 	ld	d,#0x00
   55AE 19            [11] 4372 	add	hl,de
   55AF 5D            [ 4] 4373 	ld	e, l
   55B0 54            [ 4] 4374 	ld	d, h
                           4375 ;src/includes/world.h:253: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   55B1 DD 7E 07      [19] 4376 	ld	a,7 (ix)
   55B4 07            [ 4] 4377 	rlca
   55B5 07            [ 4] 4378 	rlca
   55B6 07            [ 4] 4379 	rlca
   55B7 07            [ 4] 4380 	rlca
   55B8 E6 F0         [ 7] 4381 	and	a,#0xF0
   55BA 67            [ 4] 4382 	ld	h,a
   55BB DD 7E 06      [19] 4383 	ld	a,6 (ix)
   55BE 87            [ 4] 4384 	add	a, a
   55BF 87            [ 4] 4385 	add	a, a
   55C0 D5            [11] 4386 	push	de
   55C1 E5            [11] 4387 	push	hl
   55C2 33            [ 6] 4388 	inc	sp
   55C3 F5            [11] 4389 	push	af
   55C4 33            [ 6] 4390 	inc	sp
   55C5 21 00 C0      [10] 4391 	ld	hl,#0xC000
   55C8 E5            [11] 4392 	push	hl
   55C9 CD DD 66      [17] 4393 	call	_cpct_getScreenPtr
   55CC D1            [10] 4394 	pop	de
   55CD 4D            [ 4] 4395 	ld	c, l
   55CE 44            [ 4] 4396 	ld	b, h
                           4397 ;src/includes/world.h:255: switch(p_world[adress])
   55CF 21 8A 67      [10] 4398 	ld	hl,#_p_world
   55D2 19            [11] 4399 	add	hl,de
   55D3 5E            [ 7] 4400 	ld	e,(hl)
   55D4 3E 19         [ 7] 4401 	ld	a,#0x19
   55D6 93            [ 4] 4402 	sub	a, e
   55D7 DA AC 57      [10] 4403 	jp	C,00128$
   55DA 16 00         [ 7] 4404 	ld	d,#0x00
   55DC 21 E3 55      [10] 4405 	ld	hl,#00134$
   55DF 19            [11] 4406 	add	hl,de
   55E0 19            [11] 4407 	add	hl,de
   55E1 19            [11] 4408 	add	hl,de
   55E2 E9            [ 4] 4409 	jp	(hl)
   55E3                    4410 00134$:
   55E3 C3 31 56      [10] 4411 	jp	00101$
   55E6 C3 40 56      [10] 4412 	jp	00102$
   55E9 C3 4F 56      [10] 4413 	jp	00103$
   55EC C3 5E 56      [10] 4414 	jp	00104$
   55EF C3 6D 56      [10] 4415 	jp	00105$
   55F2 C3 7C 56      [10] 4416 	jp	00106$
   55F5 C3 8B 56      [10] 4417 	jp	00107$
   55F8 C3 9A 56      [10] 4418 	jp	00108$
   55FB C3 A9 56      [10] 4419 	jp	00109$
   55FE C3 B8 56      [10] 4420 	jp	00110$
   5601 C3 C7 56      [10] 4421 	jp	00111$
   5604 C3 D6 56      [10] 4422 	jp	00112$
   5607 C3 E5 56      [10] 4423 	jp	00113$
   560A C3 F4 56      [10] 4424 	jp	00114$
   560D C3 03 57      [10] 4425 	jp	00115$
   5610 C3 12 57      [10] 4426 	jp	00116$
   5613 C3 21 57      [10] 4427 	jp	00117$
   5616 C3 30 57      [10] 4428 	jp	00118$
   5619 C3 3E 57      [10] 4429 	jp	00119$
   561C C3 4C 57      [10] 4430 	jp	00120$
   561F C3 5A 57      [10] 4431 	jp	00121$
   5622 C3 68 57      [10] 4432 	jp	00122$
   5625 C3 76 57      [10] 4433 	jp	00123$
   5628 C3 84 57      [10] 4434 	jp	00124$
   562B C3 92 57      [10] 4435 	jp	00125$
   562E C3 A0 57      [10] 4436 	jp	00126$
                           4437 ;src/includes/world.h:257: case GRASS1:
   5631                    4438 00101$:
                           4439 ;src/includes/world.h:258: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5631 11 29 40      [10] 4440 	ld	de,#_grass1
   5634 21 04 10      [10] 4441 	ld	hl,#0x1004
   5637 E5            [11] 4442 	push	hl
   5638 C5            [11] 4443 	push	bc
   5639 D5            [11] 4444 	push	de
   563A CD 04 64      [17] 4445 	call	_cpct_drawSprite
                           4446 ;src/includes/world.h:259: break;
   563D C3 AC 57      [10] 4447 	jp	00128$
                           4448 ;src/includes/world.h:260: case GRASS2:
   5640                    4449 00102$:
                           4450 ;src/includes/world.h:261: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5640 11 69 40      [10] 4451 	ld	de,#_grass2
   5643 21 04 10      [10] 4452 	ld	hl,#0x1004
   5646 E5            [11] 4453 	push	hl
   5647 C5            [11] 4454 	push	bc
   5648 D5            [11] 4455 	push	de
   5649 CD 04 64      [17] 4456 	call	_cpct_drawSprite
                           4457 ;src/includes/world.h:262: break;
   564C C3 AC 57      [10] 4458 	jp	00128$
                           4459 ;src/includes/world.h:263: case DWELLINGS1:
   564F                    4460 00103$:
                           4461 ;src/includes/world.h:264: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   564F 11 E9 40      [10] 4462 	ld	de,#_dwellings1
   5652 21 04 10      [10] 4463 	ld	hl,#0x1004
   5655 E5            [11] 4464 	push	hl
   5656 C5            [11] 4465 	push	bc
   5657 D5            [11] 4466 	push	de
   5658 CD 04 64      [17] 4467 	call	_cpct_drawSprite
                           4468 ;src/includes/world.h:265: break;
   565B C3 AC 57      [10] 4469 	jp	00128$
                           4470 ;src/includes/world.h:266: case DWELLINGS2:
   565E                    4471 00104$:
                           4472 ;src/includes/world.h:267: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   565E 11 29 41      [10] 4473 	ld	de,#_dwellings2
   5661 21 04 10      [10] 4474 	ld	hl,#0x1004
   5664 E5            [11] 4475 	push	hl
   5665 C5            [11] 4476 	push	bc
   5666 D5            [11] 4477 	push	de
   5667 CD 04 64      [17] 4478 	call	_cpct_drawSprite
                           4479 ;src/includes/world.h:268: break;
   566A C3 AC 57      [10] 4480 	jp	00128$
                           4481 ;src/includes/world.h:269: case DWELLINGS3:
   566D                    4482 00105$:
                           4483 ;src/includes/world.h:270: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   566D 11 69 41      [10] 4484 	ld	de,#_dwellings3
   5670 21 04 10      [10] 4485 	ld	hl,#0x1004
   5673 E5            [11] 4486 	push	hl
   5674 C5            [11] 4487 	push	bc
   5675 D5            [11] 4488 	push	de
   5676 CD 04 64      [17] 4489 	call	_cpct_drawSprite
                           4490 ;src/includes/world.h:271: break;
   5679 C3 AC 57      [10] 4491 	jp	00128$
                           4492 ;src/includes/world.h:272: case FARM1:
   567C                    4493 00106$:
                           4494 ;src/includes/world.h:273: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   567C 11 E9 41      [10] 4495 	ld	de,#_farm1
   567F 21 04 10      [10] 4496 	ld	hl,#0x1004
   5682 E5            [11] 4497 	push	hl
   5683 C5            [11] 4498 	push	bc
   5684 D5            [11] 4499 	push	de
   5685 CD 04 64      [17] 4500 	call	_cpct_drawSprite
                           4501 ;src/includes/world.h:274: break;
   5688 C3 AC 57      [10] 4502 	jp	00128$
                           4503 ;src/includes/world.h:275: case FARM2:
   568B                    4504 00107$:
                           4505 ;src/includes/world.h:276: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   568B 11 29 42      [10] 4506 	ld	de,#_farm2
   568E 21 04 10      [10] 4507 	ld	hl,#0x1004
   5691 E5            [11] 4508 	push	hl
   5692 C5            [11] 4509 	push	bc
   5693 D5            [11] 4510 	push	de
   5694 CD 04 64      [17] 4511 	call	_cpct_drawSprite
                           4512 ;src/includes/world.h:277: break;
   5697 C3 AC 57      [10] 4513 	jp	00128$
                           4514 ;src/includes/world.h:278: case WATER:
   569A                    4515 00108$:
                           4516 ;src/includes/world.h:279: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   569A 11 A9 41      [10] 4517 	ld	de,#_water
   569D 21 04 10      [10] 4518 	ld	hl,#0x1004
   56A0 E5            [11] 4519 	push	hl
   56A1 C5            [11] 4520 	push	bc
   56A2 D5            [11] 4521 	push	de
   56A3 CD 04 64      [17] 4522 	call	_cpct_drawSprite
                           4523 ;src/includes/world.h:280: break;
   56A6 C3 AC 57      [10] 4524 	jp	00128$
                           4525 ;src/includes/world.h:281: case FOREST:
   56A9                    4526 00109$:
                           4527 ;src/includes/world.h:282: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   56A9 11 A9 40      [10] 4528 	ld	de,#_forest
   56AC 21 04 10      [10] 4529 	ld	hl,#0x1004
   56AF E5            [11] 4530 	push	hl
   56B0 C5            [11] 4531 	push	bc
   56B1 D5            [11] 4532 	push	de
   56B2 CD 04 64      [17] 4533 	call	_cpct_drawSprite
                           4534 ;src/includes/world.h:283: break;
   56B5 C3 AC 57      [10] 4535 	jp	00128$
                           4536 ;src/includes/world.h:284: case LIVESTOCK:
   56B8                    4537 00110$:
                           4538 ;src/includes/world.h:285: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   56B8 11 69 42      [10] 4539 	ld	de,#_livestock
   56BB 21 04 10      [10] 4540 	ld	hl,#0x1004
   56BE E5            [11] 4541 	push	hl
   56BF C5            [11] 4542 	push	bc
   56C0 D5            [11] 4543 	push	de
   56C1 CD 04 64      [17] 4544 	call	_cpct_drawSprite
                           4545 ;src/includes/world.h:286: break;
   56C4 C3 AC 57      [10] 4546 	jp	00128$
                           4547 ;src/includes/world.h:287: case SSNS:
   56C7                    4548 00111$:
                           4549 ;src/includes/world.h:288: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   56C7 11 A9 42      [10] 4550 	ld	de,#_station_small_ns
   56CA 21 04 10      [10] 4551 	ld	hl,#0x1004
   56CD E5            [11] 4552 	push	hl
   56CE C5            [11] 4553 	push	bc
   56CF D5            [11] 4554 	push	de
   56D0 CD 04 64      [17] 4555 	call	_cpct_drawSprite
                           4556 ;src/includes/world.h:289: break;
   56D3 C3 AC 57      [10] 4557 	jp	00128$
                           4558 ;src/includes/world.h:290: case SSEW:
   56D6                    4559 00112$:
                           4560 ;src/includes/world.h:291: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   56D6 11 E9 42      [10] 4561 	ld	de,#_station_small_ew
   56D9 21 04 10      [10] 4562 	ld	hl,#0x1004
   56DC E5            [11] 4563 	push	hl
   56DD C5            [11] 4564 	push	bc
   56DE D5            [11] 4565 	push	de
   56DF CD 04 64      [17] 4566 	call	_cpct_drawSprite
                           4567 ;src/includes/world.h:292: break;
   56E2 C3 AC 57      [10] 4568 	jp	00128$
                           4569 ;src/includes/world.h:293: case SMNS:
   56E5                    4570 00113$:
                           4571 ;src/includes/world.h:294: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   56E5 11 29 43      [10] 4572 	ld	de,#_station_medium_ns
   56E8 21 04 10      [10] 4573 	ld	hl,#0x1004
   56EB E5            [11] 4574 	push	hl
   56EC C5            [11] 4575 	push	bc
   56ED D5            [11] 4576 	push	de
   56EE CD 04 64      [17] 4577 	call	_cpct_drawSprite
                           4578 ;src/includes/world.h:295: break;
   56F1 C3 AC 57      [10] 4579 	jp	00128$
                           4580 ;src/includes/world.h:296: case SMEW:
   56F4                    4581 00114$:
                           4582 ;src/includes/world.h:297: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   56F4 11 69 43      [10] 4583 	ld	de,#_station_medium_ew
   56F7 21 04 10      [10] 4584 	ld	hl,#0x1004
   56FA E5            [11] 4585 	push	hl
   56FB C5            [11] 4586 	push	bc
   56FC D5            [11] 4587 	push	de
   56FD CD 04 64      [17] 4588 	call	_cpct_drawSprite
                           4589 ;src/includes/world.h:298: break;
   5700 C3 AC 57      [10] 4590 	jp	00128$
                           4591 ;src/includes/world.h:299: case SLNS:
   5703                    4592 00115$:
                           4593 ;src/includes/world.h:300: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5703 11 A9 43      [10] 4594 	ld	de,#_station_large_ns
   5706 21 04 10      [10] 4595 	ld	hl,#0x1004
   5709 E5            [11] 4596 	push	hl
   570A C5            [11] 4597 	push	bc
   570B D5            [11] 4598 	push	de
   570C CD 04 64      [17] 4599 	call	_cpct_drawSprite
                           4600 ;src/includes/world.h:301: break;
   570F C3 AC 57      [10] 4601 	jp	00128$
                           4602 ;src/includes/world.h:302: case SLEW:
   5712                    4603 00116$:
                           4604 ;src/includes/world.h:303: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5712 11 E9 43      [10] 4605 	ld	de,#_station_large_ew
   5715 21 04 10      [10] 4606 	ld	hl,#0x1004
   5718 E5            [11] 4607 	push	hl
   5719 C5            [11] 4608 	push	bc
   571A D5            [11] 4609 	push	de
   571B CD 04 64      [17] 4610 	call	_cpct_drawSprite
                           4611 ;src/includes/world.h:304: break;
   571E C3 AC 57      [10] 4612 	jp	00128$
                           4613 ;src/includes/world.h:305: case REW:
   5721                    4614 00117$:
                           4615 ;src/includes/world.h:306: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5721 11 29 44      [10] 4616 	ld	de,#_rail_ew
   5724 21 04 10      [10] 4617 	ld	hl,#0x1004
   5727 E5            [11] 4618 	push	hl
   5728 C5            [11] 4619 	push	bc
   5729 D5            [11] 4620 	push	de
   572A CD 04 64      [17] 4621 	call	_cpct_drawSprite
                           4622 ;src/includes/world.h:307: break;
   572D C3 AC 57      [10] 4623 	jp	00128$
                           4624 ;src/includes/world.h:308: case RNS:
   5730                    4625 00118$:
                           4626 ;src/includes/world.h:309: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5730 11 69 44      [10] 4627 	ld	de,#_rail_ns
   5733 21 04 10      [10] 4628 	ld	hl,#0x1004
   5736 E5            [11] 4629 	push	hl
   5737 C5            [11] 4630 	push	bc
   5738 D5            [11] 4631 	push	de
   5739 CD 04 64      [17] 4632 	call	_cpct_drawSprite
                           4633 ;src/includes/world.h:310: break;
   573C 18 6E         [12] 4634 	jr	00128$
                           4635 ;src/includes/world.h:311: case REN:
   573E                    4636 00119$:
                           4637 ;src/includes/world.h:312: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   573E 11 A9 44      [10] 4638 	ld	de,#_rail_en
   5741 21 04 10      [10] 4639 	ld	hl,#0x1004
   5744 E5            [11] 4640 	push	hl
   5745 C5            [11] 4641 	push	bc
   5746 D5            [11] 4642 	push	de
   5747 CD 04 64      [17] 4643 	call	_cpct_drawSprite
                           4644 ;src/includes/world.h:313: break;
   574A 18 60         [12] 4645 	jr	00128$
                           4646 ;src/includes/world.h:314: case RES:
   574C                    4647 00120$:
                           4648 ;src/includes/world.h:315: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   574C 11 E9 44      [10] 4649 	ld	de,#_rail_es
   574F 21 04 10      [10] 4650 	ld	hl,#0x1004
   5752 E5            [11] 4651 	push	hl
   5753 C5            [11] 4652 	push	bc
   5754 D5            [11] 4653 	push	de
   5755 CD 04 64      [17] 4654 	call	_cpct_drawSprite
                           4655 ;src/includes/world.h:316: break;
   5758 18 52         [12] 4656 	jr	00128$
                           4657 ;src/includes/world.h:317: case RWN:
   575A                    4658 00121$:
                           4659 ;src/includes/world.h:318: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   575A 11 29 45      [10] 4660 	ld	de,#_rail_wn
   575D 21 04 10      [10] 4661 	ld	hl,#0x1004
   5760 E5            [11] 4662 	push	hl
   5761 C5            [11] 4663 	push	bc
   5762 D5            [11] 4664 	push	de
   5763 CD 04 64      [17] 4665 	call	_cpct_drawSprite
                           4666 ;src/includes/world.h:319: break;
   5766 18 44         [12] 4667 	jr	00128$
                           4668 ;src/includes/world.h:320: case RWS:
   5768                    4669 00122$:
                           4670 ;src/includes/world.h:321: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5768 11 69 45      [10] 4671 	ld	de,#_rail_ws
   576B 21 04 10      [10] 4672 	ld	hl,#0x1004
   576E E5            [11] 4673 	push	hl
   576F C5            [11] 4674 	push	bc
   5770 D5            [11] 4675 	push	de
   5771 CD 04 64      [17] 4676 	call	_cpct_drawSprite
                           4677 ;src/includes/world.h:322: break;
   5774 18 36         [12] 4678 	jr	00128$
                           4679 ;src/includes/world.h:323: case REWN:
   5776                    4680 00123$:
                           4681 ;src/includes/world.h:324: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5776 11 A9 45      [10] 4682 	ld	de,#_rail_ew_n
   5779 21 04 10      [10] 4683 	ld	hl,#0x1004
   577C E5            [11] 4684 	push	hl
   577D C5            [11] 4685 	push	bc
   577E D5            [11] 4686 	push	de
   577F CD 04 64      [17] 4687 	call	_cpct_drawSprite
                           4688 ;src/includes/world.h:325: break;
   5782 18 28         [12] 4689 	jr	00128$
                           4690 ;src/includes/world.h:326: case REWS:
   5784                    4691 00124$:
                           4692 ;src/includes/world.h:327: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5784 11 E9 45      [10] 4693 	ld	de,#_rail_ew_s
   5787 21 04 10      [10] 4694 	ld	hl,#0x1004
   578A E5            [11] 4695 	push	hl
   578B C5            [11] 4696 	push	bc
   578C D5            [11] 4697 	push	de
   578D CD 04 64      [17] 4698 	call	_cpct_drawSprite
                           4699 ;src/includes/world.h:328: break;
   5790 18 1A         [12] 4700 	jr	00128$
                           4701 ;src/includes/world.h:329: case RNSE:
   5792                    4702 00125$:
                           4703 ;src/includes/world.h:330: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5792 11 69 46      [10] 4704 	ld	de,#_rail_ns_e
   5795 21 04 10      [10] 4705 	ld	hl,#0x1004
   5798 E5            [11] 4706 	push	hl
   5799 C5            [11] 4707 	push	bc
   579A D5            [11] 4708 	push	de
   579B CD 04 64      [17] 4709 	call	_cpct_drawSprite
                           4710 ;src/includes/world.h:331: break;
   579E 18 0C         [12] 4711 	jr	00128$
                           4712 ;src/includes/world.h:332: case RNSW:
   57A0                    4713 00126$:
                           4714 ;src/includes/world.h:333: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   57A0 11 29 46      [10] 4715 	ld	de,#_rail_ns_w
   57A3 21 04 10      [10] 4716 	ld	hl,#0x1004
   57A6 E5            [11] 4717 	push	hl
   57A7 C5            [11] 4718 	push	bc
   57A8 D5            [11] 4719 	push	de
   57A9 CD 04 64      [17] 4720 	call	_cpct_drawSprite
                           4721 ;src/includes/world.h:335: }
   57AC                    4722 00128$:
   57AC DD E1         [14] 4723 	pop	ix
   57AE C9            [10] 4724 	ret
                           4725 ;src/includes/world.h:338: void drawScrolls(u8 x_, u8 y_)
                           4726 ;	---------------------------------
                           4727 ; Function drawScrolls
                           4728 ; ---------------------------------
   57AF                    4729 _drawScrolls::
   57AF DD E5         [15] 4730 	push	ix
   57B1 DD 21 00 00   [14] 4731 	ld	ix,#0
   57B5 DD 39         [15] 4732 	add	ix,sp
   57B7 3B            [ 6] 4733 	dec	sp
                           4734 ;src/includes/world.h:344: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   57B8 DD 4E 04      [19] 4735 	ld	c,4 (ix)
   57BB 06 00         [ 7] 4736 	ld	b,#0x00
   57BD 69            [ 4] 4737 	ld	l, c
   57BE 60            [ 4] 4738 	ld	h, b
   57BF 29            [11] 4739 	add	hl, hl
   57C0 29            [11] 4740 	add	hl, hl
   57C1 29            [11] 4741 	add	hl, hl
   57C2 09            [11] 4742 	add	hl, bc
   57C3 29            [11] 4743 	add	hl, hl
   57C4 09            [11] 4744 	add	hl, bc
   57C5 29            [11] 4745 	add	hl, hl
   57C6 29            [11] 4746 	add	hl, hl
   57C7 01 3C 00      [10] 4747 	ld	bc,#0x003C
   57CA C5            [11] 4748 	push	bc
   57CB E5            [11] 4749 	push	hl
   57CC CD 2E 67      [17] 4750 	call	__divsint
   57CF F1            [10] 4751 	pop	af
   57D0 F1            [10] 4752 	pop	af
   57D1 55            [ 4] 4753 	ld	d,l
                           4754 ;src/includes/world.h:345: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   57D2 DD 4E 05      [19] 4755 	ld	c,5 (ix)
   57D5 06 00         [ 7] 4756 	ld	b,#0x00
   57D7 69            [ 4] 4757 	ld	l, c
   57D8 60            [ 4] 4758 	ld	h, b
   57D9 29            [11] 4759 	add	hl, hl
   57DA 29            [11] 4760 	add	hl, hl
   57DB 09            [11] 4761 	add	hl, bc
   57DC 29            [11] 4762 	add	hl, hl
   57DD 09            [11] 4763 	add	hl, bc
   57DE 29            [11] 4764 	add	hl, hl
   57DF 29            [11] 4765 	add	hl, hl
   57E0 29            [11] 4766 	add	hl, hl
   57E1 29            [11] 4767 	add	hl, hl
   57E2 D5            [11] 4768 	push	de
   57E3 01 24 00      [10] 4769 	ld	bc,#0x0024
   57E6 C5            [11] 4770 	push	bc
   57E7 E5            [11] 4771 	push	hl
   57E8 CD 2E 67      [17] 4772 	call	__divsint
   57EB F1            [10] 4773 	pop	af
   57EC F1            [10] 4774 	pop	af
   57ED D1            [10] 4775 	pop	de
   57EE DD 75 FF      [19] 4776 	ld	-1 (ix),l
                           4777 ;src/includes/world.h:347: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   57F1 AF            [ 4] 4778 	xor	a, a
   57F2 F5            [11] 4779 	push	af
   57F3 33            [ 6] 4780 	inc	sp
   57F4 D5            [11] 4781 	push	de
   57F5 33            [ 6] 4782 	inc	sp
   57F6 21 00 C0      [10] 4783 	ld	hl,#0xC000
   57F9 E5            [11] 4784 	push	hl
   57FA CD DD 66      [17] 4785 	call	_cpct_getScreenPtr
                           4786 ;src/includes/world.h:348: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   57FD E5            [11] 4787 	push	hl
   57FE 21 00 00      [10] 4788 	ld	hl,#0x0000
   5801 E5            [11] 4789 	push	hl
   5802 2E 00         [ 7] 4790 	ld	l, #0x00
   5804 E5            [11] 4791 	push	hl
   5805 CD EC 65      [17] 4792 	call	_cpct_px2byteM1
   5808 F1            [10] 4793 	pop	af
   5809 F1            [10] 4794 	pop	af
   580A 45            [ 4] 4795 	ld	b,l
   580B D1            [10] 4796 	pop	de
   580C 21 04 04      [10] 4797 	ld	hl,#0x0404
   580F E5            [11] 4798 	push	hl
   5810 C5            [11] 4799 	push	bc
   5811 33            [ 6] 4800 	inc	sp
   5812 D5            [11] 4801 	push	de
   5813 CD 24 66      [17] 4802 	call	_cpct_drawSolidBox
   5816 F1            [10] 4803 	pop	af
   5817 F1            [10] 4804 	pop	af
   5818 33            [ 6] 4805 	inc	sp
                           4806 ;src/includes/world.h:350: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5819 DD 7E FF      [19] 4807 	ld	a,-1 (ix)
   581C F5            [11] 4808 	push	af
   581D 33            [ 6] 4809 	inc	sp
   581E AF            [ 4] 4810 	xor	a, a
   581F F5            [11] 4811 	push	af
   5820 33            [ 6] 4812 	inc	sp
   5821 21 00 C0      [10] 4813 	ld	hl,#0xC000
   5824 E5            [11] 4814 	push	hl
   5825 CD DD 66      [17] 4815 	call	_cpct_getScreenPtr
                           4816 ;src/includes/world.h:351: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5828 E5            [11] 4817 	push	hl
   5829 21 00 00      [10] 4818 	ld	hl,#0x0000
   582C E5            [11] 4819 	push	hl
   582D 2E 00         [ 7] 4820 	ld	l, #0x00
   582F E5            [11] 4821 	push	hl
   5830 CD EC 65      [17] 4822 	call	_cpct_px2byteM1
   5833 F1            [10] 4823 	pop	af
   5834 F1            [10] 4824 	pop	af
   5835 45            [ 4] 4825 	ld	b,l
   5836 D1            [10] 4826 	pop	de
   5837 21 01 10      [10] 4827 	ld	hl,#0x1001
   583A E5            [11] 4828 	push	hl
   583B C5            [11] 4829 	push	bc
   583C 33            [ 6] 4830 	inc	sp
   583D D5            [11] 4831 	push	de
   583E CD 24 66      [17] 4832 	call	_cpct_drawSolidBox
   5841 F1            [10] 4833 	pop	af
   5842 F1            [10] 4834 	pop	af
   5843 33            [ 6] 4835 	inc	sp
   5844 33            [ 6] 4836 	inc	sp
   5845 DD E1         [14] 4837 	pop	ix
   5847 C9            [10] 4838 	ret
                           4839 ;src/includes/world.h:354: void drawWorld(u8 x_, u8 y_)
                           4840 ;	---------------------------------
                           4841 ; Function drawWorld
                           4842 ; ---------------------------------
   5848                    4843 _drawWorld::
                           4844 ;src/includes/world.h:359: for(iy=0; iy<NBTILE_H;iy++)
   5848 16 00         [ 7] 4845 	ld	d,#0x00
                           4846 ;src/includes/world.h:361: for(ix=0; ix<NBTILE_W;ix++)
   584A                    4847 00109$:
   584A 1E 00         [ 7] 4848 	ld	e,#0x00
   584C                    4849 00103$:
                           4850 ;src/includes/world.h:363: drawTile(x_, y_, ix, iy);
   584C D5            [11] 4851 	push	de
   584D D5            [11] 4852 	push	de
   584E 21 07 00      [10] 4853 	ld	hl, #7+0
   5851 39            [11] 4854 	add	hl, sp
   5852 7E            [ 7] 4855 	ld	a, (hl)
   5853 F5            [11] 4856 	push	af
   5854 33            [ 6] 4857 	inc	sp
   5855 21 07 00      [10] 4858 	ld	hl, #7+0
   5858 39            [11] 4859 	add	hl, sp
   5859 7E            [ 7] 4860 	ld	a, (hl)
   585A F5            [11] 4861 	push	af
   585B 33            [ 6] 4862 	inc	sp
   585C CD 87 55      [17] 4863 	call	_drawTile
   585F F1            [10] 4864 	pop	af
   5860 F1            [10] 4865 	pop	af
   5861 D1            [10] 4866 	pop	de
                           4867 ;src/includes/world.h:361: for(ix=0; ix<NBTILE_W;ix++)
   5862 1C            [ 4] 4868 	inc	e
   5863 7B            [ 4] 4869 	ld	a,e
   5864 D6 14         [ 7] 4870 	sub	a, #0x14
   5866 38 E4         [12] 4871 	jr	C,00103$
                           4872 ;src/includes/world.h:359: for(iy=0; iy<NBTILE_H;iy++)
   5868 14            [ 4] 4873 	inc	d
   5869 7A            [ 4] 4874 	ld	a,d
   586A D6 0C         [ 7] 4875 	sub	a, #0x0C
   586C 38 DC         [12] 4876 	jr	C,00109$
                           4877 ;src/includes/world.h:367: drawScrolls(x_, y_);
   586E 21 03 00      [10] 4878 	ld	hl, #3+0
   5871 39            [11] 4879 	add	hl, sp
   5872 7E            [ 7] 4880 	ld	a, (hl)
   5873 F5            [11] 4881 	push	af
   5874 33            [ 6] 4882 	inc	sp
   5875 21 03 00      [10] 4883 	ld	hl, #3+0
   5878 39            [11] 4884 	add	hl, sp
   5879 7E            [ 7] 4885 	ld	a, (hl)
   587A F5            [11] 4886 	push	af
   587B 33            [ 6] 4887 	inc	sp
   587C CD AF 57      [17] 4888 	call	_drawScrolls
   587F F1            [10] 4889 	pop	af
   5880 C9            [10] 4890 	ret
                           4891 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           4892 ;	---------------------------------
                           4893 ; Function windowInfoTile
                           4894 ; ---------------------------------
   5881                    4895 _windowInfoTile::
   5881 DD E5         [15] 4896 	push	ix
   5883 DD 21 00 00   [14] 4897 	ld	ix,#0
   5887 DD 39         [15] 4898 	add	ix,sp
   5889 21 F8 FF      [10] 4899 	ld	hl,#-8
   588C 39            [11] 4900 	add	hl,sp
   588D F9            [ 6] 4901 	ld	sp,hl
                           4902 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   588E DD 4E 05      [19] 4903 	ld	c,5 (ix)
   5891 06 00         [ 7] 4904 	ld	b,#0x00
   5893 69            [ 4] 4905 	ld	l, c
   5894 60            [ 4] 4906 	ld	h, b
   5895 29            [11] 4907 	add	hl, hl
   5896 29            [11] 4908 	add	hl, hl
   5897 09            [11] 4909 	add	hl, bc
   5898 29            [11] 4910 	add	hl, hl
   5899 29            [11] 4911 	add	hl, hl
   589A 29            [11] 4912 	add	hl, hl
   589B 29            [11] 4913 	add	hl, hl
   589C DD 5E 04      [19] 4914 	ld	e,4 (ix)
   589F 16 00         [ 7] 4915 	ld	d,#0x00
   58A1 19            [11] 4916 	add	hl,de
   58A2 11 8A 67      [10] 4917 	ld	de,#_p_world
   58A5 19            [11] 4918 	add	hl,de
   58A6 4E            [ 7] 4919 	ld	c,(hl)
   58A7 3E 09         [ 7] 4920 	ld	a,#0x09
   58A9 91            [ 4] 4921 	sub	a, c
   58AA DA DB 59      [10] 4922 	jp	C,00111$
   58AD 59            [ 4] 4923 	ld	e,c
   58AE 16 00         [ 7] 4924 	ld	d,#0x00
   58B0 21 B7 58      [10] 4925 	ld	hl,#00119$
   58B3 19            [11] 4926 	add	hl,de
   58B4 19            [11] 4927 	add	hl,de
   58B5 19            [11] 4928 	add	hl,de
   58B6 E9            [ 4] 4929 	jp	(hl)
   58B7                    4930 00119$:
   58B7 C3 D5 58      [10] 4931 	jp	00101$
   58BA C3 D5 58      [10] 4932 	jp	00102$
   58BD C3 01 59      [10] 4933 	jp	00103$
   58C0 C3 01 59      [10] 4934 	jp	00104$
   58C3 C3 01 59      [10] 4935 	jp	00105$
   58C6 C3 2D 59      [10] 4936 	jp	00106$
   58C9 C3 2D 59      [10] 4937 	jp	00107$
   58CC C3 59 59      [10] 4938 	jp	00108$
   58CF C3 85 59      [10] 4939 	jp	00109$
   58D2 C3 B0 59      [10] 4940 	jp	00110$
                           4941 ;src/includes/game.h:7: case GRASS1:
   58D5                    4942 00101$:
                           4943 ;src/includes/game.h:8: case GRASS2:
   58D5                    4944 00102$:
                           4945 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   58D5 21 00 00      [10] 4946 	ld	hl,#0x0000
   58D8 39            [11] 4947 	add	hl,sp
   58D9 5D            [ 4] 4948 	ld	e,l
   58DA 54            [ 4] 4949 	ld	d,h
   58DB 36 16         [10] 4950 	ld	(hl),#<(___str_2)
   58DD 23            [ 6] 4951 	inc	hl
   58DE 36 5A         [10] 4952 	ld	(hl),#>(___str_2)
                           4953 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   58E0 6B            [ 4] 4954 	ld	l, e
   58E1 62            [ 4] 4955 	ld	h, d
   58E2 23            [ 6] 4956 	inc	hl
   58E3 23            [ 6] 4957 	inc	hl
   58E4 01 20 5A      [10] 4958 	ld	bc,#___str_3+0
   58E7 71            [ 7] 4959 	ld	(hl),c
   58E8 23            [ 6] 4960 	inc	hl
   58E9 70            [ 7] 4961 	ld	(hl),b
                           4962 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   58EA 21 04 00      [10] 4963 	ld	hl,#0x0004
   58ED 19            [11] 4964 	add	hl,de
   58EE 01 21 5A      [10] 4965 	ld	bc,#___str_4+0
   58F1 71            [ 7] 4966 	ld	(hl),c
   58F2 23            [ 6] 4967 	inc	hl
   58F3 70            [ 7] 4968 	ld	(hl),b
                           4969 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   58F4 21 06 00      [10] 4970 	ld	hl,#0x0006
   58F7 19            [11] 4971 	add	hl,de
   58F8 11 35 5A      [10] 4972 	ld	de,#___str_5+0
   58FB 73            [ 7] 4973 	ld	(hl),e
   58FC 23            [ 6] 4974 	inc	hl
   58FD 72            [ 7] 4975 	ld	(hl),d
                           4976 ;src/includes/game.h:13: break;
   58FE C3 04 5A      [10] 4977 	jp	00112$
                           4978 ;src/includes/game.h:14: case DWELLINGS1:
   5901                    4979 00103$:
                           4980 ;src/includes/game.h:15: case DWELLINGS2:
   5901                    4981 00104$:
                           4982 ;src/includes/game.h:16: case DWELLINGS3:
   5901                    4983 00105$:
                           4984 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   5901 21 00 00      [10] 4985 	ld	hl,#0x0000
   5904 39            [11] 4986 	add	hl,sp
   5905 5D            [ 4] 4987 	ld	e,l
   5906 54            [ 4] 4988 	ld	d,h
   5907 36 45         [10] 4989 	ld	(hl),#<(___str_6)
   5909 23            [ 6] 4990 	inc	hl
   590A 36 5A         [10] 4991 	ld	(hl),#>(___str_6)
                           4992 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   590C 6B            [ 4] 4993 	ld	l, e
   590D 62            [ 4] 4994 	ld	h, d
   590E 23            [ 6] 4995 	inc	hl
   590F 23            [ 6] 4996 	inc	hl
   5910 01 20 5A      [10] 4997 	ld	bc,#___str_3+0
   5913 71            [ 7] 4998 	ld	(hl),c
   5914 23            [ 6] 4999 	inc	hl
   5915 70            [ 7] 5000 	ld	(hl),b
                           5001 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   5916 21 04 00      [10] 5002 	ld	hl,#0x0004
   5919 19            [11] 5003 	add	hl,de
   591A 01 4A 5A      [10] 5004 	ld	bc,#___str_7+0
   591D 71            [ 7] 5005 	ld	(hl),c
   591E 23            [ 6] 5006 	inc	hl
   591F 70            [ 7] 5007 	ld	(hl),b
                           5008 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   5920 21 06 00      [10] 5009 	ld	hl,#0x0006
   5923 19            [11] 5010 	add	hl,de
   5924 11 67 5A      [10] 5011 	ld	de,#___str_8+0
   5927 73            [ 7] 5012 	ld	(hl),e
   5928 23            [ 6] 5013 	inc	hl
   5929 72            [ 7] 5014 	ld	(hl),d
                           5015 ;src/includes/game.h:21: break;
   592A C3 04 5A      [10] 5016 	jp	00112$
                           5017 ;src/includes/game.h:22: case FARM1:
   592D                    5018 00106$:
                           5019 ;src/includes/game.h:23: case FARM2:
   592D                    5020 00107$:
                           5021 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   592D 21 00 00      [10] 5022 	ld	hl,#0x0000
   5930 39            [11] 5023 	add	hl,sp
   5931 5D            [ 4] 5024 	ld	e,l
   5932 54            [ 4] 5025 	ld	d,h
   5933 36 8C         [10] 5026 	ld	(hl),#<(___str_9)
   5935 23            [ 6] 5027 	inc	hl
   5936 36 5A         [10] 5028 	ld	(hl),#>(___str_9)
                           5029 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   5938 6B            [ 4] 5030 	ld	l, e
   5939 62            [ 4] 5031 	ld	h, d
   593A 23            [ 6] 5032 	inc	hl
   593B 23            [ 6] 5033 	inc	hl
   593C 01 20 5A      [10] 5034 	ld	bc,#___str_3+0
   593F 71            [ 7] 5035 	ld	(hl),c
   5940 23            [ 6] 5036 	inc	hl
   5941 70            [ 7] 5037 	ld	(hl),b
                           5038 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   5942 21 04 00      [10] 5039 	ld	hl,#0x0004
   5945 19            [11] 5040 	add	hl,de
   5946 01 91 5A      [10] 5041 	ld	bc,#___str_10+0
   5949 71            [ 7] 5042 	ld	(hl),c
   594A 23            [ 6] 5043 	inc	hl
   594B 70            [ 7] 5044 	ld	(hl),b
                           5045 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   594C 21 06 00      [10] 5046 	ld	hl,#0x0006
   594F 19            [11] 5047 	add	hl,de
   5950 11 A4 5A      [10] 5048 	ld	de,#___str_11+0
   5953 73            [ 7] 5049 	ld	(hl),e
   5954 23            [ 6] 5050 	inc	hl
   5955 72            [ 7] 5051 	ld	(hl),d
                           5052 ;src/includes/game.h:28: break;
   5956 C3 04 5A      [10] 5053 	jp	00112$
                           5054 ;src/includes/game.h:29: case WATER:
   5959                    5055 00108$:
                           5056 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   5959 21 00 00      [10] 5057 	ld	hl,#0x0000
   595C 39            [11] 5058 	add	hl,sp
   595D 5D            [ 4] 5059 	ld	e,l
   595E 54            [ 4] 5060 	ld	d,h
   595F 36 B4         [10] 5061 	ld	(hl),#<(___str_12)
   5961 23            [ 6] 5062 	inc	hl
   5962 36 5A         [10] 5063 	ld	(hl),#>(___str_12)
                           5064 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   5964 6B            [ 4] 5065 	ld	l, e
   5965 62            [ 4] 5066 	ld	h, d
   5966 23            [ 6] 5067 	inc	hl
   5967 23            [ 6] 5068 	inc	hl
   5968 01 20 5A      [10] 5069 	ld	bc,#___str_3+0
   596B 71            [ 7] 5070 	ld	(hl),c
   596C 23            [ 6] 5071 	inc	hl
   596D 70            [ 7] 5072 	ld	(hl),b
                           5073 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   596E 21 04 00      [10] 5074 	ld	hl,#0x0004
   5971 19            [11] 5075 	add	hl,de
   5972 01 BA 5A      [10] 5076 	ld	bc,#___str_13+0
   5975 71            [ 7] 5077 	ld	(hl),c
   5976 23            [ 6] 5078 	inc	hl
   5977 70            [ 7] 5079 	ld	(hl),b
                           5080 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   5978 21 06 00      [10] 5081 	ld	hl,#0x0006
   597B 19            [11] 5082 	add	hl,de
   597C 11 A4 5A      [10] 5083 	ld	de,#___str_11+0
   597F 73            [ 7] 5084 	ld	(hl),e
   5980 23            [ 6] 5085 	inc	hl
   5981 72            [ 7] 5086 	ld	(hl),d
                           5087 ;src/includes/game.h:34: break;
   5982 C3 04 5A      [10] 5088 	jp	00112$
                           5089 ;src/includes/game.h:35: case FOREST:
   5985                    5090 00109$:
                           5091 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   5985 21 00 00      [10] 5092 	ld	hl,#0x0000
   5988 39            [11] 5093 	add	hl,sp
   5989 5D            [ 4] 5094 	ld	e,l
   598A 54            [ 4] 5095 	ld	d,h
   598B 36 CE         [10] 5096 	ld	(hl),#<(___str_14)
   598D 23            [ 6] 5097 	inc	hl
   598E 36 5A         [10] 5098 	ld	(hl),#>(___str_14)
                           5099 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   5990 6B            [ 4] 5100 	ld	l, e
   5991 62            [ 4] 5101 	ld	h, d
   5992 23            [ 6] 5102 	inc	hl
   5993 23            [ 6] 5103 	inc	hl
   5994 01 20 5A      [10] 5104 	ld	bc,#___str_3+0
   5997 71            [ 7] 5105 	ld	(hl),c
   5998 23            [ 6] 5106 	inc	hl
   5999 70            [ 7] 5107 	ld	(hl),b
                           5108 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   599A 21 04 00      [10] 5109 	ld	hl,#0x0004
   599D 19            [11] 5110 	add	hl,de
   599E 01 BA 5A      [10] 5111 	ld	bc,#___str_13+0
   59A1 71            [ 7] 5112 	ld	(hl),c
   59A2 23            [ 6] 5113 	inc	hl
   59A3 70            [ 7] 5114 	ld	(hl),b
                           5115 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   59A4 21 06 00      [10] 5116 	ld	hl,#0x0006
   59A7 19            [11] 5117 	add	hl,de
   59A8 11 A4 5A      [10] 5118 	ld	de,#___str_11+0
   59AB 73            [ 7] 5119 	ld	(hl),e
   59AC 23            [ 6] 5120 	inc	hl
   59AD 72            [ 7] 5121 	ld	(hl),d
                           5122 ;src/includes/game.h:40: break;
   59AE 18 54         [12] 5123 	jr	00112$
                           5124 ;src/includes/game.h:41: case LIVESTOCK:
   59B0                    5125 00110$:
                           5126 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   59B0 21 00 00      [10] 5127 	ld	hl,#0x0000
   59B3 39            [11] 5128 	add	hl,sp
   59B4 5D            [ 4] 5129 	ld	e,l
   59B5 54            [ 4] 5130 	ld	d,h
   59B6 36 D5         [10] 5131 	ld	(hl),#<(___str_15)
   59B8 23            [ 6] 5132 	inc	hl
   59B9 36 5A         [10] 5133 	ld	(hl),#>(___str_15)
                           5134 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   59BB 6B            [ 4] 5135 	ld	l, e
   59BC 62            [ 4] 5136 	ld	h, d
   59BD 23            [ 6] 5137 	inc	hl
   59BE 23            [ 6] 5138 	inc	hl
   59BF 01 20 5A      [10] 5139 	ld	bc,#___str_3+0
   59C2 71            [ 7] 5140 	ld	(hl),c
   59C3 23            [ 6] 5141 	inc	hl
   59C4 70            [ 7] 5142 	ld	(hl),b
                           5143 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   59C5 21 04 00      [10] 5144 	ld	hl,#0x0004
   59C8 19            [11] 5145 	add	hl,de
   59C9 01 E7 5A      [10] 5146 	ld	bc,#___str_16+0
   59CC 71            [ 7] 5147 	ld	(hl),c
   59CD 23            [ 6] 5148 	inc	hl
   59CE 70            [ 7] 5149 	ld	(hl),b
                           5150 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   59CF 21 06 00      [10] 5151 	ld	hl,#0x0006
   59D2 19            [11] 5152 	add	hl,de
   59D3 11 03 5B      [10] 5153 	ld	de,#___str_17+0
   59D6 73            [ 7] 5154 	ld	(hl),e
   59D7 23            [ 6] 5155 	inc	hl
   59D8 72            [ 7] 5156 	ld	(hl),d
                           5157 ;src/includes/game.h:46: break;
   59D9 18 29         [12] 5158 	jr	00112$
                           5159 ;src/includes/game.h:47: default:
   59DB                    5160 00111$:
                           5161 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   59DB 21 00 00      [10] 5162 	ld	hl,#0x0000
   59DE 39            [11] 5163 	add	hl,sp
   59DF 5D            [ 4] 5164 	ld	e,l
   59E0 54            [ 4] 5165 	ld	d,h
   59E1 36 12         [10] 5166 	ld	(hl),#<(___str_18)
   59E3 23            [ 6] 5167 	inc	hl
   59E4 36 5B         [10] 5168 	ld	(hl),#>(___str_18)
                           5169 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   59E6 6B            [ 4] 5170 	ld	l, e
   59E7 62            [ 4] 5171 	ld	h, d
   59E8 23            [ 6] 5172 	inc	hl
   59E9 23            [ 6] 5173 	inc	hl
   59EA 01 20 5A      [10] 5174 	ld	bc,#___str_3+0
   59ED 71            [ 7] 5175 	ld	(hl),c
   59EE 23            [ 6] 5176 	inc	hl
   59EF 70            [ 7] 5177 	ld	(hl),b
                           5178 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   59F0 21 04 00      [10] 5179 	ld	hl,#0x0004
   59F3 19            [11] 5180 	add	hl,de
   59F4 01 26 5B      [10] 5181 	ld	bc,#___str_19+0
   59F7 71            [ 7] 5182 	ld	(hl),c
   59F8 23            [ 6] 5183 	inc	hl
   59F9 70            [ 7] 5184 	ld	(hl),b
                           5185 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   59FA 21 06 00      [10] 5186 	ld	hl,#0x0006
   59FD 19            [11] 5187 	add	hl,de
   59FE 11 34 5B      [10] 5188 	ld	de,#___str_20+0
   5A01 73            [ 7] 5189 	ld	(hl),e
   5A02 23            [ 6] 5190 	inc	hl
   5A03 72            [ 7] 5191 	ld	(hl),d
                           5192 ;src/includes/game.h:53: }
   5A04                    5193 00112$:
                           5194 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   5A04 21 00 00      [10] 5195 	ld	hl,#0x0000
   5A07 39            [11] 5196 	add	hl,sp
   5A08 EB            [ 4] 5197 	ex	de,hl
   5A09 21 04 00      [10] 5198 	ld	hl,#0x0004
   5A0C E5            [11] 5199 	push	hl
   5A0D D5            [11] 5200 	push	de
   5A0E CD C1 4B      [17] 5201 	call	_drawWindow
   5A11 DD F9         [10] 5202 	ld	sp,ix
   5A13 DD E1         [14] 5203 	pop	ix
   5A15 C9            [10] 5204 	ret
   5A16                    5205 ___str_2:
   5A16 47 72 61 73 73 6C  5206 	.ascii "Grassland"
        61 6E 64
   5A1F 00                 5207 	.db 0x00
   5A20                    5208 ___str_3:
   5A20 00                 5209 	.db 0x00
   5A21                    5210 ___str_4:
   5A21 50 72 6F 64 75 63  5211 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   5A34 00                 5212 	.db 0x00
   5A35                    5213 ___str_5:
   5A35 44 65 6D 61 6E 64  5214 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   5A44 00                 5215 	.db 0x00
   5A45                    5216 ___str_6:
   5A45 43 69 74 79        5217 	.ascii "City"
   5A49 00                 5218 	.db 0x00
   5A4A                    5219 ___str_7:
   5A4A 50 72 6F 64 75 63  5220 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   5A66 00                 5221 	.db 0x00
   5A67                    5222 ___str_8:
   5A67 44 65 6D 61 6E 64  5223 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5A8B 00                 5224 	.db 0x00
   5A8C                    5225 ___str_9:
   5A8C 46 61 72 6D        5226 	.ascii "Farm"
   5A90 00                 5227 	.db 0x00
   5A91                    5228 ___str_10:
   5A91 50 72 6F 64 75 63  5229 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5AA3 00                 5230 	.db 0x00
   5AA4                    5231 ___str_11:
   5AA4 44 65 6D 61 6E 64  5232 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   5AB3 00                 5233 	.db 0x00
   5AB4                    5234 ___str_12:
   5AB4 57 61 74 65 72     5235 	.ascii "Water"
   5AB9 00                 5236 	.db 0x00
   5ABA                    5237 ___str_13:
   5ABA 50 72 6F 64 75 63  5238 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   5ACD 00                 5239 	.db 0x00
   5ACE                    5240 ___str_14:
   5ACE 46 6F 72 65 73 74  5241 	.ascii "Forest"
   5AD4 00                 5242 	.db 0x00
   5AD5                    5243 ___str_15:
   5AD5 4C 69 76 65 73 74  5244 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5AE6 00                 5245 	.db 0x00
   5AE7                    5246 ___str_16:
   5AE7 50 72 6F 64 75 63  5247 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   5B02 00                 5248 	.db 0x00
   5B03                    5249 ___str_17:
   5B03 44 65 6D 61 6E 64  5250 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   5B11 00                 5251 	.db 0x00
   5B12                    5252 ___str_18:
   5B12 4E 6F 74 20 79 65  5253 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   5B25 00                 5254 	.db 0x00
   5B26                    5255 ___str_19:
   5B26 50 72 6F 64 75 63  5256 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   5B33 00                 5257 	.db 0x00
   5B34                    5258 ___str_20:
   5B34 44 65 6D 61 6E 64  5259 	.ascii "Demand: ?"
        3A 20 3F
   5B3D 00                 5260 	.db 0x00
                           5261 ;src/includes/game.h:58: void menuStations()
                           5262 ;	---------------------------------
                           5263 ; Function menuStations
                           5264 ; ---------------------------------
   5B3E                    5265 _menuStations::
   5B3E DD E5         [15] 5266 	push	ix
   5B40 DD 21 00 00   [14] 5267 	ld	ix,#0
   5B44 DD 39         [15] 5268 	add	ix,sp
   5B46 21 FA FF      [10] 5269 	ld	hl,#-6
   5B49 39            [11] 5270 	add	hl,sp
   5B4A F9            [ 6] 5271 	ld	sp,hl
                           5272 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   5B4B 21 00 00      [10] 5273 	ld	hl,#0x0000
   5B4E 39            [11] 5274 	add	hl,sp
   5B4F 5D            [ 4] 5275 	ld	e,l
   5B50 54            [ 4] 5276 	ld	d,h
   5B51 36 A0         [10] 5277 	ld	(hl),#<(___str_21)
   5B53 23            [ 6] 5278 	inc	hl
   5B54 36 5B         [10] 5279 	ld	(hl),#>(___str_21)
   5B56 6B            [ 4] 5280 	ld	l, e
   5B57 62            [ 4] 5281 	ld	h, d
   5B58 23            [ 6] 5282 	inc	hl
   5B59 23            [ 6] 5283 	inc	hl
   5B5A 01 A6 5B      [10] 5284 	ld	bc,#___str_22+0
   5B5D 71            [ 7] 5285 	ld	(hl),c
   5B5E 23            [ 6] 5286 	inc	hl
   5B5F 70            [ 7] 5287 	ld	(hl),b
   5B60 21 04 00      [10] 5288 	ld	hl,#0x0004
   5B63 19            [11] 5289 	add	hl,de
   5B64 01 AD 5B      [10] 5290 	ld	bc,#___str_23+0
   5B67 71            [ 7] 5291 	ld	(hl),c
   5B68 23            [ 6] 5292 	inc	hl
   5B69 70            [ 7] 5293 	ld	(hl),b
                           5294 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   5B6A 3E 03         [ 7] 5295 	ld	a,#0x03
   5B6C F5            [11] 5296 	push	af
   5B6D 33            [ 6] 5297 	inc	sp
   5B6E D5            [11] 5298 	push	de
   5B6F CD C3 4A      [17] 5299 	call	_drawMenu
   5B72 F1            [10] 5300 	pop	af
   5B73 33            [ 6] 5301 	inc	sp
   5B74 5D            [ 4] 5302 	ld	e,l
                           5303 ;src/includes/game.h:70: switch(result)
   5B75 3E 02         [ 7] 5304 	ld	a,#0x02
   5B77 93            [ 4] 5305 	sub	a, e
   5B78 38 21         [12] 5306 	jr	C,00105$
   5B7A 16 00         [ 7] 5307 	ld	d,#0x00
   5B7C 21 82 5B      [10] 5308 	ld	hl,#00111$
   5B7F 19            [11] 5309 	add	hl,de
   5B80 19            [11] 5310 	add	hl,de
                           5311 ;src/includes/game.h:72: case 0:
   5B81 E9            [ 4] 5312 	jp	(hl)
   5B82                    5313 00111$:
   5B82 18 04         [12] 5314 	jr	00101$
   5B84 18 09         [12] 5315 	jr	00102$
   5B86 18 0E         [12] 5316 	jr	00103$
   5B88                    5317 00101$:
                           5318 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   5B88 21 8A 76      [10] 5319 	ld	hl,#_CURSOR_MODE + 0
   5B8B 36 02         [10] 5320 	ld	(hl), #0x02
                           5321 ;src/includes/game.h:74: break;
   5B8D 18 0C         [12] 5322 	jr	00105$
                           5323 ;src/includes/game.h:76: case 1:
   5B8F                    5324 00102$:
                           5325 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5B8F 21 8A 76      [10] 5326 	ld	hl,#_CURSOR_MODE + 0
   5B92 36 04         [10] 5327 	ld	(hl), #0x04
                           5328 ;src/includes/game.h:78: break;
   5B94 18 05         [12] 5329 	jr	00105$
                           5330 ;src/includes/game.h:80: case 2:
   5B96                    5331 00103$:
                           5332 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   5B96 21 8A 76      [10] 5333 	ld	hl,#_CURSOR_MODE + 0
   5B99 36 06         [10] 5334 	ld	(hl), #0x06
                           5335 ;src/includes/game.h:83: }
   5B9B                    5336 00105$:
   5B9B DD F9         [10] 5337 	ld	sp, ix
   5B9D DD E1         [14] 5338 	pop	ix
   5B9F C9            [10] 5339 	ret
   5BA0                    5340 ___str_21:
   5BA0 53 6D 61 6C 6C     5341 	.ascii "Small"
   5BA5 00                 5342 	.db 0x00
   5BA6                    5343 ___str_22:
   5BA6 4D 65 64 69 75 6D  5344 	.ascii "Medium"
   5BAC 00                 5345 	.db 0x00
   5BAD                    5346 ___str_23:
   5BAD 4C 61 72 67 65     5347 	.ascii "Large"
   5BB2 00                 5348 	.db 0x00
                           5349 ;src/includes/game.h:86: void menuTile(u8 x, u8 y)
                           5350 ;	---------------------------------
                           5351 ; Function menuTile
                           5352 ; ---------------------------------
   5BB3                    5353 _menuTile::
   5BB3 DD E5         [15] 5354 	push	ix
   5BB5 DD 21 00 00   [14] 5355 	ld	ix,#0
   5BB9 DD 39         [15] 5356 	add	ix,sp
   5BBB 21 E6 FF      [10] 5357 	ld	hl,#-26
   5BBE 39            [11] 5358 	add	hl,sp
   5BBF F9            [ 6] 5359 	ld	sp,hl
                           5360 ;src/includes/game.h:90: const char *txtMenuTile[] = { 
   5BC0 21 06 00      [10] 5361 	ld	hl,#0x0006
   5BC3 39            [11] 5362 	add	hl,sp
   5BC4 5D            [ 4] 5363 	ld	e,l
   5BC5 54            [ 4] 5364 	ld	d,h
   5BC6 36 DB         [10] 5365 	ld	(hl),#<(___str_24)
   5BC8 23            [ 6] 5366 	inc	hl
   5BC9 36 5C         [10] 5367 	ld	(hl),#>(___str_24)
   5BCB 6B            [ 4] 5368 	ld	l, e
   5BCC 62            [ 4] 5369 	ld	h, d
   5BCD 23            [ 6] 5370 	inc	hl
   5BCE 23            [ 6] 5371 	inc	hl
   5BCF 01 EB 5C      [10] 5372 	ld	bc,#___str_25+0
   5BD2 71            [ 7] 5373 	ld	(hl),c
   5BD3 23            [ 6] 5374 	inc	hl
   5BD4 70            [ 7] 5375 	ld	(hl),b
   5BD5 21 04 00      [10] 5376 	ld	hl,#0x0004
   5BD8 19            [11] 5377 	add	hl,de
   5BD9 01 FB 5C      [10] 5378 	ld	bc,#___str_26+0
   5BDC 71            [ 7] 5379 	ld	(hl),c
   5BDD 23            [ 6] 5380 	inc	hl
   5BDE 70            [ 7] 5381 	ld	(hl),b
   5BDF 21 06 00      [10] 5382 	ld	hl,#0x0006
   5BE2 19            [11] 5383 	add	hl,de
   5BE3 01 0B 5D      [10] 5384 	ld	bc,#___str_27+0
   5BE6 71            [ 7] 5385 	ld	(hl),c
   5BE7 23            [ 6] 5386 	inc	hl
   5BE8 70            [ 7] 5387 	ld	(hl),b
   5BE9 21 08 00      [10] 5388 	ld	hl,#0x0008
   5BEC 19            [11] 5389 	add	hl,de
   5BED 01 13 5D      [10] 5390 	ld	bc,#___str_28+0
   5BF0 71            [ 7] 5391 	ld	(hl),c
   5BF1 23            [ 6] 5392 	inc	hl
   5BF2 70            [ 7] 5393 	ld	(hl),b
   5BF3 21 0A 00      [10] 5394 	ld	hl,#0x000A
   5BF6 19            [11] 5395 	add	hl,de
   5BF7 01 22 5D      [10] 5396 	ld	bc,#___str_29+0
   5BFA 71            [ 7] 5397 	ld	(hl),c
   5BFB 23            [ 6] 5398 	inc	hl
   5BFC 70            [ 7] 5399 	ld	(hl),b
   5BFD 21 0C 00      [10] 5400 	ld	hl,#0x000C
   5C00 19            [11] 5401 	add	hl,de
   5C01 01 2D 5D      [10] 5402 	ld	bc,#___str_30+0
   5C04 71            [ 7] 5403 	ld	(hl),c
   5C05 23            [ 6] 5404 	inc	hl
   5C06 70            [ 7] 5405 	ld	(hl),b
                           5406 ;src/includes/game.h:100: const char *txtWindowDestroy[] = { 
   5C07 21 00 00      [10] 5407 	ld	hl,#0x0000
   5C0A 39            [11] 5408 	add	hl,sp
   5C0B 4D            [ 4] 5409 	ld	c,l
   5C0C 44            [ 4] 5410 	ld	b,h
   5C0D 36 34         [10] 5411 	ld	(hl),#<(___str_31)
   5C0F 23            [ 6] 5412 	inc	hl
   5C10 36 5D         [10] 5413 	ld	(hl),#>(___str_31)
   5C12 21 02 00      [10] 5414 	ld	hl,#0x0002
   5C15 09            [11] 5415 	add	hl,bc
   5C16 DD 75 FE      [19] 5416 	ld	-2 (ix),l
   5C19 DD 74 FF      [19] 5417 	ld	-1 (ix),h
   5C1C DD 6E FE      [19] 5418 	ld	l,-2 (ix)
   5C1F DD 66 FF      [19] 5419 	ld	h,-1 (ix)
   5C22 36 57         [10] 5420 	ld	(hl),#<(___str_32)
   5C24 23            [ 6] 5421 	inc	hl
   5C25 36 5D         [10] 5422 	ld	(hl),#>(___str_32)
   5C27 21 04 00      [10] 5423 	ld	hl,#0x0004
   5C2A 09            [11] 5424 	add	hl,bc
   5C2B DD 75 FE      [19] 5425 	ld	-2 (ix),l
   5C2E DD 74 FF      [19] 5426 	ld	-1 (ix),h
   5C31 DD 6E FE      [19] 5427 	ld	l,-2 (ix)
   5C34 DD 66 FF      [19] 5428 	ld	h,-1 (ix)
   5C37 36 58         [10] 5429 	ld	(hl),#<(___str_33)
   5C39 23            [ 6] 5430 	inc	hl
   5C3A 36 5D         [10] 5431 	ld	(hl),#>(___str_33)
                           5432 ;src/includes/game.h:107: putM2();
   5C3C C5            [11] 5433 	push	bc
   5C3D D5            [11] 5434 	push	de
   5C3E CD BD 46      [17] 5435 	call	_putM2
   5C41 D1            [10] 5436 	pop	de
   5C42 C1            [10] 5437 	pop	bc
                           5438 ;src/includes/game.h:109: do{
   5C43 D5            [11] 5439 	push	de
   5C44 DD 5E 05      [19] 5440 	ld	e,5 (ix)
   5C47 16 00         [ 7] 5441 	ld	d,#0x00
   5C49 6B            [ 4] 5442 	ld	l, e
   5C4A 62            [ 4] 5443 	ld	h, d
   5C4B 29            [11] 5444 	add	hl, hl
   5C4C 29            [11] 5445 	add	hl, hl
   5C4D 19            [11] 5446 	add	hl, de
   5C4E 29            [11] 5447 	add	hl, hl
   5C4F 29            [11] 5448 	add	hl, hl
   5C50 29            [11] 5449 	add	hl, hl
   5C51 29            [11] 5450 	add	hl, hl
   5C52 D1            [10] 5451 	pop	de
   5C53 DD 75 FE      [19] 5452 	ld	-2 (ix),l
   5C56 DD 74 FF      [19] 5453 	ld	-1 (ix),h
   5C59 DD 71 FC      [19] 5454 	ld	-4 (ix),c
   5C5C DD 70 FD      [19] 5455 	ld	-3 (ix),b
   5C5F DD 73 FA      [19] 5456 	ld	-6 (ix),e
   5C62 DD 72 FB      [19] 5457 	ld	-5 (ix),d
   5C65                    5458 00114$:
                           5459 ;src/includes/game.h:110: menuChoice = drawMenu(txtMenuTile,7);
   5C65 DD 5E FA      [19] 5460 	ld	e,-6 (ix)
   5C68 DD 56 FB      [19] 5461 	ld	d,-5 (ix)
   5C6B 3E 07         [ 7] 5462 	ld	a,#0x07
   5C6D F5            [11] 5463 	push	af
   5C6E 33            [ 6] 5464 	inc	sp
   5C6F D5            [11] 5465 	push	de
   5C70 CD C3 4A      [17] 5466 	call	_drawMenu
   5C73 F1            [10] 5467 	pop	af
   5C74 33            [ 6] 5468 	inc	sp
   5C75 55            [ 4] 5469 	ld	d,l
                           5470 ;src/includes/game.h:112: if(menuChoice==0)
   5C76 7A            [ 4] 5471 	ld	a,d
   5C77 B7            [ 4] 5472 	or	a, a
   5C78 20 0F         [12] 5473 	jr	NZ,00112$
                           5474 ;src/includes/game.h:113: windowInfoTile(x, y);
   5C7A D5            [11] 5475 	push	de
   5C7B DD 66 05      [19] 5476 	ld	h,5 (ix)
   5C7E DD 6E 04      [19] 5477 	ld	l,4 (ix)
   5C81 E5            [11] 5478 	push	hl
   5C82 CD 81 58      [17] 5479 	call	_windowInfoTile
   5C85 F1            [10] 5480 	pop	af
   5C86 D1            [10] 5481 	pop	de
   5C87 18 45         [12] 5482 	jr	00115$
   5C89                    5483 00112$:
                           5484 ;src/includes/game.h:114: else if(menuChoice==1)
   5C89 7A            [ 4] 5485 	ld	a,d
   5C8A 3D            [ 4] 5486 	dec	a
   5C8B 20 09         [12] 5487 	jr	NZ,00109$
                           5488 ;src/includes/game.h:116: CURSOR_MODE=T_REW;
   5C8D 21 8A 76      [10] 5489 	ld	hl,#_CURSOR_MODE + 0
   5C90 36 07         [10] 5490 	ld	(hl), #0x07
                           5491 ;src/includes/game.h:117: menuChoice=6;
   5C92 16 06         [ 7] 5492 	ld	d,#0x06
   5C94 18 38         [12] 5493 	jr	00115$
   5C96                    5494 00109$:
                           5495 ;src/includes/game.h:119: else if(menuChoice==2)
   5C96 7A            [ 4] 5496 	ld	a,d
   5C97 D6 02         [ 7] 5497 	sub	a, #0x02
   5C99 20 07         [12] 5498 	jr	NZ,00106$
                           5499 ;src/includes/game.h:121: menuStations();
   5C9B CD 3E 5B      [17] 5500 	call	_menuStations
                           5501 ;src/includes/game.h:122: menuChoice=6;
   5C9E 16 06         [ 7] 5502 	ld	d,#0x06
   5CA0 18 2C         [12] 5503 	jr	00115$
   5CA2                    5504 00106$:
                           5505 ;src/includes/game.h:124: else if(menuChoice==3)
   5CA2 7A            [ 4] 5506 	ld	a,d
   5CA3 D6 03         [ 7] 5507 	sub	a, #0x03
   5CA5 20 27         [12] 5508 	jr	NZ,00115$
                           5509 ;src/includes/game.h:126: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5CA7 DD 5E FC      [19] 5510 	ld	e,-4 (ix)
   5CAA DD 56 FD      [19] 5511 	ld	d,-3 (ix)
   5CAD 21 03 01      [10] 5512 	ld	hl,#0x0103
   5CB0 E5            [11] 5513 	push	hl
   5CB1 D5            [11] 5514 	push	de
   5CB2 CD C1 4B      [17] 5515 	call	_drawWindow
   5CB5 F1            [10] 5516 	pop	af
   5CB6 F1            [10] 5517 	pop	af
   5CB7 2D            [ 4] 5518 	dec	l
   5CB8 20 12         [12] 5519 	jr	NZ,00102$
                           5520 ;src/includes/game.h:127: p_world[x+y*WIDTH] = GRASS1;
   5CBA DD 6E 04      [19] 5521 	ld	l,4 (ix)
   5CBD 26 00         [ 7] 5522 	ld	h,#0x00
   5CBF DD 5E FE      [19] 5523 	ld	e,-2 (ix)
   5CC2 DD 56 FF      [19] 5524 	ld	d,-1 (ix)
   5CC5 19            [11] 5525 	add	hl,de
   5CC6 11 8A 67      [10] 5526 	ld	de,#_p_world
   5CC9 19            [11] 5527 	add	hl,de
   5CCA 36 00         [10] 5528 	ld	(hl),#0x00
   5CCC                    5529 00102$:
                           5530 ;src/includes/game.h:129: menuChoice=6;
   5CCC 16 06         [ 7] 5531 	ld	d,#0x06
   5CCE                    5532 00115$:
                           5533 ;src/includes/game.h:133: while(menuChoice!=6);
   5CCE 7A            [ 4] 5534 	ld	a,d
   5CCF D6 06         [ 7] 5535 	sub	a, #0x06
   5CD1 20 92         [12] 5536 	jr	NZ,00114$
                           5537 ;src/includes/game.h:135: putM1();
   5CD3 CD A9 46      [17] 5538 	call	_putM1
   5CD6 DD F9         [10] 5539 	ld	sp, ix
   5CD8 DD E1         [14] 5540 	pop	ix
   5CDA C9            [10] 5541 	ret
   5CDB                    5542 ___str_24:
   5CDB 41 62 6F 75 74 20  5543 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5CEA 00                 5544 	.db 0x00
   5CEB                    5545 ___str_25:
   5CEB 42 75 69 6C 64 20  5546 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   5CFA 00                 5547 	.db 0x00
   5CFB                    5548 ___str_26:
   5CFB 42 75 69 6C 64 20  5549 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   5D0A 00                 5550 	.db 0x00
   5D0B                    5551 ___str_27:
   5D0B 44 65 73 74 72 6F  5552 	.ascii "Destroy"
        79
   5D12 00                 5553 	.db 0x00
   5D13                    5554 ___str_28:
   5D13 52 61 69 6C 72 6F  5555 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   5D21 00                 5556 	.db 0x00
   5D22                    5557 ___str_29:
   5D22 41 63 63 6F 75 6E  5558 	.ascii "Accounting"
        74 69 6E 67
   5D2C 00                 5559 	.db 0x00
   5D2D                    5560 ___str_30:
   5D2D 52 65 73 75 6D 65  5561 	.ascii "Resume"
   5D33 00                 5562 	.db 0x00
   5D34                    5563 ___str_31:
   5D34 44 65 73 74 72 6F  5564 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   5D56 00                 5565 	.db 0x00
   5D57                    5566 ___str_32:
   5D57 00                 5567 	.db 0x00
   5D58                    5568 ___str_33:
   5D58 43 6F 6E 74 69 6E  5569 	.ascii "Continue ?"
        75 65 20 3F
   5D62 00                 5570 	.db 0x00
                           5571 ;src/includes/game.h:139: void game()
                           5572 ;	---------------------------------
                           5573 ; Function game
                           5574 ; ---------------------------------
   5D63                    5575 _game::
   5D63 DD E5         [15] 5576 	push	ix
   5D65 DD 21 00 00   [14] 5577 	ld	ix,#0
   5D69 DD 39         [15] 5578 	add	ix,sp
   5D6B 21 EA FF      [10] 5579 	ld	hl,#-22
   5D6E 39            [11] 5580 	add	hl,sp
   5D6F F9            [ 6] 5581 	ld	sp,hl
                           5582 ;src/includes/game.h:142: int ulx = 0;
   5D70 DD 36 F2 00   [19] 5583 	ld	-14 (ix),#0x00
   5D74 DD 36 F3 00   [19] 5584 	ld	-13 (ix),#0x00
                           5585 ;src/includes/game.h:143: int uly = 0;
   5D78 DD 36 F4 00   [19] 5586 	ld	-12 (ix),#0x00
   5D7C DD 36 F5 00   [19] 5587 	ld	-11 (ix),#0x00
                           5588 ;src/includes/game.h:144: int xCursor = 10;
   5D80 DD 36 F6 0A   [19] 5589 	ld	-10 (ix),#0x0A
   5D84 DD 36 F7 00   [19] 5590 	ld	-9 (ix),#0x00
                           5591 ;src/includes/game.h:145: int yCursor = 6;
   5D88 DD 36 F8 06   [19] 5592 	ld	-8 (ix),#0x06
   5D8C DD 36 F9 00   [19] 5593 	ld	-7 (ix),#0x00
                           5594 ;src/includes/game.h:147: u8 exit=0;
   5D90 DD 36 FA 00   [19] 5595 	ld	-6 (ix),#0x00
                           5596 ;src/includes/game.h:150: drawBoxM2(50, 50);
   5D94 21 32 00      [10] 5597 	ld	hl,#0x0032
   5D97 E5            [11] 5598 	push	hl
   5D98 2E 32         [ 7] 5599 	ld	l, #0x32
   5D9A E5            [11] 5600 	push	hl
   5D9B CD F9 47      [17] 5601 	call	_drawBoxM2
   5D9E F1            [10] 5602 	pop	af
                           5603 ;src/includes/game.h:151: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   5D9F 21 20 5F      [10] 5604 	ld	hl, #0x5F20
   5DA2 E3            [19] 5605 	ex	(sp),hl
   5DA3 21 00 C0      [10] 5606 	ld	hl,#0xC000
   5DA6 E5            [11] 5607 	push	hl
   5DA7 CD DD 66      [17] 5608 	call	_cpct_getScreenPtr
                           5609 ;src/includes/game.h:152: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5DAA 4D            [ 4] 5610 	ld	c, l
   5DAB 44            [ 4] 5611 	ld	b, h
   5DAC 11 4B 62      [10] 5612 	ld	de,#___str_37
   5DAF AF            [ 4] 5613 	xor	a, a
   5DB0 F5            [11] 5614 	push	af
   5DB1 33            [ 6] 5615 	inc	sp
   5DB2 C5            [11] 5616 	push	bc
   5DB3 D5            [11] 5617 	push	de
   5DB4 CD E3 63      [17] 5618 	call	_cpct_drawStringM2
   5DB7 F1            [10] 5619 	pop	af
   5DB8 F1            [10] 5620 	pop	af
   5DB9 33            [ 6] 5621 	inc	sp
                           5622 ;src/includes/game.h:154: generateWorld();
   5DBA CD 90 50      [17] 5623 	call	_generateWorld
                           5624 ;src/includes/game.h:156: putM1();
   5DBD CD A9 46      [17] 5625 	call	_putM1
                           5626 ;src/includes/game.h:157: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   5DC0 21 00 00      [10] 5627 	ld	hl,#0x0000
   5DC3 E5            [11] 5628 	push	hl
   5DC4 2E 00         [ 7] 5629 	ld	l, #0x00
   5DC6 E5            [11] 5630 	push	hl
   5DC7 CD EC 65      [17] 5631 	call	_cpct_px2byteM1
   5DCA F1            [10] 5632 	pop	af
   5DCB F1            [10] 5633 	pop	af
   5DCC 65            [ 4] 5634 	ld	h,l
   5DCD 01 00 40      [10] 5635 	ld	bc,#0x4000
   5DD0 C5            [11] 5636 	push	bc
   5DD1 E5            [11] 5637 	push	hl
   5DD2 33            [ 6] 5638 	inc	sp
   5DD3 21 00 C0      [10] 5639 	ld	hl,#0xC000
   5DD6 E5            [11] 5640 	push	hl
   5DD7 CD DE 65      [17] 5641 	call	_cpct_memset
                           5642 ;src/includes/game.h:158: drawWorld(ulx, uly);
   5DDA 21 00 00      [10] 5643 	ld	hl,#0x0000
   5DDD E5            [11] 5644 	push	hl
   5DDE CD 48 58      [17] 5645 	call	_drawWorld
   5DE1 F1            [10] 5646 	pop	af
                           5647 ;src/includes/game.h:160: do{
   5DE2                    5648 00181$:
                           5649 ;src/includes/game.h:161: cpct_scanKeyboard(); 
   5DE2 CD FD 66      [17] 5650 	call	_cpct_scanKeyboard
                           5651 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5DE5 21 00 01      [10] 5652 	ld	hl,#0x0100
   5DE8 CD AC 63      [17] 5653 	call	_cpct_isKeyPressed
   5DEB DD 75 FE      [19] 5654 	ld	-2 (ix),l
                           5655 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5DEE DD 7E F8      [19] 5656 	ld	a,-8 (ix)
   5DF1 DD 77 FF      [19] 5657 	ld	-1 (ix),a
   5DF4 DD 7E F6      [19] 5658 	ld	a,-10 (ix)
   5DF7 DD 77 FD      [19] 5659 	ld	-3 (ix),a
   5DFA DD 7E F4      [19] 5660 	ld	a,-12 (ix)
   5DFD DD 77 FC      [19] 5661 	ld	-4 (ix),a
   5E00 DD 7E F2      [19] 5662 	ld	a,-14 (ix)
   5E03 DD 77 FB      [19] 5663 	ld	-5 (ix),a
                           5664 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5E06 DD 7E FE      [19] 5665 	ld	a,-2 (ix)
   5E09 B7            [ 4] 5666 	or	a, a
   5E0A CA 8C 5E      [10] 5667 	jp	Z,00179$
                           5668 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5E0D DD 7E FF      [19] 5669 	ld	a,-1 (ix)
   5E10 F5            [11] 5670 	push	af
   5E11 33            [ 6] 5671 	inc	sp
   5E12 DD 7E FD      [19] 5672 	ld	a,-3 (ix)
   5E15 F5            [11] 5673 	push	af
   5E16 33            [ 6] 5674 	inc	sp
   5E17 DD 7E FC      [19] 5675 	ld	a,-4 (ix)
   5E1A F5            [11] 5676 	push	af
   5E1B 33            [ 6] 5677 	inc	sp
   5E1C DD 7E FB      [19] 5678 	ld	a,-5 (ix)
   5E1F F5            [11] 5679 	push	af
   5E20 33            [ 6] 5680 	inc	sp
   5E21 CD 87 55      [17] 5681 	call	_drawTile
   5E24 F1            [10] 5682 	pop	af
   5E25 F1            [10] 5683 	pop	af
                           5684 ;src/includes/game.h:167: yCursor-=1;
   5E26 DD 6E F8      [19] 5685 	ld	l,-8 (ix)
   5E29 DD 66 F9      [19] 5686 	ld	h,-7 (ix)
   5E2C 2B            [ 6] 5687 	dec	hl
   5E2D DD 75 F8      [19] 5688 	ld	-8 (ix),l
   5E30 DD 74 F9      [19] 5689 	ld	-7 (ix),h
                           5690 ;src/includes/game.h:170: if(yCursor<0)
   5E33 DD CB F9 7E   [20] 5691 	bit	7, -7 (ix)
   5E37 28 35         [12] 5692 	jr	Z,00210$
                           5693 ;src/includes/game.h:172: yCursor=0;
   5E39 DD 36 F8 00   [19] 5694 	ld	-8 (ix),#0x00
   5E3D DD 36 F9 00   [19] 5695 	ld	-7 (ix),#0x00
                           5696 ;src/includes/game.h:175: if(uly>0)
   5E41 AF            [ 4] 5697 	xor	a, a
   5E42 DD BE F4      [19] 5698 	cp	a, -12 (ix)
   5E45 DD 9E F5      [19] 5699 	sbc	a, -11 (ix)
   5E48 E2 4D 5E      [10] 5700 	jp	PO, 00387$
   5E4B EE 80         [ 7] 5701 	xor	a, #0x80
   5E4D                    5702 00387$:
   5E4D F2 6E 5E      [10] 5703 	jp	P,00210$
                           5704 ;src/includes/game.h:177: uly-=1;
   5E50 DD 6E F4      [19] 5705 	ld	l,-12 (ix)
   5E53 DD 66 F5      [19] 5706 	ld	h,-11 (ix)
   5E56 2B            [ 6] 5707 	dec	hl
   5E57 DD 75 F4      [19] 5708 	ld	-12 (ix),l
   5E5A DD 74 F5      [19] 5709 	ld	-11 (ix),h
                           5710 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5E5D DD 7E F4      [19] 5711 	ld	a,-12 (ix)
                           5712 ;src/includes/game.h:178: drawWorld(ulx, uly);
   5E60 DD 77 FC      [19] 5713 	ld	-4 (ix), a
   5E63 F5            [11] 5714 	push	af
   5E64 33            [ 6] 5715 	inc	sp
   5E65 DD 7E FB      [19] 5716 	ld	a,-5 (ix)
   5E68 F5            [11] 5717 	push	af
   5E69 33            [ 6] 5718 	inc	sp
   5E6A CD 48 58      [17] 5719 	call	_drawWorld
   5E6D F1            [10] 5720 	pop	af
                           5721 ;src/includes/game.h:183: for(i=0; i<5000; i++) {}
   5E6E                    5722 00210$:
   5E6E DD 36 F0 88   [19] 5723 	ld	-16 (ix),#0x88
   5E72 DD 36 F1 13   [19] 5724 	ld	-15 (ix),#0x13
   5E76                    5725 00186$:
   5E76 DD 6E F0      [19] 5726 	ld	l,-16 (ix)
   5E79 DD 66 F1      [19] 5727 	ld	h,-15 (ix)
   5E7C 2B            [ 6] 5728 	dec	hl
   5E7D DD 75 F0      [19] 5729 	ld	-16 (ix),l
   5E80 DD 74 F1      [19] 5730 	ld	-15 (ix), h
   5E83 7C            [ 4] 5731 	ld	a, h
   5E84 DD B6 F0      [19] 5732 	or	a,-16 (ix)
   5E87 20 ED         [12] 5733 	jr	NZ,00186$
   5E89 C3 EA 61      [10] 5734 	jp	00180$
   5E8C                    5735 00179$:
                           5736 ;src/includes/game.h:186: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5E8C 21 00 04      [10] 5737 	ld	hl,#0x0400
   5E8F CD AC 63      [17] 5738 	call	_cpct_isKeyPressed
   5E92 7D            [ 4] 5739 	ld	a,l
   5E93 B7            [ 4] 5740 	or	a, a
   5E94 CA 18 5F      [10] 5741 	jp	Z,00176$
                           5742 ;src/includes/game.h:188: drawTile(ulx, uly, xCursor, yCursor);
   5E97 DD 7E FF      [19] 5743 	ld	a,-1 (ix)
   5E9A F5            [11] 5744 	push	af
   5E9B 33            [ 6] 5745 	inc	sp
   5E9C DD 7E FD      [19] 5746 	ld	a,-3 (ix)
   5E9F F5            [11] 5747 	push	af
   5EA0 33            [ 6] 5748 	inc	sp
   5EA1 DD 7E FC      [19] 5749 	ld	a,-4 (ix)
   5EA4 F5            [11] 5750 	push	af
   5EA5 33            [ 6] 5751 	inc	sp
   5EA6 DD 7E FB      [19] 5752 	ld	a,-5 (ix)
   5EA9 F5            [11] 5753 	push	af
   5EAA 33            [ 6] 5754 	inc	sp
   5EAB CD 87 55      [17] 5755 	call	_drawTile
   5EAE F1            [10] 5756 	pop	af
   5EAF F1            [10] 5757 	pop	af
                           5758 ;src/includes/game.h:189: yCursor+=1;
   5EB0 DD 34 F8      [23] 5759 	inc	-8 (ix)
   5EB3 20 03         [12] 5760 	jr	NZ,00388$
   5EB5 DD 34 F9      [23] 5761 	inc	-7 (ix)
   5EB8                    5762 00388$:
                           5763 ;src/includes/game.h:190: if(yCursor>NBTILE_H-1)
   5EB8 3E 0B         [ 7] 5764 	ld	a,#0x0B
   5EBA DD BE F8      [19] 5765 	cp	a, -8 (ix)
   5EBD 3E 00         [ 7] 5766 	ld	a,#0x00
   5EBF DD 9E F9      [19] 5767 	sbc	a, -7 (ix)
   5EC2 E2 C7 5E      [10] 5768 	jp	PO, 00389$
   5EC5 EE 80         [ 7] 5769 	xor	a, #0x80
   5EC7                    5770 00389$:
   5EC7 F2 FA 5E      [10] 5771 	jp	P,00215$
                           5772 ;src/includes/game.h:192: yCursor=NBTILE_H-1;
   5ECA DD 36 F8 0B   [19] 5773 	ld	-8 (ix),#0x0B
   5ECE DD 36 F9 00   [19] 5774 	ld	-7 (ix),#0x00
                           5775 ;src/includes/game.h:193: if(uly<HEIGHT-NBTILE_H)
   5ED2 DD 7E F4      [19] 5776 	ld	a,-12 (ix)
   5ED5 D6 24         [ 7] 5777 	sub	a, #0x24
   5ED7 DD 7E F5      [19] 5778 	ld	a,-11 (ix)
   5EDA 17            [ 4] 5779 	rla
   5EDB 3F            [ 4] 5780 	ccf
   5EDC 1F            [ 4] 5781 	rra
   5EDD DE 80         [ 7] 5782 	sbc	a, #0x80
   5EDF 30 19         [12] 5783 	jr	NC,00215$
                           5784 ;src/includes/game.h:195: uly+=1;
   5EE1 DD 34 F4      [23] 5785 	inc	-12 (ix)
   5EE4 20 03         [12] 5786 	jr	NZ,00390$
   5EE6 DD 34 F5      [23] 5787 	inc	-11 (ix)
   5EE9                    5788 00390$:
                           5789 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5EE9 DD 7E F4      [19] 5790 	ld	a,-12 (ix)
                           5791 ;src/includes/game.h:196: drawWorld(ulx, uly);
   5EEC DD 77 FC      [19] 5792 	ld	-4 (ix), a
   5EEF F5            [11] 5793 	push	af
   5EF0 33            [ 6] 5794 	inc	sp
   5EF1 DD 7E FB      [19] 5795 	ld	a,-5 (ix)
   5EF4 F5            [11] 5796 	push	af
   5EF5 33            [ 6] 5797 	inc	sp
   5EF6 CD 48 58      [17] 5798 	call	_drawWorld
   5EF9 F1            [10] 5799 	pop	af
                           5800 ;src/includes/game.h:201: for(i=0; i<5000; i++) {}
   5EFA                    5801 00215$:
   5EFA DD 36 F0 88   [19] 5802 	ld	-16 (ix),#0x88
   5EFE DD 36 F1 13   [19] 5803 	ld	-15 (ix),#0x13
   5F02                    5804 00189$:
   5F02 DD 6E F0      [19] 5805 	ld	l,-16 (ix)
   5F05 DD 66 F1      [19] 5806 	ld	h,-15 (ix)
   5F08 2B            [ 6] 5807 	dec	hl
   5F09 DD 75 F0      [19] 5808 	ld	-16 (ix),l
   5F0C DD 74 F1      [19] 5809 	ld	-15 (ix), h
   5F0F 7C            [ 4] 5810 	ld	a, h
   5F10 DD B6 F0      [19] 5811 	or	a,-16 (ix)
   5F13 20 ED         [12] 5812 	jr	NZ,00189$
   5F15 C3 EA 61      [10] 5813 	jp	00180$
   5F18                    5814 00176$:
                           5815 ;src/includes/game.h:204: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   5F18 21 01 01      [10] 5816 	ld	hl,#0x0101
   5F1B CD AC 63      [17] 5817 	call	_cpct_isKeyPressed
   5F1E 7D            [ 4] 5818 	ld	a,l
   5F1F B7            [ 4] 5819 	or	a, a
   5F20 28 6F         [12] 5820 	jr	Z,00173$
                           5821 ;src/includes/game.h:206: drawTile(ulx, uly, xCursor, yCursor);
   5F22 DD 7E FF      [19] 5822 	ld	a,-1 (ix)
   5F25 F5            [11] 5823 	push	af
   5F26 33            [ 6] 5824 	inc	sp
   5F27 DD 7E FD      [19] 5825 	ld	a,-3 (ix)
   5F2A F5            [11] 5826 	push	af
   5F2B 33            [ 6] 5827 	inc	sp
   5F2C DD 7E FC      [19] 5828 	ld	a,-4 (ix)
   5F2F F5            [11] 5829 	push	af
   5F30 33            [ 6] 5830 	inc	sp
   5F31 DD 7E FB      [19] 5831 	ld	a,-5 (ix)
   5F34 F5            [11] 5832 	push	af
   5F35 33            [ 6] 5833 	inc	sp
   5F36 CD 87 55      [17] 5834 	call	_drawTile
   5F39 F1            [10] 5835 	pop	af
   5F3A F1            [10] 5836 	pop	af
                           5837 ;src/includes/game.h:207: xCursor-=1;
   5F3B DD 6E F6      [19] 5838 	ld	l,-10 (ix)
   5F3E DD 66 F7      [19] 5839 	ld	h,-9 (ix)
   5F41 2B            [ 6] 5840 	dec	hl
   5F42 DD 75 F6      [19] 5841 	ld	-10 (ix),l
   5F45 DD 74 F7      [19] 5842 	ld	-9 (ix),h
                           5843 ;src/includes/game.h:208: if(xCursor<0)
   5F48 DD CB F7 7E   [20] 5844 	bit	7, -9 (ix)
   5F4C 28 38         [12] 5845 	jr	Z,00220$
                           5846 ;src/includes/game.h:210: xCursor=0;
   5F4E DD 36 F6 00   [19] 5847 	ld	-10 (ix),#0x00
   5F52 DD 36 F7 00   [19] 5848 	ld	-9 (ix),#0x00
                           5849 ;src/includes/game.h:211: if(ulx>0)
   5F56 AF            [ 4] 5850 	xor	a, a
   5F57 DD BE F2      [19] 5851 	cp	a, -14 (ix)
   5F5A DD 9E F3      [19] 5852 	sbc	a, -13 (ix)
   5F5D E2 62 5F      [10] 5853 	jp	PO, 00391$
   5F60 EE 80         [ 7] 5854 	xor	a, #0x80
   5F62                    5855 00391$:
   5F62 F2 86 5F      [10] 5856 	jp	P,00220$
                           5857 ;src/includes/game.h:213: ulx-=1;
   5F65 DD 6E F2      [19] 5858 	ld	l,-14 (ix)
   5F68 DD 66 F3      [19] 5859 	ld	h,-13 (ix)
   5F6B 2B            [ 6] 5860 	dec	hl
   5F6C DD 75 F2      [19] 5861 	ld	-14 (ix),l
   5F6F DD 74 F3      [19] 5862 	ld	-13 (ix),h
                           5863 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5F72 DD 7E F2      [19] 5864 	ld	a,-14 (ix)
   5F75 DD 77 FB      [19] 5865 	ld	-5 (ix),a
                           5866 ;src/includes/game.h:214: drawWorld(ulx, uly);
   5F78 DD 7E FC      [19] 5867 	ld	a,-4 (ix)
   5F7B F5            [11] 5868 	push	af
   5F7C 33            [ 6] 5869 	inc	sp
   5F7D DD 7E FB      [19] 5870 	ld	a,-5 (ix)
   5F80 F5            [11] 5871 	push	af
   5F81 33            [ 6] 5872 	inc	sp
   5F82 CD 48 58      [17] 5873 	call	_drawWorld
   5F85 F1            [10] 5874 	pop	af
                           5875 ;src/includes/game.h:219: for(i=0; i<14000; i++) {}
   5F86                    5876 00220$:
   5F86 21 B0 36      [10] 5877 	ld	hl,#0x36B0
   5F89                    5878 00192$:
   5F89 2B            [ 6] 5879 	dec	hl
   5F8A 7C            [ 4] 5880 	ld	a,h
   5F8B B5            [ 4] 5881 	or	a,l
   5F8C 20 FB         [12] 5882 	jr	NZ,00192$
   5F8E C3 EA 61      [10] 5883 	jp	00180$
   5F91                    5884 00173$:
                           5885 ;src/includes/game.h:222: else if ( cpct_isKeyPressed(Key_CursorRight) )
   5F91 21 00 02      [10] 5886 	ld	hl,#0x0200
   5F94 CD AC 63      [17] 5887 	call	_cpct_isKeyPressed
   5F97 7D            [ 4] 5888 	ld	a,l
   5F98 B7            [ 4] 5889 	or	a, a
   5F99 28 71         [12] 5890 	jr	Z,00170$
                           5891 ;src/includes/game.h:224: drawTile(ulx, uly, xCursor, yCursor);
   5F9B DD 7E FF      [19] 5892 	ld	a,-1 (ix)
   5F9E F5            [11] 5893 	push	af
   5F9F 33            [ 6] 5894 	inc	sp
   5FA0 DD 7E FD      [19] 5895 	ld	a,-3 (ix)
   5FA3 F5            [11] 5896 	push	af
   5FA4 33            [ 6] 5897 	inc	sp
   5FA5 DD 7E FC      [19] 5898 	ld	a,-4 (ix)
   5FA8 F5            [11] 5899 	push	af
   5FA9 33            [ 6] 5900 	inc	sp
   5FAA DD 7E FB      [19] 5901 	ld	a,-5 (ix)
   5FAD F5            [11] 5902 	push	af
   5FAE 33            [ 6] 5903 	inc	sp
   5FAF CD 87 55      [17] 5904 	call	_drawTile
   5FB2 F1            [10] 5905 	pop	af
   5FB3 F1            [10] 5906 	pop	af
                           5907 ;src/includes/game.h:225: xCursor+=1;
   5FB4 DD 34 F6      [23] 5908 	inc	-10 (ix)
   5FB7 20 03         [12] 5909 	jr	NZ,00392$
   5FB9 DD 34 F7      [23] 5910 	inc	-9 (ix)
   5FBC                    5911 00392$:
                           5912 ;src/includes/game.h:226: if(xCursor>NBTILE_W-1)
   5FBC 3E 13         [ 7] 5913 	ld	a,#0x13
   5FBE DD BE F6      [19] 5914 	cp	a, -10 (ix)
   5FC1 3E 00         [ 7] 5915 	ld	a,#0x00
   5FC3 DD 9E F7      [19] 5916 	sbc	a, -9 (ix)
   5FC6 E2 CB 5F      [10] 5917 	jp	PO, 00393$
   5FC9 EE 80         [ 7] 5918 	xor	a, #0x80
   5FCB                    5919 00393$:
   5FCB F2 01 60      [10] 5920 	jp	P,00225$
                           5921 ;src/includes/game.h:228: xCursor=NBTILE_W-1;
   5FCE DD 36 F6 13   [19] 5922 	ld	-10 (ix),#0x13
   5FD2 DD 36 F7 00   [19] 5923 	ld	-9 (ix),#0x00
                           5924 ;src/includes/game.h:229: if(ulx<WIDTH-NBTILE_W)
   5FD6 DD 7E F2      [19] 5925 	ld	a,-14 (ix)
   5FD9 D6 3C         [ 7] 5926 	sub	a, #0x3C
   5FDB DD 7E F3      [19] 5927 	ld	a,-13 (ix)
   5FDE 17            [ 4] 5928 	rla
   5FDF 3F            [ 4] 5929 	ccf
   5FE0 1F            [ 4] 5930 	rra
   5FE1 DE 80         [ 7] 5931 	sbc	a, #0x80
   5FE3 30 1C         [12] 5932 	jr	NC,00225$
                           5933 ;src/includes/game.h:231: ulx+=1;
   5FE5 DD 34 F2      [23] 5934 	inc	-14 (ix)
   5FE8 20 03         [12] 5935 	jr	NZ,00394$
   5FEA DD 34 F3      [23] 5936 	inc	-13 (ix)
   5FED                    5937 00394$:
                           5938 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5FED DD 7E F2      [19] 5939 	ld	a,-14 (ix)
   5FF0 DD 77 FB      [19] 5940 	ld	-5 (ix),a
                           5941 ;src/includes/game.h:232: drawWorld(ulx, uly);
   5FF3 DD 7E FC      [19] 5942 	ld	a,-4 (ix)
   5FF6 F5            [11] 5943 	push	af
   5FF7 33            [ 6] 5944 	inc	sp
   5FF8 DD 7E FB      [19] 5945 	ld	a,-5 (ix)
   5FFB F5            [11] 5946 	push	af
   5FFC 33            [ 6] 5947 	inc	sp
   5FFD CD 48 58      [17] 5948 	call	_drawWorld
   6000 F1            [10] 5949 	pop	af
                           5950 ;src/includes/game.h:237: for(i=0; i<14000; i++) {}
   6001                    5951 00225$:
   6001 21 B0 36      [10] 5952 	ld	hl,#0x36B0
   6004                    5953 00195$:
   6004 2B            [ 6] 5954 	dec	hl
   6005 7C            [ 4] 5955 	ld	a,h
   6006 B5            [ 4] 5956 	or	a,l
   6007 20 FB         [12] 5957 	jr	NZ,00195$
   6009 C3 EA 61      [10] 5958 	jp	00180$
   600C                    5959 00170$:
                           5960 ;src/includes/game.h:241: else if ( cpct_isKeyPressed(Key_Space) )
   600C 21 05 80      [10] 5961 	ld	hl,#0x8005
   600F CD AC 63      [17] 5962 	call	_cpct_isKeyPressed
   6012 7D            [ 4] 5963 	ld	a,l
   6013 B7            [ 4] 5964 	or	a, a
   6014 CA 92 60      [10] 5965 	jp	Z,00167$
                           5966 ;src/includes/game.h:243: if(CURSOR_MODE==T_SSNS)
   6017 3A 8A 76      [13] 5967 	ld	a,(#_CURSOR_MODE + 0)
   601A 3D            [ 4] 5968 	dec	a
   601B 20 07         [12] 5969 	jr	NZ,00143$
                           5970 ;src/includes/game.h:244: CURSOR_MODE=T_SSEW;
   601D 21 8A 76      [10] 5971 	ld	hl,#_CURSOR_MODE + 0
   6020 36 02         [10] 5972 	ld	(hl), #0x02
   6022 18 63         [12] 5973 	jr	00237$
   6024                    5974 00143$:
                           5975 ;src/includes/game.h:245: else if(CURSOR_MODE==T_SSEW)
   6024 3A 8A 76      [13] 5976 	ld	a,(#_CURSOR_MODE + 0)
   6027 D6 02         [ 7] 5977 	sub	a, #0x02
   6029 20 07         [12] 5978 	jr	NZ,00140$
                           5979 ;src/includes/game.h:246: CURSOR_MODE=T_SSNS;
   602B 21 8A 76      [10] 5980 	ld	hl,#_CURSOR_MODE + 0
   602E 36 01         [10] 5981 	ld	(hl), #0x01
   6030 18 55         [12] 5982 	jr	00237$
   6032                    5983 00140$:
                           5984 ;src/includes/game.h:247: else if(CURSOR_MODE==T_SMNS)
   6032 3A 8A 76      [13] 5985 	ld	a,(#_CURSOR_MODE + 0)
   6035 D6 03         [ 7] 5986 	sub	a, #0x03
   6037 20 07         [12] 5987 	jr	NZ,00137$
                           5988 ;src/includes/game.h:248: CURSOR_MODE=T_SMEW;
   6039 21 8A 76      [10] 5989 	ld	hl,#_CURSOR_MODE + 0
   603C 36 04         [10] 5990 	ld	(hl), #0x04
   603E 18 47         [12] 5991 	jr	00237$
   6040                    5992 00137$:
                           5993 ;src/includes/game.h:249: else if(CURSOR_MODE==T_SMEW)
   6040 3A 8A 76      [13] 5994 	ld	a,(#_CURSOR_MODE + 0)
   6043 D6 04         [ 7] 5995 	sub	a, #0x04
   6045 20 07         [12] 5996 	jr	NZ,00134$
                           5997 ;src/includes/game.h:250: CURSOR_MODE=T_SMNS;
   6047 21 8A 76      [10] 5998 	ld	hl,#_CURSOR_MODE + 0
   604A 36 03         [10] 5999 	ld	(hl), #0x03
   604C 18 39         [12] 6000 	jr	00237$
   604E                    6001 00134$:
                           6002 ;src/includes/game.h:251: else if(CURSOR_MODE==T_SLNS)
   604E 3A 8A 76      [13] 6003 	ld	a,(#_CURSOR_MODE + 0)
   6051 D6 05         [ 7] 6004 	sub	a, #0x05
   6053 20 07         [12] 6005 	jr	NZ,00131$
                           6006 ;src/includes/game.h:252: CURSOR_MODE=T_SLEW;
   6055 21 8A 76      [10] 6007 	ld	hl,#_CURSOR_MODE + 0
   6058 36 06         [10] 6008 	ld	(hl), #0x06
   605A 18 2B         [12] 6009 	jr	00237$
   605C                    6010 00131$:
                           6011 ;src/includes/game.h:253: else if(CURSOR_MODE==T_SLEW)
   605C 3A 8A 76      [13] 6012 	ld	a,(#_CURSOR_MODE + 0)
   605F D6 06         [ 7] 6013 	sub	a, #0x06
   6061 20 07         [12] 6014 	jr	NZ,00128$
                           6015 ;src/includes/game.h:254: CURSOR_MODE=T_SLNS;
   6063 21 8A 76      [10] 6016 	ld	hl,#_CURSOR_MODE + 0
   6066 36 05         [10] 6017 	ld	(hl), #0x05
   6068 18 1D         [12] 6018 	jr	00237$
   606A                    6019 00128$:
                           6020 ;src/includes/game.h:255: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   606A 3A 8A 76      [13] 6021 	ld	a,(#_CURSOR_MODE + 0)
   606D FE 07         [ 7] 6022 	cp	a,#0x07
   606F 38 0A         [12] 6023 	jr	C,00124$
   6071 D6 10         [ 7] 6024 	sub	a, #0x10
   6073 30 06         [12] 6025 	jr	NC,00124$
                           6026 ;src/includes/game.h:256: CURSOR_MODE+=1;
   6075 21 8A 76      [10] 6027 	ld	hl, #_CURSOR_MODE+0
   6078 34            [11] 6028 	inc	(hl)
   6079 18 0C         [12] 6029 	jr	00237$
   607B                    6030 00124$:
                           6031 ;src/includes/game.h:257: else if(CURSOR_MODE==T_RNSW)
   607B 3A 8A 76      [13] 6032 	ld	a,(#_CURSOR_MODE + 0)
   607E D6 10         [ 7] 6033 	sub	a, #0x10
   6080 20 05         [12] 6034 	jr	NZ,00237$
                           6035 ;src/includes/game.h:258: CURSOR_MODE=T_REW;
   6082 21 8A 76      [10] 6036 	ld	hl,#_CURSOR_MODE + 0
   6085 36 07         [10] 6037 	ld	(hl), #0x07
                           6038 ;src/includes/game.h:260: for(i=0; i<14000; i++) {}
   6087                    6039 00237$:
   6087 21 B0 36      [10] 6040 	ld	hl,#0x36B0
   608A                    6041 00198$:
   608A 2B            [ 6] 6042 	dec	hl
   608B 7C            [ 4] 6043 	ld	a,h
   608C B5            [ 4] 6044 	or	a,l
   608D 20 FB         [12] 6045 	jr	NZ,00198$
   608F C3 EA 61      [10] 6046 	jp	00180$
   6092                    6047 00167$:
                           6048 ;src/includes/game.h:263: else if ( cpct_isKeyPressed(Key_Esc) )
   6092 21 08 04      [10] 6049 	ld	hl,#0x0408
   6095 CD AC 63      [17] 6050 	call	_cpct_isKeyPressed
   6098 7D            [ 4] 6051 	ld	a,l
   6099 B7            [ 4] 6052 	or	a, a
   609A CA 31 61      [10] 6053 	jp	Z,00164$
                           6054 ;src/includes/game.h:266: if(CURSOR_MODE==NONE)
   609D 3A 8A 76      [13] 6055 	ld	a,(#_CURSOR_MODE + 0)
   60A0 B7            [ 4] 6056 	or	a, a
   60A1 20 62         [12] 6057 	jr	NZ,00150$
                           6058 ;src/includes/game.h:269: const char *txtWindowQuit[] = { 
   60A3 21 00 00      [10] 6059 	ld	hl,#0x0000
   60A6 39            [11] 6060 	add	hl,sp
   60A7 5D            [ 4] 6061 	ld	e,l
   60A8 54            [ 4] 6062 	ld	d,h
   60A9 36 16         [10] 6063 	ld	(hl),#<(___str_34)
   60AB 23            [ 6] 6064 	inc	hl
   60AC 36 62         [10] 6065 	ld	(hl),#>(___str_34)
   60AE 6B            [ 4] 6066 	ld	l, e
   60AF 62            [ 4] 6067 	ld	h, d
   60B0 23            [ 6] 6068 	inc	hl
   60B1 23            [ 6] 6069 	inc	hl
   60B2 36 24         [10] 6070 	ld	(hl),#<(___str_35)
   60B4 23            [ 6] 6071 	inc	hl
   60B5 36 62         [10] 6072 	ld	(hl),#>(___str_35)
   60B7 21 04 00      [10] 6073 	ld	hl,#0x0004
   60BA 19            [11] 6074 	add	hl,de
   60BB 36 25         [10] 6075 	ld	(hl),#<(___str_36)
   60BD 23            [ 6] 6076 	inc	hl
   60BE 36 62         [10] 6077 	ld	(hl),#>(___str_36)
                           6078 ;src/includes/game.h:275: putM2();
   60C0 D5            [11] 6079 	push	de
   60C1 CD BD 46      [17] 6080 	call	_putM2
   60C4 D1            [10] 6081 	pop	de
                           6082 ;src/includes/game.h:276: if(	drawWindow(txtWindowQuit,3,1) == 1)
   60C5 21 03 01      [10] 6083 	ld	hl,#0x0103
   60C8 E5            [11] 6084 	push	hl
   60C9 D5            [11] 6085 	push	de
   60CA CD C1 4B      [17] 6086 	call	_drawWindow
   60CD F1            [10] 6087 	pop	af
   60CE F1            [10] 6088 	pop	af
   60CF 2D            [ 4] 6089 	dec	l
   60D0 20 06         [12] 6090 	jr	NZ,00147$
                           6091 ;src/includes/game.h:277: exit=1;
   60D2 DD 36 FA 01   [19] 6092 	ld	-6 (ix),#0x01
   60D6 18 4E         [12] 6093 	jr	00242$
   60D8                    6094 00147$:
                           6095 ;src/includes/game.h:280: putM1();
   60D8 CD A9 46      [17] 6096 	call	_putM1
                           6097 ;src/includes/game.h:281: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   60DB 21 00 00      [10] 6098 	ld	hl,#0x0000
   60DE E5            [11] 6099 	push	hl
   60DF 2E 00         [ 7] 6100 	ld	l, #0x00
   60E1 E5            [11] 6101 	push	hl
   60E2 CD EC 65      [17] 6102 	call	_cpct_px2byteM1
   60E5 F1            [10] 6103 	pop	af
   60E6 F1            [10] 6104 	pop	af
   60E7 65            [ 4] 6105 	ld	h,l
   60E8 01 00 40      [10] 6106 	ld	bc,#0x4000
   60EB C5            [11] 6107 	push	bc
   60EC E5            [11] 6108 	push	hl
   60ED 33            [ 6] 6109 	inc	sp
   60EE 21 00 C0      [10] 6110 	ld	hl,#0xC000
   60F1 E5            [11] 6111 	push	hl
   60F2 CD DE 65      [17] 6112 	call	_cpct_memset
                           6113 ;src/includes/game.h:282: drawWorld(ulx, uly);
   60F5 DD 7E FC      [19] 6114 	ld	a,-4 (ix)
   60F8 F5            [11] 6115 	push	af
   60F9 33            [ 6] 6116 	inc	sp
   60FA DD 7E FB      [19] 6117 	ld	a,-5 (ix)
   60FD F5            [11] 6118 	push	af
   60FE 33            [ 6] 6119 	inc	sp
   60FF CD 48 58      [17] 6120 	call	_drawWorld
   6102 F1            [10] 6121 	pop	af
   6103 18 21         [12] 6122 	jr	00242$
   6105                    6123 00150$:
                           6124 ;src/includes/game.h:287: CURSOR_MODE=NONE;
   6105 FD 21 8A 76   [14] 6125 	ld	iy,#_CURSOR_MODE
   6109 FD 36 00 00   [19] 6126 	ld	0 (iy),#0x00
                           6127 ;src/includes/game.h:288: drawTile(ulx, uly, xCursor, yCursor);
   610D DD 7E FF      [19] 6128 	ld	a,-1 (ix)
   6110 F5            [11] 6129 	push	af
   6111 33            [ 6] 6130 	inc	sp
   6112 DD 7E FD      [19] 6131 	ld	a,-3 (ix)
   6115 F5            [11] 6132 	push	af
   6116 33            [ 6] 6133 	inc	sp
   6117 DD 7E FC      [19] 6134 	ld	a,-4 (ix)
   611A F5            [11] 6135 	push	af
   611B 33            [ 6] 6136 	inc	sp
   611C DD 7E FB      [19] 6137 	ld	a,-5 (ix)
   611F F5            [11] 6138 	push	af
   6120 33            [ 6] 6139 	inc	sp
   6121 CD 87 55      [17] 6140 	call	_drawTile
   6124 F1            [10] 6141 	pop	af
   6125 F1            [10] 6142 	pop	af
                           6143 ;src/includes/game.h:292: for(i=0; i<14000; i++) {}
   6126                    6144 00242$:
   6126 01 B0 36      [10] 6145 	ld	bc,#0x36B0
   6129                    6146 00201$:
   6129 0B            [ 6] 6147 	dec	bc
   612A 78            [ 4] 6148 	ld	a,b
   612B B1            [ 4] 6149 	or	a,c
   612C 20 FB         [12] 6150 	jr	NZ,00201$
   612E C3 EA 61      [10] 6151 	jp	00180$
   6131                    6152 00164$:
                           6153 ;src/includes/game.h:295: else if ( cpct_isKeyPressed(Key_Return) )
   6131 21 02 04      [10] 6154 	ld	hl,#0x0402
   6134 CD AC 63      [17] 6155 	call	_cpct_isKeyPressed
   6137 7D            [ 4] 6156 	ld	a,l
   6138 B7            [ 4] 6157 	or	a, a
   6139 CA EA 61      [10] 6158 	jp	Z,00180$
                           6159 ;src/includes/game.h:298: if(CURSOR_MODE==NONE)
   613C 3A 8A 76      [13] 6160 	ld	a,(#_CURSOR_MODE + 0)
   613F B7            [ 4] 6161 	or	a, a
   6140 20 42         [12] 6162 	jr	NZ,00158$
                           6163 ;src/includes/game.h:300: menuTile(ulx+xCursor, uly+yCursor);
   6142 DD 7E F4      [19] 6164 	ld	a, -12 (ix)
   6145 DD 6E F8      [19] 6165 	ld	l, -8 (ix)
   6148 85            [ 4] 6166 	add	a, l
   6149 67            [ 4] 6167 	ld	h,a
   614A DD 6E F2      [19] 6168 	ld	l,-14 (ix)
   614D DD 56 F6      [19] 6169 	ld	d,-10 (ix)
   6150 7D            [ 4] 6170 	ld	a,l
   6151 82            [ 4] 6171 	add	a, d
   6152 E5            [11] 6172 	push	hl
   6153 33            [ 6] 6173 	inc	sp
   6154 F5            [11] 6174 	push	af
   6155 33            [ 6] 6175 	inc	sp
   6156 CD B3 5B      [17] 6176 	call	_menuTile
   6159 F1            [10] 6177 	pop	af
                           6178 ;src/includes/game.h:301: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   615A 21 00 00      [10] 6179 	ld	hl,#0x0000
   615D E5            [11] 6180 	push	hl
   615E 2E 00         [ 7] 6181 	ld	l, #0x00
   6160 E5            [11] 6182 	push	hl
   6161 CD EC 65      [17] 6183 	call	_cpct_px2byteM1
   6164 F1            [10] 6184 	pop	af
   6165 F1            [10] 6185 	pop	af
   6166 65            [ 4] 6186 	ld	h,l
   6167 01 00 40      [10] 6187 	ld	bc,#0x4000
   616A C5            [11] 6188 	push	bc
   616B E5            [11] 6189 	push	hl
   616C 33            [ 6] 6190 	inc	sp
   616D 21 00 C0      [10] 6191 	ld	hl,#0xC000
   6170 E5            [11] 6192 	push	hl
   6171 CD DE 65      [17] 6193 	call	_cpct_memset
                           6194 ;src/includes/game.h:302: drawWorld(ulx, uly);
   6174 DD 7E FC      [19] 6195 	ld	a,-4 (ix)
   6177 F5            [11] 6196 	push	af
   6178 33            [ 6] 6197 	inc	sp
   6179 DD 7E FB      [19] 6198 	ld	a,-5 (ix)
   617C F5            [11] 6199 	push	af
   617D 33            [ 6] 6200 	inc	sp
   617E CD 48 58      [17] 6201 	call	_drawWorld
   6181 F1            [10] 6202 	pop	af
   6182 18 4B         [12] 6203 	jr	00248$
   6184                    6204 00158$:
                           6205 ;src/includes/game.h:305: else if(CURSOR_MODE>=T_SSNS)
   6184 3A 8A 76      [13] 6206 	ld	a,(#_CURSOR_MODE + 0)
   6187 D6 01         [ 7] 6207 	sub	a, #0x01
   6189 38 44         [12] 6208 	jr	C,00248$
                           6209 ;src/includes/game.h:307: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   618B DD 7E F2      [19] 6210 	ld	a,-14 (ix)
   618E DD 86 F6      [19] 6211 	add	a, -10 (ix)
   6191 5F            [ 4] 6212 	ld	e,a
   6192 DD 7E F3      [19] 6213 	ld	a,-13 (ix)
   6195 DD 8E F7      [19] 6214 	adc	a, -9 (ix)
   6198 57            [ 4] 6215 	ld	d,a
   6199 DD 7E F4      [19] 6216 	ld	a,-12 (ix)
   619C DD 86 F8      [19] 6217 	add	a, -8 (ix)
   619F 6F            [ 4] 6218 	ld	l,a
   61A0 DD 7E F5      [19] 6219 	ld	a,-11 (ix)
   61A3 DD 8E F9      [19] 6220 	adc	a, -7 (ix)
   61A6 67            [ 4] 6221 	ld	h,a
   61A7 4D            [ 4] 6222 	ld	c, l
   61A8 44            [ 4] 6223 	ld	b, h
   61A9 29            [11] 6224 	add	hl, hl
   61AA 29            [11] 6225 	add	hl, hl
   61AB 09            [11] 6226 	add	hl, bc
   61AC 29            [11] 6227 	add	hl, hl
   61AD 29            [11] 6228 	add	hl, hl
   61AE 29            [11] 6229 	add	hl, hl
   61AF 29            [11] 6230 	add	hl, hl
   61B0 19            [11] 6231 	add	hl,de
   61B1 3E 8A         [ 7] 6232 	ld	a,#<(_p_world)
   61B3 85            [ 4] 6233 	add	a, l
   61B4 5F            [ 4] 6234 	ld	e,a
   61B5 3E 67         [ 7] 6235 	ld	a,#>(_p_world)
   61B7 8C            [ 4] 6236 	adc	a, h
   61B8 57            [ 4] 6237 	ld	d,a
   61B9 3A 8A 76      [13] 6238 	ld	a,(#_CURSOR_MODE + 0)
   61BC C6 09         [ 7] 6239 	add	a, #0x09
   61BE 12            [ 7] 6240 	ld	(de),a
                           6241 ;src/includes/game.h:310: if(CURSOR_MODE<=T_SLEW)
   61BF 3E 06         [ 7] 6242 	ld	a,#0x06
   61C1 FD 21 8A 76   [14] 6243 	ld	iy,#_CURSOR_MODE
   61C5 FD 96 00      [19] 6244 	sub	a, 0 (iy)
   61C8 38 05         [12] 6245 	jr	C,00248$
                           6246 ;src/includes/game.h:311: CURSOR_MODE=NONE;
   61CA 21 8A 76      [10] 6247 	ld	hl,#_CURSOR_MODE + 0
   61CD 36 00         [10] 6248 	ld	(hl), #0x00
                           6249 ;src/includes/game.h:315: for(i=0; i<14000; i++) {}
   61CF                    6250 00248$:
   61CF DD 36 F0 B0   [19] 6251 	ld	-16 (ix),#0xB0
   61D3 DD 36 F1 36   [19] 6252 	ld	-15 (ix),#0x36
   61D7                    6253 00204$:
   61D7 DD 6E F0      [19] 6254 	ld	l,-16 (ix)
   61DA DD 66 F1      [19] 6255 	ld	h,-15 (ix)
   61DD 2B            [ 6] 6256 	dec	hl
   61DE DD 75 F0      [19] 6257 	ld	-16 (ix),l
   61E1 DD 74 F1      [19] 6258 	ld	-15 (ix), h
   61E4 7C            [ 4] 6259 	ld	a, h
   61E5 DD B6 F0      [19] 6260 	or	a,-16 (ix)
   61E8 20 ED         [12] 6261 	jr	NZ,00204$
   61EA                    6262 00180$:
                           6263 ;src/includes/game.h:319: drawCursor(xCursor, yCursor, 0);
   61EA DD 56 F8      [19] 6264 	ld	d,-8 (ix)
   61ED DD 46 F6      [19] 6265 	ld	b,-10 (ix)
   61F0 AF            [ 4] 6266 	xor	a, a
   61F1 F5            [11] 6267 	push	af
   61F2 33            [ 6] 6268 	inc	sp
   61F3 D5            [11] 6269 	push	de
   61F4 33            [ 6] 6270 	inc	sp
   61F5 C5            [11] 6271 	push	bc
   61F6 33            [ 6] 6272 	inc	sp
   61F7 CD 5E 4D      [17] 6273 	call	_drawCursor
   61FA F1            [10] 6274 	pop	af
   61FB 33            [ 6] 6275 	inc	sp
                           6276 ;src/includes/game.h:320: drawScrolls(ulx, uly);
   61FC DD 7E FC      [19] 6277 	ld	a,-4 (ix)
   61FF F5            [11] 6278 	push	af
   6200 33            [ 6] 6279 	inc	sp
   6201 DD 7E FB      [19] 6280 	ld	a,-5 (ix)
   6204 F5            [11] 6281 	push	af
   6205 33            [ 6] 6282 	inc	sp
   6206 CD AF 57      [17] 6283 	call	_drawScrolls
   6209 F1            [10] 6284 	pop	af
                           6285 ;src/includes/game.h:322: while(!exit);
   620A DD 7E FA      [19] 6286 	ld	a,-6 (ix)
   620D B7            [ 4] 6287 	or	a, a
   620E CA E2 5D      [10] 6288 	jp	Z,00181$
   6211 DD F9         [10] 6289 	ld	sp, ix
   6213 DD E1         [14] 6290 	pop	ix
   6215 C9            [10] 6291 	ret
   6216                    6292 ___str_34:
   6216 52 65 61 6C 6C 79  6293 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   6223 00                 6294 	.db 0x00
   6224                    6295 ___str_35:
   6224 00                 6296 	.db 0x00
   6225                    6297 ___str_36:
   6225 50 72 65 73 73 20  6298 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   624A 00                 6299 	.db 0x00
   624B                    6300 ___str_37:
   624B 47 65 6E 65 72 61  6301 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   625E 00                 6302 	.db 0x00
                           6303 ;src/main.c:17: void drawTrain() 
                           6304 ;	---------------------------------
                           6305 ; Function drawTrain
                           6306 ; ---------------------------------
   625F                    6307 _drawTrain::
                           6308 ;src/main.c:55: }
   625F C9            [10] 6309 	ret
                           6310 ;src/main.c:58: void main(void)
                           6311 ;	---------------------------------
                           6312 ; Function main
                           6313 ; ---------------------------------
   6260                    6314 _main::
   6260 DD E5         [15] 6315 	push	ix
   6262 DD 21 00 00   [14] 6316 	ld	ix,#0
   6266 DD 39         [15] 6317 	add	ix,sp
   6268 21 EE FF      [10] 6318 	ld	hl,#-18
   626B 39            [11] 6319 	add	hl,sp
   626C F9            [ 6] 6320 	ld	sp,hl
                           6321 ;src/main.c:63: const char *menuMain[] = { 
   626D 21 00 00      [10] 6322 	ld	hl,#0x0000
   6270 39            [11] 6323 	add	hl,sp
   6271 5D            [ 4] 6324 	ld	e,l
   6272 54            [ 4] 6325 	ld	d,h
   6273 36 55         [10] 6326 	ld	(hl),#<(___str_38)
   6275 23            [ 6] 6327 	inc	hl
   6276 36 63         [10] 6328 	ld	(hl),#>(___str_38)
   6278 6B            [ 4] 6329 	ld	l, e
   6279 62            [ 4] 6330 	ld	h, d
   627A 23            [ 6] 6331 	inc	hl
   627B 23            [ 6] 6332 	inc	hl
   627C 01 5E 63      [10] 6333 	ld	bc,#___str_39+0
   627F 71            [ 7] 6334 	ld	(hl),c
   6280 23            [ 6] 6335 	inc	hl
   6281 70            [ 7] 6336 	ld	(hl),b
   6282 21 04 00      [10] 6337 	ld	hl,#0x0004
   6285 19            [11] 6338 	add	hl,de
   6286 01 66 63      [10] 6339 	ld	bc,#___str_40+0
   6289 71            [ 7] 6340 	ld	(hl),c
   628A 23            [ 6] 6341 	inc	hl
   628B 70            [ 7] 6342 	ld	(hl),b
                           6343 ;src/main.c:69: const char *windowCredit[] = { 
   628C 21 08 00      [10] 6344 	ld	hl,#0x0008
   628F 39            [11] 6345 	add	hl,sp
   6290 DD 75 FE      [19] 6346 	ld	-2 (ix),l
   6293 DD 74 FF      [19] 6347 	ld	-1 (ix),h
   6296 DD 6E FE      [19] 6348 	ld	l,-2 (ix)
   6299 DD 66 FF      [19] 6349 	ld	h,-1 (ix)
   629C 36 6B         [10] 6350 	ld	(hl),#<(___str_41)
   629E 23            [ 6] 6351 	inc	hl
   629F 36 63         [10] 6352 	ld	(hl),#>(___str_41)
   62A1 DD 6E FE      [19] 6353 	ld	l,-2 (ix)
   62A4 DD 66 FF      [19] 6354 	ld	h,-1 (ix)
   62A7 23            [ 6] 6355 	inc	hl
   62A8 23            [ 6] 6356 	inc	hl
   62A9 01 74 63      [10] 6357 	ld	bc,#___str_42+0
   62AC 71            [ 7] 6358 	ld	(hl),c
   62AD 23            [ 6] 6359 	inc	hl
   62AE 70            [ 7] 6360 	ld	(hl),b
   62AF DD 7E FE      [19] 6361 	ld	a,-2 (ix)
   62B2 C6 04         [ 7] 6362 	add	a, #0x04
   62B4 6F            [ 4] 6363 	ld	l,a
   62B5 DD 7E FF      [19] 6364 	ld	a,-1 (ix)
   62B8 CE 00         [ 7] 6365 	adc	a, #0x00
   62BA 67            [ 4] 6366 	ld	h,a
   62BB 01 75 63      [10] 6367 	ld	bc,#___str_43+0
   62BE 71            [ 7] 6368 	ld	(hl),c
   62BF 23            [ 6] 6369 	inc	hl
   62C0 70            [ 7] 6370 	ld	(hl),b
                           6371 ;src/main.c:75: firmware = cpct_disableFirmware();
   62C1 D5            [11] 6372 	push	de
   62C2 CD 14 66      [17] 6373 	call	_cpct_disableFirmware
   62C5 D1            [10] 6374 	pop	de
   62C6 DD 75 F4      [19] 6375 	ld	-12 (ix),l
   62C9 DD 74 F5      [19] 6376 	ld	-11 (ix),h
                           6377 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   62CC 21 13 40      [10] 6378 	ld	hl,#_paletteTrains
   62CF D5            [11] 6379 	push	de
   62D0 01 10 00      [10] 6380 	ld	bc,#0x0010
   62D3 C5            [11] 6381 	push	bc
   62D4 E5            [11] 6382 	push	hl
   62D5 CD 0C 65      [17] 6383 	call	_cpct_fw2hw
   62D8 D1            [10] 6384 	pop	de
                           6385 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   62D9 21 27 40      [10] 6386 	ld	hl,#_paletteMenusM2
   62DC D5            [11] 6387 	push	de
   62DD 01 02 00      [10] 6388 	ld	bc,#0x0002
   62E0 C5            [11] 6389 	push	bc
   62E1 E5            [11] 6390 	push	hl
   62E2 CD 0C 65      [17] 6391 	call	_cpct_fw2hw
   62E5 D1            [10] 6392 	pop	de
                           6393 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   62E6 21 23 40      [10] 6394 	ld	hl,#_paletteMenusM1
   62E9 D5            [11] 6395 	push	de
   62EA 01 04 00      [10] 6396 	ld	bc,#0x0004
   62ED C5            [11] 6397 	push	bc
   62EE E5            [11] 6398 	push	hl
   62EF CD 0C 65      [17] 6399 	call	_cpct_fw2hw
   62F2 D1            [10] 6400 	pop	de
                           6401 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   62F3 3A 1F 40      [13] 6402 	ld	a, (#_paletteTrains + 12)
   62F6 D5            [11] 6403 	push	de
   62F7 57            [ 4] 6404 	ld	d,a
   62F8 1E 10         [ 7] 6405 	ld	e,#0x10
   62FA D5            [11] 6406 	push	de
   62FB CD B8 63      [17] 6407 	call	_cpct_setPALColour
   62FE CD BD 46      [17] 6408 	call	_putM2
   6301 D1            [10] 6409 	pop	de
                           6410 ;src/main.c:85: do{
   6302 DD 73 FC      [19] 6411 	ld	-4 (ix),e
   6305 DD 72 FD      [19] 6412 	ld	-3 (ix),d
   6308                    6413 00105$:
                           6414 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   6308 DD 5E FC      [19] 6415 	ld	e,-4 (ix)
   630B DD 56 FD      [19] 6416 	ld	d,-3 (ix)
   630E 3E 03         [ 7] 6417 	ld	a,#0x03
   6310 F5            [11] 6418 	push	af
   6311 33            [ 6] 6419 	inc	sp
   6312 D5            [11] 6420 	push	de
   6313 CD C3 4A      [17] 6421 	call	_drawMenu
   6316 F1            [10] 6422 	pop	af
   6317 33            [ 6] 6423 	inc	sp
   6318 55            [ 4] 6424 	ld	d,l
                           6425 ;src/main.c:88: if(menuChoice==0)
   6319 7A            [ 4] 6426 	ld	a,d
   631A B7            [ 4] 6427 	or	a, a
   631B 20 08         [12] 6428 	jr	NZ,00102$
                           6429 ;src/main.c:90: game();
   631D D5            [11] 6430 	push	de
   631E CD 63 5D      [17] 6431 	call	_game
   6321 CD BD 46      [17] 6432 	call	_putM2
   6324 D1            [10] 6433 	pop	de
   6325                    6434 00102$:
                           6435 ;src/main.c:95: if(menuChoice==1)
   6325 7A            [ 4] 6436 	ld	a,d
   6326 3D            [ 4] 6437 	dec	a
   6327 20 12         [12] 6438 	jr	NZ,00106$
                           6439 ;src/main.c:96: drawWindow(windowCredit,3,0);
   6329 DD 4E FE      [19] 6440 	ld	c,-2 (ix)
   632C DD 46 FF      [19] 6441 	ld	b,-1 (ix)
   632F D5            [11] 6442 	push	de
   6330 21 03 00      [10] 6443 	ld	hl,#0x0003
   6333 E5            [11] 6444 	push	hl
   6334 C5            [11] 6445 	push	bc
   6335 CD C1 4B      [17] 6446 	call	_drawWindow
   6338 F1            [10] 6447 	pop	af
   6339 F1            [10] 6448 	pop	af
   633A D1            [10] 6449 	pop	de
   633B                    6450 00106$:
                           6451 ;src/main.c:98: while(menuChoice!=2);
   633B 7A            [ 4] 6452 	ld	a,d
   633C D6 02         [ 7] 6453 	sub	a, #0x02
   633E 20 C8         [12] 6454 	jr	NZ,00105$
                           6455 ;src/main.c:100: cpct_setVideoMode(0);
   6340 AF            [ 4] 6456 	xor	a, a
   6341 F5            [11] 6457 	push	af
   6342 33            [ 6] 6458 	inc	sp
   6343 CD B0 65      [17] 6459 	call	_cpct_setVideoMode
   6346 33            [ 6] 6460 	inc	sp
                           6461 ;src/main.c:101: cpct_reenableFirmware(firmware);
   6347 DD 6E F4      [19] 6462 	ld	l,-12 (ix)
   634A DD 66 F5      [19] 6463 	ld	h,-11 (ix)
   634D CD 7E 65      [17] 6464 	call	_cpct_reenableFirmware
   6350 DD F9         [10] 6465 	ld	sp, ix
   6352 DD E1         [14] 6466 	pop	ix
   6354 C9            [10] 6467 	ret
   6355                    6468 ___str_38:
   6355 4E 65 77 20 67 61  6469 	.ascii "New game"
        6D 65
   635D 00                 6470 	.db 0x00
   635E                    6471 ___str_39:
   635E 43 72 65 64 69 74  6472 	.ascii "Credits"
        73
   6365 00                 6473 	.db 0x00
   6366                    6474 ___str_40:
   6366 51 75 69 74        6475 	.ascii "Quit"
   636A 00                 6476 	.db 0x00
   636B                    6477 ___str_41:
   636B 52 61 69 6C 77 61  6478 	.ascii "Railways"
        79 73
   6373 00                 6479 	.db 0x00
   6374                    6480 ___str_42:
   6374 00                 6481 	.db 0x00
   6375                    6482 ___str_43:
   6375 54 72 65 77 64 62  6483 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   638F 00                 6484 	.db 0x00
                           6485 	.area _CODE
                           6486 	.area _INITIALIZER
   768B                    6487 __xinit__CURSOR_MODE:
   768B 00                 6488 	.db #0x00	; 0
                           6489 	.area _CABS (ABS)
