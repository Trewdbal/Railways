                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Wed Feb  3 17:46:50 2016
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
                             38 	.globl _cpct_count2VSYNC
                             39 	.globl _cpct_setVideoMode
                             40 	.globl _cpct_drawStringM2
                             41 	.globl _cpct_drawSolidBox
                             42 	.globl _cpct_drawSprite
                             43 	.globl _cpct_px2byteM1
                             44 	.globl _cpct_px2byteM0
                             45 	.globl _cpct_isKeyPressed
                             46 	.globl _cpct_scanKeyboard
                             47 	.globl _cpct_memset
                             48 	.globl _cpct_disableFirmware
                             49 	.globl _cpct_reenableFirmware
                             50 	.globl _CURSOR_MODE
                             51 	.globl _p_world
                             52 	.globl _rail_ns_e
                             53 	.globl _rail_ns_w
                             54 	.globl _rail_ew_s
                             55 	.globl _rail_ew_n
                             56 	.globl _rail_ws
                             57 	.globl _rail_wn
                             58 	.globl _rail_es
                             59 	.globl _rail_en
                             60 	.globl _rail_ns
                             61 	.globl _rail_ew
                             62 	.globl _station_large_ew
                             63 	.globl _station_large_ns
                             64 	.globl _station_medium_ew
                             65 	.globl _station_medium_ns
                             66 	.globl _station_small_ew
                             67 	.globl _station_small_ns
                             68 	.globl _livestock
                             69 	.globl _farm2
                             70 	.globl _farm1
                             71 	.globl _water
                             72 	.globl _dwellings3
                             73 	.globl _dwellings2
                             74 	.globl _dwellings1
                             75 	.globl _forest
                             76 	.globl _grass2
                             77 	.globl _grass1
                             78 	.globl _paletteMenusM2
                             79 	.globl _paletteMenusM1
                             80 	.globl _paletteTrains
                             81 ;--------------------------------------------------------
                             82 ; special function registers
                             83 ;--------------------------------------------------------
                             84 ;--------------------------------------------------------
                             85 ; ram data
                             86 ;--------------------------------------------------------
                             87 	.area _DATA
   62DD                      88 _p_world::
   62DD                      89 	.ds 3840
                             90 ;--------------------------------------------------------
                             91 ; ram data
                             92 ;--------------------------------------------------------
                             93 	.area _INITIALIZED
   71DD                      94 _CURSOR_MODE::
   71DD                      95 	.ds 1
                             96 ;--------------------------------------------------------
                             97 ; absolute external ram data
                             98 ;--------------------------------------------------------
                             99 	.area _DABS (ABS)
                            100 ;--------------------------------------------------------
                            101 ; global & static initialisations
                            102 ;--------------------------------------------------------
                            103 	.area _HOME
                            104 	.area _GSINIT
                            105 	.area _GSFINAL
                            106 	.area _GSINIT
                            107 ;--------------------------------------------------------
                            108 ; Home
                            109 ;--------------------------------------------------------
                            110 	.area _HOME
                            111 	.area _HOME
                            112 ;--------------------------------------------------------
                            113 ; code
                            114 ;--------------------------------------------------------
                            115 	.area _CODE
                            116 ;src/includes/gui.h:1: void putM0(void)
                            117 ;	---------------------------------
                            118 ; Function putM0
                            119 ; ---------------------------------
   4000                     120 _putM0::
                            121 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]  122 	xor	a, a
   4001 F5            [11]  123 	push	af
   4002 33            [ 6]  124 	inc	sp
   4003 CD 03 61      [17]  125 	call	_cpct_setVideoMode
   4006 33            [ 6]  126 	inc	sp
                            127 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  128 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  129 	ld	bc,#0x0010
   400D C5            [11]  130 	push	bc
   400E E5            [11]  131 	push	hl
   400F CD 0F 5F      [17]  132 	call	_cpct_setPalette
   4012 C9            [10]  133 	ret
   4013                     134 _paletteTrains:
   4013 00                  135 	.db #0x00	; 0
   4014 1A                  136 	.db #0x1A	; 26
   4015 0D                  137 	.db #0x0D	; 13
   4016 03                  138 	.db #0x03	; 3
   4017 0F                  139 	.db #0x0F	; 15
   4018 06                  140 	.db #0x06	; 6
   4019 10                  141 	.db #0x10	; 16
   401A 09                  142 	.db #0x09	; 9
   401B 0A                  143 	.db #0x0A	; 10
   401C 14                  144 	.db #0x14	; 20
   401D 02                  145 	.db #0x02	; 2
   401E 01                  146 	.db #0x01	; 1
   401F 13                  147 	.db #0x13	; 19
   4020 18                  148 	.db #0x18	; 24
   4021 0B                  149 	.db #0x0B	; 11
   4022 19                  150 	.db #0x19	; 25
   4023                     151 _paletteMenusM1:
   4023 00                  152 	.db #0x00	; 0
   4024 0F                  153 	.db #0x0F	; 15
   4025 09                  154 	.db #0x09	; 9
   4026 16                  155 	.db #0x16	; 22
   4027                     156 _paletteMenusM2:
   4027 00                  157 	.db #0x00	; 0
   4028 14                  158 	.db #0x14	; 20
   4029                     159 _grass1:
   4029 0F                  160 	.db #0x0F	; 15
   402A 0F                  161 	.db #0x0F	; 15
   402B 0F                  162 	.db #0x0F	; 15
   402C 8F                  163 	.db #0x8F	; 143
   402D 0F                  164 	.db #0x0F	; 15
   402E 0F                  165 	.db #0x0F	; 15
   402F 0F                  166 	.db #0x0F	; 15
   4030 0F                  167 	.db #0x0F	; 15
   4031 1F                  168 	.db #0x1F	; 31
   4032 0F                  169 	.db #0x0F	; 15
   4033 2F                  170 	.db #0x2F	; 47
   4034 0F                  171 	.db #0x0F	; 15
   4035 0F                  172 	.db #0x0F	; 15
   4036 0F                  173 	.db #0x0F	; 15
   4037 0F                  174 	.db #0x0F	; 15
   4038 0F                  175 	.db #0x0F	; 15
   4039 0F                  176 	.db #0x0F	; 15
   403A 0F                  177 	.db #0x0F	; 15
   403B 0F                  178 	.db #0x0F	; 15
   403C 0F                  179 	.db #0x0F	; 15
   403D 0F                  180 	.db #0x0F	; 15
   403E 0F                  181 	.db #0x0F	; 15
   403F 0F                  182 	.db #0x0F	; 15
   4040 0F                  183 	.db #0x0F	; 15
   4041 0F                  184 	.db #0x0F	; 15
   4042 0F                  185 	.db #0x0F	; 15
   4043 0F                  186 	.db #0x0F	; 15
   4044 0F                  187 	.db #0x0F	; 15
   4045 4F                  188 	.db #0x4F	; 79	'O'
   4046 0F                  189 	.db #0x0F	; 15
   4047 0F                  190 	.db #0x0F	; 15
   4048 8F                  191 	.db #0x8F	; 143
   4049 0F                  192 	.db #0x0F	; 15
   404A 4F                  193 	.db #0x4F	; 79	'O'
   404B 0F                  194 	.db #0x0F	; 15
   404C 0F                  195 	.db #0x0F	; 15
   404D 0F                  196 	.db #0x0F	; 15
   404E 0F                  197 	.db #0x0F	; 15
   404F 0F                  198 	.db #0x0F	; 15
   4050 0F                  199 	.db #0x0F	; 15
   4051 0F                  200 	.db #0x0F	; 15
   4052 0F                  201 	.db #0x0F	; 15
   4053 0F                  202 	.db #0x0F	; 15
   4054 0F                  203 	.db #0x0F	; 15
   4055 0F                  204 	.db #0x0F	; 15
   4056 1F                  205 	.db #0x1F	; 31
   4057 0F                  206 	.db #0x0F	; 15
   4058 0F                  207 	.db #0x0F	; 15
   4059 0F                  208 	.db #0x0F	; 15
   405A 0F                  209 	.db #0x0F	; 15
   405B 0F                  210 	.db #0x0F	; 15
   405C 8F                  211 	.db #0x8F	; 143
   405D 0F                  212 	.db #0x0F	; 15
   405E 0F                  213 	.db #0x0F	; 15
   405F 0F                  214 	.db #0x0F	; 15
   4060 0F                  215 	.db #0x0F	; 15
   4061 0F                  216 	.db #0x0F	; 15
   4062 0F                  217 	.db #0x0F	; 15
   4063 0F                  218 	.db #0x0F	; 15
   4064 0F                  219 	.db #0x0F	; 15
   4065 4F                  220 	.db #0x4F	; 79	'O'
   4066 0F                  221 	.db #0x0F	; 15
   4067 8F                  222 	.db #0x8F	; 143
   4068 0F                  223 	.db #0x0F	; 15
   4069                     224 _grass2:
   4069 0F                  225 	.db #0x0F	; 15
   406A 0F                  226 	.db #0x0F	; 15
   406B 0F                  227 	.db #0x0F	; 15
   406C 0F                  228 	.db #0x0F	; 15
   406D 0F                  229 	.db #0x0F	; 15
   406E 0F                  230 	.db #0x0F	; 15
   406F 0F                  231 	.db #0x0F	; 15
   4070 2F                  232 	.db #0x2F	; 47
   4071 0F                  233 	.db #0x0F	; 15
   4072 8F                  234 	.db #0x8F	; 143
   4073 0F                  235 	.db #0x0F	; 15
   4074 0F                  236 	.db #0x0F	; 15
   4075 0F                  237 	.db #0x0F	; 15
   4076 0F                  238 	.db #0x0F	; 15
   4077 0F                  239 	.db #0x0F	; 15
   4078 0F                  240 	.db #0x0F	; 15
   4079 0F                  241 	.db #0x0F	; 15
   407A 0F                  242 	.db #0x0F	; 15
   407B 0F                  243 	.db #0x0F	; 15
   407C 0F                  244 	.db #0x0F	; 15
   407D 4F                  245 	.db #0x4F	; 79	'O'
   407E 0F                  246 	.db #0x0F	; 15
   407F 0F                  247 	.db #0x0F	; 15
   4080 0F                  248 	.db #0x0F	; 15
   4081 0F                  249 	.db #0x0F	; 15
   4082 0F                  250 	.db #0x0F	; 15
   4083 2F                  251 	.db #0x2F	; 47
   4084 0F                  252 	.db #0x0F	; 15
   4085 0F                  253 	.db #0x0F	; 15
   4086 0F                  254 	.db #0x0F	; 15
   4087 0F                  255 	.db #0x0F	; 15
   4088 0F                  256 	.db #0x0F	; 15
   4089 0F                  257 	.db #0x0F	; 15
   408A 4F                  258 	.db #0x4F	; 79	'O'
   408B 0F                  259 	.db #0x0F	; 15
   408C 0F                  260 	.db #0x0F	; 15
   408D 0F                  261 	.db #0x0F	; 15
   408E 0F                  262 	.db #0x0F	; 15
   408F 0F                  263 	.db #0x0F	; 15
   4090 0F                  264 	.db #0x0F	; 15
   4091 0F                  265 	.db #0x0F	; 15
   4092 0F                  266 	.db #0x0F	; 15
   4093 0F                  267 	.db #0x0F	; 15
   4094 0F                  268 	.db #0x0F	; 15
   4095 0F                  269 	.db #0x0F	; 15
   4096 0F                  270 	.db #0x0F	; 15
   4097 0F                  271 	.db #0x0F	; 15
   4098 8F                  272 	.db #0x8F	; 143
   4099 0F                  273 	.db #0x0F	; 15
   409A 0F                  274 	.db #0x0F	; 15
   409B 0F                  275 	.db #0x0F	; 15
   409C 0F                  276 	.db #0x0F	; 15
   409D 2F                  277 	.db #0x2F	; 47
   409E 1F                  278 	.db #0x1F	; 31
   409F 0F                  279 	.db #0x0F	; 15
   40A0 0F                  280 	.db #0x0F	; 15
   40A1 0F                  281 	.db #0x0F	; 15
   40A2 0F                  282 	.db #0x0F	; 15
   40A3 0F                  283 	.db #0x0F	; 15
   40A4 2F                  284 	.db #0x2F	; 47
   40A5 0F                  285 	.db #0x0F	; 15
   40A6 0F                  286 	.db #0x0F	; 15
   40A7 0F                  287 	.db #0x0F	; 15
   40A8 0F                  288 	.db #0x0F	; 15
   40A9                     289 _forest:
   40A9 0F                  290 	.db #0x0F	; 15
   40AA 0F                  291 	.db #0x0F	; 15
   40AB 0E                  292 	.db #0x0E	; 14
   40AC 03                  293 	.db #0x03	; 3
   40AD 0E                  294 	.db #0x0E	; 14
   40AE 03                  295 	.db #0x03	; 3
   40AF 0E                  296 	.db #0x0E	; 14
   40B0 EF                  297 	.db #0xEF	; 239
   40B1 0E                  298 	.db #0x0E	; 14
   40B2 EF                  299 	.db #0xEF	; 239
   40B3 0F                  300 	.db #0x0F	; 15
   40B4 EF                  301 	.db #0xEF	; 239
   40B5 0E                  302 	.db #0x0E	; 14
   40B6 FF                  303 	.db #0xFF	; 255
   40B7 0F                  304 	.db #0x0F	; 15
   40B8 0F                  305 	.db #0x0F	; 15
   40B9 07                  306 	.db #0x07	; 7
   40BA 6F                  307 	.db #0x6F	; 111	'o'
   40BB 0C                  308 	.db #0x0C	; 12
   40BC 0F                  309 	.db #0x0F	; 15
   40BD CF                  310 	.db #0xCF	; 207
   40BE 0F                  311 	.db #0x0F	; 15
   40BF 19                  312 	.db #0x19	; 25
   40C0 8F                  313 	.db #0x8F	; 143
   40C1 CE                  314 	.db #0xCE	; 206
   40C2 03                  315 	.db #0x03	; 3
   40C3 3B                  316 	.db #0x3B	; 59
   40C4 8F                  317 	.db #0x8F	; 143
   40C5 CE                  318 	.db #0xCE	; 206
   40C6 CF                  319 	.db #0xCF	; 207
   40C7 3B                  320 	.db #0x3B	; 59
   40C8 0F                  321 	.db #0x0F	; 15
   40C9 0E                  322 	.db #0x0E	; 14
   40CA EF                  323 	.db #0xEF	; 239
   40CB 3F                  324 	.db #0x3F	; 63
   40CC 0F                  325 	.db #0x0F	; 15
   40CD 0F                  326 	.db #0x0F	; 15
   40CE EF                  327 	.db #0xEF	; 239
   40CF 0F                  328 	.db #0x0F	; 15
   40D0 0F                  329 	.db #0x0F	; 15
   40D1 0E                  330 	.db #0x0E	; 14
   40D2 07                  331 	.db #0x07	; 7
   40D3 03                  332 	.db #0x03	; 3
   40D4 0F                  333 	.db #0x0F	; 15
   40D5 1D                  334 	.db #0x1D	; 29
   40D6 CE                  335 	.db #0xCE	; 206
   40D7 EF                  336 	.db #0xEF	; 239
   40D8 09                  337 	.db #0x09	; 9
   40D9 3B                  338 	.db #0x3B	; 59
   40DA 8F                  339 	.db #0x8F	; 143
   40DB CE                  340 	.db #0xCE	; 206
   40DC 67                  341 	.db #0x67	; 103	'g'
   40DD 3B                  342 	.db #0x3B	; 59
   40DE 8F                  343 	.db #0x8F	; 143
   40DF 1D                  344 	.db #0x1D	; 29
   40E0 EF                  345 	.db #0xEF	; 239
   40E1 2F                  346 	.db #0x2F	; 47
   40E2 0F                  347 	.db #0x0F	; 15
   40E3 1D                  348 	.db #0x1D	; 29
   40E4 EF                  349 	.db #0xEF	; 239
   40E5 0F                  350 	.db #0x0F	; 15
   40E6 0F                  351 	.db #0x0F	; 15
   40E7 0F                  352 	.db #0x0F	; 15
   40E8 CF                  353 	.db #0xCF	; 207
   40E9                     354 _dwellings1:
   40E9 0F                  355 	.db #0x0F	; 15
   40EA 0F                  356 	.db #0x0F	; 15
   40EB 0F                  357 	.db #0x0F	; 15
   40EC 0F                  358 	.db #0x0F	; 15
   40ED 08                  359 	.db #0x08	; 8
   40EE 03                  360 	.db #0x03	; 3
   40EF 0C                  361 	.db #0x0C	; 12
   40F0 07                  362 	.db #0x07	; 7
   40F1 38                  363 	.db #0x38	; 56	'8'
   40F2 E1                  364 	.db #0xE1	; 225
   40F3 1C                  365 	.db #0x1C	; 28
   40F4 C3                  366 	.db #0xC3	; 195
   40F5 3C                  367 	.db #0x3C	; 60
   40F6 E1                  368 	.db #0xE1	; 225
   40F7 1C                  369 	.db #0x1C	; 28
   40F8 C3                  370 	.db #0xC3	; 195
   40F9 0F                  371 	.db #0x0F	; 15
   40FA 0F                  372 	.db #0x0F	; 15
   40FB 1E                  373 	.db #0x1E	; 30
   40FC C3                  374 	.db #0xC3	; 195
   40FD 0F                  375 	.db #0x0F	; 15
   40FE 0F                  376 	.db #0x0F	; 15
   40FF 0F                  377 	.db #0x0F	; 15
   4100 0F                  378 	.db #0x0F	; 15
   4101 0F                  379 	.db #0x0F	; 15
   4102 0F                  380 	.db #0x0F	; 15
   4103 0E                  381 	.db #0x0E	; 14
   4104 03                  382 	.db #0x03	; 3
   4105 0F                  383 	.db #0x0F	; 15
   4106 0E                  384 	.db #0x0E	; 14
   4107 06                  385 	.db #0x06	; 6
   4108 E1                  386 	.db #0xE1	; 225
   4109 0F                  387 	.db #0x0F	; 15
   410A 0E                  388 	.db #0x0E	; 14
   410B C2                  389 	.db #0xC2	; 194
   410C E1                  390 	.db #0xE1	; 225
   410D 0F                  391 	.db #0x0F	; 15
   410E 0E                  392 	.db #0x0E	; 14
   410F C2                  393 	.db #0xC2	; 194
   4110 E1                  394 	.db #0xE1	; 225
   4111 0F                  395 	.db #0x0F	; 15
   4112 0E                  396 	.db #0x0E	; 14
   4113 C3                  397 	.db #0xC3	; 195
   4114 E1                  398 	.db #0xE1	; 225
   4115 0F                  399 	.db #0x0F	; 15
   4116 0E                  400 	.db #0x0E	; 14
   4117 C3                  401 	.db #0xC3	; 195
   4118 0F                  402 	.db #0x0F	; 15
   4119 0F                  403 	.db #0x0F	; 15
   411A 0F                  404 	.db #0x0F	; 15
   411B C3                  405 	.db #0xC3	; 195
   411C 0F                  406 	.db #0x0F	; 15
   411D 08                  407 	.db #0x08	; 8
   411E 07                  408 	.db #0x07	; 7
   411F 0F                  409 	.db #0x0F	; 15
   4120 0F                  410 	.db #0x0F	; 15
   4121 38                  411 	.db #0x38	; 56	'8'
   4122 C3                  412 	.db #0xC3	; 195
   4123 0F                  413 	.db #0x0F	; 15
   4124 0F                  414 	.db #0x0F	; 15
   4125 3C                  415 	.db #0x3C	; 60
   4126 C3                  416 	.db #0xC3	; 195
   4127 0F                  417 	.db #0x0F	; 15
   4128 0F                  418 	.db #0x0F	; 15
   4129                     419 _dwellings2:
   4129 0F                  420 	.db #0x0F	; 15
   412A 0F                  421 	.db #0x0F	; 15
   412B 0F                  422 	.db #0x0F	; 15
   412C 0F                  423 	.db #0x0F	; 15
   412D 0F                  424 	.db #0x0F	; 15
   412E 01                  425 	.db #0x01	; 1
   412F 0F                  426 	.db #0x0F	; 15
   4130 0F                  427 	.db #0x0F	; 15
   4131 0F                  428 	.db #0x0F	; 15
   4132 70                  429 	.db #0x70	; 112	'p'
   4133 0C                  430 	.db #0x0C	; 12
   4134 0F                  431 	.db #0x0F	; 15
   4135 09                  432 	.db #0x09	; 9
   4136 78                  433 	.db #0x78	; 120	'x'
   4137 1C                  434 	.db #0x1C	; 28
   4138 87                  435 	.db #0x87	; 135
   4139 38                  436 	.db #0x38	; 56	'8'
   413A 0F                  437 	.db #0x0F	; 15
   413B 1C                  438 	.db #0x1C	; 28
   413C 87                  439 	.db #0x87	; 135
   413D 38                  440 	.db #0x38	; 56	'8'
   413E 0F                  441 	.db #0x0F	; 15
   413F 1E                  442 	.db #0x1E	; 30
   4140 87                  443 	.db #0x87	; 135
   4141 3C                  444 	.db #0x3C	; 60
   4142 0F                  445 	.db #0x0F	; 15
   4143 0F                  446 	.db #0x0F	; 15
   4144 0F                  447 	.db #0x0F	; 15
   4145 0F                  448 	.db #0x0F	; 15
   4146 0F                  449 	.db #0x0F	; 15
   4147 0F                  450 	.db #0x0F	; 15
   4148 0F                  451 	.db #0x0F	; 15
   4149 0E                  452 	.db #0x0E	; 14
   414A 07                  453 	.db #0x07	; 7
   414B 0F                  454 	.db #0x0F	; 15
   414C 0F                  455 	.db #0x0F	; 15
   414D 0E                  456 	.db #0x0E	; 14
   414E C3                  457 	.db #0xC3	; 195
   414F 00                  458 	.db #0x00	; 0
   4150 07                  459 	.db #0x07	; 7
   4151 0E                  460 	.db #0x0E	; 14
   4152 C3                  461 	.db #0xC3	; 195
   4153 70                  462 	.db #0x70	; 112	'p'
   4154 C3                  463 	.db #0xC3	; 195
   4155 0F                  464 	.db #0x0F	; 15
   4156 C3                  465 	.db #0xC3	; 195
   4157 70                  466 	.db #0x70	; 112	'p'
   4158 C3                  467 	.db #0xC3	; 195
   4159 03                  468 	.db #0x03	; 3
   415A 0F                  469 	.db #0x0F	; 15
   415B 78                  470 	.db #0x78	; 120	'x'
   415C C3                  471 	.db #0xC3	; 195
   415D 61                  472 	.db #0x61	; 97	'a'
   415E 0F                  473 	.db #0x0F	; 15
   415F 0F                  474 	.db #0x0F	; 15
   4160 0F                  475 	.db #0x0F	; 15
   4161 69                  476 	.db #0x69	; 105	'i'
   4162 0F                  477 	.db #0x0F	; 15
   4163 0F                  478 	.db #0x0F	; 15
   4164 0F                  479 	.db #0x0F	; 15
   4165 0F                  480 	.db #0x0F	; 15
   4166 0F                  481 	.db #0x0F	; 15
   4167 0F                  482 	.db #0x0F	; 15
   4168 0F                  483 	.db #0x0F	; 15
   4169                     484 _dwellings3:
   4169 0F                  485 	.db #0x0F	; 15
   416A 0F                  486 	.db #0x0F	; 15
   416B 09                  487 	.db #0x09	; 9
   416C 09                  488 	.db #0x09	; 9
   416D 0F                  489 	.db #0x0F	; 15
   416E 0F                  490 	.db #0x0F	; 15
   416F 38                  491 	.db #0x38	; 56	'8'
   4170 38                  492 	.db #0x38	; 56	'8'
   4171 0E                  493 	.db #0x0E	; 14
   4172 03                  494 	.db #0x03	; 3
   4173 38                  495 	.db #0x38	; 56	'8'
   4174 38                  496 	.db #0x38	; 56	'8'
   4175 0E                  497 	.db #0x0E	; 14
   4176 E1                  498 	.db #0xE1	; 225
   4177 3C                  499 	.db #0x3C	; 60
   4178 3C                  500 	.db #0x3C	; 60
   4179 0E                  501 	.db #0x0E	; 14
   417A E1                  502 	.db #0xE1	; 225
   417B 0F                  503 	.db #0x0F	; 15
   417C 0F                  504 	.db #0x0F	; 15
   417D 0E                  505 	.db #0x0E	; 14
   417E E1                  506 	.db #0xE1	; 225
   417F 08                  507 	.db #0x08	; 8
   4180 07                  508 	.db #0x07	; 7
   4181 0F                  509 	.db #0x0F	; 15
   4182 E1                  510 	.db #0xE1	; 225
   4183 38                  511 	.db #0x38	; 56	'8'
   4184 C3                  512 	.db #0xC3	; 195
   4185 0F                  513 	.db #0x0F	; 15
   4186 0F                  514 	.db #0x0F	; 15
   4187 3C                  515 	.db #0x3C	; 60
   4188 C3                  516 	.db #0xC3	; 195
   4189 0C                  517 	.db #0x0C	; 12
   418A 0F                  518 	.db #0x0F	; 15
   418B 0F                  519 	.db #0x0F	; 15
   418C 0F                  520 	.db #0x0F	; 15
   418D 1C                  521 	.db #0x1C	; 28
   418E 87                  522 	.db #0x87	; 135
   418F 0F                  523 	.db #0x0F	; 15
   4190 0F                  524 	.db #0x0F	; 15
   4191 1E                  525 	.db #0x1E	; 30
   4192 87                  526 	.db #0x87	; 135
   4193 0C                  527 	.db #0x0C	; 12
   4194 07                  528 	.db #0x07	; 7
   4195 0F                  529 	.db #0x0F	; 15
   4196 0F                  530 	.db #0x0F	; 15
   4197 1C                  531 	.db #0x1C	; 28
   4198 C3                  532 	.db #0xC3	; 195
   4199 0F                  533 	.db #0x0F	; 15
   419A 09                  534 	.db #0x09	; 9
   419B 1C                  535 	.db #0x1C	; 28
   419C C3                  536 	.db #0xC3	; 195
   419D 0F                  537 	.db #0x0F	; 15
   419E 38                  538 	.db #0x38	; 56	'8'
   419F 1C                  539 	.db #0x1C	; 28
   41A0 C3                  540 	.db #0xC3	; 195
   41A1 0F                  541 	.db #0x0F	; 15
   41A2 3C                  542 	.db #0x3C	; 60
   41A3 1E                  543 	.db #0x1E	; 30
   41A4 C3                  544 	.db #0xC3	; 195
   41A5 0F                  545 	.db #0x0F	; 15
   41A6 0F                  546 	.db #0x0F	; 15
   41A7 0F                  547 	.db #0x0F	; 15
   41A8 0F                  548 	.db #0x0F	; 15
   41A9                     549 _water:
   41A9 5F                  550 	.db #0x5F	; 95
   41AA 5F                  551 	.db #0x5F	; 95
   41AB 5F                  552 	.db #0x5F	; 95
   41AC 5F                  553 	.db #0x5F	; 95
   41AD AF                  554 	.db #0xAF	; 175
   41AE AF                  555 	.db #0xAF	; 175
   41AF AF                  556 	.db #0xAF	; 175
   41B0 AF                  557 	.db #0xAF	; 175
   41B1 5F                  558 	.db #0x5F	; 95
   41B2 5F                  559 	.db #0x5F	; 95
   41B3 5F                  560 	.db #0x5F	; 95
   41B4 5F                  561 	.db #0x5F	; 95
   41B5 AF                  562 	.db #0xAF	; 175
   41B6 AF                  563 	.db #0xAF	; 175
   41B7 AF                  564 	.db #0xAF	; 175
   41B8 AF                  565 	.db #0xAF	; 175
   41B9 5F                  566 	.db #0x5F	; 95
   41BA 5F                  567 	.db #0x5F	; 95
   41BB 5F                  568 	.db #0x5F	; 95
   41BC 5F                  569 	.db #0x5F	; 95
   41BD AF                  570 	.db #0xAF	; 175
   41BE AF                  571 	.db #0xAF	; 175
   41BF AF                  572 	.db #0xAF	; 175
   41C0 AF                  573 	.db #0xAF	; 175
   41C1 5F                  574 	.db #0x5F	; 95
   41C2 5F                  575 	.db #0x5F	; 95
   41C3 5F                  576 	.db #0x5F	; 95
   41C4 5F                  577 	.db #0x5F	; 95
   41C5 AF                  578 	.db #0xAF	; 175
   41C6 AF                  579 	.db #0xAF	; 175
   41C7 AF                  580 	.db #0xAF	; 175
   41C8 AF                  581 	.db #0xAF	; 175
   41C9 5F                  582 	.db #0x5F	; 95
   41CA 5F                  583 	.db #0x5F	; 95
   41CB 5F                  584 	.db #0x5F	; 95
   41CC 5F                  585 	.db #0x5F	; 95
   41CD AF                  586 	.db #0xAF	; 175
   41CE AF                  587 	.db #0xAF	; 175
   41CF AF                  588 	.db #0xAF	; 175
   41D0 AF                  589 	.db #0xAF	; 175
   41D1 5F                  590 	.db #0x5F	; 95
   41D2 5F                  591 	.db #0x5F	; 95
   41D3 5F                  592 	.db #0x5F	; 95
   41D4 5F                  593 	.db #0x5F	; 95
   41D5 AF                  594 	.db #0xAF	; 175
   41D6 AF                  595 	.db #0xAF	; 175
   41D7 AF                  596 	.db #0xAF	; 175
   41D8 AF                  597 	.db #0xAF	; 175
   41D9 5F                  598 	.db #0x5F	; 95
   41DA 5F                  599 	.db #0x5F	; 95
   41DB 5F                  600 	.db #0x5F	; 95
   41DC 5F                  601 	.db #0x5F	; 95
   41DD AF                  602 	.db #0xAF	; 175
   41DE AF                  603 	.db #0xAF	; 175
   41DF AF                  604 	.db #0xAF	; 175
   41E0 AF                  605 	.db #0xAF	; 175
   41E1 5F                  606 	.db #0x5F	; 95
   41E2 5F                  607 	.db #0x5F	; 95
   41E3 5F                  608 	.db #0x5F	; 95
   41E4 5F                  609 	.db #0x5F	; 95
   41E5 AF                  610 	.db #0xAF	; 175
   41E6 AF                  611 	.db #0xAF	; 175
   41E7 AF                  612 	.db #0xAF	; 175
   41E8 AF                  613 	.db #0xAF	; 175
   41E9                     614 _farm1:
   41E9 03                  615 	.db #0x03	; 3
   41EA 0F                  616 	.db #0x0F	; 15
   41EB 78                  617 	.db #0x78	; 120	'x'
   41EC F0                  618 	.db #0xF0	; 240
   41ED 61                  619 	.db #0x61	; 97	'a'
   41EE 01                  620 	.db #0x01	; 1
   41EF 5F                  621 	.db #0x5F	; 95
   41F0 5F                  622 	.db #0x5F	; 95
   41F1 61                  623 	.db #0x61	; 97	'a'
   41F2 70                  624 	.db #0x70	; 112	'p'
   41F3 78                  625 	.db #0x78	; 120	'x'
   41F4 F0                  626 	.db #0xF0	; 240
   41F5 69                  627 	.db #0x69	; 105	'i'
   41F6 78                  628 	.db #0x78	; 120	'x'
   41F7 2F                  629 	.db #0x2F	; 47
   41F8 AF                  630 	.db #0xAF	; 175
   41F9 0F                  631 	.db #0x0F	; 15
   41FA 0F                  632 	.db #0x0F	; 15
   41FB 78                  633 	.db #0x78	; 120	'x'
   41FC F0                  634 	.db #0xF0	; 240
   41FD 7A                  635 	.db #0x7A	; 122	'z'
   41FE 7A                  636 	.db #0x7A	; 122	'z'
   41FF 5F                  637 	.db #0x5F	; 95
   4200 5F                  638 	.db #0x5F	; 95
   4201 5A                  639 	.db #0x5A	; 90	'Z'
   4202 DA                  640 	.db #0xDA	; 218
   4203 78                  641 	.db #0x78	; 120	'x'
   4204 F0                  642 	.db #0xF0	; 240
   4205 7A                  643 	.db #0x7A	; 122	'z'
   4206 7A                  644 	.db #0x7A	; 122	'z'
   4207 0F                  645 	.db #0x0F	; 15
   4208 0F                  646 	.db #0x0F	; 15
   4209 5A                  647 	.db #0x5A	; 90	'Z'
   420A DA                  648 	.db #0xDA	; 218
   420B 0F                  649 	.db #0x0F	; 15
   420C 0F                  650 	.db #0x0F	; 15
   420D 7A                  651 	.db #0x7A	; 122	'z'
   420E 7A                  652 	.db #0x7A	; 122	'z'
   420F 78                  653 	.db #0x78	; 120	'x'
   4210 F0                  654 	.db #0xF0	; 240
   4211 5A                  655 	.db #0x5A	; 90	'Z'
   4212 DA                  656 	.db #0xDA	; 218
   4213 5F                  657 	.db #0x5F	; 95
   4214 5F                  658 	.db #0x5F	; 95
   4215 7A                  659 	.db #0x7A	; 122	'z'
   4216 7A                  660 	.db #0x7A	; 122	'z'
   4217 78                  661 	.db #0x78	; 120	'x'
   4218 F0                  662 	.db #0xF0	; 240
   4219 5A                  663 	.db #0x5A	; 90	'Z'
   421A DA                  664 	.db #0xDA	; 218
   421B 2F                  665 	.db #0x2F	; 47
   421C AF                  666 	.db #0xAF	; 175
   421D 7A                  667 	.db #0x7A	; 122	'z'
   421E 7A                  668 	.db #0x7A	; 122	'z'
   421F 78                  669 	.db #0x78	; 120	'x'
   4220 F0                  670 	.db #0xF0	; 240
   4221 5A                  671 	.db #0x5A	; 90	'Z'
   4222 DA                  672 	.db #0xDA	; 218
   4223 5F                  673 	.db #0x5F	; 95
   4224 5F                  674 	.db #0x5F	; 95
   4225 7A                  675 	.db #0x7A	; 122	'z'
   4226 7A                  676 	.db #0x7A	; 122	'z'
   4227 78                  677 	.db #0x78	; 120	'x'
   4228 F0                  678 	.db #0xF0	; 240
   4229                     679 _farm2:
   4229 0F                  680 	.db #0x0F	; 15
   422A 0F                  681 	.db #0x0F	; 15
   422B 0F                  682 	.db #0x0F	; 15
   422C 0F                  683 	.db #0x0F	; 15
   422D 7F                  684 	.db #0x7F	; 127
   422E FF                  685 	.db #0xFF	; 255
   422F FF                  686 	.db #0xFF	; 255
   4230 EF                  687 	.db #0xEF	; 239
   4231 2D                  688 	.db #0x2D	; 45
   4232 A5                  689 	.db #0xA5	; 165
   4233 A5                  690 	.db #0xA5	; 165
   4234 A5                  691 	.db #0xA5	; 165
   4235 7F                  692 	.db #0x7F	; 127
   4236 FF                  693 	.db #0xFF	; 255
   4237 FF                  694 	.db #0xFF	; 255
   4238 EF                  695 	.db #0xEF	; 239
   4239 5A                  696 	.db #0x5A	; 90	'Z'
   423A 5A                  697 	.db #0x5A	; 90	'Z'
   423B 5A                  698 	.db #0x5A	; 90	'Z'
   423C 4B                  699 	.db #0x4B	; 75	'K'
   423D 7F                  700 	.db #0x7F	; 127
   423E FF                  701 	.db #0xFF	; 255
   423F FF                  702 	.db #0xFF	; 255
   4240 EF                  703 	.db #0xEF	; 239
   4241 2D                  704 	.db #0x2D	; 45
   4242 A5                  705 	.db #0xA5	; 165
   4243 A5                  706 	.db #0xA5	; 165
   4244 A5                  707 	.db #0xA5	; 165
   4245 7F                  708 	.db #0x7F	; 127
   4246 FF                  709 	.db #0xFF	; 255
   4247 FF                  710 	.db #0xFF	; 255
   4248 EF                  711 	.db #0xEF	; 239
   4249 5A                  712 	.db #0x5A	; 90	'Z'
   424A 5A                  713 	.db #0x5A	; 90	'Z'
   424B 5A                  714 	.db #0x5A	; 90	'Z'
   424C 4B                  715 	.db #0x4B	; 75	'K'
   424D 7F                  716 	.db #0x7F	; 127
   424E FF                  717 	.db #0xFF	; 255
   424F FF                  718 	.db #0xFF	; 255
   4250 EF                  719 	.db #0xEF	; 239
   4251 0F                  720 	.db #0x0F	; 15
   4252 0F                  721 	.db #0x0F	; 15
   4253 0F                  722 	.db #0x0F	; 15
   4254 0F                  723 	.db #0x0F	; 15
   4255 0E                  724 	.db #0x0E	; 14
   4256 07                  725 	.db #0x07	; 7
   4257 AF                  726 	.db #0xAF	; 175
   4258 AF                  727 	.db #0xAF	; 175
   4259 02                  728 	.db #0x02	; 2
   425A C3                  729 	.db #0xC3	; 195
   425B AF                  730 	.db #0xAF	; 175
   425C AF                  731 	.db #0xAF	; 175
   425D 60                  732 	.db #0x60	; 96
   425E C3                  733 	.db #0xC3	; 195
   425F AF                  734 	.db #0xAF	; 175
   4260 AF                  735 	.db #0xAF	; 175
   4261 69                  736 	.db #0x69	; 105	'i'
   4262 C3                  737 	.db #0xC3	; 195
   4263 AF                  738 	.db #0xAF	; 175
   4264 AF                  739 	.db #0xAF	; 175
   4265 0F                  740 	.db #0x0F	; 15
   4266 0F                  741 	.db #0x0F	; 15
   4267 0F                  742 	.db #0x0F	; 15
   4268 0F                  743 	.db #0x0F	; 15
   4269                     744 _livestock:
   4269 03                  745 	.db #0x03	; 3
   426A 0F                  746 	.db #0x0F	; 15
   426B 0F                  747 	.db #0x0F	; 15
   426C 0F                  748 	.db #0x0F	; 15
   426D 61                  749 	.db #0x61	; 97	'a'
   426E F5                  750 	.db #0xF5	; 245
   426F F5                  751 	.db #0xF5	; 245
   4270 E5                  752 	.db #0xE5	; 229
   4271 61                  753 	.db #0x61	; 97	'a'
   4272 8F                  754 	.db #0x8F	; 143
   4273 0F                  755 	.db #0x0F	; 15
   4274 2F                  756 	.db #0x2F	; 47
   4275 69                  757 	.db #0x69	; 105	'i'
   4276 87                  758 	.db #0x87	; 135
   4277 0F                  759 	.db #0x0F	; 15
   4278 AD                  760 	.db #0xAD	; 173
   4279 0F                  761 	.db #0x0F	; 15
   427A 9F                  762 	.db #0x9F	; 159
   427B 0F                  763 	.db #0x0F	; 15
   427C 2F                  764 	.db #0x2F	; 47
   427D 7D                  765 	.db #0x7D	; 125
   427E 87                  766 	.db #0x87	; 135
   427F 0F                  767 	.db #0x0F	; 15
   4280 2D                  768 	.db #0x2D	; 45
   4281 4B                  769 	.db #0x4B	; 75	'K'
   4282 0F                  770 	.db #0x0F	; 15
   4283 2F                  771 	.db #0x2F	; 47
   4284 2F                  772 	.db #0x2F	; 47
   4285 4F                  773 	.db #0x4F	; 79	'O'
   4286 0F                  774 	.db #0x0F	; 15
   4287 0F                  775 	.db #0x0F	; 15
   4288 2D                  776 	.db #0x2D	; 45
   4289 5B                  777 	.db #0x5B	; 91
   428A 1F                  778 	.db #0x1F	; 31
   428B 0F                  779 	.db #0x0F	; 15
   428C 2F                  780 	.db #0x2F	; 47
   428D 4F                  781 	.db #0x4F	; 79	'O'
   428E 0F                  782 	.db #0x0F	; 15
   428F 1F                  783 	.db #0x1F	; 31
   4290 2D                  784 	.db #0x2D	; 45
   4291 4B                  785 	.db #0x4B	; 75	'K'
   4292 0F                  786 	.db #0x0F	; 15
   4293 0F                  787 	.db #0x0F	; 15
   4294 2F                  788 	.db #0x2F	; 47
   4295 4F                  789 	.db #0x4F	; 79	'O'
   4296 4F                  790 	.db #0x4F	; 79	'O'
   4297 0F                  791 	.db #0x0F	; 15
   4298 2D                  792 	.db #0x2D	; 45
   4299 4B                  793 	.db #0x4B	; 75	'K'
   429A 0F                  794 	.db #0x0F	; 15
   429B 2F                  795 	.db #0x2F	; 47
   429C 2F                  796 	.db #0x2F	; 47
   429D 4F                  797 	.db #0x4F	; 79	'O'
   429E 0F                  798 	.db #0x0F	; 15
   429F 0F                  799 	.db #0x0F	; 15
   42A0 2D                  800 	.db #0x2D	; 45
   42A1 7A                  801 	.db #0x7A	; 122	'z'
   42A2 FA                  802 	.db #0xFA	; 250
   42A3 FA                  803 	.db #0xFA	; 250
   42A4 EB                  804 	.db #0xEB	; 235
   42A5 0F                  805 	.db #0x0F	; 15
   42A6 0F                  806 	.db #0x0F	; 15
   42A7 0F                  807 	.db #0x0F	; 15
   42A8 0F                  808 	.db #0x0F	; 15
   42A9                     809 _station_small_ns:
   42A9 0F                  810 	.db #0x0F	; 15
   42AA 1E                  811 	.db #0x1E	; 30
   42AB 43                  812 	.db #0x43	; 67	'C'
   42AC 0F                  813 	.db #0x0F	; 15
   42AD 0F                  814 	.db #0x0F	; 15
   42AE 1E                  815 	.db #0x1E	; 30
   42AF 43                  816 	.db #0x43	; 67	'C'
   42B0 4F                  817 	.db #0x4F	; 79	'O'
   42B1 0F                  818 	.db #0x0F	; 15
   42B2 5E                  819 	.db #0x5E	; 94
   42B3 43                  820 	.db #0x43	; 67	'C'
   42B4 0F                  821 	.db #0x0F	; 15
   42B5 0F                  822 	.db #0x0F	; 15
   42B6 1E                  823 	.db #0x1E	; 30
   42B7 43                  824 	.db #0x43	; 67	'C'
   42B8 0F                  825 	.db #0x0F	; 15
   42B9 4F                  826 	.db #0x4F	; 79	'O'
   42BA 1E                  827 	.db #0x1E	; 30
   42BB 43                  828 	.db #0x43	; 67	'C'
   42BC 8F                  829 	.db #0x8F	; 143
   42BD 0F                  830 	.db #0x0F	; 15
   42BE 1E                  831 	.db #0x1E	; 30
   42BF 43                  832 	.db #0x43	; 67	'C'
   42C0 0F                  833 	.db #0x0F	; 15
   42C1 0F                  834 	.db #0x0F	; 15
   42C2 1E                  835 	.db #0x1E	; 30
   42C3 43                  836 	.db #0x43	; 67	'C'
   42C4 0F                  837 	.db #0x0F	; 15
   42C5 0E                  838 	.db #0x0E	; 14
   42C6 16                  839 	.db #0x16	; 22
   42C7 43                  840 	.db #0x43	; 67	'C'
   42C8 0F                  841 	.db #0x0F	; 15
   42C9 0E                  842 	.db #0x0E	; 14
   42CA D2                  843 	.db #0xD2	; 210
   42CB 43                  844 	.db #0x43	; 67	'C'
   42CC 0F                  845 	.db #0x0F	; 15
   42CD 4F                  846 	.db #0x4F	; 79	'O'
   42CE D2                  847 	.db #0xD2	; 210
   42CF 43                  848 	.db #0x43	; 67	'C'
   42D0 0F                  849 	.db #0x0F	; 15
   42D1 0F                  850 	.db #0x0F	; 15
   42D2 1E                  851 	.db #0x1E	; 30
   42D3 53                  852 	.db #0x53	; 83	'S'
   42D4 0F                  853 	.db #0x0F	; 15
   42D5 0F                  854 	.db #0x0F	; 15
   42D6 1E                  855 	.db #0x1E	; 30
   42D7 43                  856 	.db #0x43	; 67	'C'
   42D8 0F                  857 	.db #0x0F	; 15
   42D9 0F                  858 	.db #0x0F	; 15
   42DA 5E                  859 	.db #0x5E	; 94
   42DB 43                  860 	.db #0x43	; 67	'C'
   42DC 0F                  861 	.db #0x0F	; 15
   42DD 0F                  862 	.db #0x0F	; 15
   42DE 1E                  863 	.db #0x1E	; 30
   42DF 43                  864 	.db #0x43	; 67	'C'
   42E0 1F                  865 	.db #0x1F	; 31
   42E1 4F                  866 	.db #0x4F	; 79	'O'
   42E2 1E                  867 	.db #0x1E	; 30
   42E3 43                  868 	.db #0x43	; 67	'C'
   42E4 0F                  869 	.db #0x0F	; 15
   42E5 0F                  870 	.db #0x0F	; 15
   42E6 1E                  871 	.db #0x1E	; 30
   42E7 43                  872 	.db #0x43	; 67	'C'
   42E8 0F                  873 	.db #0x0F	; 15
   42E9                     874 _station_small_ew:
   42E9 0F                  875 	.db #0x0F	; 15
   42EA 2F                  876 	.db #0x2F	; 47
   42EB 0F                  877 	.db #0x0F	; 15
   42EC 0F                  878 	.db #0x0F	; 15
   42ED 0F                  879 	.db #0x0F	; 15
   42EE 0F                  880 	.db #0x0F	; 15
   42EF 0F                  881 	.db #0x0F	; 15
   42F0 4F                  882 	.db #0x4F	; 79	'O'
   42F1 0F                  883 	.db #0x0F	; 15
   42F2 0F                  884 	.db #0x0F	; 15
   42F3 0F                  885 	.db #0x0F	; 15
   42F4 0F                  886 	.db #0x0F	; 15
   42F5 2F                  887 	.db #0x2F	; 47
   42F6 0C                  888 	.db #0x0C	; 12
   42F7 0F                  889 	.db #0x0F	; 15
   42F8 0F                  890 	.db #0x0F	; 15
   42F9 0F                  891 	.db #0x0F	; 15
   42FA 1C                  892 	.db #0x1C	; 28
   42FB 87                  893 	.db #0x87	; 135
   42FC 8F                  894 	.db #0x8F	; 143
   42FD 0F                  895 	.db #0x0F	; 15
   42FE 1E                  896 	.db #0x1E	; 30
   42FF 87                  897 	.db #0x87	; 135
   4300 0F                  898 	.db #0x0F	; 15
   4301 0F                  899 	.db #0x0F	; 15
   4302 0F                  900 	.db #0x0F	; 15
   4303 0F                  901 	.db #0x0F	; 15
   4304 0F                  902 	.db #0x0F	; 15
   4305 F0                  903 	.db #0xF0	; 240
   4306 F0                  904 	.db #0xF0	; 240
   4307 F0                  905 	.db #0xF0	; 240
   4308 F0                  906 	.db #0xF0	; 240
   4309 00                  907 	.db #0x00	; 0
   430A 00                  908 	.db #0x00	; 0
   430B 00                  909 	.db #0x00	; 0
   430C 00                  910 	.db #0x00	; 0
   430D F0                  911 	.db #0xF0	; 240
   430E F0                  912 	.db #0xF0	; 240
   430F F0                  913 	.db #0xF0	; 240
   4310 F0                  914 	.db #0xF0	; 240
   4311 0F                  915 	.db #0x0F	; 15
   4312 0F                  916 	.db #0x0F	; 15
   4313 0F                  917 	.db #0x0F	; 15
   4314 0F                  918 	.db #0x0F	; 15
   4315 0F                  919 	.db #0x0F	; 15
   4316 8F                  920 	.db #0x8F	; 143
   4317 0F                  921 	.db #0x0F	; 15
   4318 8F                  922 	.db #0x8F	; 143
   4319 0F                  923 	.db #0x0F	; 15
   431A 0F                  924 	.db #0x0F	; 15
   431B 0F                  925 	.db #0x0F	; 15
   431C 0F                  926 	.db #0x0F	; 15
   431D 0F                  927 	.db #0x0F	; 15
   431E 0F                  928 	.db #0x0F	; 15
   431F 8F                  929 	.db #0x8F	; 143
   4320 0F                  930 	.db #0x0F	; 15
   4321 4F                  931 	.db #0x4F	; 79	'O'
   4322 0F                  932 	.db #0x0F	; 15
   4323 1F                  933 	.db #0x1F	; 31
   4324 0F                  934 	.db #0x0F	; 15
   4325 0F                  935 	.db #0x0F	; 15
   4326 0F                  936 	.db #0x0F	; 15
   4327 0F                  937 	.db #0x0F	; 15
   4328 1F                  938 	.db #0x1F	; 31
   4329                     939 _station_medium_ns:
   4329 0F                  940 	.db #0x0F	; 15
   432A 1E                  941 	.db #0x1E	; 30
   432B 70                  942 	.db #0x70	; 112	'p'
   432C 0F                  943 	.db #0x0F	; 15
   432D 2F                  944 	.db #0x2F	; 47
   432E 1E                  945 	.db #0x1E	; 30
   432F 50                  946 	.db #0x50	; 80	'P'
   4330 0F                  947 	.db #0x0F	; 15
   4331 0F                  948 	.db #0x0F	; 15
   4332 1E                  949 	.db #0x1E	; 30
   4333 50                  950 	.db #0x50	; 80	'P'
   4334 2F                  951 	.db #0x2F	; 47
   4335 0F                  952 	.db #0x0F	; 15
   4336 1E                  953 	.db #0x1E	; 30
   4337 50                  954 	.db #0x50	; 80	'P'
   4338 0F                  955 	.db #0x0F	; 15
   4339 0F                  956 	.db #0x0F	; 15
   433A 1E                  957 	.db #0x1E	; 30
   433B 50                  958 	.db #0x50	; 80	'P'
   433C 0F                  959 	.db #0x0F	; 15
   433D 0E                  960 	.db #0x0E	; 14
   433E 16                  961 	.db #0x16	; 22
   433F 50                  962 	.db #0x50	; 80	'P'
   4340 0F                  963 	.db #0x0F	; 15
   4341 0E                  964 	.db #0x0E	; 14
   4342 D2                  965 	.db #0xD2	; 210
   4343 50                  966 	.db #0x50	; 80	'P'
   4344 2F                  967 	.db #0x2F	; 47
   4345 0E                  968 	.db #0x0E	; 14
   4346 D2                  969 	.db #0xD2	; 210
   4347 50                  970 	.db #0x50	; 80	'P'
   4348 0F                  971 	.db #0x0F	; 15
   4349 0E                  972 	.db #0x0E	; 14
   434A D2                  973 	.db #0xD2	; 210
   434B 50                  974 	.db #0x50	; 80	'P'
   434C 0F                  975 	.db #0x0F	; 15
   434D 0E                  976 	.db #0x0E	; 14
   434E D2                  977 	.db #0xD2	; 210
   434F 50                  978 	.db #0x50	; 80	'P'
   4350 0F                  979 	.db #0x0F	; 15
   4351 0F                  980 	.db #0x0F	; 15
   4352 D2                  981 	.db #0xD2	; 210
   4353 50                  982 	.db #0x50	; 80	'P'
   4354 1F                  983 	.db #0x1F	; 31
   4355 4F                  984 	.db #0x4F	; 79	'O'
   4356 1E                  985 	.db #0x1E	; 30
   4357 50                  986 	.db #0x50	; 80	'P'
   4358 0F                  987 	.db #0x0F	; 15
   4359 0F                  988 	.db #0x0F	; 15
   435A 1E                  989 	.db #0x1E	; 30
   435B 50                  990 	.db #0x50	; 80	'P'
   435C 0F                  991 	.db #0x0F	; 15
   435D 0F                  992 	.db #0x0F	; 15
   435E 1E                  993 	.db #0x1E	; 30
   435F 50                  994 	.db #0x50	; 80	'P'
   4360 0F                  995 	.db #0x0F	; 15
   4361 0F                  996 	.db #0x0F	; 15
   4362 9E                  997 	.db #0x9E	; 158
   4363 21                  998 	.db #0x21	; 33
   4364 0F                  999 	.db #0x0F	; 15
   4365 0F                 1000 	.db #0x0F	; 15
   4366 1E                 1001 	.db #0x1E	; 30
   4367 43                 1002 	.db #0x43	; 67	'C'
   4368 4F                 1003 	.db #0x4F	; 79	'O'
   4369                    1004 _station_medium_ew:
   4369 0F                 1005 	.db #0x0F	; 15
   436A 0F                 1006 	.db #0x0F	; 15
   436B 0F                 1007 	.db #0x0F	; 15
   436C 0F                 1008 	.db #0x0F	; 15
   436D 0F                 1009 	.db #0x0F	; 15
   436E 2F                 1010 	.db #0x2F	; 47
   436F 0F                 1011 	.db #0x0F	; 15
   4370 03                 1012 	.db #0x03	; 3
   4371 0F                 1013 	.db #0x0F	; 15
   4372 0F                 1014 	.db #0x0F	; 15
   4373 0E                 1015 	.db #0x0E	; 14
   4374 67                 1016 	.db #0x67	; 103	'g'
   4375 4F                 1017 	.db #0x4F	; 79	'O'
   4376 00                 1018 	.db #0x00	; 0
   4377 06                 1019 	.db #0x06	; 6
   4378 EF                 1020 	.db #0xEF	; 239
   4379 0F                 1021 	.db #0x0F	; 15
   437A 70                 1022 	.db #0x70	; 112	'p'
   437B C3                 1023 	.db #0xC3	; 195
   437C CF                 1024 	.db #0xCF	; 207
   437D 0F                 1025 	.db #0x0F	; 15
   437E 78                 1026 	.db #0x78	; 120	'x'
   437F C3                 1027 	.db #0xC3	; 195
   4380 0F                 1028 	.db #0x0F	; 15
   4381 0F                 1029 	.db #0x0F	; 15
   4382 0F                 1030 	.db #0x0F	; 15
   4383 0F                 1031 	.db #0x0F	; 15
   4384 0F                 1032 	.db #0x0F	; 15
   4385 F0                 1033 	.db #0xF0	; 240
   4386 F0                 1034 	.db #0xF0	; 240
   4387 F0                 1035 	.db #0xF0	; 240
   4388 F0                 1036 	.db #0xF0	; 240
   4389 00                 1037 	.db #0x00	; 0
   438A 00                 1038 	.db #0x00	; 0
   438B 00                 1039 	.db #0x00	; 0
   438C 00                 1040 	.db #0x00	; 0
   438D B0                 1041 	.db #0xB0	; 176
   438E F0                 1042 	.db #0xF0	; 240
   438F F0                 1043 	.db #0xF0	; 240
   4390 F0                 1044 	.db #0xF0	; 240
   4391 48                 1045 	.db #0x48	; 72	'H'
   4392 00                 1046 	.db #0x00	; 0
   4393 00                 1047 	.db #0x00	; 0
   4394 10                 1048 	.db #0x10	; 16
   4395 3C                 1049 	.db #0x3C	; 60
   4396 F0                 1050 	.db #0xF0	; 240
   4397 F0                 1051 	.db #0xF0	; 240
   4398 F0                 1052 	.db #0xF0	; 240
   4399 0F                 1053 	.db #0x0F	; 15
   439A 4F                 1054 	.db #0x4F	; 79	'O'
   439B 0F                 1055 	.db #0x0F	; 15
   439C 0F                 1056 	.db #0x0F	; 15
   439D 0F                 1057 	.db #0x0F	; 15
   439E 0F                 1058 	.db #0x0F	; 15
   439F 0F                 1059 	.db #0x0F	; 15
   43A0 0F                 1060 	.db #0x0F	; 15
   43A1 2F                 1061 	.db #0x2F	; 47
   43A2 0F                 1062 	.db #0x0F	; 15
   43A3 0F                 1063 	.db #0x0F	; 15
   43A4 4F                 1064 	.db #0x4F	; 79	'O'
   43A5 0F                 1065 	.db #0x0F	; 15
   43A6 0F                 1066 	.db #0x0F	; 15
   43A7 0F                 1067 	.db #0x0F	; 15
   43A8 0F                 1068 	.db #0x0F	; 15
   43A9                    1069 _station_large_ns:
   43A9 0F                 1070 	.db #0x0F	; 15
   43AA 1E                 1071 	.db #0x1E	; 30
   43AB 43                 1072 	.db #0x43	; 67	'C'
   43AC 4F                 1073 	.db #0x4F	; 79	'O'
   43AD 0E                 1074 	.db #0x0E	; 14
   43AE 16                 1075 	.db #0x16	; 22
   43AF 21                 1076 	.db #0x21	; 33
   43B0 0F                 1077 	.db #0x0F	; 15
   43B1 0E                 1078 	.db #0x0E	; 14
   43B2 D2                 1079 	.db #0xD2	; 210
   43B3 50                 1080 	.db #0x50	; 80	'P'
   43B4 0F                 1081 	.db #0x0F	; 15
   43B5 0E                 1082 	.db #0x0E	; 14
   43B6 D2                 1083 	.db #0xD2	; 210
   43B7 40                 1084 	.db #0x40	; 64
   43B8 87                 1085 	.db #0x87	; 135
   43B9 0E                 1086 	.db #0x0E	; 14
   43BA D2                 1087 	.db #0xD2	; 210
   43BB 50                 1088 	.db #0x50	; 80	'P'
   43BC 43                 1089 	.db #0x43	; 67	'C'
   43BD 0C                 1090 	.db #0x0C	; 12
   43BE D2                 1091 	.db #0xD2	; 210
   43BF 50                 1092 	.db #0x50	; 80	'P'
   43C0 21                 1093 	.db #0x21	; 33
   43C1 1C                 1094 	.db #0x1C	; 28
   43C2 D2                 1095 	.db #0xD2	; 210
   43C3 50                 1096 	.db #0x50	; 80	'P'
   43C4 50                 1097 	.db #0x50	; 80	'P'
   43C5 1C                 1098 	.db #0x1C	; 28
   43C6 D2                 1099 	.db #0xD2	; 210
   43C7 50                 1100 	.db #0x50	; 80	'P'
   43C8 50                 1101 	.db #0x50	; 80	'P'
   43C9 1C                 1102 	.db #0x1C	; 28
   43CA D2                 1103 	.db #0xD2	; 210
   43CB 50                 1104 	.db #0x50	; 80	'P'
   43CC 50                 1105 	.db #0x50	; 80	'P'
   43CD 1C                 1106 	.db #0x1C	; 28
   43CE D2                 1107 	.db #0xD2	; 210
   43CF 50                 1108 	.db #0x50	; 80	'P'
   43D0 50                 1109 	.db #0x50	; 80	'P'
   43D1 1C                 1110 	.db #0x1C	; 28
   43D2 D2                 1111 	.db #0xD2	; 210
   43D3 50                 1112 	.db #0x50	; 80	'P'
   43D4 50                 1113 	.db #0x50	; 80	'P'
   43D5 0E                 1114 	.db #0x0E	; 14
   43D6 D2                 1115 	.db #0xD2	; 210
   43D7 50                 1116 	.db #0x50	; 80	'P'
   43D8 50                 1117 	.db #0x50	; 80	'P'
   43D9 0E                 1118 	.db #0x0E	; 14
   43DA D2                 1119 	.db #0xD2	; 210
   43DB 50                 1120 	.db #0x50	; 80	'P'
   43DC 50                 1121 	.db #0x50	; 80	'P'
   43DD 4E                 1122 	.db #0x4E	; 78	'N'
   43DE D2                 1123 	.db #0xD2	; 210
   43DF 50                 1124 	.db #0x50	; 80	'P'
   43E0 50                 1125 	.db #0x50	; 80	'P'
   43E1 0F                 1126 	.db #0x0F	; 15
   43E2 D2                 1127 	.db #0xD2	; 210
   43E3 50                 1128 	.db #0x50	; 80	'P'
   43E4 50                 1129 	.db #0x50	; 80	'P'
   43E5 0F                 1130 	.db #0x0F	; 15
   43E6 1E                 1131 	.db #0x1E	; 30
   43E7 70                 1132 	.db #0x70	; 112	'p'
   43E8 F0                 1133 	.db #0xF0	; 240
   43E9                    1134 _station_large_ew:
   43E9 0F                 1135 	.db #0x0F	; 15
   43EA 0F                 1136 	.db #0x0F	; 15
   43EB 0F                 1137 	.db #0x0F	; 15
   43EC 0F                 1138 	.db #0x0F	; 15
   43ED 0F                 1139 	.db #0x0F	; 15
   43EE 0F                 1140 	.db #0x0F	; 15
   43EF 0F                 1141 	.db #0x0F	; 15
   43F0 0F                 1142 	.db #0x0F	; 15
   43F1 0F                 1143 	.db #0x0F	; 15
   43F2 08                 1144 	.db #0x08	; 8
   43F3 01                 1145 	.db #0x01	; 1
   43F4 0F                 1146 	.db #0x0F	; 15
   43F5 08                 1147 	.db #0x08	; 8
   43F6 30                 1148 	.db #0x30	; 48	'0'
   43F7 E0                 1149 	.db #0xE0	; 224
   43F8 01                 1150 	.db #0x01	; 1
   43F9 38                 1151 	.db #0x38	; 56	'8'
   43FA F0                 1152 	.db #0xF0	; 240
   43FB F0                 1153 	.db #0xF0	; 240
   43FC E1                 1154 	.db #0xE1	; 225
   43FD 3C                 1155 	.db #0x3C	; 60
   43FE F0                 1156 	.db #0xF0	; 240
   43FF F0                 1157 	.db #0xF0	; 240
   4400 E1                 1158 	.db #0xE1	; 225
   4401 0F                 1159 	.db #0x0F	; 15
   4402 0F                 1160 	.db #0x0F	; 15
   4403 0F                 1161 	.db #0x0F	; 15
   4404 0F                 1162 	.db #0x0F	; 15
   4405 F0                 1163 	.db #0xF0	; 240
   4406 F0                 1164 	.db #0xF0	; 240
   4407 F0                 1165 	.db #0xF0	; 240
   4408 F0                 1166 	.db #0xF0	; 240
   4409 00                 1167 	.db #0x00	; 0
   440A 00                 1168 	.db #0x00	; 0
   440B 00                 1169 	.db #0x00	; 0
   440C 00                 1170 	.db #0x00	; 0
   440D F0                 1171 	.db #0xF0	; 240
   440E F0                 1172 	.db #0xF0	; 240
   440F F0                 1173 	.db #0xF0	; 240
   4410 D0                 1174 	.db #0xD0	; 208
   4411 80                 1175 	.db #0x80	; 128
   4412 00                 1176 	.db #0x00	; 0
   4413 00                 1177 	.db #0x00	; 0
   4414 21                 1178 	.db #0x21	; 33
   4415 F0                 1179 	.db #0xF0	; 240
   4416 F0                 1180 	.db #0xF0	; 240
   4417 F0                 1181 	.db #0xF0	; 240
   4418 43                 1182 	.db #0x43	; 67	'C'
   4419 80                 1183 	.db #0x80	; 128
   441A 00                 1184 	.db #0x00	; 0
   441B 00                 1185 	.db #0x00	; 0
   441C 87                 1186 	.db #0x87	; 135
   441D F0                 1187 	.db #0xF0	; 240
   441E F0                 1188 	.db #0xF0	; 240
   441F D0                 1189 	.db #0xD0	; 208
   4420 0F                 1190 	.db #0x0F	; 15
   4421 80                 1191 	.db #0x80	; 128
   4422 00                 1192 	.db #0x00	; 0
   4423 21                 1193 	.db #0x21	; 33
   4424 0F                 1194 	.db #0x0F	; 15
   4425 F0                 1195 	.db #0xF0	; 240
   4426 F0                 1196 	.db #0xF0	; 240
   4427 C3                 1197 	.db #0xC3	; 195
   4428 0F                 1198 	.db #0x0F	; 15
   4429                    1199 _rail_ew:
   4429 0F                 1200 	.db #0x0F	; 15
   442A 0F                 1201 	.db #0x0F	; 15
   442B 0F                 1202 	.db #0x0F	; 15
   442C 0F                 1203 	.db #0x0F	; 15
   442D 2F                 1204 	.db #0x2F	; 47
   442E 0F                 1205 	.db #0x0F	; 15
   442F 2F                 1206 	.db #0x2F	; 47
   4430 2F                 1207 	.db #0x2F	; 47
   4431 0F                 1208 	.db #0x0F	; 15
   4432 0F                 1209 	.db #0x0F	; 15
   4433 0F                 1210 	.db #0x0F	; 15
   4434 0F                 1211 	.db #0x0F	; 15
   4435 0F                 1212 	.db #0x0F	; 15
   4436 0F                 1213 	.db #0x0F	; 15
   4437 0F                 1214 	.db #0x0F	; 15
   4438 0F                 1215 	.db #0x0F	; 15
   4439 0F                 1216 	.db #0x0F	; 15
   443A 2F                 1217 	.db #0x2F	; 47
   443B 0F                 1218 	.db #0x0F	; 15
   443C 0F                 1219 	.db #0x0F	; 15
   443D 4F                 1220 	.db #0x4F	; 79	'O'
   443E 0F                 1221 	.db #0x0F	; 15
   443F 0F                 1222 	.db #0x0F	; 15
   4440 4F                 1223 	.db #0x4F	; 79	'O'
   4441 0F                 1224 	.db #0x0F	; 15
   4442 0F                 1225 	.db #0x0F	; 15
   4443 0F                 1226 	.db #0x0F	; 15
   4444 0F                 1227 	.db #0x0F	; 15
   4445 F0                 1228 	.db #0xF0	; 240
   4446 F0                 1229 	.db #0xF0	; 240
   4447 F0                 1230 	.db #0xF0	; 240
   4448 F0                 1231 	.db #0xF0	; 240
   4449 00                 1232 	.db #0x00	; 0
   444A 00                 1233 	.db #0x00	; 0
   444B 00                 1234 	.db #0x00	; 0
   444C 00                 1235 	.db #0x00	; 0
   444D F0                 1236 	.db #0xF0	; 240
   444E F0                 1237 	.db #0xF0	; 240
   444F F0                 1238 	.db #0xF0	; 240
   4450 F0                 1239 	.db #0xF0	; 240
   4451 0F                 1240 	.db #0x0F	; 15
   4452 0F                 1241 	.db #0x0F	; 15
   4453 0F                 1242 	.db #0x0F	; 15
   4454 0F                 1243 	.db #0x0F	; 15
   4455 0F                 1244 	.db #0x0F	; 15
   4456 0F                 1245 	.db #0x0F	; 15
   4457 8F                 1246 	.db #0x8F	; 143
   4458 0F                 1247 	.db #0x0F	; 15
   4459 0F                 1248 	.db #0x0F	; 15
   445A 8F                 1249 	.db #0x8F	; 143
   445B 0F                 1250 	.db #0x0F	; 15
   445C 4F                 1251 	.db #0x4F	; 79	'O'
   445D 0F                 1252 	.db #0x0F	; 15
   445E 0F                 1253 	.db #0x0F	; 15
   445F 0F                 1254 	.db #0x0F	; 15
   4460 0F                 1255 	.db #0x0F	; 15
   4461 0F                 1256 	.db #0x0F	; 15
   4462 0F                 1257 	.db #0x0F	; 15
   4463 0F                 1258 	.db #0x0F	; 15
   4464 0F                 1259 	.db #0x0F	; 15
   4465 2F                 1260 	.db #0x2F	; 47
   4466 0F                 1261 	.db #0x0F	; 15
   4467 2F                 1262 	.db #0x2F	; 47
   4468 0F                 1263 	.db #0x0F	; 15
   4469                    1264 _rail_ns:
   4469 0F                 1265 	.db #0x0F	; 15
   446A 1E                 1266 	.db #0x1E	; 30
   446B 43                 1267 	.db #0x43	; 67	'C'
   446C 0F                 1268 	.db #0x0F	; 15
   446D 0F                 1269 	.db #0x0F	; 15
   446E 9E                 1270 	.db #0x9E	; 158
   446F 43                 1271 	.db #0x43	; 67	'C'
   4470 8F                 1272 	.db #0x8F	; 143
   4471 0F                 1273 	.db #0x0F	; 15
   4472 1E                 1274 	.db #0x1E	; 30
   4473 43                 1275 	.db #0x43	; 67	'C'
   4474 0F                 1276 	.db #0x0F	; 15
   4475 0F                 1277 	.db #0x0F	; 15
   4476 1E                 1278 	.db #0x1E	; 30
   4477 43                 1279 	.db #0x43	; 67	'C'
   4478 0F                 1280 	.db #0x0F	; 15
   4479 0F                 1281 	.db #0x0F	; 15
   447A 1E                 1282 	.db #0x1E	; 30
   447B 43                 1283 	.db #0x43	; 67	'C'
   447C 0F                 1284 	.db #0x0F	; 15
   447D 0F                 1285 	.db #0x0F	; 15
   447E 1E                 1286 	.db #0x1E	; 30
   447F 43                 1287 	.db #0x43	; 67	'C'
   4480 2F                 1288 	.db #0x2F	; 47
   4481 0F                 1289 	.db #0x0F	; 15
   4482 1E                 1290 	.db #0x1E	; 30
   4483 43                 1291 	.db #0x43	; 67	'C'
   4484 0F                 1292 	.db #0x0F	; 15
   4485 2F                 1293 	.db #0x2F	; 47
   4486 1E                 1294 	.db #0x1E	; 30
   4487 43                 1295 	.db #0x43	; 67	'C'
   4488 0F                 1296 	.db #0x0F	; 15
   4489 0F                 1297 	.db #0x0F	; 15
   448A 1E                 1298 	.db #0x1E	; 30
   448B 43                 1299 	.db #0x43	; 67	'C'
   448C 0F                 1300 	.db #0x0F	; 15
   448D 0F                 1301 	.db #0x0F	; 15
   448E 1E                 1302 	.db #0x1E	; 30
   448F 43                 1303 	.db #0x43	; 67	'C'
   4490 0F                 1304 	.db #0x0F	; 15
   4491 0F                 1305 	.db #0x0F	; 15
   4492 1E                 1306 	.db #0x1E	; 30
   4493 43                 1307 	.db #0x43	; 67	'C'
   4494 0F                 1308 	.db #0x0F	; 15
   4495 0F                 1309 	.db #0x0F	; 15
   4496 1E                 1310 	.db #0x1E	; 30
   4497 53                 1311 	.db #0x53	; 83	'S'
   4498 0F                 1312 	.db #0x0F	; 15
   4499 0F                 1313 	.db #0x0F	; 15
   449A 9E                 1314 	.db #0x9E	; 158
   449B 43                 1315 	.db #0x43	; 67	'C'
   449C 0F                 1316 	.db #0x0F	; 15
   449D 4F                 1317 	.db #0x4F	; 79	'O'
   449E 1E                 1318 	.db #0x1E	; 30
   449F 43                 1319 	.db #0x43	; 67	'C'
   44A0 0F                 1320 	.db #0x0F	; 15
   44A1 0F                 1321 	.db #0x0F	; 15
   44A2 1E                 1322 	.db #0x1E	; 30
   44A3 43                 1323 	.db #0x43	; 67	'C'
   44A4 4F                 1324 	.db #0x4F	; 79	'O'
   44A5 0F                 1325 	.db #0x0F	; 15
   44A6 1E                 1326 	.db #0x1E	; 30
   44A7 43                 1327 	.db #0x43	; 67	'C'
   44A8 0F                 1328 	.db #0x0F	; 15
   44A9                    1329 _rail_en:
   44A9 0F                 1330 	.db #0x0F	; 15
   44AA 1E                 1331 	.db #0x1E	; 30
   44AB 43                 1332 	.db #0x43	; 67	'C'
   44AC 0F                 1333 	.db #0x0F	; 15
   44AD 2F                 1334 	.db #0x2F	; 47
   44AE 1E                 1335 	.db #0x1E	; 30
   44AF 43                 1336 	.db #0x43	; 67	'C'
   44B0 8F                 1337 	.db #0x8F	; 143
   44B1 0F                 1338 	.db #0x0F	; 15
   44B2 0F                 1339 	.db #0x0F	; 15
   44B3 A1                 1340 	.db #0xA1	; 161
   44B4 0F                 1341 	.db #0x0F	; 15
   44B5 0F                 1342 	.db #0x0F	; 15
   44B6 0F                 1343 	.db #0x0F	; 15
   44B7 58                 1344 	.db #0x58	; 88	'X'
   44B8 0F                 1345 	.db #0x0F	; 15
   44B9 0F                 1346 	.db #0x0F	; 15
   44BA 4F                 1347 	.db #0x4F	; 79	'O'
   44BB 2C                 1348 	.db #0x2C	; 44
   44BC 87                 1349 	.db #0x87	; 135
   44BD 0F                 1350 	.db #0x0F	; 15
   44BE 0F                 1351 	.db #0x0F	; 15
   44BF 1E                 1352 	.db #0x1E	; 30
   44C0 43                 1353 	.db #0x43	; 67	'C'
   44C1 0F                 1354 	.db #0x0F	; 15
   44C2 0F                 1355 	.db #0x0F	; 15
   44C3 8F                 1356 	.db #0x8F	; 143
   44C4 A1                 1357 	.db #0xA1	; 161
   44C5 0F                 1358 	.db #0x0F	; 15
   44C6 0F                 1359 	.db #0x0F	; 15
   44C7 0F                 1360 	.db #0x0F	; 15
   44C8 58                 1361 	.db #0x58	; 88	'X'
   44C9 2F                 1362 	.db #0x2F	; 47
   44CA 0F                 1363 	.db #0x0F	; 15
   44CB 0F                 1364 	.db #0x0F	; 15
   44CC 2C                 1365 	.db #0x2C	; 44
   44CD 0F                 1366 	.db #0x0F	; 15
   44CE 0F                 1367 	.db #0x0F	; 15
   44CF 0F                 1368 	.db #0x0F	; 15
   44D0 1E                 1369 	.db #0x1E	; 30
   44D1 0F                 1370 	.db #0x0F	; 15
   44D2 0F                 1371 	.db #0x0F	; 15
   44D3 0F                 1372 	.db #0x0F	; 15
   44D4 4F                 1373 	.db #0x4F	; 79	'O'
   44D5 0F                 1374 	.db #0x0F	; 15
   44D6 0F                 1375 	.db #0x0F	; 15
   44D7 0F                 1376 	.db #0x0F	; 15
   44D8 0F                 1377 	.db #0x0F	; 15
   44D9 2F                 1378 	.db #0x2F	; 47
   44DA 4F                 1379 	.db #0x4F	; 79	'O'
   44DB 2F                 1380 	.db #0x2F	; 47
   44DC 0F                 1381 	.db #0x0F	; 15
   44DD 0F                 1382 	.db #0x0F	; 15
   44DE 0F                 1383 	.db #0x0F	; 15
   44DF 0F                 1384 	.db #0x0F	; 15
   44E0 0F                 1385 	.db #0x0F	; 15
   44E1 0F                 1386 	.db #0x0F	; 15
   44E2 0F                 1387 	.db #0x0F	; 15
   44E3 0F                 1388 	.db #0x0F	; 15
   44E4 2F                 1389 	.db #0x2F	; 47
   44E5 0F                 1390 	.db #0x0F	; 15
   44E6 0F                 1391 	.db #0x0F	; 15
   44E7 0F                 1392 	.db #0x0F	; 15
   44E8 0F                 1393 	.db #0x0F	; 15
   44E9                    1394 _rail_es:
   44E9 0F                 1395 	.db #0x0F	; 15
   44EA 0F                 1396 	.db #0x0F	; 15
   44EB 0F                 1397 	.db #0x0F	; 15
   44EC 0F                 1398 	.db #0x0F	; 15
   44ED 0F                 1399 	.db #0x0F	; 15
   44EE 0F                 1400 	.db #0x0F	; 15
   44EF 0F                 1401 	.db #0x0F	; 15
   44F0 2F                 1402 	.db #0x2F	; 47
   44F1 0F                 1403 	.db #0x0F	; 15
   44F2 2F                 1404 	.db #0x2F	; 47
   44F3 0F                 1405 	.db #0x0F	; 15
   44F4 0F                 1406 	.db #0x0F	; 15
   44F5 1F                 1407 	.db #0x1F	; 31
   44F6 0F                 1408 	.db #0x0F	; 15
   44F7 0F                 1409 	.db #0x0F	; 15
   44F8 0F                 1410 	.db #0x0F	; 15
   44F9 0F                 1411 	.db #0x0F	; 15
   44FA 0F                 1412 	.db #0x0F	; 15
   44FB 0F                 1413 	.db #0x0F	; 15
   44FC 0F                 1414 	.db #0x0F	; 15
   44FD 0F                 1415 	.db #0x0F	; 15
   44FE 0F                 1416 	.db #0x0F	; 15
   44FF 1F                 1417 	.db #0x1F	; 31
   4500 0F                 1418 	.db #0x0F	; 15
   4501 0F                 1419 	.db #0x0F	; 15
   4502 0F                 1420 	.db #0x0F	; 15
   4503 0F                 1421 	.db #0x0F	; 15
   4504 0F                 1422 	.db #0x0F	; 15
   4505 4F                 1423 	.db #0x4F	; 79	'O'
   4506 0F                 1424 	.db #0x0F	; 15
   4507 0F                 1425 	.db #0x0F	; 15
   4508 3C                 1426 	.db #0x3C	; 60
   4509 0F                 1427 	.db #0x0F	; 15
   450A 4F                 1428 	.db #0x4F	; 79	'O'
   450B 0F                 1429 	.db #0x0F	; 15
   450C 48                 1430 	.db #0x48	; 72	'H'
   450D 0F                 1431 	.db #0x0F	; 15
   450E 0F                 1432 	.db #0x0F	; 15
   450F 4F                 1433 	.db #0x4F	; 79	'O'
   4510 B0                 1434 	.db #0xB0	; 176
   4511 0F                 1435 	.db #0x0F	; 15
   4512 0F                 1436 	.db #0x0F	; 15
   4513 1E                 1437 	.db #0x1E	; 30
   4514 43                 1438 	.db #0x43	; 67	'C'
   4515 0F                 1439 	.db #0x0F	; 15
   4516 0F                 1440 	.db #0x0F	; 15
   4517 2C                 1441 	.db #0x2C	; 44
   4518 87                 1442 	.db #0x87	; 135
   4519 0F                 1443 	.db #0x0F	; 15
   451A 0F                 1444 	.db #0x0F	; 15
   451B 58                 1445 	.db #0x58	; 88	'X'
   451C 0F                 1446 	.db #0x0F	; 15
   451D 0F                 1447 	.db #0x0F	; 15
   451E 8F                 1448 	.db #0x8F	; 143
   451F A1                 1449 	.db #0xA1	; 161
   4520 0F                 1450 	.db #0x0F	; 15
   4521 0F                 1451 	.db #0x0F	; 15
   4522 1E                 1452 	.db #0x1E	; 30
   4523 43                 1453 	.db #0x43	; 67	'C'
   4524 8F                 1454 	.db #0x8F	; 143
   4525 0F                 1455 	.db #0x0F	; 15
   4526 1E                 1456 	.db #0x1E	; 30
   4527 43                 1457 	.db #0x43	; 67	'C'
   4528 0F                 1458 	.db #0x0F	; 15
   4529                    1459 _rail_wn:
   4529 0F                 1460 	.db #0x0F	; 15
   452A 1E                 1461 	.db #0x1E	; 30
   452B 43                 1462 	.db #0x43	; 67	'C'
   452C 0F                 1463 	.db #0x0F	; 15
   452D 0F                 1464 	.db #0x0F	; 15
   452E 1E                 1465 	.db #0x1E	; 30
   452F 53                 1466 	.db #0x53	; 83	'S'
   4530 0F                 1467 	.db #0x0F	; 15
   4531 0F                 1468 	.db #0x0F	; 15
   4532 2C                 1469 	.db #0x2C	; 44
   4533 87                 1470 	.db #0x87	; 135
   4534 0F                 1471 	.db #0x0F	; 15
   4535 2F                 1472 	.db #0x2F	; 47
   4536 58                 1473 	.db #0x58	; 88	'X'
   4537 0F                 1474 	.db #0x0F	; 15
   4538 0F                 1475 	.db #0x0F	; 15
   4539 0F                 1476 	.db #0x0F	; 15
   453A A1                 1477 	.db #0xA1	; 161
   453B 0F                 1478 	.db #0x0F	; 15
   453C 0F                 1479 	.db #0x0F	; 15
   453D 1E                 1480 	.db #0x1E	; 30
   453E 43                 1481 	.db #0x43	; 67	'C'
   453F 0F                 1482 	.db #0x0F	; 15
   4540 8F                 1483 	.db #0x8F	; 143
   4541 2C                 1484 	.db #0x2C	; 44
   4542 87                 1485 	.db #0x87	; 135
   4543 0F                 1486 	.db #0x0F	; 15
   4544 0F                 1487 	.db #0x0F	; 15
   4545 D0                 1488 	.db #0xD0	; 208
   4546 1F                 1489 	.db #0x1F	; 31
   4547 0F                 1490 	.db #0x0F	; 15
   4548 0F                 1491 	.db #0x0F	; 15
   4549 21                 1492 	.db #0x21	; 33
   454A 0F                 1493 	.db #0x0F	; 15
   454B 0F                 1494 	.db #0x0F	; 15
   454C 0F                 1495 	.db #0x0F	; 15
   454D C3                 1496 	.db #0xC3	; 195
   454E 0F                 1497 	.db #0x0F	; 15
   454F 0F                 1498 	.db #0x0F	; 15
   4550 0F                 1499 	.db #0x0F	; 15
   4551 0F                 1500 	.db #0x0F	; 15
   4552 0F                 1501 	.db #0x0F	; 15
   4553 0F                 1502 	.db #0x0F	; 15
   4554 0F                 1503 	.db #0x0F	; 15
   4555 1F                 1504 	.db #0x1F	; 31
   4556 0F                 1505 	.db #0x0F	; 15
   4557 4F                 1506 	.db #0x4F	; 79	'O'
   4558 4F                 1507 	.db #0x4F	; 79	'O'
   4559 0F                 1508 	.db #0x0F	; 15
   455A 0F                 1509 	.db #0x0F	; 15
   455B 0F                 1510 	.db #0x0F	; 15
   455C 0F                 1511 	.db #0x0F	; 15
   455D 0F                 1512 	.db #0x0F	; 15
   455E 1F                 1513 	.db #0x1F	; 31
   455F 0F                 1514 	.db #0x0F	; 15
   4560 0F                 1515 	.db #0x0F	; 15
   4561 2F                 1516 	.db #0x2F	; 47
   4562 0F                 1517 	.db #0x0F	; 15
   4563 0F                 1518 	.db #0x0F	; 15
   4564 0F                 1519 	.db #0x0F	; 15
   4565 0F                 1520 	.db #0x0F	; 15
   4566 0F                 1521 	.db #0x0F	; 15
   4567 0F                 1522 	.db #0x0F	; 15
   4568 0F                 1523 	.db #0x0F	; 15
   4569                    1524 _rail_ws:
   4569 0F                 1525 	.db #0x0F	; 15
   456A 0F                 1526 	.db #0x0F	; 15
   456B 0F                 1527 	.db #0x0F	; 15
   456C 0F                 1528 	.db #0x0F	; 15
   456D 0F                 1529 	.db #0x0F	; 15
   456E 0F                 1530 	.db #0x0F	; 15
   456F 0F                 1531 	.db #0x0F	; 15
   4570 0F                 1532 	.db #0x0F	; 15
   4571 2F                 1533 	.db #0x2F	; 47
   4572 0F                 1534 	.db #0x0F	; 15
   4573 4F                 1535 	.db #0x4F	; 79	'O'
   4574 2F                 1536 	.db #0x2F	; 47
   4575 0F                 1537 	.db #0x0F	; 15
   4576 0F                 1538 	.db #0x0F	; 15
   4577 0F                 1539 	.db #0x0F	; 15
   4578 0F                 1540 	.db #0x0F	; 15
   4579 0F                 1541 	.db #0x0F	; 15
   457A 0F                 1542 	.db #0x0F	; 15
   457B 0F                 1543 	.db #0x0F	; 15
   457C 0F                 1544 	.db #0x0F	; 15
   457D 0F                 1545 	.db #0x0F	; 15
   457E 0F                 1546 	.db #0x0F	; 15
   457F 0F                 1547 	.db #0x0F	; 15
   4580 0F                 1548 	.db #0x0F	; 15
   4581 0F                 1549 	.db #0x0F	; 15
   4582 2F                 1550 	.db #0x2F	; 47
   4583 0F                 1551 	.db #0x0F	; 15
   4584 0F                 1552 	.db #0x0F	; 15
   4585 C3                 1553 	.db #0xC3	; 195
   4586 0F                 1554 	.db #0x0F	; 15
   4587 0F                 1555 	.db #0x0F	; 15
   4588 0F                 1556 	.db #0x0F	; 15
   4589 21                 1557 	.db #0x21	; 33
   458A 0F                 1558 	.db #0x0F	; 15
   458B 2F                 1559 	.db #0x2F	; 47
   458C 0F                 1560 	.db #0x0F	; 15
   458D D0                 1561 	.db #0xD0	; 208
   458E 0F                 1562 	.db #0x0F	; 15
   458F 0F                 1563 	.db #0x0F	; 15
   4590 0F                 1564 	.db #0x0F	; 15
   4591 2C                 1565 	.db #0x2C	; 44
   4592 87                 1566 	.db #0x87	; 135
   4593 0F                 1567 	.db #0x0F	; 15
   4594 0F                 1568 	.db #0x0F	; 15
   4595 1E                 1569 	.db #0x1E	; 30
   4596 43                 1570 	.db #0x43	; 67	'C'
   4597 0F                 1571 	.db #0x0F	; 15
   4598 2F                 1572 	.db #0x2F	; 47
   4599 4F                 1573 	.db #0x4F	; 79	'O'
   459A A1                 1574 	.db #0xA1	; 161
   459B 0F                 1575 	.db #0x0F	; 15
   459C 0F                 1576 	.db #0x0F	; 15
   459D 0F                 1577 	.db #0x0F	; 15
   459E 58                 1578 	.db #0x58	; 88	'X'
   459F 4F                 1579 	.db #0x4F	; 79	'O'
   45A0 0F                 1580 	.db #0x0F	; 15
   45A1 0F                 1581 	.db #0x0F	; 15
   45A2 2C                 1582 	.db #0x2C	; 44
   45A3 87                 1583 	.db #0x87	; 135
   45A4 4F                 1584 	.db #0x4F	; 79	'O'
   45A5 0F                 1585 	.db #0x0F	; 15
   45A6 1E                 1586 	.db #0x1E	; 30
   45A7 43                 1587 	.db #0x43	; 67	'C'
   45A8 0F                 1588 	.db #0x0F	; 15
   45A9                    1589 _rail_ew_n:
   45A9 0F                 1590 	.db #0x0F	; 15
   45AA 1E                 1591 	.db #0x1E	; 30
   45AB 43                 1592 	.db #0x43	; 67	'C'
   45AC 0F                 1593 	.db #0x0F	; 15
   45AD 0F                 1594 	.db #0x0F	; 15
   45AE 9E                 1595 	.db #0x9E	; 158
   45AF 43                 1596 	.db #0x43	; 67	'C'
   45B0 0F                 1597 	.db #0x0F	; 15
   45B1 0F                 1598 	.db #0x0F	; 15
   45B2 1E                 1599 	.db #0x1E	; 30
   45B3 53                 1600 	.db #0x53	; 83	'S'
   45B4 0F                 1601 	.db #0x0F	; 15
   45B5 0F                 1602 	.db #0x0F	; 15
   45B6 2C                 1603 	.db #0x2C	; 44
   45B7 87                 1604 	.db #0x87	; 135
   45B8 0F                 1605 	.db #0x0F	; 15
   45B9 4F                 1606 	.db #0x4F	; 79	'O'
   45BA 58                 1607 	.db #0x58	; 88	'X'
   45BB 0F                 1608 	.db #0x0F	; 15
   45BC 0F                 1609 	.db #0x0F	; 15
   45BD 0F                 1610 	.db #0x0F	; 15
   45BE A1                 1611 	.db #0xA1	; 161
   45BF 0F                 1612 	.db #0x0F	; 15
   45C0 8F                 1613 	.db #0x8F	; 143
   45C1 1E                 1614 	.db #0x1E	; 30
   45C2 43                 1615 	.db #0x43	; 67	'C'
   45C3 0F                 1616 	.db #0x0F	; 15
   45C4 0F                 1617 	.db #0x0F	; 15
   45C5 E0                 1618 	.db #0xE0	; 224
   45C6 F0                 1619 	.db #0xF0	; 240
   45C7 F0                 1620 	.db #0xF0	; 240
   45C8 F0                 1621 	.db #0xF0	; 240
   45C9 00                 1622 	.db #0x00	; 0
   45CA 00                 1623 	.db #0x00	; 0
   45CB 00                 1624 	.db #0x00	; 0
   45CC 00                 1625 	.db #0x00	; 0
   45CD F0                 1626 	.db #0xF0	; 240
   45CE F0                 1627 	.db #0xF0	; 240
   45CF F0                 1628 	.db #0xF0	; 240
   45D0 F0                 1629 	.db #0xF0	; 240
   45D1 0F                 1630 	.db #0x0F	; 15
   45D2 0F                 1631 	.db #0x0F	; 15
   45D3 0F                 1632 	.db #0x0F	; 15
   45D4 0F                 1633 	.db #0x0F	; 15
   45D5 2F                 1634 	.db #0x2F	; 47
   45D6 1F                 1635 	.db #0x1F	; 31
   45D7 0F                 1636 	.db #0x0F	; 15
   45D8 4F                 1637 	.db #0x4F	; 79	'O'
   45D9 0F                 1638 	.db #0x0F	; 15
   45DA 0F                 1639 	.db #0x0F	; 15
   45DB 0F                 1640 	.db #0x0F	; 15
   45DC 0F                 1641 	.db #0x0F	; 15
   45DD 0F                 1642 	.db #0x0F	; 15
   45DE 0F                 1643 	.db #0x0F	; 15
   45DF 0F                 1644 	.db #0x0F	; 15
   45E0 0F                 1645 	.db #0x0F	; 15
   45E1 0F                 1646 	.db #0x0F	; 15
   45E2 8F                 1647 	.db #0x8F	; 143
   45E3 4F                 1648 	.db #0x4F	; 79	'O'
   45E4 0F                 1649 	.db #0x0F	; 15
   45E5 0F                 1650 	.db #0x0F	; 15
   45E6 0F                 1651 	.db #0x0F	; 15
   45E7 0F                 1652 	.db #0x0F	; 15
   45E8 0F                 1653 	.db #0x0F	; 15
   45E9                    1654 _rail_ew_s:
   45E9 0F                 1655 	.db #0x0F	; 15
   45EA 0F                 1656 	.db #0x0F	; 15
   45EB 0F                 1657 	.db #0x0F	; 15
   45EC 0F                 1658 	.db #0x0F	; 15
   45ED 0F                 1659 	.db #0x0F	; 15
   45EE 0F                 1660 	.db #0x0F	; 15
   45EF 0F                 1661 	.db #0x0F	; 15
   45F0 8F                 1662 	.db #0x8F	; 143
   45F1 0F                 1663 	.db #0x0F	; 15
   45F2 4F                 1664 	.db #0x4F	; 79	'O'
   45F3 0F                 1665 	.db #0x0F	; 15
   45F4 0F                 1666 	.db #0x0F	; 15
   45F5 0F                 1667 	.db #0x0F	; 15
   45F6 0F                 1668 	.db #0x0F	; 15
   45F7 0F                 1669 	.db #0x0F	; 15
   45F8 0F                 1670 	.db #0x0F	; 15
   45F9 0F                 1671 	.db #0x0F	; 15
   45FA 0F                 1672 	.db #0x0F	; 15
   45FB 4F                 1673 	.db #0x4F	; 79	'O'
   45FC 0F                 1674 	.db #0x0F	; 15
   45FD 4F                 1675 	.db #0x4F	; 79	'O'
   45FE 0F                 1676 	.db #0x0F	; 15
   45FF 0F                 1677 	.db #0x0F	; 15
   4600 2F                 1678 	.db #0x2F	; 47
   4601 0F                 1679 	.db #0x0F	; 15
   4602 0F                 1680 	.db #0x0F	; 15
   4603 0F                 1681 	.db #0x0F	; 15
   4604 0F                 1682 	.db #0x0F	; 15
   4605 F0                 1683 	.db #0xF0	; 240
   4606 F0                 1684 	.db #0xF0	; 240
   4607 F0                 1685 	.db #0xF0	; 240
   4608 F0                 1686 	.db #0xF0	; 240
   4609 00                 1687 	.db #0x00	; 0
   460A 00                 1688 	.db #0x00	; 0
   460B 00                 1689 	.db #0x00	; 0
   460C 00                 1690 	.db #0x00	; 0
   460D E0                 1691 	.db #0xE0	; 224
   460E F0                 1692 	.db #0xF0	; 240
   460F F0                 1693 	.db #0xF0	; 240
   4610 F0                 1694 	.db #0xF0	; 240
   4611 1E                 1695 	.db #0x1E	; 30
   4612 43                 1696 	.db #0x43	; 67	'C'
   4613 0F                 1697 	.db #0x0F	; 15
   4614 0F                 1698 	.db #0x0F	; 15
   4615 0F                 1699 	.db #0x0F	; 15
   4616 A1                 1700 	.db #0xA1	; 161
   4617 4F                 1701 	.db #0x4F	; 79	'O'
   4618 0F                 1702 	.db #0x0F	; 15
   4619 0F                 1703 	.db #0x0F	; 15
   461A 58                 1704 	.db #0x58	; 88	'X'
   461B 0F                 1705 	.db #0x0F	; 15
   461C 0F                 1706 	.db #0x0F	; 15
   461D 0F                 1707 	.db #0x0F	; 15
   461E 2C                 1708 	.db #0x2C	; 44
   461F 87                 1709 	.db #0x87	; 135
   4620 8F                 1710 	.db #0x8F	; 143
   4621 4F                 1711 	.db #0x4F	; 79	'O'
   4622 1E                 1712 	.db #0x1E	; 30
   4623 43                 1713 	.db #0x43	; 67	'C'
   4624 0F                 1714 	.db #0x0F	; 15
   4625 0F                 1715 	.db #0x0F	; 15
   4626 1E                 1716 	.db #0x1E	; 30
   4627 43                 1717 	.db #0x43	; 67	'C'
   4628 0F                 1718 	.db #0x0F	; 15
   4629                    1719 _rail_ns_w:
   4629 0F                 1720 	.db #0x0F	; 15
   462A 1E                 1721 	.db #0x1E	; 30
   462B 43                 1722 	.db #0x43	; 67	'C'
   462C 0F                 1723 	.db #0x0F	; 15
   462D 4F                 1724 	.db #0x4F	; 79	'O'
   462E 1E                 1725 	.db #0x1E	; 30
   462F 43                 1726 	.db #0x43	; 67	'C'
   4630 2F                 1727 	.db #0x2F	; 47
   4631 0F                 1728 	.db #0x0F	; 15
   4632 1E                 1729 	.db #0x1E	; 30
   4633 43                 1730 	.db #0x43	; 67	'C'
   4634 0F                 1731 	.db #0x0F	; 15
   4635 0F                 1732 	.db #0x0F	; 15
   4636 1E                 1733 	.db #0x1E	; 30
   4637 43                 1734 	.db #0x43	; 67	'C'
   4638 0F                 1735 	.db #0x0F	; 15
   4639 0F                 1736 	.db #0x0F	; 15
   463A 5E                 1737 	.db #0x5E	; 94
   463B 43                 1738 	.db #0x43	; 67	'C'
   463C 0F                 1739 	.db #0x0F	; 15
   463D 0F                 1740 	.db #0x0F	; 15
   463E 1E                 1741 	.db #0x1E	; 30
   463F 43                 1742 	.db #0x43	; 67	'C'
   4640 0F                 1743 	.db #0x0F	; 15
   4641 0F                 1744 	.db #0x0F	; 15
   4642 1E                 1745 	.db #0x1E	; 30
   4643 43                 1746 	.db #0x43	; 67	'C'
   4644 0F                 1747 	.db #0x0F	; 15
   4645 E1                 1748 	.db #0xE1	; 225
   4646 1E                 1749 	.db #0x1E	; 30
   4647 43                 1750 	.db #0x43	; 67	'C'
   4648 4F                 1751 	.db #0x4F	; 79	'O'
   4649 10                 1752 	.db #0x10	; 16
   464A 1E                 1753 	.db #0x1E	; 30
   464B 43                 1754 	.db #0x43	; 67	'C'
   464C 0F                 1755 	.db #0x0F	; 15
   464D E0                 1756 	.db #0xE0	; 224
   464E 96                 1757 	.db #0x96	; 150
   464F 43                 1758 	.db #0x43	; 67	'C'
   4650 0F                 1759 	.db #0x0F	; 15
   4651 1E                 1760 	.db #0x1E	; 30
   4652 52                 1761 	.db #0x52	; 82	'R'
   4653 43                 1762 	.db #0x43	; 67	'C'
   4654 0F                 1763 	.db #0x0F	; 15
   4655 0F                 1764 	.db #0x0F	; 15
   4656 B0                 1765 	.db #0xB0	; 176
   4657 53                 1766 	.db #0x53	; 83	'S'
   4658 0F                 1767 	.db #0x0F	; 15
   4659 0F                 1768 	.db #0x0F	; 15
   465A 58                 1769 	.db #0x58	; 88	'X'
   465B 43                 1770 	.db #0x43	; 67	'C'
   465C 0F                 1771 	.db #0x0F	; 15
   465D 2F                 1772 	.db #0x2F	; 47
   465E 2C                 1773 	.db #0x2C	; 44
   465F 43                 1774 	.db #0x43	; 67	'C'
   4660 0F                 1775 	.db #0x0F	; 15
   4661 0F                 1776 	.db #0x0F	; 15
   4662 1E                 1777 	.db #0x1E	; 30
   4663 43                 1778 	.db #0x43	; 67	'C'
   4664 2F                 1779 	.db #0x2F	; 47
   4665 0F                 1780 	.db #0x0F	; 15
   4666 1E                 1781 	.db #0x1E	; 30
   4667 43                 1782 	.db #0x43	; 67	'C'
   4668 0F                 1783 	.db #0x0F	; 15
   4669                    1784 _rail_ns_e:
   4669 0F                 1785 	.db #0x0F	; 15
   466A 1E                 1786 	.db #0x1E	; 30
   466B 43                 1787 	.db #0x43	; 67	'C'
   466C 0F                 1788 	.db #0x0F	; 15
   466D 0F                 1789 	.db #0x0F	; 15
   466E 1E                 1790 	.db #0x1E	; 30
   466F 43                 1791 	.db #0x43	; 67	'C'
   4670 2F                 1792 	.db #0x2F	; 47
   4671 0F                 1793 	.db #0x0F	; 15
   4672 9E                 1794 	.db #0x9E	; 158
   4673 43                 1795 	.db #0x43	; 67	'C'
   4674 0F                 1796 	.db #0x0F	; 15
   4675 0F                 1797 	.db #0x0F	; 15
   4676 1E                 1798 	.db #0x1E	; 30
   4677 43                 1799 	.db #0x43	; 67	'C'
   4678 0F                 1800 	.db #0x0F	; 15
   4679 0F                 1801 	.db #0x0F	; 15
   467A 1E                 1802 	.db #0x1E	; 30
   467B 43                 1803 	.db #0x43	; 67	'C'
   467C 8F                 1804 	.db #0x8F	; 143
   467D 0F                 1805 	.db #0x0F	; 15
   467E 1E                 1806 	.db #0x1E	; 30
   467F 43                 1807 	.db #0x43	; 67	'C'
   4680 0F                 1808 	.db #0x0F	; 15
   4681 0F                 1809 	.db #0x0F	; 15
   4682 5E                 1810 	.db #0x5E	; 94
   4683 43                 1811 	.db #0x43	; 67	'C'
   4684 0F                 1812 	.db #0x0F	; 15
   4685 4F                 1813 	.db #0x4F	; 79	'O'
   4686 1E                 1814 	.db #0x1E	; 30
   4687 43                 1815 	.db #0x43	; 67	'C'
   4688 3C                 1816 	.db #0x3C	; 60
   4689 0F                 1817 	.db #0x0F	; 15
   468A 1E                 1818 	.db #0x1E	; 30
   468B 43                 1819 	.db #0x43	; 67	'C'
   468C 48                 1820 	.db #0x48	; 72	'H'
   468D 0F                 1821 	.db #0x0F	; 15
   468E 1E                 1822 	.db #0x1E	; 30
   468F 43                 1823 	.db #0x43	; 67	'C'
   4690 B0                 1824 	.db #0xB0	; 176
   4691 0F                 1825 	.db #0x0F	; 15
   4692 1E                 1826 	.db #0x1E	; 30
   4693 52                 1827 	.db #0x52	; 82	'R'
   4694 43                 1828 	.db #0x43	; 67	'C'
   4695 0F                 1829 	.db #0x0F	; 15
   4696 5E                 1830 	.db #0x5E	; 94
   4697 60                 1831 	.db #0x60	; 96
   4698 87                 1832 	.db #0x87	; 135
   4699 0F                 1833 	.db #0x0F	; 15
   469A 1E                 1834 	.db #0x1E	; 30
   469B 50                 1835 	.db #0x50	; 80	'P'
   469C 0F                 1836 	.db #0x0F	; 15
   469D 0F                 1837 	.db #0x0F	; 15
   469E 1E                 1838 	.db #0x1E	; 30
   469F 21                 1839 	.db #0x21	; 33
   46A0 0F                 1840 	.db #0x0F	; 15
   46A1 2F                 1841 	.db #0x2F	; 47
   46A2 1E                 1842 	.db #0x1E	; 30
   46A3 43                 1843 	.db #0x43	; 67	'C'
   46A4 8F                 1844 	.db #0x8F	; 143
   46A5 0F                 1845 	.db #0x0F	; 15
   46A6 1E                 1846 	.db #0x1E	; 30
   46A7 43                 1847 	.db #0x43	; 67	'C'
   46A8 0F                 1848 	.db #0x0F	; 15
                           1849 ;src/includes/gui.h:8: void putM1(void)
                           1850 ;	---------------------------------
                           1851 ; Function putM1
                           1852 ; ---------------------------------
   46A9                    1853 _putM1::
                           1854 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   46A9 3E 01         [ 7] 1855 	ld	a,#0x01
   46AB F5            [11] 1856 	push	af
   46AC 33            [ 6] 1857 	inc	sp
   46AD CD 03 61      [17] 1858 	call	_cpct_setVideoMode
   46B0 33            [ 6] 1859 	inc	sp
                           1860 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   46B1 21 23 40      [10] 1861 	ld	hl,#_paletteMenusM1
   46B4 01 04 00      [10] 1862 	ld	bc,#0x0004
   46B7 C5            [11] 1863 	push	bc
   46B8 E5            [11] 1864 	push	hl
   46B9 CD 0F 5F      [17] 1865 	call	_cpct_setPalette
   46BC C9            [10] 1866 	ret
                           1867 ;src/includes/gui.h:15: void putM2(void)
                           1868 ;	---------------------------------
                           1869 ; Function putM2
                           1870 ; ---------------------------------
   46BD                    1871 _putM2::
                           1872 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   46BD 3E 02         [ 7] 1873 	ld	a,#0x02
   46BF F5            [11] 1874 	push	af
   46C0 33            [ 6] 1875 	inc	sp
   46C1 CD 03 61      [17] 1876 	call	_cpct_setVideoMode
   46C4 33            [ 6] 1877 	inc	sp
                           1878 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   46C5 21 27 40      [10] 1879 	ld	hl,#_paletteMenusM2
   46C8 01 02 00      [10] 1880 	ld	bc,#0x0002
   46CB C5            [11] 1881 	push	bc
   46CC E5            [11] 1882 	push	hl
   46CD CD 0F 5F      [17] 1883 	call	_cpct_setPalette
                           1884 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   46D0 21 00 40      [10] 1885 	ld	hl,#0x4000
   46D3 E5            [11] 1886 	push	hl
   46D4 3E FF         [ 7] 1887 	ld	a,#0xFF
   46D6 F5            [11] 1888 	push	af
   46D7 33            [ 6] 1889 	inc	sp
   46D8 26 C0         [ 7] 1890 	ld	h, #0xC0
   46DA E5            [11] 1891 	push	hl
   46DB CD 31 61      [17] 1892 	call	_cpct_memset
   46DE C9            [10] 1893 	ret
                           1894 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                           1895 ;	---------------------------------
                           1896 ; Function drawBoxM0
                           1897 ; ---------------------------------
   46DF                    1898 _drawBoxM0::
   46DF DD E5         [15] 1899 	push	ix
   46E1 DD 21 00 00   [14] 1900 	ld	ix,#0
   46E5 DD 39         [15] 1901 	add	ix,sp
   46E7 21 F9 FF      [10] 1902 	ld	hl,#-7
   46EA 39            [11] 1903 	add	hl,sp
   46EB F9            [ 6] 1904 	ld	sp,hl
                           1905 ;src/includes/gui.h:28: int left = (80-width_)/2;
   46EC 3E 50         [ 7] 1906 	ld	a,#0x50
   46EE DD 96 04      [19] 1907 	sub	a, 4 (ix)
   46F1 57            [ 4] 1908 	ld	d,a
   46F2 3E 00         [ 7] 1909 	ld	a,#0x00
   46F4 DD 9E 05      [19] 1910 	sbc	a, 5 (ix)
   46F7 5F            [ 4] 1911 	ld	e,a
   46F8 6A            [ 4] 1912 	ld	l, d
   46F9 63            [ 4] 1913 	ld	h, e
   46FA CB 7B         [ 8] 1914 	bit	7, e
   46FC 28 03         [12] 1915 	jr	Z,00103$
   46FE 6A            [ 4] 1916 	ld	l, d
   46FF 63            [ 4] 1917 	ld	h, e
   4700 23            [ 6] 1918 	inc	hl
   4701                    1919 00103$:
   4701 DD 75 F9      [19] 1920 	ld	-7 (ix),l
   4704 DD 74 FA      [19] 1921 	ld	-6 (ix),h
   4707 DD CB FA 2E   [23] 1922 	sra	-6 (ix)
   470B DD CB F9 1E   [23] 1923 	rr	-7 (ix)
                           1924 ;src/includes/gui.h:29: int top = (200-height_)/2;
   470F 3E C8         [ 7] 1925 	ld	a,#0xC8
   4711 DD 96 06      [19] 1926 	sub	a, 6 (ix)
   4714 4F            [ 4] 1927 	ld	c,a
   4715 3E 00         [ 7] 1928 	ld	a,#0x00
   4717 DD 9E 07      [19] 1929 	sbc	a, 7 (ix)
   471A 47            [ 4] 1930 	ld	b,a
   471B 61            [ 4] 1931 	ld	h,c
   471C 50            [ 4] 1932 	ld	d,b
   471D CB 78         [ 8] 1933 	bit	7, b
   471F 28 03         [12] 1934 	jr	Z,00104$
   4721 03            [ 6] 1935 	inc	bc
   4722 61            [ 4] 1936 	ld	h,c
   4723 50            [ 4] 1937 	ld	d,b
   4724                    1938 00104$:
   4724 5C            [ 4] 1939 	ld	e, h
   4725 CB 2A         [ 8] 1940 	sra	d
   4727 CB 1B         [ 8] 1941 	rr	e
                           1942 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   4729 D5            [11] 1943 	push	de
   472A 21 09 09      [10] 1944 	ld	hl,#0x0909
   472D E5            [11] 1945 	push	hl
   472E CD 15 61      [17] 1946 	call	_cpct_px2byteM0
   4731 65            [ 4] 1947 	ld	h,l
   4732 01 00 40      [10] 1948 	ld	bc,#0x4000
   4735 C5            [11] 1949 	push	bc
   4736 E5            [11] 1950 	push	hl
   4737 33            [ 6] 1951 	inc	sp
   4738 21 00 C0      [10] 1952 	ld	hl,#0xC000
   473B E5            [11] 1953 	push	hl
   473C CD 31 61      [17] 1954 	call	_cpct_memset
   473F D1            [10] 1955 	pop	de
                           1956 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4740 DD 73 FB      [19] 1957 	ld	-5 (ix), e
   4743 63            [ 4] 1958 	ld	h, e
   4744 24            [ 4] 1959 	inc	h
   4745 24            [ 4] 1960 	inc	h
   4746 24            [ 4] 1961 	inc	h
   4747 24            [ 4] 1962 	inc	h
   4748 DD 7E F9      [19] 1963 	ld	a,-7 (ix)
   474B 3C            [ 4] 1964 	inc	a
   474C DD 77 FC      [19] 1965 	ld	-4 (ix),a
   474F D5            [11] 1966 	push	de
   4750 E5            [11] 1967 	push	hl
   4751 33            [ 6] 1968 	inc	sp
   4752 DD 7E FC      [19] 1969 	ld	a,-4 (ix)
   4755 F5            [11] 1970 	push	af
   4756 33            [ 6] 1971 	inc	sp
   4757 21 00 C0      [10] 1972 	ld	hl,#0xC000
   475A E5            [11] 1973 	push	hl
   475B CD 30 62      [17] 1974 	call	_cpct_getScreenPtr
   475E D1            [10] 1975 	pop	de
   475F 4D            [ 4] 1976 	ld	c, l
   4760 44            [ 4] 1977 	ld	b, h
                           1978 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4761 DD 7E 06      [19] 1979 	ld	a,6 (ix)
   4764 DD 77 FD      [19] 1980 	ld	-3 (ix),a
   4767 DD 7E 04      [19] 1981 	ld	a,4 (ix)
   476A DD 77 FE      [19] 1982 	ld	-2 (ix),a
   476D C5            [11] 1983 	push	bc
   476E D5            [11] 1984 	push	de
   476F 21 02 02      [10] 1985 	ld	hl,#0x0202
   4772 E5            [11] 1986 	push	hl
   4773 CD 15 61      [17] 1987 	call	_cpct_px2byteM0
   4776 DD 75 FF      [19] 1988 	ld	-1 (ix),l
   4779 D1            [10] 1989 	pop	de
   477A C1            [10] 1990 	pop	bc
   477B D5            [11] 1991 	push	de
   477C DD 66 FD      [19] 1992 	ld	h,-3 (ix)
   477F DD 6E FE      [19] 1993 	ld	l,-2 (ix)
   4782 E5            [11] 1994 	push	hl
   4783 DD 7E FF      [19] 1995 	ld	a,-1 (ix)
   4786 F5            [11] 1996 	push	af
   4787 33            [ 6] 1997 	inc	sp
   4788 C5            [11] 1998 	push	bc
   4789 CD 77 61      [17] 1999 	call	_cpct_drawSolidBox
   478C F1            [10] 2000 	pop	af
   478D F1            [10] 2001 	pop	af
   478E 33            [ 6] 2002 	inc	sp
   478F D1            [10] 2003 	pop	de
                           2004 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4790 63            [ 4] 2005 	ld	h,e
   4791 DD 56 F9      [19] 2006 	ld	d,-7 (ix)
   4794 E5            [11] 2007 	push	hl
   4795 33            [ 6] 2008 	inc	sp
   4796 D5            [11] 2009 	push	de
   4797 33            [ 6] 2010 	inc	sp
   4798 21 00 C0      [10] 2011 	ld	hl,#0xC000
   479B E5            [11] 2012 	push	hl
   479C CD 30 62      [17] 2013 	call	_cpct_getScreenPtr
                           2014 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   479F E5            [11] 2015 	push	hl
   47A0 21 06 06      [10] 2016 	ld	hl,#0x0606
   47A3 E5            [11] 2017 	push	hl
   47A4 CD 15 61      [17] 2018 	call	_cpct_px2byteM0
   47A7 45            [ 4] 2019 	ld	b,l
   47A8 D1            [10] 2020 	pop	de
   47A9 DD 66 FD      [19] 2021 	ld	h,-3 (ix)
   47AC DD 6E FE      [19] 2022 	ld	l,-2 (ix)
   47AF E5            [11] 2023 	push	hl
   47B0 C5            [11] 2024 	push	bc
   47B1 33            [ 6] 2025 	inc	sp
   47B2 D5            [11] 2026 	push	de
   47B3 CD 77 61      [17] 2027 	call	_cpct_drawSolidBox
   47B6 F1            [10] 2028 	pop	af
   47B7 F1            [10] 2029 	pop	af
   47B8 33            [ 6] 2030 	inc	sp
                           2031 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   47B9 DD 66 FB      [19] 2032 	ld	h,-5 (ix)
   47BC 24            [ 4] 2033 	inc	h
   47BD 24            [ 4] 2034 	inc	h
   47BE E5            [11] 2035 	push	hl
   47BF 33            [ 6] 2036 	inc	sp
   47C0 DD 7E FC      [19] 2037 	ld	a,-4 (ix)
   47C3 F5            [11] 2038 	push	af
   47C4 33            [ 6] 2039 	inc	sp
   47C5 21 00 C0      [10] 2040 	ld	hl,#0xC000
   47C8 E5            [11] 2041 	push	hl
   47C9 CD 30 62      [17] 2042 	call	_cpct_getScreenPtr
   47CC EB            [ 4] 2043 	ex	de,hl
                           2044 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   47CD DD 7E 06      [19] 2045 	ld	a,6 (ix)
   47D0 C6 FC         [ 7] 2046 	add	a,#0xFC
   47D2 4F            [ 4] 2047 	ld	c,a
   47D3 DD 46 04      [19] 2048 	ld	b,4 (ix)
   47D6 05            [ 4] 2049 	dec	b
   47D7 05            [ 4] 2050 	dec	b
   47D8 C5            [11] 2051 	push	bc
   47D9 D5            [11] 2052 	push	de
   47DA 21 00 00      [10] 2053 	ld	hl,#0x0000
   47DD E5            [11] 2054 	push	hl
   47DE CD 15 61      [17] 2055 	call	_cpct_px2byteM0
   47E1 DD 75 FF      [19] 2056 	ld	-1 (ix),l
   47E4 D1            [10] 2057 	pop	de
   47E5 C1            [10] 2058 	pop	bc
   47E6 79            [ 4] 2059 	ld	a,c
   47E7 F5            [11] 2060 	push	af
   47E8 33            [ 6] 2061 	inc	sp
   47E9 C5            [11] 2062 	push	bc
   47EA 33            [ 6] 2063 	inc	sp
   47EB DD 7E FF      [19] 2064 	ld	a,-1 (ix)
   47EE F5            [11] 2065 	push	af
   47EF 33            [ 6] 2066 	inc	sp
   47F0 D5            [11] 2067 	push	de
   47F1 CD 77 61      [17] 2068 	call	_cpct_drawSolidBox
   47F4 DD F9         [10] 2069 	ld	sp,ix
   47F6 DD E1         [14] 2070 	pop	ix
   47F8 C9            [10] 2071 	ret
                           2072 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           2073 ;	---------------------------------
                           2074 ; Function drawBoxM2
                           2075 ; ---------------------------------
   47F9                    2076 _drawBoxM2::
   47F9 DD E5         [15] 2077 	push	ix
   47FB DD 21 00 00   [14] 2078 	ld	ix,#0
   47FF DD 39         [15] 2079 	add	ix,sp
   4801 21 FA FF      [10] 2080 	ld	hl,#-6
   4804 39            [11] 2081 	add	hl,sp
   4805 F9            [ 6] 2082 	ld	sp,hl
                           2083 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4806 3E 50         [ 7] 2084 	ld	a,#0x50
   4808 DD 96 04      [19] 2085 	sub	a, 4 (ix)
   480B 4F            [ 4] 2086 	ld	c,a
   480C 3E 00         [ 7] 2087 	ld	a,#0x00
   480E DD 9E 05      [19] 2088 	sbc	a, 5 (ix)
   4811 47            [ 4] 2089 	ld	b,a
   4812 61            [ 4] 2090 	ld	h,c
   4813 50            [ 4] 2091 	ld	d,b
   4814 CB 78         [ 8] 2092 	bit	7, b
   4816 28 03         [12] 2093 	jr	Z,00103$
   4818 03            [ 6] 2094 	inc	bc
   4819 61            [ 4] 2095 	ld	h,c
   481A 50            [ 4] 2096 	ld	d,b
   481B                    2097 00103$:
   481B 5C            [ 4] 2098 	ld	e, h
   481C CB 2A         [ 8] 2099 	sra	d
   481E CB 1B         [ 8] 2100 	rr	e
                           2101 ;src/includes/gui.h:53: int top = (200-height_)/2;
   4820 3E C8         [ 7] 2102 	ld	a,#0xC8
   4822 DD 96 06      [19] 2103 	sub	a, 6 (ix)
   4825 4F            [ 4] 2104 	ld	c,a
   4826 3E 00         [ 7] 2105 	ld	a,#0x00
   4828 DD 9E 07      [19] 2106 	sbc	a, 7 (ix)
   482B 47            [ 4] 2107 	ld	b,a
   482C 61            [ 4] 2108 	ld	h,c
   482D 68            [ 4] 2109 	ld	l,b
   482E CB 78         [ 8] 2110 	bit	7, b
   4830 28 03         [12] 2111 	jr	Z,00104$
   4832 03            [ 6] 2112 	inc	bc
   4833 61            [ 4] 2113 	ld	h,c
   4834 68            [ 4] 2114 	ld	l,b
   4835                    2115 00104$:
   4835 DD 74 FA      [19] 2116 	ld	-6 (ix),h
   4838 DD 75 FB      [19] 2117 	ld	-5 (ix),l
   483B DD CB FB 2E   [23] 2118 	sra	-5 (ix)
   483F DD CB FA 1E   [23] 2119 	rr	-6 (ix)
                           2120 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   4843 DD 7E FA      [19] 2121 	ld	a,-6 (ix)
   4846 DD 77 FC      [19] 2122 	ld	-4 (ix), a
   4849 C6 05         [ 7] 2123 	add	a, #0x05
   484B 4F            [ 4] 2124 	ld	c,a
   484C DD 73 FD      [19] 2125 	ld	-3 (ix), e
   484F 63            [ 4] 2126 	ld	h, e
   4850 24            [ 4] 2127 	inc	h
   4851 24            [ 4] 2128 	inc	h
   4852 D5            [11] 2129 	push	de
   4853 79            [ 4] 2130 	ld	a,c
   4854 F5            [11] 2131 	push	af
   4855 33            [ 6] 2132 	inc	sp
   4856 E5            [11] 2133 	push	hl
   4857 33            [ 6] 2134 	inc	sp
   4858 21 00 C0      [10] 2135 	ld	hl,#0xC000
   485B E5            [11] 2136 	push	hl
   485C CD 30 62      [17] 2137 	call	_cpct_getScreenPtr
   485F D1            [10] 2138 	pop	de
                           2139 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4860 DD 46 06      [19] 2140 	ld	b,6 (ix)
   4863 DD 4E 04      [19] 2141 	ld	c,4 (ix)
   4866 79            [ 4] 2142 	ld	a,c
   4867 C6 FF         [ 7] 2143 	add	a,#0xFF
   4869 DD 75 FE      [19] 2144 	ld	-2 (ix),l
   486C DD 74 FF      [19] 2145 	ld	-1 (ix),h
   486F C5            [11] 2146 	push	bc
   4870 D5            [11] 2147 	push	de
   4871 C5            [11] 2148 	push	bc
   4872 33            [ 6] 2149 	inc	sp
   4873 F5            [11] 2150 	push	af
   4874 33            [ 6] 2151 	inc	sp
   4875 AF            [ 4] 2152 	xor	a, a
   4876 F5            [11] 2153 	push	af
   4877 33            [ 6] 2154 	inc	sp
   4878 DD 6E FE      [19] 2155 	ld	l,-2 (ix)
   487B DD 66 FF      [19] 2156 	ld	h,-1 (ix)
   487E E5            [11] 2157 	push	hl
   487F CD 77 61      [17] 2158 	call	_cpct_drawSolidBox
   4882 F1            [10] 2159 	pop	af
   4883 F1            [10] 2160 	pop	af
   4884 33            [ 6] 2161 	inc	sp
   4885 D1            [10] 2162 	pop	de
   4886 C1            [10] 2163 	pop	bc
                           2164 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4887 DD 66 FA      [19] 2165 	ld	h,-6 (ix)
   488A 53            [ 4] 2166 	ld	d,e
   488B C5            [11] 2167 	push	bc
   488C E5            [11] 2168 	push	hl
   488D 33            [ 6] 2169 	inc	sp
   488E D5            [11] 2170 	push	de
   488F 33            [ 6] 2171 	inc	sp
   4890 21 00 C0      [10] 2172 	ld	hl,#0xC000
   4893 E5            [11] 2173 	push	hl
   4894 CD 30 62      [17] 2174 	call	_cpct_getScreenPtr
   4897 C1            [10] 2175 	pop	bc
                           2176 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4898 DD 7E 04      [19] 2177 	ld	a,4 (ix)
   489B EB            [ 4] 2178 	ex	de,hl
   489C C5            [11] 2179 	push	bc
   489D C5            [11] 2180 	push	bc
   489E 33            [ 6] 2181 	inc	sp
   489F 47            [ 4] 2182 	ld	b,a
   48A0 0E F8         [ 7] 2183 	ld	c,#0xF8
   48A2 C5            [11] 2184 	push	bc
   48A3 D5            [11] 2185 	push	de
   48A4 CD 77 61      [17] 2186 	call	_cpct_drawSolidBox
   48A7 F1            [10] 2187 	pop	af
   48A8 F1            [10] 2188 	pop	af
   48A9 33            [ 6] 2189 	inc	sp
   48AA C1            [10] 2190 	pop	bc
                           2191 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   48AB DD 66 FC      [19] 2192 	ld	h,-4 (ix)
   48AE 24            [ 4] 2193 	inc	h
   48AF DD 56 FD      [19] 2194 	ld	d,-3 (ix)
   48B2 14            [ 4] 2195 	inc	d
   48B3 C5            [11] 2196 	push	bc
   48B4 E5            [11] 2197 	push	hl
   48B5 33            [ 6] 2198 	inc	sp
   48B6 D5            [11] 2199 	push	de
   48B7 33            [ 6] 2200 	inc	sp
   48B8 21 00 C0      [10] 2201 	ld	hl,#0xC000
   48BB E5            [11] 2202 	push	hl
   48BC CD 30 62      [17] 2203 	call	_cpct_getScreenPtr
   48BF C1            [10] 2204 	pop	bc
   48C0 5D            [ 4] 2205 	ld	e, l
   48C1 54            [ 4] 2206 	ld	d, h
                           2207 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   48C2 DD 66 06      [19] 2208 	ld	h,6 (ix)
   48C5 25            [ 4] 2209 	dec	h
   48C6 25            [ 4] 2210 	dec	h
   48C7 79            [ 4] 2211 	ld	a,c
   48C8 C6 FE         [ 7] 2212 	add	a,#0xFE
   48CA E5            [11] 2213 	push	hl
   48CB 33            [ 6] 2214 	inc	sp
   48CC 47            [ 4] 2215 	ld	b,a
   48CD 0E FF         [ 7] 2216 	ld	c,#0xFF
   48CF C5            [11] 2217 	push	bc
   48D0 D5            [11] 2218 	push	de
   48D1 CD 77 61      [17] 2219 	call	_cpct_drawSolidBox
   48D4 DD F9         [10] 2220 	ld	sp,ix
   48D6 DD E1         [14] 2221 	pop	ix
   48D8 C9            [10] 2222 	ret
                           2223 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2224 ;	---------------------------------
                           2225 ; Function EraseMenuEntry
                           2226 ; ---------------------------------
   48D9                    2227 _EraseMenuEntry::
   48D9 DD E5         [15] 2228 	push	ix
   48DB DD 21 00 00   [14] 2229 	ld	ix,#0
   48DF DD 39         [15] 2230 	add	ix,sp
   48E1 3B            [ 6] 2231 	dec	sp
                           2232 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   48E2 DD 4E 06      [19] 2233 	ld	c,6 (ix)
   48E5 06 00         [ 7] 2234 	ld	b,#0x00
   48E7 69            [ 4] 2235 	ld	l, c
   48E8 60            [ 4] 2236 	ld	h, b
   48E9 29            [11] 2237 	add	hl, hl
   48EA 29            [11] 2238 	add	hl, hl
   48EB 09            [11] 2239 	add	hl, bc
   48EC 29            [11] 2240 	add	hl, hl
   48ED 4D            [ 4] 2241 	ld	c,l
   48EE 44            [ 4] 2242 	ld	b,h
   48EF 3E C9         [ 7] 2243 	ld	a,#0xC9
   48F1 91            [ 4] 2244 	sub	a, c
   48F2 57            [ 4] 2245 	ld	d,a
   48F3 3E 00         [ 7] 2246 	ld	a,#0x00
   48F5 98            [ 4] 2247 	sbc	a, b
   48F6 5F            [ 4] 2248 	ld	e,a
   48F7 6A            [ 4] 2249 	ld	l, d
   48F8 63            [ 4] 2250 	ld	h, e
   48F9 CB 7B         [ 8] 2251 	bit	7, e
   48FB 28 03         [12] 2252 	jr	Z,00103$
   48FD 6A            [ 4] 2253 	ld	l, d
   48FE 63            [ 4] 2254 	ld	h, e
   48FF 23            [ 6] 2255 	inc	hl
   4900                    2256 00103$:
   4900 CB 2C         [ 8] 2257 	sra	h
   4902 CB 1D         [ 8] 2258 	rr	l
   4904 55            [ 4] 2259 	ld	d,l
   4905 DD 7E 07      [19] 2260 	ld	a,7 (ix)
   4908 5F            [ 4] 2261 	ld	e,a
   4909 87            [ 4] 2262 	add	a, a
   490A 87            [ 4] 2263 	add	a, a
   490B 83            [ 4] 2264 	add	a, e
   490C 87            [ 4] 2265 	add	a, a
   490D DD 77 FF      [19] 2266 	ld	-1 (ix),a
   4910 7A            [ 4] 2267 	ld	a,d
   4911 DD 86 FF      [19] 2268 	add	a, -1 (ix)
   4914 C5            [11] 2269 	push	bc
   4915 57            [ 4] 2270 	ld	d,a
   4916 1E 20         [ 7] 2271 	ld	e,#0x20
   4918 D5            [11] 2272 	push	de
   4919 21 00 C0      [10] 2273 	ld	hl,#0xC000
   491C E5            [11] 2274 	push	hl
   491D CD 30 62      [17] 2275 	call	_cpct_getScreenPtr
   4920 C1            [10] 2276 	pop	bc
                           2277 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   4921 EB            [ 4] 2278 	ex	de,hl
   4922 C5            [11] 2279 	push	bc
   4923 21 11 0A      [10] 2280 	ld	hl,#0x0A11
   4926 E5            [11] 2281 	push	hl
   4927 3E FF         [ 7] 2282 	ld	a,#0xFF
   4929 F5            [11] 2283 	push	af
   492A 33            [ 6] 2284 	inc	sp
   492B D5            [11] 2285 	push	de
   492C CD 77 61      [17] 2286 	call	_cpct_drawSolidBox
   492F F1            [10] 2287 	pop	af
   4930 F1            [10] 2288 	pop	af
   4931 33            [ 6] 2289 	inc	sp
   4932 C1            [10] 2290 	pop	bc
                           2291 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   4933 3E CA         [ 7] 2292 	ld	a,#0xCA
   4935 91            [ 4] 2293 	sub	a, c
   4936 57            [ 4] 2294 	ld	d,a
   4937 3E 00         [ 7] 2295 	ld	a,#0x00
   4939 98            [ 4] 2296 	sbc	a, b
   493A 5F            [ 4] 2297 	ld	e,a
   493B 6A            [ 4] 2298 	ld	l, d
   493C 63            [ 4] 2299 	ld	h, e
   493D CB 7B         [ 8] 2300 	bit	7, e
   493F 28 03         [12] 2301 	jr	Z,00104$
   4941 6A            [ 4] 2302 	ld	l, d
   4942 63            [ 4] 2303 	ld	h, e
   4943 23            [ 6] 2304 	inc	hl
   4944                    2305 00104$:
   4944 CB 2C         [ 8] 2306 	sra	h
   4946 CB 1D         [ 8] 2307 	rr	l
   4948 7D            [ 4] 2308 	ld	a,l
   4949 DD 86 FF      [19] 2309 	add	a, -1 (ix)
   494C 4F            [ 4] 2310 	ld	c,a
   494D DD 6E 07      [19] 2311 	ld	l,7 (ix)
   4950 26 00         [ 7] 2312 	ld	h,#0x00
   4952 29            [11] 2313 	add	hl, hl
   4953 EB            [ 4] 2314 	ex	de,hl
   4954 DD 6E 04      [19] 2315 	ld	l,4 (ix)
   4957 DD 66 05      [19] 2316 	ld	h,5 (ix)
   495A 19            [11] 2317 	add	hl,de
   495B E5            [11] 2318 	push	hl
   495C 5E            [ 7] 2319 	ld	e,(hl)
   495D 23            [ 6] 2320 	inc	hl
   495E 56            [ 7] 2321 	ld	d,(hl)
   495F C5            [11] 2322 	push	bc
   4960 D5            [11] 2323 	push	de
   4961 CD 58 61      [17] 2324 	call	_strlen
   4964 F1            [10] 2325 	pop	af
   4965 EB            [ 4] 2326 	ex	de,hl
   4966 C1            [10] 2327 	pop	bc
   4967 E1            [10] 2328 	pop	hl
   4968 3E 52         [ 7] 2329 	ld	a,#0x52
   496A 93            [ 4] 2330 	sub	a, e
   496B 5F            [ 4] 2331 	ld	e,a
   496C 3E 00         [ 7] 2332 	ld	a,#0x00
   496E 9A            [ 4] 2333 	sbc	a, d
   496F 57            [ 4] 2334 	ld	d,a
   4970 CB 3A         [ 8] 2335 	srl	d
   4972 CB 1B         [ 8] 2336 	rr	e
   4974 E5            [11] 2337 	push	hl
   4975 51            [ 4] 2338 	ld	d, c
   4976 D5            [11] 2339 	push	de
   4977 01 00 C0      [10] 2340 	ld	bc,#0xC000
   497A C5            [11] 2341 	push	bc
   497B CD 30 62      [17] 2342 	call	_cpct_getScreenPtr
   497E 4D            [ 4] 2343 	ld	c,l
   497F 44            [ 4] 2344 	ld	b,h
   4980 E1            [10] 2345 	pop	hl
                           2346 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4981 5E            [ 7] 2347 	ld	e,(hl)
   4982 23            [ 6] 2348 	inc	hl
   4983 56            [ 7] 2349 	ld	d,(hl)
   4984 AF            [ 4] 2350 	xor	a, a
   4985 F5            [11] 2351 	push	af
   4986 33            [ 6] 2352 	inc	sp
   4987 C5            [11] 2353 	push	bc
   4988 D5            [11] 2354 	push	de
   4989 CD 3E 5F      [17] 2355 	call	_cpct_drawStringM2
   498C F1            [10] 2356 	pop	af
   498D F1            [10] 2357 	pop	af
   498E 33            [ 6] 2358 	inc	sp
   498F 33            [ 6] 2359 	inc	sp
   4990 DD E1         [14] 2360 	pop	ix
   4992 C9            [10] 2361 	ret
                           2362 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2363 ;	---------------------------------
                           2364 ; Function drawMenuEntry
                           2365 ; ---------------------------------
   4993                    2366 _drawMenuEntry::
   4993 DD E5         [15] 2367 	push	ix
   4995 DD 21 00 00   [14] 2368 	ld	ix,#0
   4999 DD 39         [15] 2369 	add	ix,sp
   499B 21 FA FF      [10] 2370 	ld	hl,#-6
   499E 39            [11] 2371 	add	hl,sp
   499F F9            [ 6] 2372 	ld	sp,hl
                           2373 ;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   49A0 DD 4E 06      [19] 2374 	ld	c,6 (ix)
   49A3 06 00         [ 7] 2375 	ld	b,#0x00
   49A5 69            [ 4] 2376 	ld	l, c
   49A6 60            [ 4] 2377 	ld	h, b
   49A7 29            [11] 2378 	add	hl, hl
   49A8 29            [11] 2379 	add	hl, hl
   49A9 09            [11] 2380 	add	hl, bc
   49AA 29            [11] 2381 	add	hl, hl
   49AB 4D            [ 4] 2382 	ld	c,l
   49AC 44            [ 4] 2383 	ld	b,h
   49AD 3E C9         [ 7] 2384 	ld	a,#0xC9
   49AF 91            [ 4] 2385 	sub	a, c
   49B0 57            [ 4] 2386 	ld	d,a
   49B1 3E 00         [ 7] 2387 	ld	a,#0x00
   49B3 98            [ 4] 2388 	sbc	a, b
   49B4 5F            [ 4] 2389 	ld	e,a
   49B5 6A            [ 4] 2390 	ld	l, d
   49B6 63            [ 4] 2391 	ld	h, e
   49B7 CB 7B         [ 8] 2392 	bit	7, e
   49B9 28 03         [12] 2393 	jr	Z,00114$
   49BB 6A            [ 4] 2394 	ld	l, d
   49BC 63            [ 4] 2395 	ld	h, e
   49BD 23            [ 6] 2396 	inc	hl
   49BE                    2397 00114$:
   49BE CB 2C         [ 8] 2398 	sra	h
   49C0 CB 1D         [ 8] 2399 	rr	l
   49C2 55            [ 4] 2400 	ld	d,l
   49C3 DD 7E 07      [19] 2401 	ld	a,7 (ix)
   49C6 5F            [ 4] 2402 	ld	e,a
   49C7 87            [ 4] 2403 	add	a, a
   49C8 87            [ 4] 2404 	add	a, a
   49C9 83            [ 4] 2405 	add	a, e
   49CA 87            [ 4] 2406 	add	a, a
   49CB 82            [ 4] 2407 	add	a,d
   49CC C5            [11] 2408 	push	bc
   49CD 57            [ 4] 2409 	ld	d,a
   49CE 1E 20         [ 7] 2410 	ld	e,#0x20
   49D0 D5            [11] 2411 	push	de
   49D1 21 00 C0      [10] 2412 	ld	hl,#0xC000
   49D4 E5            [11] 2413 	push	hl
   49D5 CD 30 62      [17] 2414 	call	_cpct_getScreenPtr
   49D8 C1            [10] 2415 	pop	bc
                           2416 ;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   49D9 EB            [ 4] 2417 	ex	de,hl
   49DA C5            [11] 2418 	push	bc
   49DB 21 11 0A      [10] 2419 	ld	hl,#0x0A11
   49DE E5            [11] 2420 	push	hl
   49DF AF            [ 4] 2421 	xor	a, a
   49E0 F5            [11] 2422 	push	af
   49E1 33            [ 6] 2423 	inc	sp
   49E2 D5            [11] 2424 	push	de
   49E3 CD 77 61      [17] 2425 	call	_cpct_drawSolidBox
   49E6 F1            [10] 2426 	pop	af
   49E7 F1            [10] 2427 	pop	af
   49E8 33            [ 6] 2428 	inc	sp
   49E9 C1            [10] 2429 	pop	bc
                           2430 ;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
   49EA 21 B0 36      [10] 2431 	ld	hl,#0x36B0
   49ED                    2432 00108$:
   49ED 2B            [ 6] 2433 	dec	hl
   49EE 7C            [ 4] 2434 	ld	a,h
   49EF B5            [ 4] 2435 	or	a,l
   49F0 20 FB         [12] 2436 	jr	NZ,00108$
                           2437 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   49F2 3E CA         [ 7] 2438 	ld	a,#0xCA
   49F4 91            [ 4] 2439 	sub	a, c
   49F5 DD 77 FC      [19] 2440 	ld	-4 (ix),a
   49F8 3E 00         [ 7] 2441 	ld	a,#0x00
   49FA 98            [ 4] 2442 	sbc	a, b
   49FB DD 77 FD      [19] 2443 	ld	-3 (ix), a
   49FE 07            [ 4] 2444 	rlca
   49FF E6 01         [ 7] 2445 	and	a,#0x01
   4A01 5F            [ 4] 2446 	ld	e,a
   4A02 21 00 00      [10] 2447 	ld	hl,#0x0000
   4A05 E3            [19] 2448 	ex	(sp), hl
   4A06                    2449 00110$:
   4A06 DD 66 06      [19] 2450 	ld	h,6 (ix)
   4A09 2E 00         [ 7] 2451 	ld	l,#0x00
   4A0B DD 7E FA      [19] 2452 	ld	a,-6 (ix)
   4A0E 94            [ 4] 2453 	sub	a, h
   4A0F DD 7E FB      [19] 2454 	ld	a,-5 (ix)
   4A12 9D            [ 4] 2455 	sbc	a, l
   4A13 E2 18 4A      [10] 2456 	jp	PO, 00146$
   4A16 EE 80         [ 7] 2457 	xor	a, #0x80
   4A18                    2458 00146$:
   4A18 F2 BE 4A      [10] 2459 	jp	P,00112$
                           2460 ;src/includes/gui.h:97: if(i==iSelect)
   4A1B DD 56 07      [19] 2461 	ld	d,7 (ix)
   4A1E 06 00         [ 7] 2462 	ld	b,#0x00
   4A20 DD 7E FA      [19] 2463 	ld	a,-6 (ix)
   4A23 92            [ 4] 2464 	sub	a, d
   4A24 20 0A         [12] 2465 	jr	NZ,00103$
   4A26 DD 7E FB      [19] 2466 	ld	a,-5 (ix)
   4A29 90            [ 4] 2467 	sub	a, b
   4A2A 20 04         [12] 2468 	jr	NZ,00103$
                           2469 ;src/includes/gui.h:98: penSelected = 1;
   4A2C 0E 01         [ 7] 2470 	ld	c,#0x01
   4A2E 18 02         [12] 2471 	jr	00104$
   4A30                    2472 00103$:
                           2473 ;src/includes/gui.h:100: penSelected = 0;
   4A30 0E 00         [ 7] 2474 	ld	c,#0x00
   4A32                    2475 00104$:
                           2476 ;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4A32 DD 6E FC      [19] 2477 	ld	l,-4 (ix)
   4A35 DD 66 FD      [19] 2478 	ld	h,-3 (ix)
   4A38 7B            [ 4] 2479 	ld	a,e
   4A39 B7            [ 4] 2480 	or	a, a
   4A3A 28 07         [12] 2481 	jr	Z,00115$
   4A3C DD 6E FC      [19] 2482 	ld	l,-4 (ix)
   4A3F DD 66 FD      [19] 2483 	ld	h,-3 (ix)
   4A42 23            [ 6] 2484 	inc	hl
   4A43                    2485 00115$:
   4A43 CB 2C         [ 8] 2486 	sra	h
   4A45 CB 1D         [ 8] 2487 	rr	l
   4A47 45            [ 4] 2488 	ld	b,l
   4A48 DD 6E FA      [19] 2489 	ld	l,-6 (ix)
   4A4B D5            [11] 2490 	push	de
   4A4C 5D            [ 4] 2491 	ld	e,l
   4A4D 29            [11] 2492 	add	hl, hl
   4A4E 29            [11] 2493 	add	hl, hl
   4A4F 19            [11] 2494 	add	hl, de
   4A50 29            [11] 2495 	add	hl, hl
   4A51 D1            [10] 2496 	pop	de
   4A52 78            [ 4] 2497 	ld	a,b
   4A53 85            [ 4] 2498 	add	a, l
   4A54 DD 77 FF      [19] 2499 	ld	-1 (ix),a
   4A57 DD 56 FA      [19] 2500 	ld	d,-6 (ix)
   4A5A DD 46 FB      [19] 2501 	ld	b,-5 (ix)
   4A5D CB 22         [ 8] 2502 	sla	d
   4A5F CB 10         [ 8] 2503 	rl	b
   4A61 DD 7E 04      [19] 2504 	ld	a,4 (ix)
   4A64 82            [ 4] 2505 	add	a, d
   4A65 57            [ 4] 2506 	ld	d,a
   4A66 DD 7E 05      [19] 2507 	ld	a,5 (ix)
   4A69 88            [ 4] 2508 	adc	a, b
   4A6A 47            [ 4] 2509 	ld	b,a
   4A6B 6A            [ 4] 2510 	ld	l, d
   4A6C 60            [ 4] 2511 	ld	h, b
   4A6D 7E            [ 7] 2512 	ld	a, (hl)
   4A6E 23            [ 6] 2513 	inc	hl
   4A6F 66            [ 7] 2514 	ld	h,(hl)
   4A70 6F            [ 4] 2515 	ld	l,a
   4A71 C5            [11] 2516 	push	bc
   4A72 D5            [11] 2517 	push	de
   4A73 E5            [11] 2518 	push	hl
   4A74 CD 58 61      [17] 2519 	call	_strlen
   4A77 F1            [10] 2520 	pop	af
   4A78 D1            [10] 2521 	pop	de
   4A79 C1            [10] 2522 	pop	bc
   4A7A 3E 52         [ 7] 2523 	ld	a,#0x52
   4A7C 95            [ 4] 2524 	sub	a, l
   4A7D 6F            [ 4] 2525 	ld	l,a
   4A7E 3E 00         [ 7] 2526 	ld	a,#0x00
   4A80 9C            [ 4] 2527 	sbc	a, h
   4A81 67            [ 4] 2528 	ld	h,a
   4A82 CB 3C         [ 8] 2529 	srl	h
   4A84 CB 1D         [ 8] 2530 	rr	l
   4A86 DD 75 FE      [19] 2531 	ld	-2 (ix),l
   4A89 C5            [11] 2532 	push	bc
   4A8A D5            [11] 2533 	push	de
   4A8B DD 66 FF      [19] 2534 	ld	h,-1 (ix)
   4A8E DD 6E FE      [19] 2535 	ld	l,-2 (ix)
   4A91 E5            [11] 2536 	push	hl
   4A92 21 00 C0      [10] 2537 	ld	hl,#0xC000
   4A95 E5            [11] 2538 	push	hl
   4A96 CD 30 62      [17] 2539 	call	_cpct_getScreenPtr
   4A99 D1            [10] 2540 	pop	de
   4A9A C1            [10] 2541 	pop	bc
   4A9B E5            [11] 2542 	push	hl
   4A9C FD E1         [14] 2543 	pop	iy
                           2544 ;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
   4A9E 6A            [ 4] 2545 	ld	l, d
   4A9F 60            [ 4] 2546 	ld	h, b
   4AA0 7E            [ 7] 2547 	ld	a, (hl)
   4AA1 23            [ 6] 2548 	inc	hl
   4AA2 66            [ 7] 2549 	ld	h,(hl)
   4AA3 6F            [ 4] 2550 	ld	l,a
   4AA4 D5            [11] 2551 	push	de
   4AA5 79            [ 4] 2552 	ld	a,c
   4AA6 F5            [11] 2553 	push	af
   4AA7 33            [ 6] 2554 	inc	sp
   4AA8 FD E5         [15] 2555 	push	iy
   4AAA E5            [11] 2556 	push	hl
   4AAB CD 3E 5F      [17] 2557 	call	_cpct_drawStringM2
   4AAE F1            [10] 2558 	pop	af
   4AAF F1            [10] 2559 	pop	af
   4AB0 33            [ 6] 2560 	inc	sp
   4AB1 D1            [10] 2561 	pop	de
                           2562 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4AB2 DD 34 FA      [23] 2563 	inc	-6 (ix)
   4AB5 C2 06 4A      [10] 2564 	jp	NZ,00110$
   4AB8 DD 34 FB      [23] 2565 	inc	-5 (ix)
   4ABB C3 06 4A      [10] 2566 	jp	00110$
   4ABE                    2567 00112$:
   4ABE DD F9         [10] 2568 	ld	sp, ix
   4AC0 DD E1         [14] 2569 	pop	ix
   4AC2 C9            [10] 2570 	ret
                           2571 ;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
                           2572 ;	---------------------------------
                           2573 ; Function drawMenu
                           2574 ; ---------------------------------
   4AC3                    2575 _drawMenu::
   4AC3 DD E5         [15] 2576 	push	ix
   4AC5 DD 21 00 00   [14] 2577 	ld	ix,#0
   4AC9 DD 39         [15] 2578 	add	ix,sp
   4ACB F5            [11] 2579 	push	af
                           2580 ;src/includes/gui.h:110: u8 iSelect=0;
   4ACC 06 00         [ 7] 2581 	ld	b,#0x00
                           2582 ;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
   4ACE C5            [11] 2583 	push	bc
   4ACF 21 00 40      [10] 2584 	ld	hl,#0x4000
   4AD2 E5            [11] 2585 	push	hl
   4AD3 3E FF         [ 7] 2586 	ld	a,#0xFF
   4AD5 F5            [11] 2587 	push	af
   4AD6 33            [ 6] 2588 	inc	sp
   4AD7 26 C0         [ 7] 2589 	ld	h, #0xC0
   4AD9 E5            [11] 2590 	push	hl
   4ADA CD 31 61      [17] 2591 	call	_cpct_memset
   4ADD C1            [10] 2592 	pop	bc
                           2593 ;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
   4ADE DD 5E 06      [19] 2594 	ld	e,6 (ix)
   4AE1 16 00         [ 7] 2595 	ld	d,#0x00
   4AE3 6B            [ 4] 2596 	ld	l, e
   4AE4 62            [ 4] 2597 	ld	h, d
   4AE5 29            [11] 2598 	add	hl, hl
   4AE6 19            [11] 2599 	add	hl, de
   4AE7 29            [11] 2600 	add	hl, hl
   4AE8 29            [11] 2601 	add	hl, hl
   4AE9 C5            [11] 2602 	push	bc
   4AEA E5            [11] 2603 	push	hl
   4AEB 21 1E 00      [10] 2604 	ld	hl,#0x001E
   4AEE E5            [11] 2605 	push	hl
   4AEF CD F9 47      [17] 2606 	call	_drawBoxM2
   4AF2 F1            [10] 2607 	pop	af
   4AF3 F1            [10] 2608 	pop	af
   4AF4 AF            [ 4] 2609 	xor	a, a
   4AF5 F5            [11] 2610 	push	af
   4AF6 33            [ 6] 2611 	inc	sp
   4AF7 DD 7E 06      [19] 2612 	ld	a,6 (ix)
   4AFA F5            [11] 2613 	push	af
   4AFB 33            [ 6] 2614 	inc	sp
   4AFC DD 6E 04      [19] 2615 	ld	l,4 (ix)
   4AFF DD 66 05      [19] 2616 	ld	h,5 (ix)
   4B02 E5            [11] 2617 	push	hl
   4B03 CD 93 49      [17] 2618 	call	_drawMenuEntry
   4B06 F1            [10] 2619 	pop	af
   4B07 F1            [10] 2620 	pop	af
   4B08 C1            [10] 2621 	pop	bc
                           2622 ;src/includes/gui.h:118: do{
   4B09 DD 4E 06      [19] 2623 	ld	c,6 (ix)
   4B0C 0D            [ 4] 2624 	dec	c
   4B0D                    2625 00111$:
                           2626 ;src/includes/gui.h:119: cpct_scanKeyboard(); 
   4B0D C5            [11] 2627 	push	bc
   4B0E CD 50 62      [17] 2628 	call	_cpct_scanKeyboard
   4B11 21 00 01      [10] 2629 	ld	hl,#0x0100
   4B14 CD 26 5F      [17] 2630 	call	_cpct_isKeyPressed
   4B17 7D            [ 4] 2631 	ld	a,l
   4B18 C1            [10] 2632 	pop	bc
   4B19 B7            [ 4] 2633 	or	a, a
   4B1A 28 32         [12] 2634 	jr	Z,00105$
                           2635 ;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
   4B1C C5            [11] 2636 	push	bc
   4B1D C5            [11] 2637 	push	bc
   4B1E 33            [ 6] 2638 	inc	sp
   4B1F DD 7E 06      [19] 2639 	ld	a,6 (ix)
   4B22 F5            [11] 2640 	push	af
   4B23 33            [ 6] 2641 	inc	sp
   4B24 DD 6E 04      [19] 2642 	ld	l,4 (ix)
   4B27 DD 66 05      [19] 2643 	ld	h,5 (ix)
   4B2A E5            [11] 2644 	push	hl
   4B2B CD D9 48      [17] 2645 	call	_EraseMenuEntry
   4B2E F1            [10] 2646 	pop	af
   4B2F F1            [10] 2647 	pop	af
   4B30 C1            [10] 2648 	pop	bc
                           2649 ;src/includes/gui.h:125: if(iSelect ==0)
   4B31 78            [ 4] 2650 	ld	a,b
   4B32 B7            [ 4] 2651 	or	a, a
   4B33 20 03         [12] 2652 	jr	NZ,00102$
                           2653 ;src/includes/gui.h:126: iSelect = nbEntry-1;
   4B35 41            [ 4] 2654 	ld	b,c
   4B36 18 01         [12] 2655 	jr	00103$
   4B38                    2656 00102$:
                           2657 ;src/includes/gui.h:128: iSelect--;
   4B38 05            [ 4] 2658 	dec	b
   4B39                    2659 00103$:
                           2660 ;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
   4B39 C5            [11] 2661 	push	bc
   4B3A C5            [11] 2662 	push	bc
   4B3B 33            [ 6] 2663 	inc	sp
   4B3C DD 7E 06      [19] 2664 	ld	a,6 (ix)
   4B3F F5            [11] 2665 	push	af
   4B40 33            [ 6] 2666 	inc	sp
   4B41 DD 6E 04      [19] 2667 	ld	l,4 (ix)
   4B44 DD 66 05      [19] 2668 	ld	h,5 (ix)
   4B47 E5            [11] 2669 	push	hl
   4B48 CD 93 49      [17] 2670 	call	_drawMenuEntry
   4B4B F1            [10] 2671 	pop	af
   4B4C F1            [10] 2672 	pop	af
   4B4D C1            [10] 2673 	pop	bc
   4B4E                    2674 00105$:
                           2675 ;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
   4B4E C5            [11] 2676 	push	bc
   4B4F 21 00 04      [10] 2677 	ld	hl,#0x0400
   4B52 CD 26 5F      [17] 2678 	call	_cpct_isKeyPressed
   4B55 5D            [ 4] 2679 	ld	e,l
   4B56 C1            [10] 2680 	pop	bc
   4B57 7B            [ 4] 2681 	ld	a,e
   4B58 B7            [ 4] 2682 	or	a, a
   4B59 28 48         [12] 2683 	jr	Z,00112$
                           2684 ;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
   4B5B C5            [11] 2685 	push	bc
   4B5C C5            [11] 2686 	push	bc
   4B5D 33            [ 6] 2687 	inc	sp
   4B5E DD 7E 06      [19] 2688 	ld	a,6 (ix)
   4B61 F5            [11] 2689 	push	af
   4B62 33            [ 6] 2690 	inc	sp
   4B63 DD 6E 04      [19] 2691 	ld	l,4 (ix)
   4B66 DD 66 05      [19] 2692 	ld	h,5 (ix)
   4B69 E5            [11] 2693 	push	hl
   4B6A CD D9 48      [17] 2694 	call	_EraseMenuEntry
   4B6D F1            [10] 2695 	pop	af
   4B6E F1            [10] 2696 	pop	af
   4B6F C1            [10] 2697 	pop	bc
                           2698 ;src/includes/gui.h:137: if(iSelect == nbEntry-1)
   4B70 DD 5E 06      [19] 2699 	ld	e,6 (ix)
   4B73 16 00         [ 7] 2700 	ld	d,#0x00
   4B75 1B            [ 6] 2701 	dec	de
   4B76 DD 70 FE      [19] 2702 	ld	-2 (ix),b
   4B79 DD 36 FF 00   [19] 2703 	ld	-1 (ix),#0x00
   4B7D 7B            [ 4] 2704 	ld	a,e
   4B7E DD 96 FE      [19] 2705 	sub	a, -2 (ix)
   4B81 20 0A         [12] 2706 	jr	NZ,00107$
   4B83 7A            [ 4] 2707 	ld	a,d
   4B84 DD 96 FF      [19] 2708 	sub	a, -1 (ix)
   4B87 20 04         [12] 2709 	jr	NZ,00107$
                           2710 ;src/includes/gui.h:138: iSelect = 0;
   4B89 06 00         [ 7] 2711 	ld	b,#0x00
   4B8B 18 01         [12] 2712 	jr	00108$
   4B8D                    2713 00107$:
                           2714 ;src/includes/gui.h:140: iSelect++;
   4B8D 04            [ 4] 2715 	inc	b
   4B8E                    2716 00108$:
                           2717 ;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
   4B8E C5            [11] 2718 	push	bc
   4B8F C5            [11] 2719 	push	bc
   4B90 33            [ 6] 2720 	inc	sp
   4B91 DD 7E 06      [19] 2721 	ld	a,6 (ix)
   4B94 F5            [11] 2722 	push	af
   4B95 33            [ 6] 2723 	inc	sp
   4B96 DD 6E 04      [19] 2724 	ld	l,4 (ix)
   4B99 DD 66 05      [19] 2725 	ld	h,5 (ix)
   4B9C E5            [11] 2726 	push	hl
   4B9D CD 93 49      [17] 2727 	call	_drawMenuEntry
   4BA0 F1            [10] 2728 	pop	af
   4BA1 F1            [10] 2729 	pop	af
   4BA2 C1            [10] 2730 	pop	bc
   4BA3                    2731 00112$:
                           2732 ;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
   4BA3 C5            [11] 2733 	push	bc
   4BA4 21 02 04      [10] 2734 	ld	hl,#0x0402
   4BA7 CD 26 5F      [17] 2735 	call	_cpct_isKeyPressed
   4BAA 7D            [ 4] 2736 	ld	a,l
   4BAB C1            [10] 2737 	pop	bc
   4BAC B7            [ 4] 2738 	or	a, a
   4BAD CA 0D 4B      [10] 2739 	jp	Z,00111$
                           2740 ;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
   4BB0 21 B0 36      [10] 2741 	ld	hl,#0x36B0
   4BB3                    2742 00117$:
   4BB3 EB            [ 4] 2743 	ex	de,hl
   4BB4 1B            [ 6] 2744 	dec	de
   4BB5 6B            [ 4] 2745 	ld	l, e
   4BB6 7A            [ 4] 2746 	ld	a,d
   4BB7 67            [ 4] 2747 	ld	h,a
   4BB8 B3            [ 4] 2748 	or	a,e
   4BB9 20 F8         [12] 2749 	jr	NZ,00117$
                           2750 ;src/includes/gui.h:150: return iSelect;
   4BBB 68            [ 4] 2751 	ld	l,b
   4BBC DD F9         [10] 2752 	ld	sp, ix
   4BBE DD E1         [14] 2753 	pop	ix
   4BC0 C9            [10] 2754 	ret
                           2755 ;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           2756 ;	---------------------------------
                           2757 ; Function drawWindow
                           2758 ; ---------------------------------
   4BC1                    2759 _drawWindow::
   4BC1 DD E5         [15] 2760 	push	ix
   4BC3 DD 21 00 00   [14] 2761 	ld	ix,#0
   4BC7 DD 39         [15] 2762 	add	ix,sp
   4BC9 21 F5 FF      [10] 2763 	ld	hl,#-11
   4BCC 39            [11] 2764 	add	hl,sp
   4BCD F9            [ 6] 2765 	ld	sp,hl
                           2766 ;src/includes/gui.h:164: u8 valueReturn=0;
   4BCE DD 36 F5 00   [19] 2767 	ld	-11 (ix),#0x00
                           2768 ;src/includes/gui.h:167: if(button == 0)
   4BD2 DD 7E 07      [19] 2769 	ld	a,7 (ix)
   4BD5 B7            [ 4] 2770 	or	a, a
   4BD6 20 05         [12] 2771 	jr	NZ,00102$
                           2772 ;src/includes/gui.h:168: buttonTxt = "<OK>";
   4BD8 11 4A 4D      [10] 2773 	ld	de,#___str_0
   4BDB 18 03         [12] 2774 	jr	00103$
   4BDD                    2775 00102$:
                           2776 ;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
   4BDD 11 4F 4D      [10] 2777 	ld	de,#___str_1+0
   4BE0                    2778 00103$:
                           2779 ;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
   4BE0 DD 4E 06      [19] 2780 	ld	c,6 (ix)
   4BE3 06 00         [ 7] 2781 	ld	b,#0x00
   4BE5 03            [ 6] 2782 	inc	bc
   4BE6 03            [ 6] 2783 	inc	bc
   4BE7 69            [ 4] 2784 	ld	l, c
   4BE8 60            [ 4] 2785 	ld	h, b
   4BE9 29            [11] 2786 	add	hl, hl
   4BEA 09            [11] 2787 	add	hl, bc
   4BEB 29            [11] 2788 	add	hl, hl
   4BEC 29            [11] 2789 	add	hl, hl
   4BED C5            [11] 2790 	push	bc
   4BEE D5            [11] 2791 	push	de
   4BEF E5            [11] 2792 	push	hl
   4BF0 21 32 00      [10] 2793 	ld	hl,#0x0032
   4BF3 E5            [11] 2794 	push	hl
   4BF4 CD F9 47      [17] 2795 	call	_drawBoxM2
   4BF7 F1            [10] 2796 	pop	af
   4BF8 F1            [10] 2797 	pop	af
   4BF9 D1            [10] 2798 	pop	de
   4BFA C1            [10] 2799 	pop	bc
                           2800 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4BFB 69            [ 4] 2801 	ld	l, c
   4BFC 60            [ 4] 2802 	ld	h, b
   4BFD 29            [11] 2803 	add	hl, hl
   4BFE 29            [11] 2804 	add	hl, hl
   4BFF 09            [11] 2805 	add	hl, bc
   4C00 29            [11] 2806 	add	hl, hl
   4C01 3E CA         [ 7] 2807 	ld	a,#0xCA
   4C03 95            [ 4] 2808 	sub	a, l
   4C04 DD 77 FE      [19] 2809 	ld	-2 (ix),a
   4C07 3E 00         [ 7] 2810 	ld	a,#0x00
   4C09 9C            [ 4] 2811 	sbc	a, h
   4C0A DD 77 FF      [19] 2812 	ld	-1 (ix), a
   4C0D 07            [ 4] 2813 	rlca
   4C0E E6 01         [ 7] 2814 	and	a,#0x01
   4C10 DD 77 F7      [19] 2815 	ld	-9 (ix),a
   4C13 DD 36 F6 00   [19] 2816 	ld	-10 (ix),#0x00
   4C17 DD 36 FD 00   [19] 2817 	ld	-3 (ix),#0x00
   4C1B                    2818 00114$:
                           2819 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C1B DD 7E FE      [19] 2820 	ld	a,-2 (ix)
   4C1E C6 01         [ 7] 2821 	add	a, #0x01
   4C20 DD 77 FB      [19] 2822 	ld	-5 (ix),a
   4C23 DD 7E FF      [19] 2823 	ld	a,-1 (ix)
   4C26 CE 00         [ 7] 2824 	adc	a, #0x00
   4C28 DD 77 FC      [19] 2825 	ld	-4 (ix),a
                           2826 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4C2B DD 7E F6      [19] 2827 	ld	a,-10 (ix)
   4C2E DD 96 06      [19] 2828 	sub	a, 6 (ix)
   4C31 D2 BD 4C      [10] 2829 	jp	NC,00104$
                           2830 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C34 DD 6E FE      [19] 2831 	ld	l,-2 (ix)
   4C37 DD 66 FF      [19] 2832 	ld	h,-1 (ix)
   4C3A DD 7E F7      [19] 2833 	ld	a,-9 (ix)
   4C3D B7            [ 4] 2834 	or	a, a
   4C3E 28 06         [12] 2835 	jr	Z,00118$
   4C40 DD 6E FB      [19] 2836 	ld	l,-5 (ix)
   4C43 DD 66 FC      [19] 2837 	ld	h,-4 (ix)
   4C46                    2838 00118$:
   4C46 CB 2C         [ 8] 2839 	sra	h
   4C48 CB 1D         [ 8] 2840 	rr	l
   4C4A DD 66 FD      [19] 2841 	ld	h,-3 (ix)
   4C4D 7D            [ 4] 2842 	ld	a,l
   4C4E 84            [ 4] 2843 	add	a, h
   4C4F DD 77 FA      [19] 2844 	ld	-6 (ix),a
   4C52 DD 6E F6      [19] 2845 	ld	l,-10 (ix)
   4C55 26 00         [ 7] 2846 	ld	h,#0x00
   4C57 29            [11] 2847 	add	hl, hl
   4C58 45            [ 4] 2848 	ld	b,l
   4C59 4C            [ 4] 2849 	ld	c,h
   4C5A DD 7E 04      [19] 2850 	ld	a,4 (ix)
   4C5D 80            [ 4] 2851 	add	a, b
   4C5E DD 77 F8      [19] 2852 	ld	-8 (ix),a
   4C61 DD 7E 05      [19] 2853 	ld	a,5 (ix)
   4C64 89            [ 4] 2854 	adc	a, c
   4C65 DD 77 F9      [19] 2855 	ld	-7 (ix),a
   4C68 DD 6E F8      [19] 2856 	ld	l,-8 (ix)
   4C6B DD 66 F9      [19] 2857 	ld	h,-7 (ix)
   4C6E 4E            [ 7] 2858 	ld	c,(hl)
   4C6F 23            [ 6] 2859 	inc	hl
   4C70 46            [ 7] 2860 	ld	b,(hl)
   4C71 D5            [11] 2861 	push	de
   4C72 C5            [11] 2862 	push	bc
   4C73 CD 58 61      [17] 2863 	call	_strlen
   4C76 F1            [10] 2864 	pop	af
   4C77 D1            [10] 2865 	pop	de
   4C78 3E 52         [ 7] 2866 	ld	a,#0x52
   4C7A 95            [ 4] 2867 	sub	a, l
   4C7B 6F            [ 4] 2868 	ld	l,a
   4C7C 3E 00         [ 7] 2869 	ld	a,#0x00
   4C7E 9C            [ 4] 2870 	sbc	a, h
   4C7F 67            [ 4] 2871 	ld	h,a
   4C80 CB 3C         [ 8] 2872 	srl	h
   4C82 CB 1D         [ 8] 2873 	rr	l
   4C84 45            [ 4] 2874 	ld	b,l
   4C85 D5            [11] 2875 	push	de
   4C86 DD 7E FA      [19] 2876 	ld	a,-6 (ix)
   4C89 F5            [11] 2877 	push	af
   4C8A 33            [ 6] 2878 	inc	sp
   4C8B C5            [11] 2879 	push	bc
   4C8C 33            [ 6] 2880 	inc	sp
   4C8D 21 00 C0      [10] 2881 	ld	hl,#0xC000
   4C90 E5            [11] 2882 	push	hl
   4C91 CD 30 62      [17] 2883 	call	_cpct_getScreenPtr
   4C94 D1            [10] 2884 	pop	de
   4C95 E5            [11] 2885 	push	hl
   4C96 FD E1         [14] 2886 	pop	iy
                           2887 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4C98 DD 6E F8      [19] 2888 	ld	l,-8 (ix)
   4C9B DD 66 F9      [19] 2889 	ld	h,-7 (ix)
   4C9E 4E            [ 7] 2890 	ld	c,(hl)
   4C9F 23            [ 6] 2891 	inc	hl
   4CA0 46            [ 7] 2892 	ld	b,(hl)
   4CA1 D5            [11] 2893 	push	de
   4CA2 AF            [ 4] 2894 	xor	a, a
   4CA3 F5            [11] 2895 	push	af
   4CA4 33            [ 6] 2896 	inc	sp
   4CA5 FD E5         [15] 2897 	push	iy
   4CA7 C5            [11] 2898 	push	bc
   4CA8 CD 3E 5F      [17] 2899 	call	_cpct_drawStringM2
   4CAB F1            [10] 2900 	pop	af
   4CAC F1            [10] 2901 	pop	af
   4CAD 33            [ 6] 2902 	inc	sp
   4CAE D1            [10] 2903 	pop	de
                           2904 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4CAF DD 7E FD      [19] 2905 	ld	a,-3 (ix)
   4CB2 C6 0A         [ 7] 2906 	add	a, #0x0A
   4CB4 DD 77 FD      [19] 2907 	ld	-3 (ix),a
   4CB7 DD 34 F6      [23] 2908 	inc	-10 (ix)
   4CBA C3 1B 4C      [10] 2909 	jp	00114$
   4CBD                    2910 00104$:
                           2911 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4CBD DD 46 FE      [19] 2912 	ld	b,-2 (ix)
   4CC0 DD 66 FF      [19] 2913 	ld	h,-1 (ix)
   4CC3 DD 7E F7      [19] 2914 	ld	a,-9 (ix)
   4CC6 B7            [ 4] 2915 	or	a, a
   4CC7 28 06         [12] 2916 	jr	Z,00119$
   4CC9 DD 46 FB      [19] 2917 	ld	b,-5 (ix)
   4CCC DD 66 FC      [19] 2918 	ld	h,-4 (ix)
   4CCF                    2919 00119$:
   4CCF CB 2C         [ 8] 2920 	sra	h
   4CD1 CB 18         [ 8] 2921 	rr	b
   4CD3 DD 4E 06      [19] 2922 	ld	c,6 (ix)
   4CD6 0C            [ 4] 2923 	inc	c
   4CD7 79            [ 4] 2924 	ld	a,c
   4CD8 87            [ 4] 2925 	add	a, a
   4CD9 87            [ 4] 2926 	add	a, a
   4CDA 81            [ 4] 2927 	add	a, c
   4CDB 87            [ 4] 2928 	add	a, a
   4CDC 67            [ 4] 2929 	ld	h, a
   4CDD 80            [ 4] 2930 	add	a,b
   4CDE 47            [ 4] 2931 	ld	b,a
   4CDF C5            [11] 2932 	push	bc
   4CE0 D5            [11] 2933 	push	de
   4CE1 D5            [11] 2934 	push	de
   4CE2 CD 58 61      [17] 2935 	call	_strlen
   4CE5 F1            [10] 2936 	pop	af
   4CE6 D1            [10] 2937 	pop	de
   4CE7 C1            [10] 2938 	pop	bc
   4CE8 3E 52         [ 7] 2939 	ld	a,#0x52
   4CEA 95            [ 4] 2940 	sub	a, l
   4CEB 6F            [ 4] 2941 	ld	l,a
   4CEC 3E 00         [ 7] 2942 	ld	a,#0x00
   4CEE 9C            [ 4] 2943 	sbc	a, h
   4CEF 67            [ 4] 2944 	ld	h,a
   4CF0 CB 3C         [ 8] 2945 	srl	h
   4CF2 CB 1D         [ 8] 2946 	rr	l
   4CF4 7D            [ 4] 2947 	ld	a,l
   4CF5 D5            [11] 2948 	push	de
   4CF6 C5            [11] 2949 	push	bc
   4CF7 33            [ 6] 2950 	inc	sp
   4CF8 F5            [11] 2951 	push	af
   4CF9 33            [ 6] 2952 	inc	sp
   4CFA 21 00 C0      [10] 2953 	ld	hl,#0xC000
   4CFD E5            [11] 2954 	push	hl
   4CFE CD 30 62      [17] 2955 	call	_cpct_getScreenPtr
   4D01 D1            [10] 2956 	pop	de
                           2957 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4D02 4D            [ 4] 2958 	ld	c, l
   4D03 44            [ 4] 2959 	ld	b, h
   4D04 AF            [ 4] 2960 	xor	a, a
   4D05 F5            [11] 2961 	push	af
   4D06 33            [ 6] 2962 	inc	sp
   4D07 C5            [11] 2963 	push	bc
   4D08 D5            [11] 2964 	push	de
   4D09 CD 3E 5F      [17] 2965 	call	_cpct_drawStringM2
   4D0C F1            [10] 2966 	pop	af
   4D0D F1            [10] 2967 	pop	af
   4D0E 33            [ 6] 2968 	inc	sp
                           2969 ;src/includes/gui.h:184: do{
   4D0F                    2970 00110$:
                           2971 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4D0F CD 50 62      [17] 2972 	call	_cpct_scanKeyboard
                           2973 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4D12 21 02 04      [10] 2974 	ld	hl,#0x0402
   4D15 CD 26 5F      [17] 2975 	call	_cpct_isKeyPressed
   4D18 7D            [ 4] 2976 	ld	a,l
   4D19 B7            [ 4] 2977 	or	a, a
   4D1A 28 04         [12] 2978 	jr	Z,00106$
                           2979 ;src/includes/gui.h:188: valueReturn=1;
   4D1C DD 36 F5 01   [19] 2980 	ld	-11 (ix),#0x01
   4D20                    2981 00106$:
                           2982 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4D20 21 08 04      [10] 2983 	ld	hl,#0x0408
   4D23 CD 26 5F      [17] 2984 	call	_cpct_isKeyPressed
   4D26 7D            [ 4] 2985 	ld	a,l
   4D27 B7            [ 4] 2986 	or	a, a
   4D28 28 04         [12] 2987 	jr	Z,00111$
                           2988 ;src/includes/gui.h:191: valueReturn=0;
   4D2A DD 36 F5 00   [19] 2989 	ld	-11 (ix),#0x00
   4D2E                    2990 00111$:
                           2991 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4D2E 21 02 04      [10] 2992 	ld	hl,#0x0402
   4D31 CD 26 5F      [17] 2993 	call	_cpct_isKeyPressed
   4D34 7D            [ 4] 2994 	ld	a,l
   4D35 B7            [ 4] 2995 	or	a, a
   4D36 20 0A         [12] 2996 	jr	NZ,00112$
   4D38 21 08 04      [10] 2997 	ld	hl,#0x0408
   4D3B CD 26 5F      [17] 2998 	call	_cpct_isKeyPressed
   4D3E 7D            [ 4] 2999 	ld	a,l
   4D3F B7            [ 4] 3000 	or	a, a
   4D40 28 CD         [12] 3001 	jr	Z,00110$
   4D42                    3002 00112$:
                           3003 ;src/includes/gui.h:195: return valueReturn;
   4D42 DD 6E F5      [19] 3004 	ld	l,-11 (ix)
   4D45 DD F9         [10] 3005 	ld	sp, ix
   4D47 DD E1         [14] 3006 	pop	ix
   4D49 C9            [10] 3007 	ret
   4D4A                    3008 ___str_0:
   4D4A 3C 4F 4B 3E        3009 	.ascii "<OK>"
   4D4E 00                 3010 	.db 0x00
   4D4F                    3011 ___str_1:
   4D4F 3C 4F 4B 3E 20 20  3012 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   4D5D 00                 3013 	.db 0x00
                           3014 ;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
                           3015 ;	---------------------------------
                           3016 ; Function drawCursor
                           3017 ; ---------------------------------
   4D5E                    3018 _drawCursor::
   4D5E DD E5         [15] 3019 	push	ix
   4D60 DD 21 00 00   [14] 3020 	ld	ix,#0
   4D64 DD 39         [15] 3021 	add	ix,sp
   4D66 3B            [ 6] 3022 	dec	sp
                           3023 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4D67 DD 7E 05      [19] 3024 	ld	a,5 (ix)
   4D6A 07            [ 4] 3025 	rlca
   4D6B 07            [ 4] 3026 	rlca
   4D6C 07            [ 4] 3027 	rlca
   4D6D 07            [ 4] 3028 	rlca
   4D6E E6 F0         [ 7] 3029 	and	a,#0xF0
   4D70 5F            [ 4] 3030 	ld	e,a
   4D71 DD 7E 04      [19] 3031 	ld	a,4 (ix)
   4D74 87            [ 4] 3032 	add	a, a
   4D75 87            [ 4] 3033 	add	a, a
   4D76 57            [ 4] 3034 	ld	d,a
   4D77 D5            [11] 3035 	push	de
   4D78 7B            [ 4] 3036 	ld	a,e
   4D79 F5            [11] 3037 	push	af
   4D7A 33            [ 6] 3038 	inc	sp
   4D7B D5            [11] 3039 	push	de
   4D7C 33            [ 6] 3040 	inc	sp
   4D7D 21 00 C0      [10] 3041 	ld	hl,#0xC000
   4D80 E5            [11] 3042 	push	hl
   4D81 CD 30 62      [17] 3043 	call	_cpct_getScreenPtr
   4D84 D1            [10] 3044 	pop	de
   4D85 4D            [ 4] 3045 	ld	c, l
   4D86 44            [ 4] 3046 	ld	b, h
                           3047 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D87 3E 10         [ 7] 3048 	ld	a,#0x10
   4D89 FD 21 DD 71   [14] 3049 	ld	iy,#_CURSOR_MODE
   4D8D FD 96 00      [19] 3050 	sub	a, 0 (iy)
   4D90 DA 8F 4F      [10] 3051 	jp	C,00119$
   4D93 D5            [11] 3052 	push	de
   4D94 FD 21 DD 71   [14] 3053 	ld	iy,#_CURSOR_MODE
   4D98 FD 5E 00      [19] 3054 	ld	e,0 (iy)
   4D9B 16 00         [ 7] 3055 	ld	d,#0x00
   4D9D 21 A5 4D      [10] 3056 	ld	hl,#00125$
   4DA0 19            [11] 3057 	add	hl,de
   4DA1 19            [11] 3058 	add	hl,de
   4DA2 19            [11] 3059 	add	hl,de
   4DA3 D1            [10] 3060 	pop	de
   4DA4 E9            [ 4] 3061 	jp	(hl)
   4DA5                    3062 00125$:
   4DA5 C3 D8 4D      [10] 3063 	jp	00101$
   4DA8 C3 AA 4E      [10] 3064 	jp	00102$
   4DAB C3 B9 4E      [10] 3065 	jp	00103$
   4DAE C3 C8 4E      [10] 3066 	jp	00104$
   4DB1 C3 D7 4E      [10] 3067 	jp	00105$
   4DB4 C3 E6 4E      [10] 3068 	jp	00106$
   4DB7 C3 F5 4E      [10] 3069 	jp	00107$
   4DBA C3 04 4F      [10] 3070 	jp	00108$
   4DBD C3 13 4F      [10] 3071 	jp	00109$
   4DC0 C3 21 4F      [10] 3072 	jp	00110$
   4DC3 C3 2F 4F      [10] 3073 	jp	00111$
   4DC6 C3 3D 4F      [10] 3074 	jp	00112$
   4DC9 C3 4B 4F      [10] 3075 	jp	00113$
   4DCC C3 59 4F      [10] 3076 	jp	00114$
   4DCF C3 67 4F      [10] 3077 	jp	00115$
   4DD2 C3 75 4F      [10] 3078 	jp	00116$
   4DD5 C3 83 4F      [10] 3079 	jp	00117$
                           3080 ;src/includes/world.h:8: case NONE:
   4DD8                    3081 00101$:
                           3082 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DD8 C5            [11] 3083 	push	bc
   4DD9 D5            [11] 3084 	push	de
   4DDA DD 66 06      [19] 3085 	ld	h,6 (ix)
   4DDD DD 6E 06      [19] 3086 	ld	l,6 (ix)
   4DE0 E5            [11] 3087 	push	hl
   4DE1 DD 66 06      [19] 3088 	ld	h,6 (ix)
   4DE4 DD 6E 06      [19] 3089 	ld	l,6 (ix)
   4DE7 E5            [11] 3090 	push	hl
   4DE8 CD 3F 61      [17] 3091 	call	_cpct_px2byteM1
   4DEB F1            [10] 3092 	pop	af
   4DEC F1            [10] 3093 	pop	af
   4DED DD 75 FF      [19] 3094 	ld	-1 (ix),l
   4DF0 D1            [10] 3095 	pop	de
   4DF1 C1            [10] 3096 	pop	bc
   4DF2 D5            [11] 3097 	push	de
   4DF3 21 04 00      [10] 3098 	ld	hl,#0x0004
   4DF6 E5            [11] 3099 	push	hl
   4DF7 DD 7E FF      [19] 3100 	ld	a,-1 (ix)
   4DFA F5            [11] 3101 	push	af
   4DFB 33            [ 6] 3102 	inc	sp
   4DFC C5            [11] 3103 	push	bc
   4DFD CD 31 61      [17] 3104 	call	_cpct_memset
   4E00 D1            [10] 3105 	pop	de
                           3106 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4E01 63            [ 4] 3107 	ld	h,e
   4E02 24            [ 4] 3108 	inc	h
   4E03 D5            [11] 3109 	push	de
   4E04 E5            [11] 3110 	push	hl
   4E05 33            [ 6] 3111 	inc	sp
   4E06 D5            [11] 3112 	push	de
   4E07 33            [ 6] 3113 	inc	sp
   4E08 21 00 C0      [10] 3114 	ld	hl,#0xC000
   4E0B E5            [11] 3115 	push	hl
   4E0C CD 30 62      [17] 3116 	call	_cpct_getScreenPtr
   4E0F D1            [10] 3117 	pop	de
                           3118 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E10 E5            [11] 3119 	push	hl
   4E11 D5            [11] 3120 	push	de
   4E12 DD 66 06      [19] 3121 	ld	h,6 (ix)
   4E15 DD 6E 06      [19] 3122 	ld	l,6 (ix)
   4E18 E5            [11] 3123 	push	hl
   4E19 DD 66 06      [19] 3124 	ld	h,6 (ix)
   4E1C DD 6E 06      [19] 3125 	ld	l,6 (ix)
   4E1F E5            [11] 3126 	push	hl
   4E20 CD 3F 61      [17] 3127 	call	_cpct_px2byteM1
   4E23 F1            [10] 3128 	pop	af
   4E24 F1            [10] 3129 	pop	af
   4E25 5D            [ 4] 3130 	ld	e,l
   4E26 F1            [10] 3131 	pop	af
   4E27 57            [ 4] 3132 	ld	d,a
   4E28 C1            [10] 3133 	pop	bc
   4E29 D5            [11] 3134 	push	de
   4E2A 21 04 00      [10] 3135 	ld	hl,#0x0004
   4E2D E5            [11] 3136 	push	hl
   4E2E 7B            [ 4] 3137 	ld	a,e
   4E2F F5            [11] 3138 	push	af
   4E30 33            [ 6] 3139 	inc	sp
   4E31 C5            [11] 3140 	push	bc
   4E32 CD 31 61      [17] 3141 	call	_cpct_memset
   4E35 D1            [10] 3142 	pop	de
                           3143 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E36 DD 7E 05      [19] 3144 	ld	a,5 (ix)
   4E39 3C            [ 4] 3145 	inc	a
   4E3A 07            [ 4] 3146 	rlca
   4E3B 07            [ 4] 3147 	rlca
   4E3C 07            [ 4] 3148 	rlca
   4E3D 07            [ 4] 3149 	rlca
   4E3E E6 F0         [ 7] 3150 	and	a,#0xF0
   4E40 5F            [ 4] 3151 	ld	e,a
   4E41 63            [ 4] 3152 	ld	h,e
   4E42 25            [ 4] 3153 	dec	h
   4E43 D5            [11] 3154 	push	de
   4E44 E5            [11] 3155 	push	hl
   4E45 33            [ 6] 3156 	inc	sp
   4E46 D5            [11] 3157 	push	de
   4E47 33            [ 6] 3158 	inc	sp
   4E48 21 00 C0      [10] 3159 	ld	hl,#0xC000
   4E4B E5            [11] 3160 	push	hl
   4E4C CD 30 62      [17] 3161 	call	_cpct_getScreenPtr
   4E4F D1            [10] 3162 	pop	de
                           3163 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E50 E5            [11] 3164 	push	hl
   4E51 D5            [11] 3165 	push	de
   4E52 DD 66 06      [19] 3166 	ld	h,6 (ix)
   4E55 DD 6E 06      [19] 3167 	ld	l,6 (ix)
   4E58 E5            [11] 3168 	push	hl
   4E59 DD 66 06      [19] 3169 	ld	h,6 (ix)
   4E5C DD 6E 06      [19] 3170 	ld	l,6 (ix)
   4E5F E5            [11] 3171 	push	hl
   4E60 CD 3F 61      [17] 3172 	call	_cpct_px2byteM1
   4E63 F1            [10] 3173 	pop	af
   4E64 F1            [10] 3174 	pop	af
   4E65 DD 75 FF      [19] 3175 	ld	-1 (ix),l
   4E68 D1            [10] 3176 	pop	de
   4E69 C1            [10] 3177 	pop	bc
   4E6A D5            [11] 3178 	push	de
   4E6B 21 04 00      [10] 3179 	ld	hl,#0x0004
   4E6E E5            [11] 3180 	push	hl
   4E6F DD 7E FF      [19] 3181 	ld	a,-1 (ix)
   4E72 F5            [11] 3182 	push	af
   4E73 33            [ 6] 3183 	inc	sp
   4E74 C5            [11] 3184 	push	bc
   4E75 CD 31 61      [17] 3185 	call	_cpct_memset
   4E78 D1            [10] 3186 	pop	de
                           3187 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4E79 63            [ 4] 3188 	ld	h,e
   4E7A 25            [ 4] 3189 	dec	h
   4E7B 25            [ 4] 3190 	dec	h
   4E7C E5            [11] 3191 	push	hl
   4E7D 33            [ 6] 3192 	inc	sp
   4E7E D5            [11] 3193 	push	de
   4E7F 33            [ 6] 3194 	inc	sp
   4E80 21 00 C0      [10] 3195 	ld	hl,#0xC000
   4E83 E5            [11] 3196 	push	hl
   4E84 CD 30 62      [17] 3197 	call	_cpct_getScreenPtr
                           3198 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E87 E5            [11] 3199 	push	hl
   4E88 DD 66 06      [19] 3200 	ld	h,6 (ix)
   4E8B DD 6E 06      [19] 3201 	ld	l,6 (ix)
   4E8E E5            [11] 3202 	push	hl
   4E8F DD 66 06      [19] 3203 	ld	h,6 (ix)
   4E92 DD 6E 06      [19] 3204 	ld	l,6 (ix)
   4E95 E5            [11] 3205 	push	hl
   4E96 CD 3F 61      [17] 3206 	call	_cpct_px2byteM1
   4E99 F1            [10] 3207 	pop	af
   4E9A F1            [10] 3208 	pop	af
   4E9B 65            [ 4] 3209 	ld	h,l
   4E9C D1            [10] 3210 	pop	de
   4E9D 01 04 00      [10] 3211 	ld	bc,#0x0004
   4EA0 C5            [11] 3212 	push	bc
   4EA1 E5            [11] 3213 	push	hl
   4EA2 33            [ 6] 3214 	inc	sp
   4EA3 D5            [11] 3215 	push	de
   4EA4 CD 31 61      [17] 3216 	call	_cpct_memset
                           3217 ;src/includes/world.h:18: break;
   4EA7 C3 8F 4F      [10] 3218 	jp	00119$
                           3219 ;src/includes/world.h:19: case T_SSNS:
   4EAA                    3220 00102$:
                           3221 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EAA 11 A9 42      [10] 3222 	ld	de,#_station_small_ns
   4EAD 21 04 10      [10] 3223 	ld	hl,#0x1004
   4EB0 E5            [11] 3224 	push	hl
   4EB1 C5            [11] 3225 	push	bc
   4EB2 D5            [11] 3226 	push	de
   4EB3 CD 5F 5F      [17] 3227 	call	_cpct_drawSprite
                           3228 ;src/includes/world.h:21: break;
   4EB6 C3 8F 4F      [10] 3229 	jp	00119$
                           3230 ;src/includes/world.h:22: case T_SSEW:
   4EB9                    3231 00103$:
                           3232 ;src/includes/world.h:23: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EB9 11 E9 42      [10] 3233 	ld	de,#_station_small_ew
   4EBC 21 04 10      [10] 3234 	ld	hl,#0x1004
   4EBF E5            [11] 3235 	push	hl
   4EC0 C5            [11] 3236 	push	bc
   4EC1 D5            [11] 3237 	push	de
   4EC2 CD 5F 5F      [17] 3238 	call	_cpct_drawSprite
                           3239 ;src/includes/world.h:24: break;
   4EC5 C3 8F 4F      [10] 3240 	jp	00119$
                           3241 ;src/includes/world.h:25: case T_SMNS:
   4EC8                    3242 00104$:
                           3243 ;src/includes/world.h:26: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EC8 11 29 43      [10] 3244 	ld	de,#_station_medium_ns
   4ECB 21 04 10      [10] 3245 	ld	hl,#0x1004
   4ECE E5            [11] 3246 	push	hl
   4ECF C5            [11] 3247 	push	bc
   4ED0 D5            [11] 3248 	push	de
   4ED1 CD 5F 5F      [17] 3249 	call	_cpct_drawSprite
                           3250 ;src/includes/world.h:27: break;
   4ED4 C3 8F 4F      [10] 3251 	jp	00119$
                           3252 ;src/includes/world.h:28: case T_SMEW:
   4ED7                    3253 00105$:
                           3254 ;src/includes/world.h:29: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4ED7 11 69 43      [10] 3255 	ld	de,#_station_medium_ew
   4EDA 21 04 10      [10] 3256 	ld	hl,#0x1004
   4EDD E5            [11] 3257 	push	hl
   4EDE C5            [11] 3258 	push	bc
   4EDF D5            [11] 3259 	push	de
   4EE0 CD 5F 5F      [17] 3260 	call	_cpct_drawSprite
                           3261 ;src/includes/world.h:30: break;
   4EE3 C3 8F 4F      [10] 3262 	jp	00119$
                           3263 ;src/includes/world.h:31: case T_SLNS:
   4EE6                    3264 00106$:
                           3265 ;src/includes/world.h:32: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EE6 11 A9 43      [10] 3266 	ld	de,#_station_large_ns
   4EE9 21 04 10      [10] 3267 	ld	hl,#0x1004
   4EEC E5            [11] 3268 	push	hl
   4EED C5            [11] 3269 	push	bc
   4EEE D5            [11] 3270 	push	de
   4EEF CD 5F 5F      [17] 3271 	call	_cpct_drawSprite
                           3272 ;src/includes/world.h:33: break;
   4EF2 C3 8F 4F      [10] 3273 	jp	00119$
                           3274 ;src/includes/world.h:34: case T_SLEW:
   4EF5                    3275 00107$:
                           3276 ;src/includes/world.h:35: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EF5 11 E9 43      [10] 3277 	ld	de,#_station_large_ew
   4EF8 21 04 10      [10] 3278 	ld	hl,#0x1004
   4EFB E5            [11] 3279 	push	hl
   4EFC C5            [11] 3280 	push	bc
   4EFD D5            [11] 3281 	push	de
   4EFE CD 5F 5F      [17] 3282 	call	_cpct_drawSprite
                           3283 ;src/includes/world.h:36: break;
   4F01 C3 8F 4F      [10] 3284 	jp	00119$
                           3285 ;src/includes/world.h:37: case T_REW:
   4F04                    3286 00108$:
                           3287 ;src/includes/world.h:38: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4F04 11 29 44      [10] 3288 	ld	de,#_rail_ew
   4F07 21 04 10      [10] 3289 	ld	hl,#0x1004
   4F0A E5            [11] 3290 	push	hl
   4F0B C5            [11] 3291 	push	bc
   4F0C D5            [11] 3292 	push	de
   4F0D CD 5F 5F      [17] 3293 	call	_cpct_drawSprite
                           3294 ;src/includes/world.h:39: break;
   4F10 C3 8F 4F      [10] 3295 	jp	00119$
                           3296 ;src/includes/world.h:40: case T_RNS:
   4F13                    3297 00109$:
                           3298 ;src/includes/world.h:41: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4F13 11 69 44      [10] 3299 	ld	de,#_rail_ns
   4F16 21 04 10      [10] 3300 	ld	hl,#0x1004
   4F19 E5            [11] 3301 	push	hl
   4F1A C5            [11] 3302 	push	bc
   4F1B D5            [11] 3303 	push	de
   4F1C CD 5F 5F      [17] 3304 	call	_cpct_drawSprite
                           3305 ;src/includes/world.h:42: break;
   4F1F 18 6E         [12] 3306 	jr	00119$
                           3307 ;src/includes/world.h:43: case T_REN:
   4F21                    3308 00110$:
                           3309 ;src/includes/world.h:44: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4F21 11 A9 44      [10] 3310 	ld	de,#_rail_en
   4F24 21 04 10      [10] 3311 	ld	hl,#0x1004
   4F27 E5            [11] 3312 	push	hl
   4F28 C5            [11] 3313 	push	bc
   4F29 D5            [11] 3314 	push	de
   4F2A CD 5F 5F      [17] 3315 	call	_cpct_drawSprite
                           3316 ;src/includes/world.h:45: break;
   4F2D 18 60         [12] 3317 	jr	00119$
                           3318 ;src/includes/world.h:46: case T_RES:
   4F2F                    3319 00111$:
                           3320 ;src/includes/world.h:47: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4F2F 11 E9 44      [10] 3321 	ld	de,#_rail_es
   4F32 21 04 10      [10] 3322 	ld	hl,#0x1004
   4F35 E5            [11] 3323 	push	hl
   4F36 C5            [11] 3324 	push	bc
   4F37 D5            [11] 3325 	push	de
   4F38 CD 5F 5F      [17] 3326 	call	_cpct_drawSprite
                           3327 ;src/includes/world.h:48: break;
   4F3B 18 52         [12] 3328 	jr	00119$
                           3329 ;src/includes/world.h:49: case T_RWN:
   4F3D                    3330 00112$:
                           3331 ;src/includes/world.h:50: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4F3D 11 29 45      [10] 3332 	ld	de,#_rail_wn
   4F40 21 04 10      [10] 3333 	ld	hl,#0x1004
   4F43 E5            [11] 3334 	push	hl
   4F44 C5            [11] 3335 	push	bc
   4F45 D5            [11] 3336 	push	de
   4F46 CD 5F 5F      [17] 3337 	call	_cpct_drawSprite
                           3338 ;src/includes/world.h:51: break;
   4F49 18 44         [12] 3339 	jr	00119$
                           3340 ;src/includes/world.h:52: case T_RWS:
   4F4B                    3341 00113$:
                           3342 ;src/includes/world.h:53: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4F4B 11 69 45      [10] 3343 	ld	de,#_rail_ws
   4F4E 21 04 10      [10] 3344 	ld	hl,#0x1004
   4F51 E5            [11] 3345 	push	hl
   4F52 C5            [11] 3346 	push	bc
   4F53 D5            [11] 3347 	push	de
   4F54 CD 5F 5F      [17] 3348 	call	_cpct_drawSprite
                           3349 ;src/includes/world.h:54: break;
   4F57 18 36         [12] 3350 	jr	00119$
                           3351 ;src/includes/world.h:55: case T_REWN:
   4F59                    3352 00114$:
                           3353 ;src/includes/world.h:56: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4F59 11 A9 45      [10] 3354 	ld	de,#_rail_ew_n
   4F5C 21 04 10      [10] 3355 	ld	hl,#0x1004
   4F5F E5            [11] 3356 	push	hl
   4F60 C5            [11] 3357 	push	bc
   4F61 D5            [11] 3358 	push	de
   4F62 CD 5F 5F      [17] 3359 	call	_cpct_drawSprite
                           3360 ;src/includes/world.h:57: break;
   4F65 18 28         [12] 3361 	jr	00119$
                           3362 ;src/includes/world.h:58: case T_REWS:
   4F67                    3363 00115$:
                           3364 ;src/includes/world.h:59: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4F67 11 E9 45      [10] 3365 	ld	de,#_rail_ew_s
   4F6A 21 04 10      [10] 3366 	ld	hl,#0x1004
   4F6D E5            [11] 3367 	push	hl
   4F6E C5            [11] 3368 	push	bc
   4F6F D5            [11] 3369 	push	de
   4F70 CD 5F 5F      [17] 3370 	call	_cpct_drawSprite
                           3371 ;src/includes/world.h:60: break;
   4F73 18 1A         [12] 3372 	jr	00119$
                           3373 ;src/includes/world.h:61: case T_RNSE:
   4F75                    3374 00116$:
                           3375 ;src/includes/world.h:62: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4F75 11 69 46      [10] 3376 	ld	de,#_rail_ns_e
   4F78 21 04 10      [10] 3377 	ld	hl,#0x1004
   4F7B E5            [11] 3378 	push	hl
   4F7C C5            [11] 3379 	push	bc
   4F7D D5            [11] 3380 	push	de
   4F7E CD 5F 5F      [17] 3381 	call	_cpct_drawSprite
                           3382 ;src/includes/world.h:63: break;
   4F81 18 0C         [12] 3383 	jr	00119$
                           3384 ;src/includes/world.h:64: case T_RNSW:
   4F83                    3385 00117$:
                           3386 ;src/includes/world.h:65: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4F83 11 29 46      [10] 3387 	ld	de,#_rail_ns_w
   4F86 21 04 10      [10] 3388 	ld	hl,#0x1004
   4F89 E5            [11] 3389 	push	hl
   4F8A C5            [11] 3390 	push	bc
   4F8B D5            [11] 3391 	push	de
   4F8C CD 5F 5F      [17] 3392 	call	_cpct_drawSprite
                           3393 ;src/includes/world.h:67: }
   4F8F                    3394 00119$:
   4F8F 33            [ 6] 3395 	inc	sp
   4F90 DD E1         [14] 3396 	pop	ix
   4F92 C9            [10] 3397 	ret
                           3398 ;src/includes/world.h:70: void generateWorld()
                           3399 ;	---------------------------------
                           3400 ; Function generateWorld
                           3401 ; ---------------------------------
   4F93                    3402 _generateWorld::
   4F93 DD E5         [15] 3403 	push	ix
   4F95 DD 21 00 00   [14] 3404 	ld	ix,#0
   4F99 DD 39         [15] 3405 	add	ix,sp
   4F9B F5            [11] 3406 	push	af
   4F9C F5            [11] 3407 	push	af
                           3408 ;src/includes/world.h:78: cpct_setRandomSeedUniform_u8(0);
   4F9D 2E 00         [ 7] 3409 	ld	l,#0x00
   4F9F CD 0A 5F      [17] 3410 	call	_cpct_setRandomSeedUniform_u8
                           3411 ;src/includes/world.h:80: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FA2 11 00 00      [10] 3412 	ld	de,#0x0000
   4FA5                    3413 00114$:
                           3414 ;src/includes/world.h:82: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   4FA5 21 DD 62      [10] 3415 	ld	hl,#_p_world
   4FA8 19            [11] 3416 	add	hl,de
   4FA9 E5            [11] 3417 	push	hl
   4FAA D5            [11] 3418 	push	de
   4FAB 2E 00         [ 7] 3419 	ld	l,#0x00
   4FAD CD F2 60      [17] 3420 	call	_cpct_getRandomUniform_u8_f
   4FB0 7D            [ 4] 3421 	ld	a,l
   4FB1 D1            [10] 3422 	pop	de
   4FB2 E1            [10] 3423 	pop	hl
   4FB3 E6 01         [ 7] 3424 	and	a, #0x01
   4FB5 77            [ 7] 3425 	ld	(hl),a
                           3426 ;src/includes/world.h:80: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FB6 13            [ 6] 3427 	inc	de
   4FB7 7A            [ 4] 3428 	ld	a,d
   4FB8 EE 80         [ 7] 3429 	xor	a, #0x80
   4FBA D6 8F         [ 7] 3430 	sub	a, #0x8F
   4FBC 38 E7         [12] 3431 	jr	C,00114$
                           3432 ;src/includes/world.h:91: cpct_setRandomSeedUniform_u8(1);
   4FBE 2E 01         [ 7] 3433 	ld	l,#0x01
   4FC0 CD 0A 5F      [17] 3434 	call	_cpct_setRandomSeedUniform_u8
                           3435 ;src/includes/world.h:93: for(ix=0; ix<NBFARM; ix++)
   4FC3 21 00 00      [10] 3436 	ld	hl,#0x0000
   4FC6 E3            [19] 3437 	ex	(sp), hl
   4FC7                    3438 00116$:
                           3439 ;src/includes/world.h:95: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   4FC7 2E 01         [ 7] 3440 	ld	l,#0x01
   4FC9 CD F2 60      [17] 3441 	call	_cpct_getRandomUniform_u8_f
   4FCC 4D            [ 4] 3442 	ld	c,l
   4FCD 06 00         [ 7] 3443 	ld	b,#0x00
   4FCF 69            [ 4] 3444 	ld	l, c
   4FD0 60            [ 4] 3445 	ld	h, b
   4FD1 29            [11] 3446 	add	hl, hl
   4FD2 09            [11] 3447 	add	hl, bc
   4FD3 29            [11] 3448 	add	hl, hl
   4FD4 09            [11] 3449 	add	hl, bc
   4FD5 29            [11] 3450 	add	hl, hl
   4FD6 09            [11] 3451 	add	hl, bc
   4FD7 5D            [ 4] 3452 	ld	e,l
   4FD8 54            [ 4] 3453 	ld	d,h
                           3454 ;src/includes/world.h:97: shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
   4FD9 D5            [11] 3455 	push	de
   4FDA CD 7A 60      [17] 3456 	call	_cpct_count2VSYNC
   4FDD CD F2 60      [17] 3457 	call	_cpct_getRandomUniform_u8_f
   4FE0 45            [ 4] 3458 	ld	b,l
   4FE1 3E 0A         [ 7] 3459 	ld	a,#0x0A
   4FE3 F5            [11] 3460 	push	af
   4FE4 33            [ 6] 3461 	inc	sp
   4FE5 C5            [11] 3462 	push	bc
   4FE6 33            [ 6] 3463 	inc	sp
   4FE7 CD 04 60      [17] 3464 	call	__moduchar
   4FEA F1            [10] 3465 	pop	af
   4FEB D1            [10] 3466 	pop	de
   4FEC 26 00         [ 7] 3467 	ld	h,#0x00
                           3468 ;src/includes/world.h:98: shift=iy-shift+5;
   4FEE 7B            [ 4] 3469 	ld	a,e
   4FEF 95            [ 4] 3470 	sub	a, l
   4FF0 6F            [ 4] 3471 	ld	l,a
   4FF1 7A            [ 4] 3472 	ld	a,d
   4FF2 9C            [ 4] 3473 	sbc	a, h
   4FF3 67            [ 4] 3474 	ld	h,a
   4FF4 01 05 00      [10] 3475 	ld	bc,#0x0005
   4FF7 09            [11] 3476 	add	hl,bc
                           3477 ;src/includes/world.h:100: if(shift>0 && shift<WIDTH*HEIGHT)
   4FF8 AF            [ 4] 3478 	xor	a, a
   4FF9 BD            [ 4] 3479 	cp	a, l
   4FFA 9C            [ 4] 3480 	sbc	a, h
   4FFB E2 00 50      [10] 3481 	jp	PO, 00180$
   4FFE EE 80         [ 7] 3482 	xor	a, #0x80
   5000                    3483 00180$:
   5000 F2 1C 50      [10] 3484 	jp	P,00117$
   5003 7C            [ 4] 3485 	ld	a,h
   5004 EE 80         [ 7] 3486 	xor	a, #0x80
   5006 D6 8F         [ 7] 3487 	sub	a, #0x8F
   5008 30 12         [12] 3488 	jr	NC,00117$
                           3489 ;src/includes/world.h:101: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%2+5;
   500A 11 DD 62      [10] 3490 	ld	de,#_p_world
   500D 19            [11] 3491 	add	hl,de
   500E E5            [11] 3492 	push	hl
   500F CD 7A 60      [17] 3493 	call	_cpct_count2VSYNC
   5012 CD F2 60      [17] 3494 	call	_cpct_getRandomUniform_u8_f
   5015 7D            [ 4] 3495 	ld	a,l
   5016 E1            [10] 3496 	pop	hl
   5017 E6 01         [ 7] 3497 	and	a, #0x01
   5019 C6 05         [ 7] 3498 	add	a, #0x05
   501B 77            [ 7] 3499 	ld	(hl),a
   501C                    3500 00117$:
                           3501 ;src/includes/world.h:93: for(ix=0; ix<NBFARM; ix++)
   501C DD 34 FC      [23] 3502 	inc	-4 (ix)
   501F 20 03         [12] 3503 	jr	NZ,00181$
   5021 DD 34 FD      [23] 3504 	inc	-3 (ix)
   5024                    3505 00181$:
   5024 DD 7E FC      [19] 3506 	ld	a,-4 (ix)
   5027 D6 3C         [ 7] 3507 	sub	a, #0x3C
   5029 DD 7E FD      [19] 3508 	ld	a,-3 (ix)
   502C 17            [ 4] 3509 	rla
   502D 3F            [ 4] 3510 	ccf
   502E 1F            [ 4] 3511 	rra
   502F DE 80         [ 7] 3512 	sbc	a, #0x80
   5031 38 94         [12] 3513 	jr	C,00116$
                           3514 ;src/includes/world.h:106: cpct_setRandomSeedUniform_u8(2);
   5033 2E 02         [ 7] 3515 	ld	l,#0x02
   5035 CD 0A 5F      [17] 3516 	call	_cpct_setRandomSeedUniform_u8
                           3517 ;src/includes/world.h:108: for(ix=0; ix<NBURBAN; ix++)
   5038 21 00 00      [10] 3518 	ld	hl,#0x0000
   503B E3            [19] 3519 	ex	(sp), hl
   503C                    3520 00118$:
                           3521 ;src/includes/world.h:110: iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;
   503C CD 7A 60      [17] 3522 	call	_cpct_count2VSYNC
   503F CD F2 60      [17] 3523 	call	_cpct_getRandomUniform_u8_f
   5042 4D            [ 4] 3524 	ld	c,l
   5043 06 00         [ 7] 3525 	ld	b,#0x00
   5045 69            [ 4] 3526 	ld	l, c
   5046 60            [ 4] 3527 	ld	h, b
   5047 29            [11] 3528 	add	hl, hl
   5048 09            [11] 3529 	add	hl, bc
   5049 29            [11] 3530 	add	hl, hl
   504A 09            [11] 3531 	add	hl, bc
   504B 29            [11] 3532 	add	hl, hl
   504C 09            [11] 3533 	add	hl, bc
   504D 5D            [ 4] 3534 	ld	e,l
   504E 54            [ 4] 3535 	ld	d,h
                           3536 ;src/includes/world.h:112: shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
   504F D5            [11] 3537 	push	de
   5050 CD 7A 60      [17] 3538 	call	_cpct_count2VSYNC
   5053 CD F2 60      [17] 3539 	call	_cpct_getRandomUniform_u8_f
   5056 45            [ 4] 3540 	ld	b,l
   5057 3E 0A         [ 7] 3541 	ld	a,#0x0A
   5059 F5            [11] 3542 	push	af
   505A 33            [ 6] 3543 	inc	sp
   505B C5            [11] 3544 	push	bc
   505C 33            [ 6] 3545 	inc	sp
   505D CD 04 60      [17] 3546 	call	__moduchar
   5060 F1            [10] 3547 	pop	af
   5061 D1            [10] 3548 	pop	de
   5062 26 00         [ 7] 3549 	ld	h,#0x00
                           3550 ;src/includes/world.h:113: shift=iy-shift+5;
   5064 7B            [ 4] 3551 	ld	a,e
   5065 95            [ 4] 3552 	sub	a, l
   5066 4F            [ 4] 3553 	ld	c,a
   5067 7A            [ 4] 3554 	ld	a,d
   5068 9C            [ 4] 3555 	sbc	a, h
   5069 47            [ 4] 3556 	ld	b,a
   506A 03            [ 6] 3557 	inc	bc
   506B 03            [ 6] 3558 	inc	bc
   506C 03            [ 6] 3559 	inc	bc
   506D 03            [ 6] 3560 	inc	bc
   506E 03            [ 6] 3561 	inc	bc
                           3562 ;src/includes/world.h:115: if(shift>0 && shift<WIDTH*HEIGHT)
   506F AF            [ 4] 3563 	xor	a, a
   5070 B9            [ 4] 3564 	cp	a, c
   5071 98            [ 4] 3565 	sbc	a, b
   5072 E2 77 50      [10] 3566 	jp	PO, 00182$
   5075 EE 80         [ 7] 3567 	xor	a, #0x80
   5077                    3568 00182$:
   5077 F2 9E 50      [10] 3569 	jp	P,00119$
   507A 78            [ 4] 3570 	ld	a,b
   507B EE 80         [ 7] 3571 	xor	a, #0x80
   507D D6 8F         [ 7] 3572 	sub	a, #0x8F
   507F 30 1D         [12] 3573 	jr	NC,00119$
                           3574 ;src/includes/world.h:116: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   5081 21 DD 62      [10] 3575 	ld	hl,#_p_world
   5084 09            [11] 3576 	add	hl,bc
   5085 5D            [ 4] 3577 	ld	e,l
   5086 54            [ 4] 3578 	ld	d,h
   5087 D5            [11] 3579 	push	de
   5088 CD 7A 60      [17] 3580 	call	_cpct_count2VSYNC
   508B CD F2 60      [17] 3581 	call	_cpct_getRandomUniform_u8_f
   508E 45            [ 4] 3582 	ld	b,l
   508F 3E 03         [ 7] 3583 	ld	a,#0x03
   5091 F5            [11] 3584 	push	af
   5092 33            [ 6] 3585 	inc	sp
   5093 C5            [11] 3586 	push	bc
   5094 33            [ 6] 3587 	inc	sp
   5095 CD 04 60      [17] 3588 	call	__moduchar
   5098 F1            [10] 3589 	pop	af
   5099 7D            [ 4] 3590 	ld	a,l
   509A D1            [10] 3591 	pop	de
   509B C6 02         [ 7] 3592 	add	a, #0x02
   509D 12            [ 7] 3593 	ld	(de),a
   509E                    3594 00119$:
                           3595 ;src/includes/world.h:108: for(ix=0; ix<NBURBAN; ix++)
   509E DD 34 FC      [23] 3596 	inc	-4 (ix)
   50A1 20 03         [12] 3597 	jr	NZ,00183$
   50A3 DD 34 FD      [23] 3598 	inc	-3 (ix)
   50A6                    3599 00183$:
   50A6 DD 7E FC      [19] 3600 	ld	a,-4 (ix)
   50A9 D6 1E         [ 7] 3601 	sub	a, #0x1E
   50AB DD 7E FD      [19] 3602 	ld	a,-3 (ix)
   50AE 17            [ 4] 3603 	rla
   50AF 3F            [ 4] 3604 	ccf
   50B0 1F            [ 4] 3605 	rra
   50B1 DE 80         [ 7] 3606 	sbc	a, #0x80
   50B3 38 87         [12] 3607 	jr	C,00118$
                           3608 ;src/includes/world.h:121: cpct_setRandomSeedUniform_u8(3);
   50B5 2E 03         [ 7] 3609 	ld	l,#0x03
   50B7 CD 0A 5F      [17] 3610 	call	_cpct_setRandomSeedUniform_u8
                           3611 ;src/includes/world.h:123: for(ix=0; ix<NBLIVESTOCK; ix++)
   50BA 11 00 00      [10] 3612 	ld	de,#0x0000
   50BD                    3613 00120$:
                           3614 ;src/includes/world.h:125: iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;
   50BD D5            [11] 3615 	push	de
   50BE CD 7A 60      [17] 3616 	call	_cpct_count2VSYNC
   50C1 CD F2 60      [17] 3617 	call	_cpct_getRandomUniform_u8_f
   50C4 D1            [10] 3618 	pop	de
   50C5 4D            [ 4] 3619 	ld	c,l
   50C6 06 00         [ 7] 3620 	ld	b,#0x00
   50C8 69            [ 4] 3621 	ld	l, c
   50C9 60            [ 4] 3622 	ld	h, b
   50CA 29            [11] 3623 	add	hl, hl
   50CB 09            [11] 3624 	add	hl, bc
   50CC 29            [11] 3625 	add	hl, hl
   50CD 09            [11] 3626 	add	hl, bc
   50CE 29            [11] 3627 	add	hl, hl
   50CF 09            [11] 3628 	add	hl, bc
   50D0 DD 75 FE      [19] 3629 	ld	-2 (ix),l
   50D3 DD 74 FF      [19] 3630 	ld	-1 (ix),h
                           3631 ;src/includes/world.h:127: shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
   50D6 D5            [11] 3632 	push	de
   50D7 CD 7A 60      [17] 3633 	call	_cpct_count2VSYNC
   50DA CD F2 60      [17] 3634 	call	_cpct_getRandomUniform_u8_f
   50DD 45            [ 4] 3635 	ld	b,l
   50DE 3E 0A         [ 7] 3636 	ld	a,#0x0A
   50E0 F5            [11] 3637 	push	af
   50E1 33            [ 6] 3638 	inc	sp
   50E2 C5            [11] 3639 	push	bc
   50E3 33            [ 6] 3640 	inc	sp
   50E4 CD 04 60      [17] 3641 	call	__moduchar
   50E7 F1            [10] 3642 	pop	af
   50E8 D1            [10] 3643 	pop	de
   50E9 26 00         [ 7] 3644 	ld	h,#0x00
                           3645 ;src/includes/world.h:128: shift=iy-shift+5;
   50EB DD 7E FE      [19] 3646 	ld	a,-2 (ix)
   50EE 95            [ 4] 3647 	sub	a, l
   50EF 6F            [ 4] 3648 	ld	l,a
   50F0 DD 7E FF      [19] 3649 	ld	a,-1 (ix)
   50F3 9C            [ 4] 3650 	sbc	a, h
   50F4 67            [ 4] 3651 	ld	h,a
   50F5 01 05 00      [10] 3652 	ld	bc,#0x0005
   50F8 09            [11] 3653 	add	hl,bc
                           3654 ;src/includes/world.h:130: if(shift>0 && shift<WIDTH*HEIGHT)
   50F9 AF            [ 4] 3655 	xor	a, a
   50FA BD            [ 4] 3656 	cp	a, l
   50FB 9C            [ 4] 3657 	sbc	a, h
   50FC E2 01 51      [10] 3658 	jp	PO, 00184$
   50FF EE 80         [ 7] 3659 	xor	a, #0x80
   5101                    3660 00184$:
   5101 F2 11 51      [10] 3661 	jp	P,00121$
   5104 7C            [ 4] 3662 	ld	a,h
   5105 EE 80         [ 7] 3663 	xor	a, #0x80
   5107 D6 8F         [ 7] 3664 	sub	a, #0x8F
   5109 30 06         [12] 3665 	jr	NC,00121$
                           3666 ;src/includes/world.h:131: p_world[shift] = LIVESTOCK;
   510B 01 DD 62      [10] 3667 	ld	bc,#_p_world
   510E 09            [11] 3668 	add	hl,bc
   510F 36 09         [10] 3669 	ld	(hl),#0x09
   5111                    3670 00121$:
                           3671 ;src/includes/world.h:123: for(ix=0; ix<NBLIVESTOCK; ix++)
   5111 13            [ 6] 3672 	inc	de
   5112 7B            [ 4] 3673 	ld	a,e
   5113 D6 13         [ 7] 3674 	sub	a, #0x13
   5115 7A            [ 4] 3675 	ld	a,d
   5116 17            [ 4] 3676 	rla
   5117 3F            [ 4] 3677 	ccf
   5118 1F            [ 4] 3678 	rra
   5119 DE 80         [ 7] 3679 	sbc	a, #0x80
   511B 38 A0         [12] 3680 	jr	C,00120$
   511D DD F9         [10] 3681 	ld	sp, ix
   511F DD E1         [14] 3682 	pop	ix
   5121 C9            [10] 3683 	ret
                           3684 ;src/includes/world.h:135: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           3685 ;	---------------------------------
                           3686 ; Function drawTile
                           3687 ; ---------------------------------
   5122                    3688 _drawTile::
   5122 DD E5         [15] 3689 	push	ix
   5124 DD 21 00 00   [14] 3690 	ld	ix,#0
   5128 DD 39         [15] 3691 	add	ix,sp
                           3692 ;src/includes/world.h:138: int adress = (y_+iy)*WIDTH+x_+ix;
   512A DD 6E 05      [19] 3693 	ld	l,5 (ix)
   512D 26 00         [ 7] 3694 	ld	h,#0x00
   512F DD 5E 07      [19] 3695 	ld	e,7 (ix)
   5132 16 00         [ 7] 3696 	ld	d,#0x00
   5134 19            [11] 3697 	add	hl,de
   5135 4D            [ 4] 3698 	ld	c, l
   5136 44            [ 4] 3699 	ld	b, h
   5137 29            [11] 3700 	add	hl, hl
   5138 29            [11] 3701 	add	hl, hl
   5139 09            [11] 3702 	add	hl, bc
   513A 29            [11] 3703 	add	hl, hl
   513B 29            [11] 3704 	add	hl, hl
   513C 29            [11] 3705 	add	hl, hl
   513D 29            [11] 3706 	add	hl, hl
   513E DD 5E 04      [19] 3707 	ld	e,4 (ix)
   5141 16 00         [ 7] 3708 	ld	d,#0x00
   5143 19            [11] 3709 	add	hl,de
   5144 DD 5E 06      [19] 3710 	ld	e,6 (ix)
   5147 16 00         [ 7] 3711 	ld	d,#0x00
   5149 19            [11] 3712 	add	hl,de
   514A 5D            [ 4] 3713 	ld	e, l
   514B 54            [ 4] 3714 	ld	d, h
                           3715 ;src/includes/world.h:140: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   514C DD 7E 07      [19] 3716 	ld	a,7 (ix)
   514F 07            [ 4] 3717 	rlca
   5150 07            [ 4] 3718 	rlca
   5151 07            [ 4] 3719 	rlca
   5152 07            [ 4] 3720 	rlca
   5153 E6 F0         [ 7] 3721 	and	a,#0xF0
   5155 67            [ 4] 3722 	ld	h,a
   5156 DD 7E 06      [19] 3723 	ld	a,6 (ix)
   5159 87            [ 4] 3724 	add	a, a
   515A 87            [ 4] 3725 	add	a, a
   515B D5            [11] 3726 	push	de
   515C E5            [11] 3727 	push	hl
   515D 33            [ 6] 3728 	inc	sp
   515E F5            [11] 3729 	push	af
   515F 33            [ 6] 3730 	inc	sp
   5160 21 00 C0      [10] 3731 	ld	hl,#0xC000
   5163 E5            [11] 3732 	push	hl
   5164 CD 30 62      [17] 3733 	call	_cpct_getScreenPtr
   5167 D1            [10] 3734 	pop	de
   5168 4D            [ 4] 3735 	ld	c, l
   5169 44            [ 4] 3736 	ld	b, h
                           3737 ;src/includes/world.h:142: switch(p_world[adress])
   516A 21 DD 62      [10] 3738 	ld	hl,#_p_world
   516D 19            [11] 3739 	add	hl,de
   516E 5E            [ 7] 3740 	ld	e,(hl)
   516F 3E 19         [ 7] 3741 	ld	a,#0x19
   5171 93            [ 4] 3742 	sub	a, e
   5172 DA 47 53      [10] 3743 	jp	C,00128$
   5175 16 00         [ 7] 3744 	ld	d,#0x00
   5177 21 7E 51      [10] 3745 	ld	hl,#00134$
   517A 19            [11] 3746 	add	hl,de
   517B 19            [11] 3747 	add	hl,de
   517C 19            [11] 3748 	add	hl,de
   517D E9            [ 4] 3749 	jp	(hl)
   517E                    3750 00134$:
   517E C3 CC 51      [10] 3751 	jp	00101$
   5181 C3 DB 51      [10] 3752 	jp	00102$
   5184 C3 EA 51      [10] 3753 	jp	00103$
   5187 C3 F9 51      [10] 3754 	jp	00104$
   518A C3 08 52      [10] 3755 	jp	00105$
   518D C3 17 52      [10] 3756 	jp	00106$
   5190 C3 26 52      [10] 3757 	jp	00107$
   5193 C3 35 52      [10] 3758 	jp	00108$
   5196 C3 44 52      [10] 3759 	jp	00109$
   5199 C3 53 52      [10] 3760 	jp	00110$
   519C C3 62 52      [10] 3761 	jp	00111$
   519F C3 71 52      [10] 3762 	jp	00112$
   51A2 C3 80 52      [10] 3763 	jp	00113$
   51A5 C3 8F 52      [10] 3764 	jp	00114$
   51A8 C3 9E 52      [10] 3765 	jp	00115$
   51AB C3 AD 52      [10] 3766 	jp	00116$
   51AE C3 BC 52      [10] 3767 	jp	00117$
   51B1 C3 CB 52      [10] 3768 	jp	00118$
   51B4 C3 D9 52      [10] 3769 	jp	00119$
   51B7 C3 E7 52      [10] 3770 	jp	00120$
   51BA C3 F5 52      [10] 3771 	jp	00121$
   51BD C3 03 53      [10] 3772 	jp	00122$
   51C0 C3 11 53      [10] 3773 	jp	00123$
   51C3 C3 1F 53      [10] 3774 	jp	00124$
   51C6 C3 2D 53      [10] 3775 	jp	00125$
   51C9 C3 3B 53      [10] 3776 	jp	00126$
                           3777 ;src/includes/world.h:144: case GRASS1:
   51CC                    3778 00101$:
                           3779 ;src/includes/world.h:145: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   51CC 11 29 40      [10] 3780 	ld	de,#_grass1
   51CF 21 04 10      [10] 3781 	ld	hl,#0x1004
   51D2 E5            [11] 3782 	push	hl
   51D3 C5            [11] 3783 	push	bc
   51D4 D5            [11] 3784 	push	de
   51D5 CD 5F 5F      [17] 3785 	call	_cpct_drawSprite
                           3786 ;src/includes/world.h:146: break;
   51D8 C3 47 53      [10] 3787 	jp	00128$
                           3788 ;src/includes/world.h:147: case GRASS2:
   51DB                    3789 00102$:
                           3790 ;src/includes/world.h:148: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   51DB 11 69 40      [10] 3791 	ld	de,#_grass2
   51DE 21 04 10      [10] 3792 	ld	hl,#0x1004
   51E1 E5            [11] 3793 	push	hl
   51E2 C5            [11] 3794 	push	bc
   51E3 D5            [11] 3795 	push	de
   51E4 CD 5F 5F      [17] 3796 	call	_cpct_drawSprite
                           3797 ;src/includes/world.h:149: break;
   51E7 C3 47 53      [10] 3798 	jp	00128$
                           3799 ;src/includes/world.h:150: case DWELLINGS1:
   51EA                    3800 00103$:
                           3801 ;src/includes/world.h:151: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   51EA 11 E9 40      [10] 3802 	ld	de,#_dwellings1
   51ED 21 04 10      [10] 3803 	ld	hl,#0x1004
   51F0 E5            [11] 3804 	push	hl
   51F1 C5            [11] 3805 	push	bc
   51F2 D5            [11] 3806 	push	de
   51F3 CD 5F 5F      [17] 3807 	call	_cpct_drawSprite
                           3808 ;src/includes/world.h:152: break;
   51F6 C3 47 53      [10] 3809 	jp	00128$
                           3810 ;src/includes/world.h:153: case DWELLINGS2:
   51F9                    3811 00104$:
                           3812 ;src/includes/world.h:154: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   51F9 11 29 41      [10] 3813 	ld	de,#_dwellings2
   51FC 21 04 10      [10] 3814 	ld	hl,#0x1004
   51FF E5            [11] 3815 	push	hl
   5200 C5            [11] 3816 	push	bc
   5201 D5            [11] 3817 	push	de
   5202 CD 5F 5F      [17] 3818 	call	_cpct_drawSprite
                           3819 ;src/includes/world.h:155: break;
   5205 C3 47 53      [10] 3820 	jp	00128$
                           3821 ;src/includes/world.h:156: case DWELLINGS3:
   5208                    3822 00105$:
                           3823 ;src/includes/world.h:157: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5208 11 69 41      [10] 3824 	ld	de,#_dwellings3
   520B 21 04 10      [10] 3825 	ld	hl,#0x1004
   520E E5            [11] 3826 	push	hl
   520F C5            [11] 3827 	push	bc
   5210 D5            [11] 3828 	push	de
   5211 CD 5F 5F      [17] 3829 	call	_cpct_drawSprite
                           3830 ;src/includes/world.h:158: break;
   5214 C3 47 53      [10] 3831 	jp	00128$
                           3832 ;src/includes/world.h:159: case FARM1:
   5217                    3833 00106$:
                           3834 ;src/includes/world.h:160: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   5217 11 E9 41      [10] 3835 	ld	de,#_farm1
   521A 21 04 10      [10] 3836 	ld	hl,#0x1004
   521D E5            [11] 3837 	push	hl
   521E C5            [11] 3838 	push	bc
   521F D5            [11] 3839 	push	de
   5220 CD 5F 5F      [17] 3840 	call	_cpct_drawSprite
                           3841 ;src/includes/world.h:161: break;
   5223 C3 47 53      [10] 3842 	jp	00128$
                           3843 ;src/includes/world.h:162: case FARM2:
   5226                    3844 00107$:
                           3845 ;src/includes/world.h:163: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   5226 11 29 42      [10] 3846 	ld	de,#_farm2
   5229 21 04 10      [10] 3847 	ld	hl,#0x1004
   522C E5            [11] 3848 	push	hl
   522D C5            [11] 3849 	push	bc
   522E D5            [11] 3850 	push	de
   522F CD 5F 5F      [17] 3851 	call	_cpct_drawSprite
                           3852 ;src/includes/world.h:164: break;
   5232 C3 47 53      [10] 3853 	jp	00128$
                           3854 ;src/includes/world.h:165: case WATER:
   5235                    3855 00108$:
                           3856 ;src/includes/world.h:166: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   5235 11 A9 41      [10] 3857 	ld	de,#_water
   5238 21 04 10      [10] 3858 	ld	hl,#0x1004
   523B E5            [11] 3859 	push	hl
   523C C5            [11] 3860 	push	bc
   523D D5            [11] 3861 	push	de
   523E CD 5F 5F      [17] 3862 	call	_cpct_drawSprite
                           3863 ;src/includes/world.h:167: break;
   5241 C3 47 53      [10] 3864 	jp	00128$
                           3865 ;src/includes/world.h:168: case FOREST:
   5244                    3866 00109$:
                           3867 ;src/includes/world.h:169: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5244 11 A9 40      [10] 3868 	ld	de,#_forest
   5247 21 04 10      [10] 3869 	ld	hl,#0x1004
   524A E5            [11] 3870 	push	hl
   524B C5            [11] 3871 	push	bc
   524C D5            [11] 3872 	push	de
   524D CD 5F 5F      [17] 3873 	call	_cpct_drawSprite
                           3874 ;src/includes/world.h:170: break;
   5250 C3 47 53      [10] 3875 	jp	00128$
                           3876 ;src/includes/world.h:171: case LIVESTOCK:
   5253                    3877 00110$:
                           3878 ;src/includes/world.h:172: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5253 11 69 42      [10] 3879 	ld	de,#_livestock
   5256 21 04 10      [10] 3880 	ld	hl,#0x1004
   5259 E5            [11] 3881 	push	hl
   525A C5            [11] 3882 	push	bc
   525B D5            [11] 3883 	push	de
   525C CD 5F 5F      [17] 3884 	call	_cpct_drawSprite
                           3885 ;src/includes/world.h:173: break;
   525F C3 47 53      [10] 3886 	jp	00128$
                           3887 ;src/includes/world.h:174: case SSNS:
   5262                    3888 00111$:
                           3889 ;src/includes/world.h:175: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5262 11 A9 42      [10] 3890 	ld	de,#_station_small_ns
   5265 21 04 10      [10] 3891 	ld	hl,#0x1004
   5268 E5            [11] 3892 	push	hl
   5269 C5            [11] 3893 	push	bc
   526A D5            [11] 3894 	push	de
   526B CD 5F 5F      [17] 3895 	call	_cpct_drawSprite
                           3896 ;src/includes/world.h:176: break;
   526E C3 47 53      [10] 3897 	jp	00128$
                           3898 ;src/includes/world.h:177: case SSEW:
   5271                    3899 00112$:
                           3900 ;src/includes/world.h:178: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5271 11 E9 42      [10] 3901 	ld	de,#_station_small_ew
   5274 21 04 10      [10] 3902 	ld	hl,#0x1004
   5277 E5            [11] 3903 	push	hl
   5278 C5            [11] 3904 	push	bc
   5279 D5            [11] 3905 	push	de
   527A CD 5F 5F      [17] 3906 	call	_cpct_drawSprite
                           3907 ;src/includes/world.h:179: break;
   527D C3 47 53      [10] 3908 	jp	00128$
                           3909 ;src/includes/world.h:180: case SMNS:
   5280                    3910 00113$:
                           3911 ;src/includes/world.h:181: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5280 11 29 43      [10] 3912 	ld	de,#_station_medium_ns
   5283 21 04 10      [10] 3913 	ld	hl,#0x1004
   5286 E5            [11] 3914 	push	hl
   5287 C5            [11] 3915 	push	bc
   5288 D5            [11] 3916 	push	de
   5289 CD 5F 5F      [17] 3917 	call	_cpct_drawSprite
                           3918 ;src/includes/world.h:182: break;
   528C C3 47 53      [10] 3919 	jp	00128$
                           3920 ;src/includes/world.h:183: case SMEW:
   528F                    3921 00114$:
                           3922 ;src/includes/world.h:184: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   528F 11 69 43      [10] 3923 	ld	de,#_station_medium_ew
   5292 21 04 10      [10] 3924 	ld	hl,#0x1004
   5295 E5            [11] 3925 	push	hl
   5296 C5            [11] 3926 	push	bc
   5297 D5            [11] 3927 	push	de
   5298 CD 5F 5F      [17] 3928 	call	_cpct_drawSprite
                           3929 ;src/includes/world.h:185: break;
   529B C3 47 53      [10] 3930 	jp	00128$
                           3931 ;src/includes/world.h:186: case SLNS:
   529E                    3932 00115$:
                           3933 ;src/includes/world.h:187: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   529E 11 A9 43      [10] 3934 	ld	de,#_station_large_ns
   52A1 21 04 10      [10] 3935 	ld	hl,#0x1004
   52A4 E5            [11] 3936 	push	hl
   52A5 C5            [11] 3937 	push	bc
   52A6 D5            [11] 3938 	push	de
   52A7 CD 5F 5F      [17] 3939 	call	_cpct_drawSprite
                           3940 ;src/includes/world.h:188: break;
   52AA C3 47 53      [10] 3941 	jp	00128$
                           3942 ;src/includes/world.h:189: case SLEW:
   52AD                    3943 00116$:
                           3944 ;src/includes/world.h:190: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   52AD 11 E9 43      [10] 3945 	ld	de,#_station_large_ew
   52B0 21 04 10      [10] 3946 	ld	hl,#0x1004
   52B3 E5            [11] 3947 	push	hl
   52B4 C5            [11] 3948 	push	bc
   52B5 D5            [11] 3949 	push	de
   52B6 CD 5F 5F      [17] 3950 	call	_cpct_drawSprite
                           3951 ;src/includes/world.h:191: break;
   52B9 C3 47 53      [10] 3952 	jp	00128$
                           3953 ;src/includes/world.h:192: case REW:
   52BC                    3954 00117$:
                           3955 ;src/includes/world.h:193: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   52BC 11 29 44      [10] 3956 	ld	de,#_rail_ew
   52BF 21 04 10      [10] 3957 	ld	hl,#0x1004
   52C2 E5            [11] 3958 	push	hl
   52C3 C5            [11] 3959 	push	bc
   52C4 D5            [11] 3960 	push	de
   52C5 CD 5F 5F      [17] 3961 	call	_cpct_drawSprite
                           3962 ;src/includes/world.h:194: break;
   52C8 C3 47 53      [10] 3963 	jp	00128$
                           3964 ;src/includes/world.h:195: case RNS:
   52CB                    3965 00118$:
                           3966 ;src/includes/world.h:196: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   52CB 11 69 44      [10] 3967 	ld	de,#_rail_ns
   52CE 21 04 10      [10] 3968 	ld	hl,#0x1004
   52D1 E5            [11] 3969 	push	hl
   52D2 C5            [11] 3970 	push	bc
   52D3 D5            [11] 3971 	push	de
   52D4 CD 5F 5F      [17] 3972 	call	_cpct_drawSprite
                           3973 ;src/includes/world.h:197: break;
   52D7 18 6E         [12] 3974 	jr	00128$
                           3975 ;src/includes/world.h:198: case REN:
   52D9                    3976 00119$:
                           3977 ;src/includes/world.h:199: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   52D9 11 A9 44      [10] 3978 	ld	de,#_rail_en
   52DC 21 04 10      [10] 3979 	ld	hl,#0x1004
   52DF E5            [11] 3980 	push	hl
   52E0 C5            [11] 3981 	push	bc
   52E1 D5            [11] 3982 	push	de
   52E2 CD 5F 5F      [17] 3983 	call	_cpct_drawSprite
                           3984 ;src/includes/world.h:200: break;
   52E5 18 60         [12] 3985 	jr	00128$
                           3986 ;src/includes/world.h:201: case RES:
   52E7                    3987 00120$:
                           3988 ;src/includes/world.h:202: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   52E7 11 E9 44      [10] 3989 	ld	de,#_rail_es
   52EA 21 04 10      [10] 3990 	ld	hl,#0x1004
   52ED E5            [11] 3991 	push	hl
   52EE C5            [11] 3992 	push	bc
   52EF D5            [11] 3993 	push	de
   52F0 CD 5F 5F      [17] 3994 	call	_cpct_drawSprite
                           3995 ;src/includes/world.h:203: break;
   52F3 18 52         [12] 3996 	jr	00128$
                           3997 ;src/includes/world.h:204: case RWN:
   52F5                    3998 00121$:
                           3999 ;src/includes/world.h:205: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   52F5 11 29 45      [10] 4000 	ld	de,#_rail_wn
   52F8 21 04 10      [10] 4001 	ld	hl,#0x1004
   52FB E5            [11] 4002 	push	hl
   52FC C5            [11] 4003 	push	bc
   52FD D5            [11] 4004 	push	de
   52FE CD 5F 5F      [17] 4005 	call	_cpct_drawSprite
                           4006 ;src/includes/world.h:206: break;
   5301 18 44         [12] 4007 	jr	00128$
                           4008 ;src/includes/world.h:207: case RWS:
   5303                    4009 00122$:
                           4010 ;src/includes/world.h:208: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5303 11 69 45      [10] 4011 	ld	de,#_rail_ws
   5306 21 04 10      [10] 4012 	ld	hl,#0x1004
   5309 E5            [11] 4013 	push	hl
   530A C5            [11] 4014 	push	bc
   530B D5            [11] 4015 	push	de
   530C CD 5F 5F      [17] 4016 	call	_cpct_drawSprite
                           4017 ;src/includes/world.h:209: break;
   530F 18 36         [12] 4018 	jr	00128$
                           4019 ;src/includes/world.h:210: case REWN:
   5311                    4020 00123$:
                           4021 ;src/includes/world.h:211: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5311 11 A9 45      [10] 4022 	ld	de,#_rail_ew_n
   5314 21 04 10      [10] 4023 	ld	hl,#0x1004
   5317 E5            [11] 4024 	push	hl
   5318 C5            [11] 4025 	push	bc
   5319 D5            [11] 4026 	push	de
   531A CD 5F 5F      [17] 4027 	call	_cpct_drawSprite
                           4028 ;src/includes/world.h:212: break;
   531D 18 28         [12] 4029 	jr	00128$
                           4030 ;src/includes/world.h:213: case REWS:
   531F                    4031 00124$:
                           4032 ;src/includes/world.h:214: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   531F 11 E9 45      [10] 4033 	ld	de,#_rail_ew_s
   5322 21 04 10      [10] 4034 	ld	hl,#0x1004
   5325 E5            [11] 4035 	push	hl
   5326 C5            [11] 4036 	push	bc
   5327 D5            [11] 4037 	push	de
   5328 CD 5F 5F      [17] 4038 	call	_cpct_drawSprite
                           4039 ;src/includes/world.h:215: break;
   532B 18 1A         [12] 4040 	jr	00128$
                           4041 ;src/includes/world.h:216: case RNSE:
   532D                    4042 00125$:
                           4043 ;src/includes/world.h:217: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   532D 11 69 46      [10] 4044 	ld	de,#_rail_ns_e
   5330 21 04 10      [10] 4045 	ld	hl,#0x1004
   5333 E5            [11] 4046 	push	hl
   5334 C5            [11] 4047 	push	bc
   5335 D5            [11] 4048 	push	de
   5336 CD 5F 5F      [17] 4049 	call	_cpct_drawSprite
                           4050 ;src/includes/world.h:218: break;
   5339 18 0C         [12] 4051 	jr	00128$
                           4052 ;src/includes/world.h:219: case RNSW:
   533B                    4053 00126$:
                           4054 ;src/includes/world.h:220: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   533B 11 29 46      [10] 4055 	ld	de,#_rail_ns_w
   533E 21 04 10      [10] 4056 	ld	hl,#0x1004
   5341 E5            [11] 4057 	push	hl
   5342 C5            [11] 4058 	push	bc
   5343 D5            [11] 4059 	push	de
   5344 CD 5F 5F      [17] 4060 	call	_cpct_drawSprite
                           4061 ;src/includes/world.h:222: }
   5347                    4062 00128$:
   5347 DD E1         [14] 4063 	pop	ix
   5349 C9            [10] 4064 	ret
                           4065 ;src/includes/world.h:225: void drawWorld(u8 x_, u8 y_)
                           4066 ;	---------------------------------
                           4067 ; Function drawWorld
                           4068 ; ---------------------------------
   534A                    4069 _drawWorld::
   534A DD E5         [15] 4070 	push	ix
   534C DD 21 00 00   [14] 4071 	ld	ix,#0
   5350 DD 39         [15] 4072 	add	ix,sp
   5352 3B            [ 6] 4073 	dec	sp
                           4074 ;src/includes/world.h:233: for(iy=0; iy<NBTILE_H;iy++)
   5353 16 00         [ 7] 4075 	ld	d,#0x00
                           4076 ;src/includes/world.h:235: for(ix=0; ix<NBTILE_W;ix++)
   5355                    4077 00109$:
   5355 1E 00         [ 7] 4078 	ld	e,#0x00
   5357                    4079 00103$:
                           4080 ;src/includes/world.h:237: drawTile(x_, y_, ix, iy);
   5357 D5            [11] 4081 	push	de
   5358 D5            [11] 4082 	push	de
   5359 DD 66 05      [19] 4083 	ld	h,5 (ix)
   535C DD 6E 04      [19] 4084 	ld	l,4 (ix)
   535F E5            [11] 4085 	push	hl
   5360 CD 22 51      [17] 4086 	call	_drawTile
   5363 F1            [10] 4087 	pop	af
   5364 F1            [10] 4088 	pop	af
   5365 D1            [10] 4089 	pop	de
                           4090 ;src/includes/world.h:235: for(ix=0; ix<NBTILE_W;ix++)
   5366 1C            [ 4] 4091 	inc	e
   5367 7B            [ 4] 4092 	ld	a,e
   5368 D6 14         [ 7] 4093 	sub	a, #0x14
   536A 38 EB         [12] 4094 	jr	C,00103$
                           4095 ;src/includes/world.h:233: for(iy=0; iy<NBTILE_H;iy++)
   536C 14            [ 4] 4096 	inc	d
   536D 7A            [ 4] 4097 	ld	a,d
   536E D6 0C         [ 7] 4098 	sub	a, #0x0C
   5370 38 E3         [12] 4099 	jr	C,00109$
                           4100 ;src/includes/world.h:243: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5372 DD 4E 04      [19] 4101 	ld	c,4 (ix)
   5375 06 00         [ 7] 4102 	ld	b,#0x00
   5377 69            [ 4] 4103 	ld	l, c
   5378 60            [ 4] 4104 	ld	h, b
   5379 29            [11] 4105 	add	hl, hl
   537A 29            [11] 4106 	add	hl, hl
   537B 29            [11] 4107 	add	hl, hl
   537C 09            [11] 4108 	add	hl, bc
   537D 29            [11] 4109 	add	hl, hl
   537E 09            [11] 4110 	add	hl, bc
   537F 29            [11] 4111 	add	hl, hl
   5380 29            [11] 4112 	add	hl, hl
   5381 01 3C 00      [10] 4113 	ld	bc,#0x003C
   5384 C5            [11] 4114 	push	bc
   5385 E5            [11] 4115 	push	hl
   5386 CD 81 62      [17] 4116 	call	__divsint
   5389 F1            [10] 4117 	pop	af
   538A F1            [10] 4118 	pop	af
   538B 55            [ 4] 4119 	ld	d,l
                           4120 ;src/includes/world.h:244: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   538C DD 4E 05      [19] 4121 	ld	c,5 (ix)
   538F 06 00         [ 7] 4122 	ld	b,#0x00
   5391 69            [ 4] 4123 	ld	l, c
   5392 60            [ 4] 4124 	ld	h, b
   5393 29            [11] 4125 	add	hl, hl
   5394 29            [11] 4126 	add	hl, hl
   5395 09            [11] 4127 	add	hl, bc
   5396 29            [11] 4128 	add	hl, hl
   5397 09            [11] 4129 	add	hl, bc
   5398 29            [11] 4130 	add	hl, hl
   5399 29            [11] 4131 	add	hl, hl
   539A 29            [11] 4132 	add	hl, hl
   539B 29            [11] 4133 	add	hl, hl
   539C D5            [11] 4134 	push	de
   539D 01 24 00      [10] 4135 	ld	bc,#0x0024
   53A0 C5            [11] 4136 	push	bc
   53A1 E5            [11] 4137 	push	hl
   53A2 CD 81 62      [17] 4138 	call	__divsint
   53A5 F1            [10] 4139 	pop	af
   53A6 F1            [10] 4140 	pop	af
   53A7 D1            [10] 4141 	pop	de
   53A8 DD 75 FF      [19] 4142 	ld	-1 (ix),l
                           4143 ;src/includes/world.h:246: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   53AB AF            [ 4] 4144 	xor	a, a
   53AC F5            [11] 4145 	push	af
   53AD 33            [ 6] 4146 	inc	sp
   53AE D5            [11] 4147 	push	de
   53AF 33            [ 6] 4148 	inc	sp
   53B0 21 00 C0      [10] 4149 	ld	hl,#0xC000
   53B3 E5            [11] 4150 	push	hl
   53B4 CD 30 62      [17] 4151 	call	_cpct_getScreenPtr
                           4152 ;src/includes/world.h:247: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   53B7 E5            [11] 4153 	push	hl
   53B8 21 00 00      [10] 4154 	ld	hl,#0x0000
   53BB E5            [11] 4155 	push	hl
   53BC 2E 00         [ 7] 4156 	ld	l, #0x00
   53BE E5            [11] 4157 	push	hl
   53BF CD 3F 61      [17] 4158 	call	_cpct_px2byteM1
   53C2 F1            [10] 4159 	pop	af
   53C3 F1            [10] 4160 	pop	af
   53C4 45            [ 4] 4161 	ld	b,l
   53C5 D1            [10] 4162 	pop	de
   53C6 21 04 04      [10] 4163 	ld	hl,#0x0404
   53C9 E5            [11] 4164 	push	hl
   53CA C5            [11] 4165 	push	bc
   53CB 33            [ 6] 4166 	inc	sp
   53CC D5            [11] 4167 	push	de
   53CD CD 77 61      [17] 4168 	call	_cpct_drawSolidBox
   53D0 F1            [10] 4169 	pop	af
   53D1 F1            [10] 4170 	pop	af
   53D2 33            [ 6] 4171 	inc	sp
                           4172 ;src/includes/world.h:249: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   53D3 DD 7E FF      [19] 4173 	ld	a,-1 (ix)
   53D6 F5            [11] 4174 	push	af
   53D7 33            [ 6] 4175 	inc	sp
   53D8 AF            [ 4] 4176 	xor	a, a
   53D9 F5            [11] 4177 	push	af
   53DA 33            [ 6] 4178 	inc	sp
   53DB 21 00 C0      [10] 4179 	ld	hl,#0xC000
   53DE E5            [11] 4180 	push	hl
   53DF CD 30 62      [17] 4181 	call	_cpct_getScreenPtr
                           4182 ;src/includes/world.h:250: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   53E2 E5            [11] 4183 	push	hl
   53E3 21 00 00      [10] 4184 	ld	hl,#0x0000
   53E6 E5            [11] 4185 	push	hl
   53E7 2E 00         [ 7] 4186 	ld	l, #0x00
   53E9 E5            [11] 4187 	push	hl
   53EA CD 3F 61      [17] 4188 	call	_cpct_px2byteM1
   53ED F1            [10] 4189 	pop	af
   53EE F1            [10] 4190 	pop	af
   53EF 45            [ 4] 4191 	ld	b,l
   53F0 D1            [10] 4192 	pop	de
   53F1 21 01 10      [10] 4193 	ld	hl,#0x1001
   53F4 E5            [11] 4194 	push	hl
   53F5 C5            [11] 4195 	push	bc
   53F6 33            [ 6] 4196 	inc	sp
   53F7 D5            [11] 4197 	push	de
   53F8 CD 77 61      [17] 4198 	call	_cpct_drawSolidBox
   53FB F1            [10] 4199 	pop	af
   53FC F1            [10] 4200 	pop	af
   53FD 33            [ 6] 4201 	inc	sp
   53FE 33            [ 6] 4202 	inc	sp
   53FF DD E1         [14] 4203 	pop	ix
   5401 C9            [10] 4204 	ret
                           4205 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           4206 ;	---------------------------------
                           4207 ; Function windowInfoTile
                           4208 ; ---------------------------------
   5402                    4209 _windowInfoTile::
   5402 DD E5         [15] 4210 	push	ix
   5404 DD 21 00 00   [14] 4211 	ld	ix,#0
   5408 DD 39         [15] 4212 	add	ix,sp
   540A 21 F8 FF      [10] 4213 	ld	hl,#-8
   540D 39            [11] 4214 	add	hl,sp
   540E F9            [ 6] 4215 	ld	sp,hl
                           4216 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   540F DD 4E 05      [19] 4217 	ld	c,5 (ix)
   5412 06 00         [ 7] 4218 	ld	b,#0x00
   5414 69            [ 4] 4219 	ld	l, c
   5415 60            [ 4] 4220 	ld	h, b
   5416 29            [11] 4221 	add	hl, hl
   5417 29            [11] 4222 	add	hl, hl
   5418 09            [11] 4223 	add	hl, bc
   5419 29            [11] 4224 	add	hl, hl
   541A 29            [11] 4225 	add	hl, hl
   541B 29            [11] 4226 	add	hl, hl
   541C 29            [11] 4227 	add	hl, hl
   541D DD 5E 04      [19] 4228 	ld	e,4 (ix)
   5420 16 00         [ 7] 4229 	ld	d,#0x00
   5422 19            [11] 4230 	add	hl,de
   5423 11 DD 62      [10] 4231 	ld	de,#_p_world
   5426 19            [11] 4232 	add	hl,de
   5427 4E            [ 7] 4233 	ld	c,(hl)
   5428 3E 09         [ 7] 4234 	ld	a,#0x09
   542A 91            [ 4] 4235 	sub	a, c
   542B DA 5C 55      [10] 4236 	jp	C,00111$
   542E 59            [ 4] 4237 	ld	e,c
   542F 16 00         [ 7] 4238 	ld	d,#0x00
   5431 21 38 54      [10] 4239 	ld	hl,#00119$
   5434 19            [11] 4240 	add	hl,de
   5435 19            [11] 4241 	add	hl,de
   5436 19            [11] 4242 	add	hl,de
   5437 E9            [ 4] 4243 	jp	(hl)
   5438                    4244 00119$:
   5438 C3 56 54      [10] 4245 	jp	00101$
   543B C3 56 54      [10] 4246 	jp	00102$
   543E C3 82 54      [10] 4247 	jp	00103$
   5441 C3 82 54      [10] 4248 	jp	00104$
   5444 C3 82 54      [10] 4249 	jp	00105$
   5447 C3 AE 54      [10] 4250 	jp	00106$
   544A C3 AE 54      [10] 4251 	jp	00107$
   544D C3 DA 54      [10] 4252 	jp	00108$
   5450 C3 06 55      [10] 4253 	jp	00109$
   5453 C3 31 55      [10] 4254 	jp	00110$
                           4255 ;src/includes/game.h:7: case GRASS1:
   5456                    4256 00101$:
                           4257 ;src/includes/game.h:8: case GRASS2:
   5456                    4258 00102$:
                           4259 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   5456 21 00 00      [10] 4260 	ld	hl,#0x0000
   5459 39            [11] 4261 	add	hl,sp
   545A 5D            [ 4] 4262 	ld	e,l
   545B 54            [ 4] 4263 	ld	d,h
   545C 36 97         [10] 4264 	ld	(hl),#<(___str_2)
   545E 23            [ 6] 4265 	inc	hl
   545F 36 55         [10] 4266 	ld	(hl),#>(___str_2)
                           4267 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   5461 6B            [ 4] 4268 	ld	l, e
   5462 62            [ 4] 4269 	ld	h, d
   5463 23            [ 6] 4270 	inc	hl
   5464 23            [ 6] 4271 	inc	hl
   5465 01 A1 55      [10] 4272 	ld	bc,#___str_3+0
   5468 71            [ 7] 4273 	ld	(hl),c
   5469 23            [ 6] 4274 	inc	hl
   546A 70            [ 7] 4275 	ld	(hl),b
                           4276 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   546B 21 04 00      [10] 4277 	ld	hl,#0x0004
   546E 19            [11] 4278 	add	hl,de
   546F 01 A2 55      [10] 4279 	ld	bc,#___str_4+0
   5472 71            [ 7] 4280 	ld	(hl),c
   5473 23            [ 6] 4281 	inc	hl
   5474 70            [ 7] 4282 	ld	(hl),b
                           4283 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   5475 21 06 00      [10] 4284 	ld	hl,#0x0006
   5478 19            [11] 4285 	add	hl,de
   5479 11 B6 55      [10] 4286 	ld	de,#___str_5+0
   547C 73            [ 7] 4287 	ld	(hl),e
   547D 23            [ 6] 4288 	inc	hl
   547E 72            [ 7] 4289 	ld	(hl),d
                           4290 ;src/includes/game.h:13: break;
   547F C3 85 55      [10] 4291 	jp	00112$
                           4292 ;src/includes/game.h:14: case DWELLINGS1:
   5482                    4293 00103$:
                           4294 ;src/includes/game.h:15: case DWELLINGS2:
   5482                    4295 00104$:
                           4296 ;src/includes/game.h:16: case DWELLINGS3:
   5482                    4297 00105$:
                           4298 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   5482 21 00 00      [10] 4299 	ld	hl,#0x0000
   5485 39            [11] 4300 	add	hl,sp
   5486 5D            [ 4] 4301 	ld	e,l
   5487 54            [ 4] 4302 	ld	d,h
   5488 36 C6         [10] 4303 	ld	(hl),#<(___str_6)
   548A 23            [ 6] 4304 	inc	hl
   548B 36 55         [10] 4305 	ld	(hl),#>(___str_6)
                           4306 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   548D 6B            [ 4] 4307 	ld	l, e
   548E 62            [ 4] 4308 	ld	h, d
   548F 23            [ 6] 4309 	inc	hl
   5490 23            [ 6] 4310 	inc	hl
   5491 01 A1 55      [10] 4311 	ld	bc,#___str_3+0
   5494 71            [ 7] 4312 	ld	(hl),c
   5495 23            [ 6] 4313 	inc	hl
   5496 70            [ 7] 4314 	ld	(hl),b
                           4315 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   5497 21 04 00      [10] 4316 	ld	hl,#0x0004
   549A 19            [11] 4317 	add	hl,de
   549B 01 CB 55      [10] 4318 	ld	bc,#___str_7+0
   549E 71            [ 7] 4319 	ld	(hl),c
   549F 23            [ 6] 4320 	inc	hl
   54A0 70            [ 7] 4321 	ld	(hl),b
                           4322 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   54A1 21 06 00      [10] 4323 	ld	hl,#0x0006
   54A4 19            [11] 4324 	add	hl,de
   54A5 11 E8 55      [10] 4325 	ld	de,#___str_8+0
   54A8 73            [ 7] 4326 	ld	(hl),e
   54A9 23            [ 6] 4327 	inc	hl
   54AA 72            [ 7] 4328 	ld	(hl),d
                           4329 ;src/includes/game.h:21: break;
   54AB C3 85 55      [10] 4330 	jp	00112$
                           4331 ;src/includes/game.h:22: case FARM1:
   54AE                    4332 00106$:
                           4333 ;src/includes/game.h:23: case FARM2:
   54AE                    4334 00107$:
                           4335 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   54AE 21 00 00      [10] 4336 	ld	hl,#0x0000
   54B1 39            [11] 4337 	add	hl,sp
   54B2 5D            [ 4] 4338 	ld	e,l
   54B3 54            [ 4] 4339 	ld	d,h
   54B4 36 0D         [10] 4340 	ld	(hl),#<(___str_9)
   54B6 23            [ 6] 4341 	inc	hl
   54B7 36 56         [10] 4342 	ld	(hl),#>(___str_9)
                           4343 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   54B9 6B            [ 4] 4344 	ld	l, e
   54BA 62            [ 4] 4345 	ld	h, d
   54BB 23            [ 6] 4346 	inc	hl
   54BC 23            [ 6] 4347 	inc	hl
   54BD 01 A1 55      [10] 4348 	ld	bc,#___str_3+0
   54C0 71            [ 7] 4349 	ld	(hl),c
   54C1 23            [ 6] 4350 	inc	hl
   54C2 70            [ 7] 4351 	ld	(hl),b
                           4352 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   54C3 21 04 00      [10] 4353 	ld	hl,#0x0004
   54C6 19            [11] 4354 	add	hl,de
   54C7 01 12 56      [10] 4355 	ld	bc,#___str_10+0
   54CA 71            [ 7] 4356 	ld	(hl),c
   54CB 23            [ 6] 4357 	inc	hl
   54CC 70            [ 7] 4358 	ld	(hl),b
                           4359 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   54CD 21 06 00      [10] 4360 	ld	hl,#0x0006
   54D0 19            [11] 4361 	add	hl,de
   54D1 11 25 56      [10] 4362 	ld	de,#___str_11+0
   54D4 73            [ 7] 4363 	ld	(hl),e
   54D5 23            [ 6] 4364 	inc	hl
   54D6 72            [ 7] 4365 	ld	(hl),d
                           4366 ;src/includes/game.h:28: break;
   54D7 C3 85 55      [10] 4367 	jp	00112$
                           4368 ;src/includes/game.h:29: case WATER:
   54DA                    4369 00108$:
                           4370 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   54DA 21 00 00      [10] 4371 	ld	hl,#0x0000
   54DD 39            [11] 4372 	add	hl,sp
   54DE 5D            [ 4] 4373 	ld	e,l
   54DF 54            [ 4] 4374 	ld	d,h
   54E0 36 35         [10] 4375 	ld	(hl),#<(___str_12)
   54E2 23            [ 6] 4376 	inc	hl
   54E3 36 56         [10] 4377 	ld	(hl),#>(___str_12)
                           4378 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   54E5 6B            [ 4] 4379 	ld	l, e
   54E6 62            [ 4] 4380 	ld	h, d
   54E7 23            [ 6] 4381 	inc	hl
   54E8 23            [ 6] 4382 	inc	hl
   54E9 01 A1 55      [10] 4383 	ld	bc,#___str_3+0
   54EC 71            [ 7] 4384 	ld	(hl),c
   54ED 23            [ 6] 4385 	inc	hl
   54EE 70            [ 7] 4386 	ld	(hl),b
                           4387 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   54EF 21 04 00      [10] 4388 	ld	hl,#0x0004
   54F2 19            [11] 4389 	add	hl,de
   54F3 01 3B 56      [10] 4390 	ld	bc,#___str_13+0
   54F6 71            [ 7] 4391 	ld	(hl),c
   54F7 23            [ 6] 4392 	inc	hl
   54F8 70            [ 7] 4393 	ld	(hl),b
                           4394 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   54F9 21 06 00      [10] 4395 	ld	hl,#0x0006
   54FC 19            [11] 4396 	add	hl,de
   54FD 11 25 56      [10] 4397 	ld	de,#___str_11+0
   5500 73            [ 7] 4398 	ld	(hl),e
   5501 23            [ 6] 4399 	inc	hl
   5502 72            [ 7] 4400 	ld	(hl),d
                           4401 ;src/includes/game.h:34: break;
   5503 C3 85 55      [10] 4402 	jp	00112$
                           4403 ;src/includes/game.h:35: case FOREST:
   5506                    4404 00109$:
                           4405 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   5506 21 00 00      [10] 4406 	ld	hl,#0x0000
   5509 39            [11] 4407 	add	hl,sp
   550A 5D            [ 4] 4408 	ld	e,l
   550B 54            [ 4] 4409 	ld	d,h
   550C 36 4F         [10] 4410 	ld	(hl),#<(___str_14)
   550E 23            [ 6] 4411 	inc	hl
   550F 36 56         [10] 4412 	ld	(hl),#>(___str_14)
                           4413 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   5511 6B            [ 4] 4414 	ld	l, e
   5512 62            [ 4] 4415 	ld	h, d
   5513 23            [ 6] 4416 	inc	hl
   5514 23            [ 6] 4417 	inc	hl
   5515 01 A1 55      [10] 4418 	ld	bc,#___str_3+0
   5518 71            [ 7] 4419 	ld	(hl),c
   5519 23            [ 6] 4420 	inc	hl
   551A 70            [ 7] 4421 	ld	(hl),b
                           4422 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   551B 21 04 00      [10] 4423 	ld	hl,#0x0004
   551E 19            [11] 4424 	add	hl,de
   551F 01 3B 56      [10] 4425 	ld	bc,#___str_13+0
   5522 71            [ 7] 4426 	ld	(hl),c
   5523 23            [ 6] 4427 	inc	hl
   5524 70            [ 7] 4428 	ld	(hl),b
                           4429 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   5525 21 06 00      [10] 4430 	ld	hl,#0x0006
   5528 19            [11] 4431 	add	hl,de
   5529 11 25 56      [10] 4432 	ld	de,#___str_11+0
   552C 73            [ 7] 4433 	ld	(hl),e
   552D 23            [ 6] 4434 	inc	hl
   552E 72            [ 7] 4435 	ld	(hl),d
                           4436 ;src/includes/game.h:40: break;
   552F 18 54         [12] 4437 	jr	00112$
                           4438 ;src/includes/game.h:41: case LIVESTOCK:
   5531                    4439 00110$:
                           4440 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   5531 21 00 00      [10] 4441 	ld	hl,#0x0000
   5534 39            [11] 4442 	add	hl,sp
   5535 5D            [ 4] 4443 	ld	e,l
   5536 54            [ 4] 4444 	ld	d,h
   5537 36 56         [10] 4445 	ld	(hl),#<(___str_15)
   5539 23            [ 6] 4446 	inc	hl
   553A 36 56         [10] 4447 	ld	(hl),#>(___str_15)
                           4448 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   553C 6B            [ 4] 4449 	ld	l, e
   553D 62            [ 4] 4450 	ld	h, d
   553E 23            [ 6] 4451 	inc	hl
   553F 23            [ 6] 4452 	inc	hl
   5540 01 A1 55      [10] 4453 	ld	bc,#___str_3+0
   5543 71            [ 7] 4454 	ld	(hl),c
   5544 23            [ 6] 4455 	inc	hl
   5545 70            [ 7] 4456 	ld	(hl),b
                           4457 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   5546 21 04 00      [10] 4458 	ld	hl,#0x0004
   5549 19            [11] 4459 	add	hl,de
   554A 01 68 56      [10] 4460 	ld	bc,#___str_16+0
   554D 71            [ 7] 4461 	ld	(hl),c
   554E 23            [ 6] 4462 	inc	hl
   554F 70            [ 7] 4463 	ld	(hl),b
                           4464 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   5550 21 06 00      [10] 4465 	ld	hl,#0x0006
   5553 19            [11] 4466 	add	hl,de
   5554 11 84 56      [10] 4467 	ld	de,#___str_17+0
   5557 73            [ 7] 4468 	ld	(hl),e
   5558 23            [ 6] 4469 	inc	hl
   5559 72            [ 7] 4470 	ld	(hl),d
                           4471 ;src/includes/game.h:46: break;
   555A 18 29         [12] 4472 	jr	00112$
                           4473 ;src/includes/game.h:47: default:
   555C                    4474 00111$:
                           4475 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   555C 21 00 00      [10] 4476 	ld	hl,#0x0000
   555F 39            [11] 4477 	add	hl,sp
   5560 5D            [ 4] 4478 	ld	e,l
   5561 54            [ 4] 4479 	ld	d,h
   5562 36 93         [10] 4480 	ld	(hl),#<(___str_18)
   5564 23            [ 6] 4481 	inc	hl
   5565 36 56         [10] 4482 	ld	(hl),#>(___str_18)
                           4483 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   5567 6B            [ 4] 4484 	ld	l, e
   5568 62            [ 4] 4485 	ld	h, d
   5569 23            [ 6] 4486 	inc	hl
   556A 23            [ 6] 4487 	inc	hl
   556B 01 A1 55      [10] 4488 	ld	bc,#___str_3+0
   556E 71            [ 7] 4489 	ld	(hl),c
   556F 23            [ 6] 4490 	inc	hl
   5570 70            [ 7] 4491 	ld	(hl),b
                           4492 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   5571 21 04 00      [10] 4493 	ld	hl,#0x0004
   5574 19            [11] 4494 	add	hl,de
   5575 01 A7 56      [10] 4495 	ld	bc,#___str_19+0
   5578 71            [ 7] 4496 	ld	(hl),c
   5579 23            [ 6] 4497 	inc	hl
   557A 70            [ 7] 4498 	ld	(hl),b
                           4499 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   557B 21 06 00      [10] 4500 	ld	hl,#0x0006
   557E 19            [11] 4501 	add	hl,de
   557F 11 B5 56      [10] 4502 	ld	de,#___str_20+0
   5582 73            [ 7] 4503 	ld	(hl),e
   5583 23            [ 6] 4504 	inc	hl
   5584 72            [ 7] 4505 	ld	(hl),d
                           4506 ;src/includes/game.h:53: }
   5585                    4507 00112$:
                           4508 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   5585 21 00 00      [10] 4509 	ld	hl,#0x0000
   5588 39            [11] 4510 	add	hl,sp
   5589 EB            [ 4] 4511 	ex	de,hl
   558A 21 04 00      [10] 4512 	ld	hl,#0x0004
   558D E5            [11] 4513 	push	hl
   558E D5            [11] 4514 	push	de
   558F CD C1 4B      [17] 4515 	call	_drawWindow
   5592 DD F9         [10] 4516 	ld	sp,ix
   5594 DD E1         [14] 4517 	pop	ix
   5596 C9            [10] 4518 	ret
   5597                    4519 ___str_2:
   5597 47 72 61 73 73 6C  4520 	.ascii "Grassland"
        61 6E 64
   55A0 00                 4521 	.db 0x00
   55A1                    4522 ___str_3:
   55A1 00                 4523 	.db 0x00
   55A2                    4524 ___str_4:
   55A2 50 72 6F 64 75 63  4525 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   55B5 00                 4526 	.db 0x00
   55B6                    4527 ___str_5:
   55B6 44 65 6D 61 6E 64  4528 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   55C5 00                 4529 	.db 0x00
   55C6                    4530 ___str_6:
   55C6 43 69 74 79        4531 	.ascii "City"
   55CA 00                 4532 	.db 0x00
   55CB                    4533 ___str_7:
   55CB 50 72 6F 64 75 63  4534 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   55E7 00                 4535 	.db 0x00
   55E8                    4536 ___str_8:
   55E8 44 65 6D 61 6E 64  4537 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   560C 00                 4538 	.db 0x00
   560D                    4539 ___str_9:
   560D 46 61 72 6D        4540 	.ascii "Farm"
   5611 00                 4541 	.db 0x00
   5612                    4542 ___str_10:
   5612 50 72 6F 64 75 63  4543 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5624 00                 4544 	.db 0x00
   5625                    4545 ___str_11:
   5625 44 65 6D 61 6E 64  4546 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   5634 00                 4547 	.db 0x00
   5635                    4548 ___str_12:
   5635 57 61 74 65 72     4549 	.ascii "Water"
   563A 00                 4550 	.db 0x00
   563B                    4551 ___str_13:
   563B 50 72 6F 64 75 63  4552 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   564E 00                 4553 	.db 0x00
   564F                    4554 ___str_14:
   564F 46 6F 72 65 73 74  4555 	.ascii "Forest"
   5655 00                 4556 	.db 0x00
   5656                    4557 ___str_15:
   5656 4C 69 76 65 73 74  4558 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5667 00                 4559 	.db 0x00
   5668                    4560 ___str_16:
   5668 50 72 6F 64 75 63  4561 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   5683 00                 4562 	.db 0x00
   5684                    4563 ___str_17:
   5684 44 65 6D 61 6E 64  4564 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   5692 00                 4565 	.db 0x00
   5693                    4566 ___str_18:
   5693 4E 6F 74 20 79 65  4567 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   56A6 00                 4568 	.db 0x00
   56A7                    4569 ___str_19:
   56A7 50 72 6F 64 75 63  4570 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   56B4 00                 4571 	.db 0x00
   56B5                    4572 ___str_20:
   56B5 44 65 6D 61 6E 64  4573 	.ascii "Demand: ?"
        3A 20 3F
   56BE 00                 4574 	.db 0x00
                           4575 ;src/includes/game.h:58: void menuStations()
                           4576 ;	---------------------------------
                           4577 ; Function menuStations
                           4578 ; ---------------------------------
   56BF                    4579 _menuStations::
   56BF DD E5         [15] 4580 	push	ix
   56C1 DD 21 00 00   [14] 4581 	ld	ix,#0
   56C5 DD 39         [15] 4582 	add	ix,sp
   56C7 21 FA FF      [10] 4583 	ld	hl,#-6
   56CA 39            [11] 4584 	add	hl,sp
   56CB F9            [ 6] 4585 	ld	sp,hl
                           4586 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   56CC 21 00 00      [10] 4587 	ld	hl,#0x0000
   56CF 39            [11] 4588 	add	hl,sp
   56D0 5D            [ 4] 4589 	ld	e,l
   56D1 54            [ 4] 4590 	ld	d,h
   56D2 36 21         [10] 4591 	ld	(hl),#<(___str_21)
   56D4 23            [ 6] 4592 	inc	hl
   56D5 36 57         [10] 4593 	ld	(hl),#>(___str_21)
   56D7 6B            [ 4] 4594 	ld	l, e
   56D8 62            [ 4] 4595 	ld	h, d
   56D9 23            [ 6] 4596 	inc	hl
   56DA 23            [ 6] 4597 	inc	hl
   56DB 01 27 57      [10] 4598 	ld	bc,#___str_22+0
   56DE 71            [ 7] 4599 	ld	(hl),c
   56DF 23            [ 6] 4600 	inc	hl
   56E0 70            [ 7] 4601 	ld	(hl),b
   56E1 21 04 00      [10] 4602 	ld	hl,#0x0004
   56E4 19            [11] 4603 	add	hl,de
   56E5 01 2E 57      [10] 4604 	ld	bc,#___str_23+0
   56E8 71            [ 7] 4605 	ld	(hl),c
   56E9 23            [ 6] 4606 	inc	hl
   56EA 70            [ 7] 4607 	ld	(hl),b
                           4608 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   56EB 3E 03         [ 7] 4609 	ld	a,#0x03
   56ED F5            [11] 4610 	push	af
   56EE 33            [ 6] 4611 	inc	sp
   56EF D5            [11] 4612 	push	de
   56F0 CD C3 4A      [17] 4613 	call	_drawMenu
   56F3 F1            [10] 4614 	pop	af
   56F4 33            [ 6] 4615 	inc	sp
   56F5 5D            [ 4] 4616 	ld	e,l
                           4617 ;src/includes/game.h:70: switch(result)
   56F6 3E 02         [ 7] 4618 	ld	a,#0x02
   56F8 93            [ 4] 4619 	sub	a, e
   56F9 38 21         [12] 4620 	jr	C,00105$
   56FB 16 00         [ 7] 4621 	ld	d,#0x00
   56FD 21 03 57      [10] 4622 	ld	hl,#00111$
   5700 19            [11] 4623 	add	hl,de
   5701 19            [11] 4624 	add	hl,de
                           4625 ;src/includes/game.h:72: case 0:
   5702 E9            [ 4] 4626 	jp	(hl)
   5703                    4627 00111$:
   5703 18 04         [12] 4628 	jr	00101$
   5705 18 09         [12] 4629 	jr	00102$
   5707 18 0E         [12] 4630 	jr	00103$
   5709                    4631 00101$:
                           4632 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   5709 21 DD 71      [10] 4633 	ld	hl,#_CURSOR_MODE + 0
   570C 36 02         [10] 4634 	ld	(hl), #0x02
                           4635 ;src/includes/game.h:74: break;
   570E 18 0C         [12] 4636 	jr	00105$
                           4637 ;src/includes/game.h:76: case 1:
   5710                    4638 00102$:
                           4639 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5710 21 DD 71      [10] 4640 	ld	hl,#_CURSOR_MODE + 0
   5713 36 04         [10] 4641 	ld	(hl), #0x04
                           4642 ;src/includes/game.h:78: break;
   5715 18 05         [12] 4643 	jr	00105$
                           4644 ;src/includes/game.h:80: case 2:
   5717                    4645 00103$:
                           4646 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   5717 21 DD 71      [10] 4647 	ld	hl,#_CURSOR_MODE + 0
   571A 36 06         [10] 4648 	ld	(hl), #0x06
                           4649 ;src/includes/game.h:83: }
   571C                    4650 00105$:
   571C DD F9         [10] 4651 	ld	sp, ix
   571E DD E1         [14] 4652 	pop	ix
   5720 C9            [10] 4653 	ret
   5721                    4654 ___str_21:
   5721 53 6D 61 6C 6C     4655 	.ascii "Small"
   5726 00                 4656 	.db 0x00
   5727                    4657 ___str_22:
   5727 4D 65 64 69 75 6D  4658 	.ascii "Medium"
   572D 00                 4659 	.db 0x00
   572E                    4660 ___str_23:
   572E 4C 61 72 67 65     4661 	.ascii "Large"
   5733 00                 4662 	.db 0x00
                           4663 ;src/includes/game.h:86: void menuTile(u8 x, u8 y)
                           4664 ;	---------------------------------
                           4665 ; Function menuTile
                           4666 ; ---------------------------------
   5734                    4667 _menuTile::
   5734 DD E5         [15] 4668 	push	ix
   5736 DD 21 00 00   [14] 4669 	ld	ix,#0
   573A DD 39         [15] 4670 	add	ix,sp
   573C 21 E6 FF      [10] 4671 	ld	hl,#-26
   573F 39            [11] 4672 	add	hl,sp
   5740 F9            [ 6] 4673 	ld	sp,hl
                           4674 ;src/includes/game.h:90: const char *txtMenuTile[] = { 
   5741 21 00 00      [10] 4675 	ld	hl,#0x0000
   5744 39            [11] 4676 	add	hl,sp
   5745 5D            [ 4] 4677 	ld	e,l
   5746 54            [ 4] 4678 	ld	d,h
   5747 36 5C         [10] 4679 	ld	(hl),#<(___str_24)
   5749 23            [ 6] 4680 	inc	hl
   574A 36 58         [10] 4681 	ld	(hl),#>(___str_24)
   574C 6B            [ 4] 4682 	ld	l, e
   574D 62            [ 4] 4683 	ld	h, d
   574E 23            [ 6] 4684 	inc	hl
   574F 23            [ 6] 4685 	inc	hl
   5750 01 6C 58      [10] 4686 	ld	bc,#___str_25+0
   5753 71            [ 7] 4687 	ld	(hl),c
   5754 23            [ 6] 4688 	inc	hl
   5755 70            [ 7] 4689 	ld	(hl),b
   5756 21 04 00      [10] 4690 	ld	hl,#0x0004
   5759 19            [11] 4691 	add	hl,de
   575A 01 7C 58      [10] 4692 	ld	bc,#___str_26+0
   575D 71            [ 7] 4693 	ld	(hl),c
   575E 23            [ 6] 4694 	inc	hl
   575F 70            [ 7] 4695 	ld	(hl),b
   5760 21 06 00      [10] 4696 	ld	hl,#0x0006
   5763 19            [11] 4697 	add	hl,de
   5764 01 8C 58      [10] 4698 	ld	bc,#___str_27+0
   5767 71            [ 7] 4699 	ld	(hl),c
   5768 23            [ 6] 4700 	inc	hl
   5769 70            [ 7] 4701 	ld	(hl),b
   576A 21 08 00      [10] 4702 	ld	hl,#0x0008
   576D 19            [11] 4703 	add	hl,de
   576E 01 94 58      [10] 4704 	ld	bc,#___str_28+0
   5771 71            [ 7] 4705 	ld	(hl),c
   5772 23            [ 6] 4706 	inc	hl
   5773 70            [ 7] 4707 	ld	(hl),b
   5774 21 0A 00      [10] 4708 	ld	hl,#0x000A
   5777 19            [11] 4709 	add	hl,de
   5778 01 A3 58      [10] 4710 	ld	bc,#___str_29+0
   577B 71            [ 7] 4711 	ld	(hl),c
   577C 23            [ 6] 4712 	inc	hl
   577D 70            [ 7] 4713 	ld	(hl),b
   577E 21 0C 00      [10] 4714 	ld	hl,#0x000C
   5781 19            [11] 4715 	add	hl,de
   5782 01 AE 58      [10] 4716 	ld	bc,#___str_30+0
   5785 71            [ 7] 4717 	ld	(hl),c
   5786 23            [ 6] 4718 	inc	hl
   5787 70            [ 7] 4719 	ld	(hl),b
                           4720 ;src/includes/game.h:100: const char *txtWindowDestroy[] = { 
   5788 21 0E 00      [10] 4721 	ld	hl,#0x000E
   578B 39            [11] 4722 	add	hl,sp
   578C 4D            [ 4] 4723 	ld	c,l
   578D 44            [ 4] 4724 	ld	b,h
   578E 36 B5         [10] 4725 	ld	(hl),#<(___str_31)
   5790 23            [ 6] 4726 	inc	hl
   5791 36 58         [10] 4727 	ld	(hl),#>(___str_31)
   5793 21 02 00      [10] 4728 	ld	hl,#0x0002
   5796 09            [11] 4729 	add	hl,bc
   5797 DD 75 FE      [19] 4730 	ld	-2 (ix),l
   579A DD 74 FF      [19] 4731 	ld	-1 (ix),h
   579D DD 6E FE      [19] 4732 	ld	l,-2 (ix)
   57A0 DD 66 FF      [19] 4733 	ld	h,-1 (ix)
   57A3 36 D8         [10] 4734 	ld	(hl),#<(___str_32)
   57A5 23            [ 6] 4735 	inc	hl
   57A6 36 58         [10] 4736 	ld	(hl),#>(___str_32)
   57A8 21 04 00      [10] 4737 	ld	hl,#0x0004
   57AB 09            [11] 4738 	add	hl,bc
   57AC DD 75 FE      [19] 4739 	ld	-2 (ix),l
   57AF DD 74 FF      [19] 4740 	ld	-1 (ix),h
   57B2 DD 6E FE      [19] 4741 	ld	l,-2 (ix)
   57B5 DD 66 FF      [19] 4742 	ld	h,-1 (ix)
   57B8 36 D9         [10] 4743 	ld	(hl),#<(___str_33)
   57BA 23            [ 6] 4744 	inc	hl
   57BB 36 58         [10] 4745 	ld	(hl),#>(___str_33)
                           4746 ;src/includes/game.h:107: putM2();
   57BD C5            [11] 4747 	push	bc
   57BE D5            [11] 4748 	push	de
   57BF CD BD 46      [17] 4749 	call	_putM2
   57C2 D1            [10] 4750 	pop	de
   57C3 C1            [10] 4751 	pop	bc
                           4752 ;src/includes/game.h:109: do{
   57C4 D5            [11] 4753 	push	de
   57C5 DD 5E 05      [19] 4754 	ld	e,5 (ix)
   57C8 16 00         [ 7] 4755 	ld	d,#0x00
   57CA 6B            [ 4] 4756 	ld	l, e
   57CB 62            [ 4] 4757 	ld	h, d
   57CC 29            [11] 4758 	add	hl, hl
   57CD 29            [11] 4759 	add	hl, hl
   57CE 19            [11] 4760 	add	hl, de
   57CF 29            [11] 4761 	add	hl, hl
   57D0 29            [11] 4762 	add	hl, hl
   57D1 29            [11] 4763 	add	hl, hl
   57D2 29            [11] 4764 	add	hl, hl
   57D3 D1            [10] 4765 	pop	de
   57D4 DD 75 FE      [19] 4766 	ld	-2 (ix),l
   57D7 DD 74 FF      [19] 4767 	ld	-1 (ix),h
   57DA DD 71 FC      [19] 4768 	ld	-4 (ix),c
   57DD DD 70 FD      [19] 4769 	ld	-3 (ix),b
   57E0 DD 73 FA      [19] 4770 	ld	-6 (ix),e
   57E3 DD 72 FB      [19] 4771 	ld	-5 (ix),d
   57E6                    4772 00114$:
                           4773 ;src/includes/game.h:110: menuChoice = drawMenu(txtMenuTile,7);
   57E6 DD 5E FA      [19] 4774 	ld	e,-6 (ix)
   57E9 DD 56 FB      [19] 4775 	ld	d,-5 (ix)
   57EC 3E 07         [ 7] 4776 	ld	a,#0x07
   57EE F5            [11] 4777 	push	af
   57EF 33            [ 6] 4778 	inc	sp
   57F0 D5            [11] 4779 	push	de
   57F1 CD C3 4A      [17] 4780 	call	_drawMenu
   57F4 F1            [10] 4781 	pop	af
   57F5 33            [ 6] 4782 	inc	sp
   57F6 55            [ 4] 4783 	ld	d,l
                           4784 ;src/includes/game.h:112: if(menuChoice==0)
   57F7 7A            [ 4] 4785 	ld	a,d
   57F8 B7            [ 4] 4786 	or	a, a
   57F9 20 0F         [12] 4787 	jr	NZ,00112$
                           4788 ;src/includes/game.h:113: windowInfoTile(x, y);
   57FB D5            [11] 4789 	push	de
   57FC DD 66 05      [19] 4790 	ld	h,5 (ix)
   57FF DD 6E 04      [19] 4791 	ld	l,4 (ix)
   5802 E5            [11] 4792 	push	hl
   5803 CD 02 54      [17] 4793 	call	_windowInfoTile
   5806 F1            [10] 4794 	pop	af
   5807 D1            [10] 4795 	pop	de
   5808 18 45         [12] 4796 	jr	00115$
   580A                    4797 00112$:
                           4798 ;src/includes/game.h:114: else if(menuChoice==1)
   580A 7A            [ 4] 4799 	ld	a,d
   580B 3D            [ 4] 4800 	dec	a
   580C 20 09         [12] 4801 	jr	NZ,00109$
                           4802 ;src/includes/game.h:116: CURSOR_MODE=T_REW;
   580E 21 DD 71      [10] 4803 	ld	hl,#_CURSOR_MODE + 0
   5811 36 07         [10] 4804 	ld	(hl), #0x07
                           4805 ;src/includes/game.h:117: menuChoice=6;
   5813 16 06         [ 7] 4806 	ld	d,#0x06
   5815 18 38         [12] 4807 	jr	00115$
   5817                    4808 00109$:
                           4809 ;src/includes/game.h:119: else if(menuChoice==2)
   5817 7A            [ 4] 4810 	ld	a,d
   5818 D6 02         [ 7] 4811 	sub	a, #0x02
   581A 20 07         [12] 4812 	jr	NZ,00106$
                           4813 ;src/includes/game.h:121: menuStations();
   581C CD BF 56      [17] 4814 	call	_menuStations
                           4815 ;src/includes/game.h:122: menuChoice=6;
   581F 16 06         [ 7] 4816 	ld	d,#0x06
   5821 18 2C         [12] 4817 	jr	00115$
   5823                    4818 00106$:
                           4819 ;src/includes/game.h:124: else if(menuChoice==3)
   5823 7A            [ 4] 4820 	ld	a,d
   5824 D6 03         [ 7] 4821 	sub	a, #0x03
   5826 20 27         [12] 4822 	jr	NZ,00115$
                           4823 ;src/includes/game.h:126: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5828 DD 5E FC      [19] 4824 	ld	e,-4 (ix)
   582B DD 56 FD      [19] 4825 	ld	d,-3 (ix)
   582E 21 03 01      [10] 4826 	ld	hl,#0x0103
   5831 E5            [11] 4827 	push	hl
   5832 D5            [11] 4828 	push	de
   5833 CD C1 4B      [17] 4829 	call	_drawWindow
   5836 F1            [10] 4830 	pop	af
   5837 F1            [10] 4831 	pop	af
   5838 2D            [ 4] 4832 	dec	l
   5839 20 12         [12] 4833 	jr	NZ,00102$
                           4834 ;src/includes/game.h:127: p_world[x+y*WIDTH] = GRASS1;
   583B DD 6E 04      [19] 4835 	ld	l,4 (ix)
   583E 26 00         [ 7] 4836 	ld	h,#0x00
   5840 DD 5E FE      [19] 4837 	ld	e,-2 (ix)
   5843 DD 56 FF      [19] 4838 	ld	d,-1 (ix)
   5846 19            [11] 4839 	add	hl,de
   5847 11 DD 62      [10] 4840 	ld	de,#_p_world
   584A 19            [11] 4841 	add	hl,de
   584B 36 00         [10] 4842 	ld	(hl),#0x00
   584D                    4843 00102$:
                           4844 ;src/includes/game.h:129: menuChoice=6;
   584D 16 06         [ 7] 4845 	ld	d,#0x06
   584F                    4846 00115$:
                           4847 ;src/includes/game.h:133: while(menuChoice!=6);
   584F 7A            [ 4] 4848 	ld	a,d
   5850 D6 06         [ 7] 4849 	sub	a, #0x06
   5852 20 92         [12] 4850 	jr	NZ,00114$
                           4851 ;src/includes/game.h:135: putM1();
   5854 CD A9 46      [17] 4852 	call	_putM1
   5857 DD F9         [10] 4853 	ld	sp, ix
   5859 DD E1         [14] 4854 	pop	ix
   585B C9            [10] 4855 	ret
   585C                    4856 ___str_24:
   585C 41 62 6F 75 74 20  4857 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   586B 00                 4858 	.db 0x00
   586C                    4859 ___str_25:
   586C 42 75 69 6C 64 20  4860 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   587B 00                 4861 	.db 0x00
   587C                    4862 ___str_26:
   587C 42 75 69 6C 64 20  4863 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   588B 00                 4864 	.db 0x00
   588C                    4865 ___str_27:
   588C 44 65 73 74 72 6F  4866 	.ascii "Destroy"
        79
   5893 00                 4867 	.db 0x00
   5894                    4868 ___str_28:
   5894 52 61 69 6C 72 6F  4869 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   58A2 00                 4870 	.db 0x00
   58A3                    4871 ___str_29:
   58A3 41 63 63 6F 75 6E  4872 	.ascii "Accounting"
        74 69 6E 67
   58AD 00                 4873 	.db 0x00
   58AE                    4874 ___str_30:
   58AE 52 65 73 75 6D 65  4875 	.ascii "Resume"
   58B4 00                 4876 	.db 0x00
   58B5                    4877 ___str_31:
   58B5 44 65 73 74 72 6F  4878 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   58D7 00                 4879 	.db 0x00
   58D8                    4880 ___str_32:
   58D8 00                 4881 	.db 0x00
   58D9                    4882 ___str_33:
   58D9 43 6F 6E 74 69 6E  4883 	.ascii "Continue ?"
        75 65 20 3F
   58E3 00                 4884 	.db 0x00
                           4885 ;src/includes/game.h:139: void game()
                           4886 ;	---------------------------------
                           4887 ; Function game
                           4888 ; ---------------------------------
   58E4                    4889 _game::
   58E4 DD E5         [15] 4890 	push	ix
   58E6 DD 21 00 00   [14] 4891 	ld	ix,#0
   58EA DD 39         [15] 4892 	add	ix,sp
   58EC 21 EA FF      [10] 4893 	ld	hl,#-22
   58EF 39            [11] 4894 	add	hl,sp
   58F0 F9            [ 6] 4895 	ld	sp,hl
                           4896 ;src/includes/game.h:142: int ulx = 0;
   58F1 DD 36 F9 00   [19] 4897 	ld	-7 (ix),#0x00
   58F5 DD 36 FA 00   [19] 4898 	ld	-6 (ix),#0x00
                           4899 ;src/includes/game.h:143: int uly = 0;
   58F9 DD 36 F0 00   [19] 4900 	ld	-16 (ix),#0x00
   58FD DD 36 F1 00   [19] 4901 	ld	-15 (ix),#0x00
                           4902 ;src/includes/game.h:144: int xCursor = 10;
   5901 DD 36 F7 0A   [19] 4903 	ld	-9 (ix),#0x0A
   5905 DD 36 F8 00   [19] 4904 	ld	-8 (ix),#0x00
                           4905 ;src/includes/game.h:145: int yCursor = 6;
   5909 DD 36 F4 06   [19] 4906 	ld	-12 (ix),#0x06
   590D DD 36 F5 00   [19] 4907 	ld	-11 (ix),#0x00
                           4908 ;src/includes/game.h:147: u8 exit=0;
   5911 DD 36 F6 00   [19] 4909 	ld	-10 (ix),#0x00
                           4910 ;src/includes/game.h:150: drawBoxM2(50, 50);
   5915 21 32 00      [10] 4911 	ld	hl,#0x0032
   5918 E5            [11] 4912 	push	hl
   5919 2E 32         [ 7] 4913 	ld	l, #0x32
   591B E5            [11] 4914 	push	hl
   591C CD F9 47      [17] 4915 	call	_drawBoxM2
   591F F1            [10] 4916 	pop	af
                           4917 ;src/includes/game.h:151: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   5920 21 20 5F      [10] 4918 	ld	hl, #0x5F20
   5923 E3            [19] 4919 	ex	(sp),hl
   5924 21 00 C0      [10] 4920 	ld	hl,#0xC000
   5927 E5            [11] 4921 	push	hl
   5928 CD 30 62      [17] 4922 	call	_cpct_getScreenPtr
                           4923 ;src/includes/game.h:152: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   592B 4D            [ 4] 4924 	ld	c, l
   592C 44            [ 4] 4925 	ld	b, h
   592D 11 C5 5D      [10] 4926 	ld	de,#___str_37
   5930 AF            [ 4] 4927 	xor	a, a
   5931 F5            [11] 4928 	push	af
   5932 33            [ 6] 4929 	inc	sp
   5933 C5            [11] 4930 	push	bc
   5934 D5            [11] 4931 	push	de
   5935 CD 3E 5F      [17] 4932 	call	_cpct_drawStringM2
   5938 F1            [10] 4933 	pop	af
   5939 F1            [10] 4934 	pop	af
   593A 33            [ 6] 4935 	inc	sp
                           4936 ;src/includes/game.h:154: generateWorld();
   593B CD 93 4F      [17] 4937 	call	_generateWorld
                           4938 ;src/includes/game.h:156: putM1();
   593E CD A9 46      [17] 4939 	call	_putM1
                           4940 ;src/includes/game.h:157: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   5941 21 00 00      [10] 4941 	ld	hl,#0x0000
   5944 E5            [11] 4942 	push	hl
   5945 2E 00         [ 7] 4943 	ld	l, #0x00
   5947 E5            [11] 4944 	push	hl
   5948 CD 3F 61      [17] 4945 	call	_cpct_px2byteM1
   594B F1            [10] 4946 	pop	af
   594C F1            [10] 4947 	pop	af
   594D 65            [ 4] 4948 	ld	h,l
   594E 01 00 40      [10] 4949 	ld	bc,#0x4000
   5951 C5            [11] 4950 	push	bc
   5952 E5            [11] 4951 	push	hl
   5953 33            [ 6] 4952 	inc	sp
   5954 21 00 C0      [10] 4953 	ld	hl,#0xC000
   5957 E5            [11] 4954 	push	hl
   5958 CD 31 61      [17] 4955 	call	_cpct_memset
                           4956 ;src/includes/game.h:158: drawWorld(ulx, uly);
   595B 21 00 00      [10] 4957 	ld	hl,#0x0000
   595E E5            [11] 4958 	push	hl
   595F CD 4A 53      [17] 4959 	call	_drawWorld
   5962 F1            [10] 4960 	pop	af
                           4961 ;src/includes/game.h:160: do{
   5963                    4962 00181$:
                           4963 ;src/includes/game.h:161: cpct_scanKeyboard(); 
   5963 CD 50 62      [17] 4964 	call	_cpct_scanKeyboard
                           4965 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5966 21 00 01      [10] 4966 	ld	hl,#0x0100
   5969 CD 26 5F      [17] 4967 	call	_cpct_isKeyPressed
   596C DD 75 FE      [19] 4968 	ld	-2 (ix),l
                           4969 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   596F DD 7E F4      [19] 4970 	ld	a,-12 (ix)
   5972 DD 77 FF      [19] 4971 	ld	-1 (ix),a
   5975 DD 7E F7      [19] 4972 	ld	a,-9 (ix)
   5978 DD 77 FD      [19] 4973 	ld	-3 (ix),a
   597B DD 7E F0      [19] 4974 	ld	a,-16 (ix)
   597E DD 77 FC      [19] 4975 	ld	-4 (ix),a
   5981 DD 7E F9      [19] 4976 	ld	a,-7 (ix)
   5984 DD 77 FB      [19] 4977 	ld	-5 (ix),a
                           4978 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5987 DD 7E FE      [19] 4979 	ld	a,-2 (ix)
   598A B7            [ 4] 4980 	or	a, a
   598B CA 0A 5A      [10] 4981 	jp	Z,00179$
                           4982 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   598E DD 7E FF      [19] 4983 	ld	a,-1 (ix)
   5991 F5            [11] 4984 	push	af
   5992 33            [ 6] 4985 	inc	sp
   5993 DD 7E FD      [19] 4986 	ld	a,-3 (ix)
   5996 F5            [11] 4987 	push	af
   5997 33            [ 6] 4988 	inc	sp
   5998 DD 7E FC      [19] 4989 	ld	a,-4 (ix)
   599B F5            [11] 4990 	push	af
   599C 33            [ 6] 4991 	inc	sp
   599D DD 7E FB      [19] 4992 	ld	a,-5 (ix)
   59A0 F5            [11] 4993 	push	af
   59A1 33            [ 6] 4994 	inc	sp
   59A2 CD 22 51      [17] 4995 	call	_drawTile
   59A5 F1            [10] 4996 	pop	af
   59A6 F1            [10] 4997 	pop	af
                           4998 ;src/includes/game.h:167: yCursor-=1;
   59A7 DD 6E F4      [19] 4999 	ld	l,-12 (ix)
   59AA DD 66 F5      [19] 5000 	ld	h,-11 (ix)
   59AD 2B            [ 6] 5001 	dec	hl
   59AE DD 75 F4      [19] 5002 	ld	-12 (ix),l
   59B1 DD 74 F5      [19] 5003 	ld	-11 (ix),h
                           5004 ;src/includes/game.h:170: if(yCursor<0)
   59B4 DD CB F5 7E   [20] 5005 	bit	7, -11 (ix)
   59B8 28 32         [12] 5006 	jr	Z,00210$
                           5007 ;src/includes/game.h:172: yCursor=0;
   59BA DD 36 F4 00   [19] 5008 	ld	-12 (ix),#0x00
   59BE DD 36 F5 00   [19] 5009 	ld	-11 (ix),#0x00
                           5010 ;src/includes/game.h:175: if(uly>0)
   59C2 AF            [ 4] 5011 	xor	a, a
   59C3 DD BE F0      [19] 5012 	cp	a, -16 (ix)
   59C6 DD 9E F1      [19] 5013 	sbc	a, -15 (ix)
   59C9 E2 CE 59      [10] 5014 	jp	PO, 00387$
   59CC EE 80         [ 7] 5015 	xor	a, #0x80
   59CE                    5016 00387$:
   59CE F2 EC 59      [10] 5017 	jp	P,00210$
                           5018 ;src/includes/game.h:177: uly-=1;
   59D1 DD 6E F0      [19] 5019 	ld	l,-16 (ix)
   59D4 DD 66 F1      [19] 5020 	ld	h,-15 (ix)
   59D7 2B            [ 6] 5021 	dec	hl
   59D8 DD 75 F0      [19] 5022 	ld	-16 (ix),l
   59DB DD 74 F1      [19] 5023 	ld	-15 (ix),h
                           5024 ;src/includes/game.h:178: drawWorld(ulx, uly);
   59DE DD 66 F0      [19] 5025 	ld	h,-16 (ix)
   59E1 E5            [11] 5026 	push	hl
   59E2 33            [ 6] 5027 	inc	sp
   59E3 DD 7E FB      [19] 5028 	ld	a,-5 (ix)
   59E6 F5            [11] 5029 	push	af
   59E7 33            [ 6] 5030 	inc	sp
   59E8 CD 4A 53      [17] 5031 	call	_drawWorld
   59EB F1            [10] 5032 	pop	af
                           5033 ;src/includes/game.h:183: for(i=0; i<14000; i++) {}
   59EC                    5034 00210$:
   59EC DD 36 F2 B0   [19] 5035 	ld	-14 (ix),#0xB0
   59F0 DD 36 F3 36   [19] 5036 	ld	-13 (ix),#0x36
   59F4                    5037 00186$:
   59F4 DD 6E F2      [19] 5038 	ld	l,-14 (ix)
   59F7 DD 66 F3      [19] 5039 	ld	h,-13 (ix)
   59FA 2B            [ 6] 5040 	dec	hl
   59FB DD 75 F2      [19] 5041 	ld	-14 (ix),l
   59FE DD 74 F3      [19] 5042 	ld	-13 (ix), h
   5A01 7C            [ 4] 5043 	ld	a, h
   5A02 DD B6 F2      [19] 5044 	or	a,-14 (ix)
   5A05 20 ED         [12] 5045 	jr	NZ,00186$
   5A07 C3 72 5D      [10] 5046 	jp	00180$
   5A0A                    5047 00179$:
                           5048 ;src/includes/game.h:186: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5A0A 21 00 04      [10] 5049 	ld	hl,#0x0400
   5A0D CD 26 5F      [17] 5050 	call	_cpct_isKeyPressed
   5A10 7D            [ 4] 5051 	ld	a,l
   5A11 B7            [ 4] 5052 	or	a, a
   5A12 CA 93 5A      [10] 5053 	jp	Z,00176$
                           5054 ;src/includes/game.h:188: drawTile(ulx, uly, xCursor, yCursor);
   5A15 DD 7E FF      [19] 5055 	ld	a,-1 (ix)
   5A18 F5            [11] 5056 	push	af
   5A19 33            [ 6] 5057 	inc	sp
   5A1A DD 7E FD      [19] 5058 	ld	a,-3 (ix)
   5A1D F5            [11] 5059 	push	af
   5A1E 33            [ 6] 5060 	inc	sp
   5A1F DD 7E FC      [19] 5061 	ld	a,-4 (ix)
   5A22 F5            [11] 5062 	push	af
   5A23 33            [ 6] 5063 	inc	sp
   5A24 DD 7E FB      [19] 5064 	ld	a,-5 (ix)
   5A27 F5            [11] 5065 	push	af
   5A28 33            [ 6] 5066 	inc	sp
   5A29 CD 22 51      [17] 5067 	call	_drawTile
   5A2C F1            [10] 5068 	pop	af
   5A2D F1            [10] 5069 	pop	af
                           5070 ;src/includes/game.h:189: yCursor+=1;
   5A2E DD 34 F4      [23] 5071 	inc	-12 (ix)
   5A31 20 03         [12] 5072 	jr	NZ,00388$
   5A33 DD 34 F5      [23] 5073 	inc	-11 (ix)
   5A36                    5074 00388$:
                           5075 ;src/includes/game.h:190: if(yCursor>NBTILE_H-1)
   5A36 3E 0B         [ 7] 5076 	ld	a,#0x0B
   5A38 DD BE F4      [19] 5077 	cp	a, -12 (ix)
   5A3B 3E 00         [ 7] 5078 	ld	a,#0x00
   5A3D DD 9E F5      [19] 5079 	sbc	a, -11 (ix)
   5A40 E2 45 5A      [10] 5080 	jp	PO, 00389$
   5A43 EE 80         [ 7] 5081 	xor	a, #0x80
   5A45                    5082 00389$:
   5A45 F2 75 5A      [10] 5083 	jp	P,00215$
                           5084 ;src/includes/game.h:192: yCursor=NBTILE_H-1;
   5A48 DD 36 F4 0B   [19] 5085 	ld	-12 (ix),#0x0B
   5A4C DD 36 F5 00   [19] 5086 	ld	-11 (ix),#0x00
                           5087 ;src/includes/game.h:193: if(uly<HEIGHT-NBTILE_H)
   5A50 DD 7E F0      [19] 5088 	ld	a,-16 (ix)
   5A53 D6 24         [ 7] 5089 	sub	a, #0x24
   5A55 DD 7E F1      [19] 5090 	ld	a,-15 (ix)
   5A58 17            [ 4] 5091 	rla
   5A59 3F            [ 4] 5092 	ccf
   5A5A 1F            [ 4] 5093 	rra
   5A5B DE 80         [ 7] 5094 	sbc	a, #0x80
   5A5D 30 16         [12] 5095 	jr	NC,00215$
                           5096 ;src/includes/game.h:195: uly+=1;
   5A5F DD 34 F0      [23] 5097 	inc	-16 (ix)
   5A62 20 03         [12] 5098 	jr	NZ,00390$
   5A64 DD 34 F1      [23] 5099 	inc	-15 (ix)
   5A67                    5100 00390$:
                           5101 ;src/includes/game.h:196: drawWorld(ulx, uly);
   5A67 DD 66 F0      [19] 5102 	ld	h,-16 (ix)
   5A6A E5            [11] 5103 	push	hl
   5A6B 33            [ 6] 5104 	inc	sp
   5A6C DD 7E FB      [19] 5105 	ld	a,-5 (ix)
   5A6F F5            [11] 5106 	push	af
   5A70 33            [ 6] 5107 	inc	sp
   5A71 CD 4A 53      [17] 5108 	call	_drawWorld
   5A74 F1            [10] 5109 	pop	af
                           5110 ;src/includes/game.h:201: for(i=0; i<14000; i++) {}
   5A75                    5111 00215$:
   5A75 DD 36 F2 B0   [19] 5112 	ld	-14 (ix),#0xB0
   5A79 DD 36 F3 36   [19] 5113 	ld	-13 (ix),#0x36
   5A7D                    5114 00189$:
   5A7D DD 6E F2      [19] 5115 	ld	l,-14 (ix)
   5A80 DD 66 F3      [19] 5116 	ld	h,-13 (ix)
   5A83 2B            [ 6] 5117 	dec	hl
   5A84 DD 75 F2      [19] 5118 	ld	-14 (ix),l
   5A87 DD 74 F3      [19] 5119 	ld	-13 (ix), h
   5A8A 7C            [ 4] 5120 	ld	a, h
   5A8B DD B6 F2      [19] 5121 	or	a,-14 (ix)
   5A8E 20 ED         [12] 5122 	jr	NZ,00189$
   5A90 C3 72 5D      [10] 5123 	jp	00180$
   5A93                    5124 00176$:
                           5125 ;src/includes/game.h:204: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   5A93 21 01 01      [10] 5126 	ld	hl,#0x0101
   5A96 CD 26 5F      [17] 5127 	call	_cpct_isKeyPressed
   5A99 7D            [ 4] 5128 	ld	a,l
   5A9A B7            [ 4] 5129 	or	a, a
   5A9B 28 69         [12] 5130 	jr	Z,00173$
                           5131 ;src/includes/game.h:206: drawTile(ulx, uly, xCursor, yCursor);
   5A9D DD 7E FF      [19] 5132 	ld	a,-1 (ix)
   5AA0 F5            [11] 5133 	push	af
   5AA1 33            [ 6] 5134 	inc	sp
   5AA2 DD 7E FD      [19] 5135 	ld	a,-3 (ix)
   5AA5 F5            [11] 5136 	push	af
   5AA6 33            [ 6] 5137 	inc	sp
   5AA7 DD 7E FC      [19] 5138 	ld	a,-4 (ix)
   5AAA F5            [11] 5139 	push	af
   5AAB 33            [ 6] 5140 	inc	sp
   5AAC DD 7E FB      [19] 5141 	ld	a,-5 (ix)
   5AAF F5            [11] 5142 	push	af
   5AB0 33            [ 6] 5143 	inc	sp
   5AB1 CD 22 51      [17] 5144 	call	_drawTile
   5AB4 F1            [10] 5145 	pop	af
   5AB5 F1            [10] 5146 	pop	af
                           5147 ;src/includes/game.h:207: xCursor-=1;
   5AB6 DD 6E F7      [19] 5148 	ld	l,-9 (ix)
   5AB9 DD 66 F8      [19] 5149 	ld	h,-8 (ix)
   5ABC 2B            [ 6] 5150 	dec	hl
   5ABD DD 75 F7      [19] 5151 	ld	-9 (ix),l
   5AC0 DD 74 F8      [19] 5152 	ld	-8 (ix),h
                           5153 ;src/includes/game.h:208: if(xCursor<0)
   5AC3 DD CB F8 7E   [20] 5154 	bit	7, -8 (ix)
   5AC7 28 32         [12] 5155 	jr	Z,00220$
                           5156 ;src/includes/game.h:210: xCursor=0;
   5AC9 DD 36 F7 00   [19] 5157 	ld	-9 (ix),#0x00
   5ACD DD 36 F8 00   [19] 5158 	ld	-8 (ix),#0x00
                           5159 ;src/includes/game.h:211: if(ulx>0)
   5AD1 AF            [ 4] 5160 	xor	a, a
   5AD2 DD BE F9      [19] 5161 	cp	a, -7 (ix)
   5AD5 DD 9E FA      [19] 5162 	sbc	a, -6 (ix)
   5AD8 E2 DD 5A      [10] 5163 	jp	PO, 00391$
   5ADB EE 80         [ 7] 5164 	xor	a, #0x80
   5ADD                    5165 00391$:
   5ADD F2 FB 5A      [10] 5166 	jp	P,00220$
                           5167 ;src/includes/game.h:213: ulx-=1;
   5AE0 DD 6E F9      [19] 5168 	ld	l,-7 (ix)
   5AE3 DD 66 FA      [19] 5169 	ld	h,-6 (ix)
   5AE6 2B            [ 6] 5170 	dec	hl
   5AE7 DD 75 F9      [19] 5171 	ld	-7 (ix),l
   5AEA DD 74 FA      [19] 5172 	ld	-6 (ix),h
                           5173 ;src/includes/game.h:214: drawWorld(ulx, uly);
   5AED DD 56 F9      [19] 5174 	ld	d,-7 (ix)
   5AF0 DD 7E FC      [19] 5175 	ld	a,-4 (ix)
   5AF3 F5            [11] 5176 	push	af
   5AF4 33            [ 6] 5177 	inc	sp
   5AF5 D5            [11] 5178 	push	de
   5AF6 33            [ 6] 5179 	inc	sp
   5AF7 CD 4A 53      [17] 5180 	call	_drawWorld
   5AFA F1            [10] 5181 	pop	af
                           5182 ;src/includes/game.h:219: for(i=0; i<14000; i++) {}
   5AFB                    5183 00220$:
   5AFB 01 B0 36      [10] 5184 	ld	bc,#0x36B0
   5AFE                    5185 00192$:
   5AFE 0B            [ 6] 5186 	dec	bc
   5AFF 78            [ 4] 5187 	ld	a,b
   5B00 B1            [ 4] 5188 	or	a,c
   5B01 20 FB         [12] 5189 	jr	NZ,00192$
   5B03 C3 72 5D      [10] 5190 	jp	00180$
   5B06                    5191 00173$:
                           5192 ;src/includes/game.h:222: else if ( cpct_isKeyPressed(Key_CursorRight) )
   5B06 21 00 02      [10] 5193 	ld	hl,#0x0200
   5B09 CD 26 5F      [17] 5194 	call	_cpct_isKeyPressed
   5B0C 7D            [ 4] 5195 	ld	a,l
   5B0D B7            [ 4] 5196 	or	a, a
   5B0E 28 6B         [12] 5197 	jr	Z,00170$
                           5198 ;src/includes/game.h:224: drawTile(ulx, uly, xCursor, yCursor);
   5B10 DD 7E FF      [19] 5199 	ld	a,-1 (ix)
   5B13 F5            [11] 5200 	push	af
   5B14 33            [ 6] 5201 	inc	sp
   5B15 DD 7E FD      [19] 5202 	ld	a,-3 (ix)
   5B18 F5            [11] 5203 	push	af
   5B19 33            [ 6] 5204 	inc	sp
   5B1A DD 7E FC      [19] 5205 	ld	a,-4 (ix)
   5B1D F5            [11] 5206 	push	af
   5B1E 33            [ 6] 5207 	inc	sp
   5B1F DD 7E FB      [19] 5208 	ld	a,-5 (ix)
   5B22 F5            [11] 5209 	push	af
   5B23 33            [ 6] 5210 	inc	sp
   5B24 CD 22 51      [17] 5211 	call	_drawTile
   5B27 F1            [10] 5212 	pop	af
   5B28 F1            [10] 5213 	pop	af
                           5214 ;src/includes/game.h:225: xCursor+=1;
   5B29 DD 34 F7      [23] 5215 	inc	-9 (ix)
   5B2C 20 03         [12] 5216 	jr	NZ,00392$
   5B2E DD 34 F8      [23] 5217 	inc	-8 (ix)
   5B31                    5218 00392$:
                           5219 ;src/includes/game.h:226: if(xCursor>NBTILE_W-1)
   5B31 3E 13         [ 7] 5220 	ld	a,#0x13
   5B33 DD BE F7      [19] 5221 	cp	a, -9 (ix)
   5B36 3E 00         [ 7] 5222 	ld	a,#0x00
   5B38 DD 9E F8      [19] 5223 	sbc	a, -8 (ix)
   5B3B E2 40 5B      [10] 5224 	jp	PO, 00393$
   5B3E EE 80         [ 7] 5225 	xor	a, #0x80
   5B40                    5226 00393$:
   5B40 F2 70 5B      [10] 5227 	jp	P,00225$
                           5228 ;src/includes/game.h:228: xCursor=NBTILE_W-1;
   5B43 DD 36 F7 13   [19] 5229 	ld	-9 (ix),#0x13
   5B47 DD 36 F8 00   [19] 5230 	ld	-8 (ix),#0x00
                           5231 ;src/includes/game.h:229: if(ulx<WIDTH-NBTILE_W)
   5B4B DD 7E F9      [19] 5232 	ld	a,-7 (ix)
   5B4E D6 3C         [ 7] 5233 	sub	a, #0x3C
   5B50 DD 7E FA      [19] 5234 	ld	a,-6 (ix)
   5B53 17            [ 4] 5235 	rla
   5B54 3F            [ 4] 5236 	ccf
   5B55 1F            [ 4] 5237 	rra
   5B56 DE 80         [ 7] 5238 	sbc	a, #0x80
   5B58 30 16         [12] 5239 	jr	NC,00225$
                           5240 ;src/includes/game.h:231: ulx+=1;
   5B5A DD 34 F9      [23] 5241 	inc	-7 (ix)
   5B5D 20 03         [12] 5242 	jr	NZ,00394$
   5B5F DD 34 FA      [23] 5243 	inc	-6 (ix)
   5B62                    5244 00394$:
                           5245 ;src/includes/game.h:232: drawWorld(ulx, uly);
   5B62 DD 56 F9      [19] 5246 	ld	d,-7 (ix)
   5B65 DD 7E FC      [19] 5247 	ld	a,-4 (ix)
   5B68 F5            [11] 5248 	push	af
   5B69 33            [ 6] 5249 	inc	sp
   5B6A D5            [11] 5250 	push	de
   5B6B 33            [ 6] 5251 	inc	sp
   5B6C CD 4A 53      [17] 5252 	call	_drawWorld
   5B6F F1            [10] 5253 	pop	af
                           5254 ;src/includes/game.h:237: for(i=0; i<14000; i++) {}
   5B70                    5255 00225$:
   5B70 01 B0 36      [10] 5256 	ld	bc,#0x36B0
   5B73                    5257 00195$:
   5B73 0B            [ 6] 5258 	dec	bc
   5B74 78            [ 4] 5259 	ld	a,b
   5B75 B1            [ 4] 5260 	or	a,c
   5B76 20 FB         [12] 5261 	jr	NZ,00195$
   5B78 C3 72 5D      [10] 5262 	jp	00180$
   5B7B                    5263 00170$:
                           5264 ;src/includes/game.h:241: else if ( cpct_isKeyPressed(Key_Space) )
   5B7B 21 05 80      [10] 5265 	ld	hl,#0x8005
   5B7E CD 26 5F      [17] 5266 	call	_cpct_isKeyPressed
   5B81 7D            [ 4] 5267 	ld	a,l
   5B82 B7            [ 4] 5268 	or	a, a
   5B83 CA 1A 5C      [10] 5269 	jp	Z,00167$
                           5270 ;src/includes/game.h:243: if(CURSOR_MODE==T_SSNS)
   5B86 3A DD 71      [13] 5271 	ld	a,(#_CURSOR_MODE + 0)
   5B89 3D            [ 4] 5272 	dec	a
   5B8A 20 0B         [12] 5273 	jr	NZ,00143$
                           5274 ;src/includes/game.h:244: CURSOR_MODE=T_SSEW;
   5B8C FD 21 DD 71   [14] 5275 	ld	iy,#_CURSOR_MODE
   5B90 FD 36 00 02   [19] 5276 	ld	0 (iy),#0x02
   5B94 C3 0F 5C      [10] 5277 	jp	00237$
   5B97                    5278 00143$:
                           5279 ;src/includes/game.h:245: else if(CURSOR_MODE==T_SSEW)
   5B97 3A DD 71      [13] 5280 	ld	a,(#_CURSOR_MODE + 0)
   5B9A D6 02         [ 7] 5281 	sub	a, #0x02
   5B9C 20 0A         [12] 5282 	jr	NZ,00140$
                           5283 ;src/includes/game.h:246: CURSOR_MODE=T_SSNS;
   5B9E FD 21 DD 71   [14] 5284 	ld	iy,#_CURSOR_MODE
   5BA2 FD 36 00 01   [19] 5285 	ld	0 (iy),#0x01
   5BA6 18 67         [12] 5286 	jr	00237$
   5BA8                    5287 00140$:
                           5288 ;src/includes/game.h:247: else if(CURSOR_MODE==T_SMNS)
   5BA8 3A DD 71      [13] 5289 	ld	a,(#_CURSOR_MODE + 0)
   5BAB D6 03         [ 7] 5290 	sub	a, #0x03
   5BAD 20 0A         [12] 5291 	jr	NZ,00137$
                           5292 ;src/includes/game.h:248: CURSOR_MODE=T_SMEW;
   5BAF FD 21 DD 71   [14] 5293 	ld	iy,#_CURSOR_MODE
   5BB3 FD 36 00 04   [19] 5294 	ld	0 (iy),#0x04
   5BB7 18 56         [12] 5295 	jr	00237$
   5BB9                    5296 00137$:
                           5297 ;src/includes/game.h:249: else if(CURSOR_MODE==T_SMEW)
   5BB9 3A DD 71      [13] 5298 	ld	a,(#_CURSOR_MODE + 0)
   5BBC D6 04         [ 7] 5299 	sub	a, #0x04
   5BBE 20 0A         [12] 5300 	jr	NZ,00134$
                           5301 ;src/includes/game.h:250: CURSOR_MODE=T_SMNS;
   5BC0 FD 21 DD 71   [14] 5302 	ld	iy,#_CURSOR_MODE
   5BC4 FD 36 00 03   [19] 5303 	ld	0 (iy),#0x03
   5BC8 18 45         [12] 5304 	jr	00237$
   5BCA                    5305 00134$:
                           5306 ;src/includes/game.h:251: else if(CURSOR_MODE==T_SLNS)
   5BCA 3A DD 71      [13] 5307 	ld	a,(#_CURSOR_MODE + 0)
   5BCD D6 05         [ 7] 5308 	sub	a, #0x05
   5BCF 20 0A         [12] 5309 	jr	NZ,00131$
                           5310 ;src/includes/game.h:252: CURSOR_MODE=T_SLEW;
   5BD1 FD 21 DD 71   [14] 5311 	ld	iy,#_CURSOR_MODE
   5BD5 FD 36 00 06   [19] 5312 	ld	0 (iy),#0x06
   5BD9 18 34         [12] 5313 	jr	00237$
   5BDB                    5314 00131$:
                           5315 ;src/includes/game.h:253: else if(CURSOR_MODE==T_SLEW)
   5BDB 3A DD 71      [13] 5316 	ld	a,(#_CURSOR_MODE + 0)
   5BDE D6 06         [ 7] 5317 	sub	a, #0x06
   5BE0 20 0A         [12] 5318 	jr	NZ,00128$
                           5319 ;src/includes/game.h:254: CURSOR_MODE=T_SLNS;
   5BE2 FD 21 DD 71   [14] 5320 	ld	iy,#_CURSOR_MODE
   5BE6 FD 36 00 05   [19] 5321 	ld	0 (iy),#0x05
   5BEA 18 23         [12] 5322 	jr	00237$
   5BEC                    5323 00128$:
                           5324 ;src/includes/game.h:255: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   5BEC 3A DD 71      [13] 5325 	ld	a,(#_CURSOR_MODE + 0)
   5BEF FE 07         [ 7] 5326 	cp	a,#0x07
   5BF1 38 0D         [12] 5327 	jr	C,00124$
   5BF3 D6 10         [ 7] 5328 	sub	a, #0x10
   5BF5 30 09         [12] 5329 	jr	NC,00124$
                           5330 ;src/includes/game.h:256: CURSOR_MODE+=1;
   5BF7 FD 21 DD 71   [14] 5331 	ld	iy,#_CURSOR_MODE
   5BFB FD 34 00      [23] 5332 	inc	0 (iy)
   5BFE 18 0F         [12] 5333 	jr	00237$
   5C00                    5334 00124$:
                           5335 ;src/includes/game.h:257: else if(CURSOR_MODE==T_RNSW)
   5C00 3A DD 71      [13] 5336 	ld	a,(#_CURSOR_MODE + 0)
   5C03 D6 10         [ 7] 5337 	sub	a, #0x10
   5C05 20 08         [12] 5338 	jr	NZ,00237$
                           5339 ;src/includes/game.h:258: CURSOR_MODE=T_REW;
   5C07 FD 21 DD 71   [14] 5340 	ld	iy,#_CURSOR_MODE
   5C0B FD 36 00 07   [19] 5341 	ld	0 (iy),#0x07
                           5342 ;src/includes/game.h:260: for(i=0; i<14000; i++) {}
   5C0F                    5343 00237$:
   5C0F 01 B0 36      [10] 5344 	ld	bc,#0x36B0
   5C12                    5345 00198$:
   5C12 0B            [ 6] 5346 	dec	bc
   5C13 78            [ 4] 5347 	ld	a,b
   5C14 B1            [ 4] 5348 	or	a,c
   5C15 20 FB         [12] 5349 	jr	NZ,00198$
   5C17 C3 72 5D      [10] 5350 	jp	00180$
   5C1A                    5351 00167$:
                           5352 ;src/includes/game.h:263: else if ( cpct_isKeyPressed(Key_Esc) )
   5C1A 21 08 04      [10] 5353 	ld	hl,#0x0408
   5C1D CD 26 5F      [17] 5354 	call	_cpct_isKeyPressed
   5C20 7D            [ 4] 5355 	ld	a,l
   5C21 B7            [ 4] 5356 	or	a, a
   5C22 CA B9 5C      [10] 5357 	jp	Z,00164$
                           5358 ;src/includes/game.h:266: if(CURSOR_MODE==NONE)
   5C25 3A DD 71      [13] 5359 	ld	a,(#_CURSOR_MODE + 0)
   5C28 B7            [ 4] 5360 	or	a, a
   5C29 20 62         [12] 5361 	jr	NZ,00150$
                           5362 ;src/includes/game.h:269: const char *txtWindowQuit[] = { 
   5C2B 21 00 00      [10] 5363 	ld	hl,#0x0000
   5C2E 39            [11] 5364 	add	hl,sp
   5C2F 5D            [ 4] 5365 	ld	e,l
   5C30 54            [ 4] 5366 	ld	d,h
   5C31 36 90         [10] 5367 	ld	(hl),#<(___str_34)
   5C33 23            [ 6] 5368 	inc	hl
   5C34 36 5D         [10] 5369 	ld	(hl),#>(___str_34)
   5C36 6B            [ 4] 5370 	ld	l, e
   5C37 62            [ 4] 5371 	ld	h, d
   5C38 23            [ 6] 5372 	inc	hl
   5C39 23            [ 6] 5373 	inc	hl
   5C3A 36 9E         [10] 5374 	ld	(hl),#<(___str_35)
   5C3C 23            [ 6] 5375 	inc	hl
   5C3D 36 5D         [10] 5376 	ld	(hl),#>(___str_35)
   5C3F 21 04 00      [10] 5377 	ld	hl,#0x0004
   5C42 19            [11] 5378 	add	hl,de
   5C43 36 9F         [10] 5379 	ld	(hl),#<(___str_36)
   5C45 23            [ 6] 5380 	inc	hl
   5C46 36 5D         [10] 5381 	ld	(hl),#>(___str_36)
                           5382 ;src/includes/game.h:275: putM2();
   5C48 D5            [11] 5383 	push	de
   5C49 CD BD 46      [17] 5384 	call	_putM2
   5C4C D1            [10] 5385 	pop	de
                           5386 ;src/includes/game.h:276: if(	drawWindow(txtWindowQuit,3,1) == 1)
   5C4D 21 03 01      [10] 5387 	ld	hl,#0x0103
   5C50 E5            [11] 5388 	push	hl
   5C51 D5            [11] 5389 	push	de
   5C52 CD C1 4B      [17] 5390 	call	_drawWindow
   5C55 F1            [10] 5391 	pop	af
   5C56 F1            [10] 5392 	pop	af
   5C57 2D            [ 4] 5393 	dec	l
   5C58 20 06         [12] 5394 	jr	NZ,00147$
                           5395 ;src/includes/game.h:277: exit=1;
   5C5A DD 36 F6 01   [19] 5396 	ld	-10 (ix),#0x01
   5C5E 18 4E         [12] 5397 	jr	00242$
   5C60                    5398 00147$:
                           5399 ;src/includes/game.h:280: putM1();
   5C60 CD A9 46      [17] 5400 	call	_putM1
                           5401 ;src/includes/game.h:281: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5C63 21 00 00      [10] 5402 	ld	hl,#0x0000
   5C66 E5            [11] 5403 	push	hl
   5C67 2E 00         [ 7] 5404 	ld	l, #0x00
   5C69 E5            [11] 5405 	push	hl
   5C6A CD 3F 61      [17] 5406 	call	_cpct_px2byteM1
   5C6D F1            [10] 5407 	pop	af
   5C6E F1            [10] 5408 	pop	af
   5C6F 65            [ 4] 5409 	ld	h,l
   5C70 01 00 40      [10] 5410 	ld	bc,#0x4000
   5C73 C5            [11] 5411 	push	bc
   5C74 E5            [11] 5412 	push	hl
   5C75 33            [ 6] 5413 	inc	sp
   5C76 21 00 C0      [10] 5414 	ld	hl,#0xC000
   5C79 E5            [11] 5415 	push	hl
   5C7A CD 31 61      [17] 5416 	call	_cpct_memset
                           5417 ;src/includes/game.h:282: drawWorld(ulx, uly);
   5C7D DD 7E FC      [19] 5418 	ld	a,-4 (ix)
   5C80 F5            [11] 5419 	push	af
   5C81 33            [ 6] 5420 	inc	sp
   5C82 DD 7E FB      [19] 5421 	ld	a,-5 (ix)
   5C85 F5            [11] 5422 	push	af
   5C86 33            [ 6] 5423 	inc	sp
   5C87 CD 4A 53      [17] 5424 	call	_drawWorld
   5C8A F1            [10] 5425 	pop	af
   5C8B 18 21         [12] 5426 	jr	00242$
   5C8D                    5427 00150$:
                           5428 ;src/includes/game.h:287: CURSOR_MODE=NONE;
   5C8D FD 21 DD 71   [14] 5429 	ld	iy,#_CURSOR_MODE
   5C91 FD 36 00 00   [19] 5430 	ld	0 (iy),#0x00
                           5431 ;src/includes/game.h:288: drawTile(ulx, uly, xCursor, yCursor);
   5C95 DD 7E FF      [19] 5432 	ld	a,-1 (ix)
   5C98 F5            [11] 5433 	push	af
   5C99 33            [ 6] 5434 	inc	sp
   5C9A DD 7E FD      [19] 5435 	ld	a,-3 (ix)
   5C9D F5            [11] 5436 	push	af
   5C9E 33            [ 6] 5437 	inc	sp
   5C9F DD 7E FC      [19] 5438 	ld	a,-4 (ix)
   5CA2 F5            [11] 5439 	push	af
   5CA3 33            [ 6] 5440 	inc	sp
   5CA4 DD 7E FB      [19] 5441 	ld	a,-5 (ix)
   5CA7 F5            [11] 5442 	push	af
   5CA8 33            [ 6] 5443 	inc	sp
   5CA9 CD 22 51      [17] 5444 	call	_drawTile
   5CAC F1            [10] 5445 	pop	af
   5CAD F1            [10] 5446 	pop	af
                           5447 ;src/includes/game.h:292: for(i=0; i<14000; i++) {}
   5CAE                    5448 00242$:
   5CAE 01 B0 36      [10] 5449 	ld	bc,#0x36B0
   5CB1                    5450 00201$:
   5CB1 0B            [ 6] 5451 	dec	bc
   5CB2 78            [ 4] 5452 	ld	a,b
   5CB3 B1            [ 4] 5453 	or	a,c
   5CB4 20 FB         [12] 5454 	jr	NZ,00201$
   5CB6 C3 72 5D      [10] 5455 	jp	00180$
   5CB9                    5456 00164$:
                           5457 ;src/includes/game.h:295: else if ( cpct_isKeyPressed(Key_Return) )
   5CB9 21 02 04      [10] 5458 	ld	hl,#0x0402
   5CBC CD 26 5F      [17] 5459 	call	_cpct_isKeyPressed
   5CBF 7D            [ 4] 5460 	ld	a,l
   5CC0 B7            [ 4] 5461 	or	a, a
   5CC1 CA 72 5D      [10] 5462 	jp	Z,00180$
                           5463 ;src/includes/game.h:298: if(CURSOR_MODE==NONE)
   5CC4 3A DD 71      [13] 5464 	ld	a,(#_CURSOR_MODE + 0)
   5CC7 B7            [ 4] 5465 	or	a, a
   5CC8 20 42         [12] 5466 	jr	NZ,00158$
                           5467 ;src/includes/game.h:300: menuTile(ulx+xCursor, uly+yCursor);
   5CCA DD 7E F0      [19] 5468 	ld	a, -16 (ix)
   5CCD DD 6E F4      [19] 5469 	ld	l, -12 (ix)
   5CD0 85            [ 4] 5470 	add	a, l
   5CD1 67            [ 4] 5471 	ld	h,a
   5CD2 DD 6E F9      [19] 5472 	ld	l,-7 (ix)
   5CD5 DD 56 F7      [19] 5473 	ld	d,-9 (ix)
   5CD8 7D            [ 4] 5474 	ld	a,l
   5CD9 82            [ 4] 5475 	add	a, d
   5CDA E5            [11] 5476 	push	hl
   5CDB 33            [ 6] 5477 	inc	sp
   5CDC F5            [11] 5478 	push	af
   5CDD 33            [ 6] 5479 	inc	sp
   5CDE CD 34 57      [17] 5480 	call	_menuTile
   5CE1 F1            [10] 5481 	pop	af
                           5482 ;src/includes/game.h:301: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5CE2 21 00 00      [10] 5483 	ld	hl,#0x0000
   5CE5 E5            [11] 5484 	push	hl
   5CE6 2E 00         [ 7] 5485 	ld	l, #0x00
   5CE8 E5            [11] 5486 	push	hl
   5CE9 CD 3F 61      [17] 5487 	call	_cpct_px2byteM1
   5CEC F1            [10] 5488 	pop	af
   5CED F1            [10] 5489 	pop	af
   5CEE 65            [ 4] 5490 	ld	h,l
   5CEF 01 00 40      [10] 5491 	ld	bc,#0x4000
   5CF2 C5            [11] 5492 	push	bc
   5CF3 E5            [11] 5493 	push	hl
   5CF4 33            [ 6] 5494 	inc	sp
   5CF5 21 00 C0      [10] 5495 	ld	hl,#0xC000
   5CF8 E5            [11] 5496 	push	hl
   5CF9 CD 31 61      [17] 5497 	call	_cpct_memset
                           5498 ;src/includes/game.h:302: drawWorld(ulx, uly);
   5CFC DD 7E FC      [19] 5499 	ld	a,-4 (ix)
   5CFF F5            [11] 5500 	push	af
   5D00 33            [ 6] 5501 	inc	sp
   5D01 DD 7E FB      [19] 5502 	ld	a,-5 (ix)
   5D04 F5            [11] 5503 	push	af
   5D05 33            [ 6] 5504 	inc	sp
   5D06 CD 4A 53      [17] 5505 	call	_drawWorld
   5D09 F1            [10] 5506 	pop	af
   5D0A 18 4B         [12] 5507 	jr	00248$
   5D0C                    5508 00158$:
                           5509 ;src/includes/game.h:305: else if(CURSOR_MODE>=T_SSNS)
   5D0C 3A DD 71      [13] 5510 	ld	a,(#_CURSOR_MODE + 0)
   5D0F D6 01         [ 7] 5511 	sub	a, #0x01
   5D11 38 44         [12] 5512 	jr	C,00248$
                           5513 ;src/includes/game.h:307: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   5D13 DD 7E F9      [19] 5514 	ld	a,-7 (ix)
   5D16 DD 86 F7      [19] 5515 	add	a, -9 (ix)
   5D19 5F            [ 4] 5516 	ld	e,a
   5D1A DD 7E FA      [19] 5517 	ld	a,-6 (ix)
   5D1D DD 8E F8      [19] 5518 	adc	a, -8 (ix)
   5D20 57            [ 4] 5519 	ld	d,a
   5D21 DD 7E F0      [19] 5520 	ld	a,-16 (ix)
   5D24 DD 86 F4      [19] 5521 	add	a, -12 (ix)
   5D27 6F            [ 4] 5522 	ld	l,a
   5D28 DD 7E F1      [19] 5523 	ld	a,-15 (ix)
   5D2B DD 8E F5      [19] 5524 	adc	a, -11 (ix)
   5D2E 67            [ 4] 5525 	ld	h,a
   5D2F 4D            [ 4] 5526 	ld	c, l
   5D30 44            [ 4] 5527 	ld	b, h
   5D31 29            [11] 5528 	add	hl, hl
   5D32 29            [11] 5529 	add	hl, hl
   5D33 09            [11] 5530 	add	hl, bc
   5D34 29            [11] 5531 	add	hl, hl
   5D35 29            [11] 5532 	add	hl, hl
   5D36 29            [11] 5533 	add	hl, hl
   5D37 29            [11] 5534 	add	hl, hl
   5D38 19            [11] 5535 	add	hl,de
   5D39 3E DD         [ 7] 5536 	ld	a,#<(_p_world)
   5D3B 85            [ 4] 5537 	add	a, l
   5D3C 5F            [ 4] 5538 	ld	e,a
   5D3D 3E 62         [ 7] 5539 	ld	a,#>(_p_world)
   5D3F 8C            [ 4] 5540 	adc	a, h
   5D40 57            [ 4] 5541 	ld	d,a
   5D41 3A DD 71      [13] 5542 	ld	a,(#_CURSOR_MODE + 0)
   5D44 C6 09         [ 7] 5543 	add	a, #0x09
   5D46 12            [ 7] 5544 	ld	(de),a
                           5545 ;src/includes/game.h:310: if(CURSOR_MODE<=T_SLEW)
   5D47 3E 06         [ 7] 5546 	ld	a,#0x06
   5D49 FD 21 DD 71   [14] 5547 	ld	iy,#_CURSOR_MODE
   5D4D FD 96 00      [19] 5548 	sub	a, 0 (iy)
   5D50 38 05         [12] 5549 	jr	C,00248$
                           5550 ;src/includes/game.h:311: CURSOR_MODE=NONE;
   5D52 21 DD 71      [10] 5551 	ld	hl,#_CURSOR_MODE + 0
   5D55 36 00         [10] 5552 	ld	(hl), #0x00
                           5553 ;src/includes/game.h:315: for(i=0; i<14000; i++) {}
   5D57                    5554 00248$:
   5D57 DD 36 F2 B0   [19] 5555 	ld	-14 (ix),#0xB0
   5D5B DD 36 F3 36   [19] 5556 	ld	-13 (ix),#0x36
   5D5F                    5557 00204$:
   5D5F DD 6E F2      [19] 5558 	ld	l,-14 (ix)
   5D62 DD 66 F3      [19] 5559 	ld	h,-13 (ix)
   5D65 2B            [ 6] 5560 	dec	hl
   5D66 DD 75 F2      [19] 5561 	ld	-14 (ix),l
   5D69 DD 74 F3      [19] 5562 	ld	-13 (ix), h
   5D6C 7C            [ 4] 5563 	ld	a, h
   5D6D DD B6 F2      [19] 5564 	or	a,-14 (ix)
   5D70 20 ED         [12] 5565 	jr	NZ,00204$
   5D72                    5566 00180$:
                           5567 ;src/includes/game.h:319: drawCursor(xCursor, yCursor, 0);
   5D72 DD 56 F4      [19] 5568 	ld	d,-12 (ix)
   5D75 DD 46 F7      [19] 5569 	ld	b,-9 (ix)
   5D78 AF            [ 4] 5570 	xor	a, a
   5D79 F5            [11] 5571 	push	af
   5D7A 33            [ 6] 5572 	inc	sp
   5D7B D5            [11] 5573 	push	de
   5D7C 33            [ 6] 5574 	inc	sp
   5D7D C5            [11] 5575 	push	bc
   5D7E 33            [ 6] 5576 	inc	sp
   5D7F CD 5E 4D      [17] 5577 	call	_drawCursor
   5D82 F1            [10] 5578 	pop	af
   5D83 33            [ 6] 5579 	inc	sp
                           5580 ;src/includes/game.h:321: while(!exit);
   5D84 DD 7E F6      [19] 5581 	ld	a,-10 (ix)
   5D87 B7            [ 4] 5582 	or	a, a
   5D88 CA 63 59      [10] 5583 	jp	Z,00181$
   5D8B DD F9         [10] 5584 	ld	sp, ix
   5D8D DD E1         [14] 5585 	pop	ix
   5D8F C9            [10] 5586 	ret
   5D90                    5587 ___str_34:
   5D90 52 65 61 6C 6C 79  5588 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   5D9D 00                 5589 	.db 0x00
   5D9E                    5590 ___str_35:
   5D9E 00                 5591 	.db 0x00
   5D9F                    5592 ___str_36:
   5D9F 50 72 65 73 73 20  5593 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5DC4 00                 5594 	.db 0x00
   5DC5                    5595 ___str_37:
   5DC5 47 65 6E 65 72 61  5596 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   5DD8 00                 5597 	.db 0x00
                           5598 ;src/main.c:17: void drawTrain() 
                           5599 ;	---------------------------------
                           5600 ; Function drawTrain
                           5601 ; ---------------------------------
   5DD9                    5602 _drawTrain::
                           5603 ;src/main.c:55: }
   5DD9 C9            [10] 5604 	ret
                           5605 ;src/main.c:58: void main(void)
                           5606 ;	---------------------------------
                           5607 ; Function main
                           5608 ; ---------------------------------
   5DDA                    5609 _main::
   5DDA DD E5         [15] 5610 	push	ix
   5DDC DD 21 00 00   [14] 5611 	ld	ix,#0
   5DE0 DD 39         [15] 5612 	add	ix,sp
   5DE2 21 EE FF      [10] 5613 	ld	hl,#-18
   5DE5 39            [11] 5614 	add	hl,sp
   5DE6 F9            [ 6] 5615 	ld	sp,hl
                           5616 ;src/main.c:63: const char *menuMain[] = { 
   5DE7 21 08 00      [10] 5617 	ld	hl,#0x0008
   5DEA 39            [11] 5618 	add	hl,sp
   5DEB 5D            [ 4] 5619 	ld	e,l
   5DEC 54            [ 4] 5620 	ld	d,h
   5DED 36 CF         [10] 5621 	ld	(hl),#<(___str_38)
   5DEF 23            [ 6] 5622 	inc	hl
   5DF0 36 5E         [10] 5623 	ld	(hl),#>(___str_38)
   5DF2 6B            [ 4] 5624 	ld	l, e
   5DF3 62            [ 4] 5625 	ld	h, d
   5DF4 23            [ 6] 5626 	inc	hl
   5DF5 23            [ 6] 5627 	inc	hl
   5DF6 01 D8 5E      [10] 5628 	ld	bc,#___str_39+0
   5DF9 71            [ 7] 5629 	ld	(hl),c
   5DFA 23            [ 6] 5630 	inc	hl
   5DFB 70            [ 7] 5631 	ld	(hl),b
   5DFC 21 04 00      [10] 5632 	ld	hl,#0x0004
   5DFF 19            [11] 5633 	add	hl,de
   5E00 01 E0 5E      [10] 5634 	ld	bc,#___str_40+0
   5E03 71            [ 7] 5635 	ld	(hl),c
   5E04 23            [ 6] 5636 	inc	hl
   5E05 70            [ 7] 5637 	ld	(hl),b
                           5638 ;src/main.c:69: const char *windowCredit[] = { 
   5E06 21 00 00      [10] 5639 	ld	hl,#0x0000
   5E09 39            [11] 5640 	add	hl,sp
   5E0A DD 75 FC      [19] 5641 	ld	-4 (ix),l
   5E0D DD 74 FD      [19] 5642 	ld	-3 (ix),h
   5E10 DD 6E FC      [19] 5643 	ld	l,-4 (ix)
   5E13 DD 66 FD      [19] 5644 	ld	h,-3 (ix)
   5E16 36 E5         [10] 5645 	ld	(hl),#<(___str_41)
   5E18 23            [ 6] 5646 	inc	hl
   5E19 36 5E         [10] 5647 	ld	(hl),#>(___str_41)
   5E1B DD 6E FC      [19] 5648 	ld	l,-4 (ix)
   5E1E DD 66 FD      [19] 5649 	ld	h,-3 (ix)
   5E21 23            [ 6] 5650 	inc	hl
   5E22 23            [ 6] 5651 	inc	hl
   5E23 01 EE 5E      [10] 5652 	ld	bc,#___str_42+0
   5E26 71            [ 7] 5653 	ld	(hl),c
   5E27 23            [ 6] 5654 	inc	hl
   5E28 70            [ 7] 5655 	ld	(hl),b
   5E29 DD 7E FC      [19] 5656 	ld	a,-4 (ix)
   5E2C C6 04         [ 7] 5657 	add	a, #0x04
   5E2E 6F            [ 4] 5658 	ld	l,a
   5E2F DD 7E FD      [19] 5659 	ld	a,-3 (ix)
   5E32 CE 00         [ 7] 5660 	adc	a, #0x00
   5E34 67            [ 4] 5661 	ld	h,a
   5E35 01 EF 5E      [10] 5662 	ld	bc,#___str_43+0
   5E38 71            [ 7] 5663 	ld	(hl),c
   5E39 23            [ 6] 5664 	inc	hl
   5E3A 70            [ 7] 5665 	ld	(hl),b
                           5666 ;src/main.c:75: firmware = cpct_disableFirmware();
   5E3B D5            [11] 5667 	push	de
   5E3C CD 67 61      [17] 5668 	call	_cpct_disableFirmware
   5E3F D1            [10] 5669 	pop	de
   5E40 DD 75 F4      [19] 5670 	ld	-12 (ix),l
   5E43 DD 74 F5      [19] 5671 	ld	-11 (ix),h
                           5672 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   5E46 21 13 40      [10] 5673 	ld	hl,#_paletteTrains
   5E49 D5            [11] 5674 	push	de
   5E4A 01 10 00      [10] 5675 	ld	bc,#0x0010
   5E4D C5            [11] 5676 	push	bc
   5E4E E5            [11] 5677 	push	hl
   5E4F CD 67 60      [17] 5678 	call	_cpct_fw2hw
   5E52 D1            [10] 5679 	pop	de
                           5680 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   5E53 21 27 40      [10] 5681 	ld	hl,#_paletteMenusM2
   5E56 D5            [11] 5682 	push	de
   5E57 01 02 00      [10] 5683 	ld	bc,#0x0002
   5E5A C5            [11] 5684 	push	bc
   5E5B E5            [11] 5685 	push	hl
   5E5C CD 67 60      [17] 5686 	call	_cpct_fw2hw
   5E5F D1            [10] 5687 	pop	de
                           5688 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   5E60 21 23 40      [10] 5689 	ld	hl,#_paletteMenusM1
   5E63 D5            [11] 5690 	push	de
   5E64 01 04 00      [10] 5691 	ld	bc,#0x0004
   5E67 C5            [11] 5692 	push	bc
   5E68 E5            [11] 5693 	push	hl
   5E69 CD 67 60      [17] 5694 	call	_cpct_fw2hw
   5E6C D1            [10] 5695 	pop	de
                           5696 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   5E6D 3A 1F 40      [13] 5697 	ld	a, (#_paletteTrains + 12)
   5E70 D5            [11] 5698 	push	de
   5E71 57            [ 4] 5699 	ld	d,a
   5E72 1E 10         [ 7] 5700 	ld	e,#0x10
   5E74 D5            [11] 5701 	push	de
   5E75 CD 32 5F      [17] 5702 	call	_cpct_setPALColour
   5E78 CD BD 46      [17] 5703 	call	_putM2
   5E7B D1            [10] 5704 	pop	de
                           5705 ;src/main.c:85: do{
   5E7C DD 73 FE      [19] 5706 	ld	-2 (ix),e
   5E7F DD 72 FF      [19] 5707 	ld	-1 (ix),d
   5E82                    5708 00105$:
                           5709 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   5E82 DD 5E FE      [19] 5710 	ld	e,-2 (ix)
   5E85 DD 56 FF      [19] 5711 	ld	d,-1 (ix)
   5E88 3E 03         [ 7] 5712 	ld	a,#0x03
   5E8A F5            [11] 5713 	push	af
   5E8B 33            [ 6] 5714 	inc	sp
   5E8C D5            [11] 5715 	push	de
   5E8D CD C3 4A      [17] 5716 	call	_drawMenu
   5E90 F1            [10] 5717 	pop	af
   5E91 33            [ 6] 5718 	inc	sp
   5E92 55            [ 4] 5719 	ld	d,l
                           5720 ;src/main.c:88: if(menuChoice==0)
   5E93 7A            [ 4] 5721 	ld	a,d
   5E94 B7            [ 4] 5722 	or	a, a
   5E95 20 08         [12] 5723 	jr	NZ,00102$
                           5724 ;src/main.c:90: game();
   5E97 D5            [11] 5725 	push	de
   5E98 CD E4 58      [17] 5726 	call	_game
   5E9B CD BD 46      [17] 5727 	call	_putM2
   5E9E D1            [10] 5728 	pop	de
   5E9F                    5729 00102$:
                           5730 ;src/main.c:95: if(menuChoice==1)
   5E9F 7A            [ 4] 5731 	ld	a,d
   5EA0 3D            [ 4] 5732 	dec	a
   5EA1 20 12         [12] 5733 	jr	NZ,00106$
                           5734 ;src/main.c:96: drawWindow(windowCredit,3,0);
   5EA3 DD 4E FC      [19] 5735 	ld	c,-4 (ix)
   5EA6 DD 46 FD      [19] 5736 	ld	b,-3 (ix)
   5EA9 D5            [11] 5737 	push	de
   5EAA 21 03 00      [10] 5738 	ld	hl,#0x0003
   5EAD E5            [11] 5739 	push	hl
   5EAE C5            [11] 5740 	push	bc
   5EAF CD C1 4B      [17] 5741 	call	_drawWindow
   5EB2 F1            [10] 5742 	pop	af
   5EB3 F1            [10] 5743 	pop	af
   5EB4 D1            [10] 5744 	pop	de
   5EB5                    5745 00106$:
                           5746 ;src/main.c:98: while(menuChoice!=2);
   5EB5 7A            [ 4] 5747 	ld	a,d
   5EB6 D6 02         [ 7] 5748 	sub	a, #0x02
   5EB8 20 C8         [12] 5749 	jr	NZ,00105$
                           5750 ;src/main.c:100: cpct_setVideoMode(0);
   5EBA AF            [ 4] 5751 	xor	a, a
   5EBB F5            [11] 5752 	push	af
   5EBC 33            [ 6] 5753 	inc	sp
   5EBD CD 03 61      [17] 5754 	call	_cpct_setVideoMode
   5EC0 33            [ 6] 5755 	inc	sp
                           5756 ;src/main.c:101: cpct_reenableFirmware(firmware);
   5EC1 DD 6E F4      [19] 5757 	ld	l,-12 (ix)
   5EC4 DD 66 F5      [19] 5758 	ld	h,-11 (ix)
   5EC7 CD D1 60      [17] 5759 	call	_cpct_reenableFirmware
   5ECA DD F9         [10] 5760 	ld	sp, ix
   5ECC DD E1         [14] 5761 	pop	ix
   5ECE C9            [10] 5762 	ret
   5ECF                    5763 ___str_38:
   5ECF 4E 65 77 20 67 61  5764 	.ascii "New game"
        6D 65
   5ED7 00                 5765 	.db 0x00
   5ED8                    5766 ___str_39:
   5ED8 43 72 65 64 69 74  5767 	.ascii "Credits"
        73
   5EDF 00                 5768 	.db 0x00
   5EE0                    5769 ___str_40:
   5EE0 51 75 69 74        5770 	.ascii "Quit"
   5EE4 00                 5771 	.db 0x00
   5EE5                    5772 ___str_41:
   5EE5 52 61 69 6C 77 61  5773 	.ascii "Railways"
        79 73
   5EED 00                 5774 	.db 0x00
   5EEE                    5775 ___str_42:
   5EEE 00                 5776 	.db 0x00
   5EEF                    5777 ___str_43:
   5EEF 54 72 65 77 64 62  5778 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   5F09 00                 5779 	.db 0x00
                           5780 	.area _CODE
                           5781 	.area _INITIALIZER
   71DE                    5782 __xinit__CURSOR_MODE:
   71DE 00                 5783 	.db #0x00	; 0
                           5784 	.area _CABS (ABS)
