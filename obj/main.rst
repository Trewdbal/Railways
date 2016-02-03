                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Wed Feb  3 17:10:22 2016
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
   61A8                      87 _p_world::
   61A8                      88 	.ds 3840
                             89 ;--------------------------------------------------------
                             90 ; ram data
                             91 ;--------------------------------------------------------
                             92 	.area _INITIALIZED
   70A8                      93 _CURSOR_MODE::
   70A8                      94 	.ds 1
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
   4003 CD CE 5F      [17]  124 	call	_cpct_setVideoMode
   4006 33            [ 6]  125 	inc	sp
                            126 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  127 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  128 	ld	bc,#0x0010
   400D C5            [11]  129 	push	bc
   400E E5            [11]  130 	push	hl
   400F CD E6 5D      [17]  131 	call	_cpct_setPalette
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
   46AD CD CE 5F      [17] 1857 	call	_cpct_setVideoMode
   46B0 33            [ 6] 1858 	inc	sp
                           1859 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   46B1 21 23 40      [10] 1860 	ld	hl,#_paletteMenusM1
   46B4 01 04 00      [10] 1861 	ld	bc,#0x0004
   46B7 C5            [11] 1862 	push	bc
   46B8 E5            [11] 1863 	push	hl
   46B9 CD E6 5D      [17] 1864 	call	_cpct_setPalette
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
   46C1 CD CE 5F      [17] 1875 	call	_cpct_setVideoMode
   46C4 33            [ 6] 1876 	inc	sp
                           1877 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   46C5 21 27 40      [10] 1878 	ld	hl,#_paletteMenusM2
   46C8 01 02 00      [10] 1879 	ld	bc,#0x0002
   46CB C5            [11] 1880 	push	bc
   46CC E5            [11] 1881 	push	hl
   46CD CD E6 5D      [17] 1882 	call	_cpct_setPalette
                           1883 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   46D0 21 00 40      [10] 1884 	ld	hl,#0x4000
   46D3 E5            [11] 1885 	push	hl
   46D4 3E FF         [ 7] 1886 	ld	a,#0xFF
   46D6 F5            [11] 1887 	push	af
   46D7 33            [ 6] 1888 	inc	sp
   46D8 26 C0         [ 7] 1889 	ld	h, #0xC0
   46DA E5            [11] 1890 	push	hl
   46DB CD FC 5F      [17] 1891 	call	_cpct_memset
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
   472E CD E0 5F      [17] 1945 	call	_cpct_px2byteM0
   4731 65            [ 4] 1946 	ld	h,l
   4732 01 00 40      [10] 1947 	ld	bc,#0x4000
   4735 C5            [11] 1948 	push	bc
   4736 E5            [11] 1949 	push	hl
   4737 33            [ 6] 1950 	inc	sp
   4738 21 00 C0      [10] 1951 	ld	hl,#0xC000
   473B E5            [11] 1952 	push	hl
   473C CD FC 5F      [17] 1953 	call	_cpct_memset
   473F D1            [10] 1954 	pop	de
                           1955 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4740 DD 73 FB      [19] 1956 	ld	-5 (ix), e
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
   475B CD FB 60      [17] 1973 	call	_cpct_getScreenPtr
   475E D1            [10] 1974 	pop	de
   475F 4D            [ 4] 1975 	ld	c, l
   4760 44            [ 4] 1976 	ld	b, h
                           1977 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4761 DD 7E 06      [19] 1978 	ld	a,6 (ix)
   4764 DD 77 FD      [19] 1979 	ld	-3 (ix),a
   4767 DD 7E 04      [19] 1980 	ld	a,4 (ix)
   476A DD 77 FE      [19] 1981 	ld	-2 (ix),a
   476D C5            [11] 1982 	push	bc
   476E D5            [11] 1983 	push	de
   476F 21 02 02      [10] 1984 	ld	hl,#0x0202
   4772 E5            [11] 1985 	push	hl
   4773 CD E0 5F      [17] 1986 	call	_cpct_px2byteM0
   4776 DD 75 FF      [19] 1987 	ld	-1 (ix),l
   4779 D1            [10] 1988 	pop	de
   477A C1            [10] 1989 	pop	bc
   477B D5            [11] 1990 	push	de
   477C DD 66 FD      [19] 1991 	ld	h,-3 (ix)
   477F DD 6E FE      [19] 1992 	ld	l,-2 (ix)
   4782 E5            [11] 1993 	push	hl
   4783 DD 7E FF      [19] 1994 	ld	a,-1 (ix)
   4786 F5            [11] 1995 	push	af
   4787 33            [ 6] 1996 	inc	sp
   4788 C5            [11] 1997 	push	bc
   4789 CD 42 60      [17] 1998 	call	_cpct_drawSolidBox
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
   479C CD FB 60      [17] 2012 	call	_cpct_getScreenPtr
                           2013 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   479F E5            [11] 2014 	push	hl
   47A0 21 06 06      [10] 2015 	ld	hl,#0x0606
   47A3 E5            [11] 2016 	push	hl
   47A4 CD E0 5F      [17] 2017 	call	_cpct_px2byteM0
   47A7 45            [ 4] 2018 	ld	b,l
   47A8 D1            [10] 2019 	pop	de
   47A9 DD 66 FD      [19] 2020 	ld	h,-3 (ix)
   47AC DD 6E FE      [19] 2021 	ld	l,-2 (ix)
   47AF E5            [11] 2022 	push	hl
   47B0 C5            [11] 2023 	push	bc
   47B1 33            [ 6] 2024 	inc	sp
   47B2 D5            [11] 2025 	push	de
   47B3 CD 42 60      [17] 2026 	call	_cpct_drawSolidBox
   47B6 F1            [10] 2027 	pop	af
   47B7 F1            [10] 2028 	pop	af
   47B8 33            [ 6] 2029 	inc	sp
                           2030 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   47B9 DD 66 FB      [19] 2031 	ld	h,-5 (ix)
   47BC 24            [ 4] 2032 	inc	h
   47BD 24            [ 4] 2033 	inc	h
   47BE E5            [11] 2034 	push	hl
   47BF 33            [ 6] 2035 	inc	sp
   47C0 DD 7E FC      [19] 2036 	ld	a,-4 (ix)
   47C3 F5            [11] 2037 	push	af
   47C4 33            [ 6] 2038 	inc	sp
   47C5 21 00 C0      [10] 2039 	ld	hl,#0xC000
   47C8 E5            [11] 2040 	push	hl
   47C9 CD FB 60      [17] 2041 	call	_cpct_getScreenPtr
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
   47DE CD E0 5F      [17] 2054 	call	_cpct_px2byteM0
   47E1 DD 75 FF      [19] 2055 	ld	-1 (ix),l
   47E4 D1            [10] 2056 	pop	de
   47E5 C1            [10] 2057 	pop	bc
   47E6 79            [ 4] 2058 	ld	a,c
   47E7 F5            [11] 2059 	push	af
   47E8 33            [ 6] 2060 	inc	sp
   47E9 C5            [11] 2061 	push	bc
   47EA 33            [ 6] 2062 	inc	sp
   47EB DD 7E FF      [19] 2063 	ld	a,-1 (ix)
   47EE F5            [11] 2064 	push	af
   47EF 33            [ 6] 2065 	inc	sp
   47F0 D5            [11] 2066 	push	de
   47F1 CD 42 60      [17] 2067 	call	_cpct_drawSolidBox
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
   4846 DD 77 FC      [19] 2121 	ld	-4 (ix), a
   4849 C6 05         [ 7] 2122 	add	a, #0x05
   484B 4F            [ 4] 2123 	ld	c,a
   484C DD 73 FD      [19] 2124 	ld	-3 (ix), e
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
   485C CD FB 60      [17] 2136 	call	_cpct_getScreenPtr
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
   487F CD 42 60      [17] 2157 	call	_cpct_drawSolidBox
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
   4894 CD FB 60      [17] 2173 	call	_cpct_getScreenPtr
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
   48A4 CD 42 60      [17] 2185 	call	_cpct_drawSolidBox
   48A7 F1            [10] 2186 	pop	af
   48A8 F1            [10] 2187 	pop	af
   48A9 33            [ 6] 2188 	inc	sp
   48AA C1            [10] 2189 	pop	bc
                           2190 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   48AB DD 66 FC      [19] 2191 	ld	h,-4 (ix)
   48AE 24            [ 4] 2192 	inc	h
   48AF DD 56 FD      [19] 2193 	ld	d,-3 (ix)
   48B2 14            [ 4] 2194 	inc	d
   48B3 C5            [11] 2195 	push	bc
   48B4 E5            [11] 2196 	push	hl
   48B5 33            [ 6] 2197 	inc	sp
   48B6 D5            [11] 2198 	push	de
   48B7 33            [ 6] 2199 	inc	sp
   48B8 21 00 C0      [10] 2200 	ld	hl,#0xC000
   48BB E5            [11] 2201 	push	hl
   48BC CD FB 60      [17] 2202 	call	_cpct_getScreenPtr
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
   48D1 CD 42 60      [17] 2218 	call	_cpct_drawSolidBox
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
   491D CD FB 60      [17] 2274 	call	_cpct_getScreenPtr
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
   492C CD 42 60      [17] 2285 	call	_cpct_drawSolidBox
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
   4961 CD 23 60      [17] 2323 	call	_strlen
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
   497B CD FB 60      [17] 2341 	call	_cpct_getScreenPtr
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
   4989 CD 15 5E      [17] 2354 	call	_cpct_drawStringM2
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
   49D5 CD FB 60      [17] 2413 	call	_cpct_getScreenPtr
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
   49E3 CD 42 60      [17] 2424 	call	_cpct_drawSolidBox
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
   49F5 DD 77 FC      [19] 2439 	ld	-4 (ix),a
   49F8 3E 00         [ 7] 2440 	ld	a,#0x00
   49FA 98            [ 4] 2441 	sbc	a, b
   49FB DD 77 FD      [19] 2442 	ld	-3 (ix), a
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
   4A32 DD 6E FC      [19] 2476 	ld	l,-4 (ix)
   4A35 DD 66 FD      [19] 2477 	ld	h,-3 (ix)
   4A38 7B            [ 4] 2478 	ld	a,e
   4A39 B7            [ 4] 2479 	or	a, a
   4A3A 28 07         [12] 2480 	jr	Z,00115$
   4A3C DD 6E FC      [19] 2481 	ld	l,-4 (ix)
   4A3F DD 66 FD      [19] 2482 	ld	h,-3 (ix)
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
   4A74 CD 23 60      [17] 2518 	call	_strlen
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
   4A86 DD 75 FE      [19] 2530 	ld	-2 (ix),l
   4A89 C5            [11] 2531 	push	bc
   4A8A D5            [11] 2532 	push	de
   4A8B DD 66 FF      [19] 2533 	ld	h,-1 (ix)
   4A8E DD 6E FE      [19] 2534 	ld	l,-2 (ix)
   4A91 E5            [11] 2535 	push	hl
   4A92 21 00 C0      [10] 2536 	ld	hl,#0xC000
   4A95 E5            [11] 2537 	push	hl
   4A96 CD FB 60      [17] 2538 	call	_cpct_getScreenPtr
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
   4AAB CD 15 5E      [17] 2556 	call	_cpct_drawStringM2
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
   4ADA CD FC 5F      [17] 2590 	call	_cpct_memset
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
   4B0E CD 1B 61      [17] 2627 	call	_cpct_scanKeyboard
   4B11 21 00 01      [10] 2628 	ld	hl,#0x0100
   4B14 CD FD 5D      [17] 2629 	call	_cpct_isKeyPressed
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
   4B52 CD FD 5D      [17] 2677 	call	_cpct_isKeyPressed
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
   4BA7 CD FD 5D      [17] 2734 	call	_cpct_isKeyPressed
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
   4C10 DD 77 F7      [19] 2814 	ld	-9 (ix),a
   4C13 DD 36 F6 00   [19] 2815 	ld	-10 (ix),#0x00
   4C17 DD 36 FD 00   [19] 2816 	ld	-3 (ix),#0x00
   4C1B                    2817 00114$:
                           2818 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C1B DD 7E FE      [19] 2819 	ld	a,-2 (ix)
   4C1E C6 01         [ 7] 2820 	add	a, #0x01
   4C20 DD 77 FB      [19] 2821 	ld	-5 (ix),a
   4C23 DD 7E FF      [19] 2822 	ld	a,-1 (ix)
   4C26 CE 00         [ 7] 2823 	adc	a, #0x00
   4C28 DD 77 FC      [19] 2824 	ld	-4 (ix),a
                           2825 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4C2B DD 7E F6      [19] 2826 	ld	a,-10 (ix)
   4C2E DD 96 06      [19] 2827 	sub	a, 6 (ix)
   4C31 D2 BD 4C      [10] 2828 	jp	NC,00104$
                           2829 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C34 DD 6E FE      [19] 2830 	ld	l,-2 (ix)
   4C37 DD 66 FF      [19] 2831 	ld	h,-1 (ix)
   4C3A DD 7E F7      [19] 2832 	ld	a,-9 (ix)
   4C3D B7            [ 4] 2833 	or	a, a
   4C3E 28 06         [12] 2834 	jr	Z,00118$
   4C40 DD 6E FB      [19] 2835 	ld	l,-5 (ix)
   4C43 DD 66 FC      [19] 2836 	ld	h,-4 (ix)
   4C46                    2837 00118$:
   4C46 CB 2C         [ 8] 2838 	sra	h
   4C48 CB 1D         [ 8] 2839 	rr	l
   4C4A DD 66 FD      [19] 2840 	ld	h,-3 (ix)
   4C4D 7D            [ 4] 2841 	ld	a,l
   4C4E 84            [ 4] 2842 	add	a, h
   4C4F DD 77 FA      [19] 2843 	ld	-6 (ix),a
   4C52 DD 6E F6      [19] 2844 	ld	l,-10 (ix)
   4C55 26 00         [ 7] 2845 	ld	h,#0x00
   4C57 29            [11] 2846 	add	hl, hl
   4C58 45            [ 4] 2847 	ld	b,l
   4C59 4C            [ 4] 2848 	ld	c,h
   4C5A DD 7E 04      [19] 2849 	ld	a,4 (ix)
   4C5D 80            [ 4] 2850 	add	a, b
   4C5E DD 77 F8      [19] 2851 	ld	-8 (ix),a
   4C61 DD 7E 05      [19] 2852 	ld	a,5 (ix)
   4C64 89            [ 4] 2853 	adc	a, c
   4C65 DD 77 F9      [19] 2854 	ld	-7 (ix),a
   4C68 DD 6E F8      [19] 2855 	ld	l,-8 (ix)
   4C6B DD 66 F9      [19] 2856 	ld	h,-7 (ix)
   4C6E 4E            [ 7] 2857 	ld	c,(hl)
   4C6F 23            [ 6] 2858 	inc	hl
   4C70 46            [ 7] 2859 	ld	b,(hl)
   4C71 D5            [11] 2860 	push	de
   4C72 C5            [11] 2861 	push	bc
   4C73 CD 23 60      [17] 2862 	call	_strlen
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
   4C86 DD 7E FA      [19] 2875 	ld	a,-6 (ix)
   4C89 F5            [11] 2876 	push	af
   4C8A 33            [ 6] 2877 	inc	sp
   4C8B C5            [11] 2878 	push	bc
   4C8C 33            [ 6] 2879 	inc	sp
   4C8D 21 00 C0      [10] 2880 	ld	hl,#0xC000
   4C90 E5            [11] 2881 	push	hl
   4C91 CD FB 60      [17] 2882 	call	_cpct_getScreenPtr
   4C94 D1            [10] 2883 	pop	de
   4C95 E5            [11] 2884 	push	hl
   4C96 FD E1         [14] 2885 	pop	iy
                           2886 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4C98 DD 6E F8      [19] 2887 	ld	l,-8 (ix)
   4C9B DD 66 F9      [19] 2888 	ld	h,-7 (ix)
   4C9E 4E            [ 7] 2889 	ld	c,(hl)
   4C9F 23            [ 6] 2890 	inc	hl
   4CA0 46            [ 7] 2891 	ld	b,(hl)
   4CA1 D5            [11] 2892 	push	de
   4CA2 AF            [ 4] 2893 	xor	a, a
   4CA3 F5            [11] 2894 	push	af
   4CA4 33            [ 6] 2895 	inc	sp
   4CA5 FD E5         [15] 2896 	push	iy
   4CA7 C5            [11] 2897 	push	bc
   4CA8 CD 15 5E      [17] 2898 	call	_cpct_drawStringM2
   4CAB F1            [10] 2899 	pop	af
   4CAC F1            [10] 2900 	pop	af
   4CAD 33            [ 6] 2901 	inc	sp
   4CAE D1            [10] 2902 	pop	de
                           2903 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4CAF DD 7E FD      [19] 2904 	ld	a,-3 (ix)
   4CB2 C6 0A         [ 7] 2905 	add	a, #0x0A
   4CB4 DD 77 FD      [19] 2906 	ld	-3 (ix),a
   4CB7 DD 34 F6      [23] 2907 	inc	-10 (ix)
   4CBA C3 1B 4C      [10] 2908 	jp	00114$
   4CBD                    2909 00104$:
                           2910 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4CBD DD 46 FE      [19] 2911 	ld	b,-2 (ix)
   4CC0 DD 66 FF      [19] 2912 	ld	h,-1 (ix)
   4CC3 DD 7E F7      [19] 2913 	ld	a,-9 (ix)
   4CC6 B7            [ 4] 2914 	or	a, a
   4CC7 28 06         [12] 2915 	jr	Z,00119$
   4CC9 DD 46 FB      [19] 2916 	ld	b,-5 (ix)
   4CCC DD 66 FC      [19] 2917 	ld	h,-4 (ix)
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
   4CE2 CD 23 60      [17] 2934 	call	_strlen
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
   4CFE CD FB 60      [17] 2954 	call	_cpct_getScreenPtr
   4D01 D1            [10] 2955 	pop	de
                           2956 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4D02 4D            [ 4] 2957 	ld	c, l
   4D03 44            [ 4] 2958 	ld	b, h
   4D04 AF            [ 4] 2959 	xor	a, a
   4D05 F5            [11] 2960 	push	af
   4D06 33            [ 6] 2961 	inc	sp
   4D07 C5            [11] 2962 	push	bc
   4D08 D5            [11] 2963 	push	de
   4D09 CD 15 5E      [17] 2964 	call	_cpct_drawStringM2
   4D0C F1            [10] 2965 	pop	af
   4D0D F1            [10] 2966 	pop	af
   4D0E 33            [ 6] 2967 	inc	sp
                           2968 ;src/includes/gui.h:184: do{
   4D0F                    2969 00110$:
                           2970 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4D0F CD 1B 61      [17] 2971 	call	_cpct_scanKeyboard
                           2972 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4D12 21 02 04      [10] 2973 	ld	hl,#0x0402
   4D15 CD FD 5D      [17] 2974 	call	_cpct_isKeyPressed
   4D18 7D            [ 4] 2975 	ld	a,l
   4D19 B7            [ 4] 2976 	or	a, a
   4D1A 28 04         [12] 2977 	jr	Z,00106$
                           2978 ;src/includes/gui.h:188: valueReturn=1;
   4D1C DD 36 F5 01   [19] 2979 	ld	-11 (ix),#0x01
   4D20                    2980 00106$:
                           2981 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4D20 21 08 04      [10] 2982 	ld	hl,#0x0408
   4D23 CD FD 5D      [17] 2983 	call	_cpct_isKeyPressed
   4D26 7D            [ 4] 2984 	ld	a,l
   4D27 B7            [ 4] 2985 	or	a, a
   4D28 28 04         [12] 2986 	jr	Z,00111$
                           2987 ;src/includes/gui.h:191: valueReturn=0;
   4D2A DD 36 F5 00   [19] 2988 	ld	-11 (ix),#0x00
   4D2E                    2989 00111$:
                           2990 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4D2E 21 02 04      [10] 2991 	ld	hl,#0x0402
   4D31 CD FD 5D      [17] 2992 	call	_cpct_isKeyPressed
   4D34 7D            [ 4] 2993 	ld	a,l
   4D35 B7            [ 4] 2994 	or	a, a
   4D36 20 0A         [12] 2995 	jr	NZ,00112$
   4D38 21 08 04      [10] 2996 	ld	hl,#0x0408
   4D3B CD FD 5D      [17] 2997 	call	_cpct_isKeyPressed
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
   4D66 3B            [ 6] 3021 	dec	sp
                           3022 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4D67 DD 7E 05      [19] 3023 	ld	a,5 (ix)
   4D6A 07            [ 4] 3024 	rlca
   4D6B 07            [ 4] 3025 	rlca
   4D6C 07            [ 4] 3026 	rlca
   4D6D 07            [ 4] 3027 	rlca
   4D6E E6 F0         [ 7] 3028 	and	a,#0xF0
   4D70 5F            [ 4] 3029 	ld	e,a
   4D71 DD 7E 04      [19] 3030 	ld	a,4 (ix)
   4D74 87            [ 4] 3031 	add	a, a
   4D75 87            [ 4] 3032 	add	a, a
   4D76 57            [ 4] 3033 	ld	d,a
   4D77 D5            [11] 3034 	push	de
   4D78 7B            [ 4] 3035 	ld	a,e
   4D79 F5            [11] 3036 	push	af
   4D7A 33            [ 6] 3037 	inc	sp
   4D7B D5            [11] 3038 	push	de
   4D7C 33            [ 6] 3039 	inc	sp
   4D7D 21 00 C0      [10] 3040 	ld	hl,#0xC000
   4D80 E5            [11] 3041 	push	hl
   4D81 CD FB 60      [17] 3042 	call	_cpct_getScreenPtr
   4D84 D1            [10] 3043 	pop	de
   4D85 4D            [ 4] 3044 	ld	c, l
   4D86 44            [ 4] 3045 	ld	b, h
                           3046 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D87 3E 10         [ 7] 3047 	ld	a,#0x10
   4D89 FD 21 A8 70   [14] 3048 	ld	iy,#_CURSOR_MODE
   4D8D FD 96 00      [19] 3049 	sub	a, 0 (iy)
   4D90 DA 8F 4F      [10] 3050 	jp	C,00119$
   4D93 D5            [11] 3051 	push	de
   4D94 FD 21 A8 70   [14] 3052 	ld	iy,#_CURSOR_MODE
   4D98 FD 5E 00      [19] 3053 	ld	e,0 (iy)
   4D9B 16 00         [ 7] 3054 	ld	d,#0x00
   4D9D 21 A5 4D      [10] 3055 	ld	hl,#00125$
   4DA0 19            [11] 3056 	add	hl,de
   4DA1 19            [11] 3057 	add	hl,de
   4DA2 19            [11] 3058 	add	hl,de
   4DA3 D1            [10] 3059 	pop	de
   4DA4 E9            [ 4] 3060 	jp	(hl)
   4DA5                    3061 00125$:
   4DA5 C3 D8 4D      [10] 3062 	jp	00101$
   4DA8 C3 AA 4E      [10] 3063 	jp	00102$
   4DAB C3 B9 4E      [10] 3064 	jp	00103$
   4DAE C3 C8 4E      [10] 3065 	jp	00104$
   4DB1 C3 D7 4E      [10] 3066 	jp	00105$
   4DB4 C3 E6 4E      [10] 3067 	jp	00106$
   4DB7 C3 F5 4E      [10] 3068 	jp	00107$
   4DBA C3 04 4F      [10] 3069 	jp	00108$
   4DBD C3 13 4F      [10] 3070 	jp	00109$
   4DC0 C3 21 4F      [10] 3071 	jp	00110$
   4DC3 C3 2F 4F      [10] 3072 	jp	00111$
   4DC6 C3 3D 4F      [10] 3073 	jp	00112$
   4DC9 C3 4B 4F      [10] 3074 	jp	00113$
   4DCC C3 59 4F      [10] 3075 	jp	00114$
   4DCF C3 67 4F      [10] 3076 	jp	00115$
   4DD2 C3 75 4F      [10] 3077 	jp	00116$
   4DD5 C3 83 4F      [10] 3078 	jp	00117$
                           3079 ;src/includes/world.h:8: case NONE:
   4DD8                    3080 00101$:
                           3081 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DD8 C5            [11] 3082 	push	bc
   4DD9 D5            [11] 3083 	push	de
   4DDA DD 66 06      [19] 3084 	ld	h,6 (ix)
   4DDD DD 6E 06      [19] 3085 	ld	l,6 (ix)
   4DE0 E5            [11] 3086 	push	hl
   4DE1 DD 66 06      [19] 3087 	ld	h,6 (ix)
   4DE4 DD 6E 06      [19] 3088 	ld	l,6 (ix)
   4DE7 E5            [11] 3089 	push	hl
   4DE8 CD 0A 60      [17] 3090 	call	_cpct_px2byteM1
   4DEB F1            [10] 3091 	pop	af
   4DEC F1            [10] 3092 	pop	af
   4DED DD 75 FF      [19] 3093 	ld	-1 (ix),l
   4DF0 D1            [10] 3094 	pop	de
   4DF1 C1            [10] 3095 	pop	bc
   4DF2 D5            [11] 3096 	push	de
   4DF3 21 04 00      [10] 3097 	ld	hl,#0x0004
   4DF6 E5            [11] 3098 	push	hl
   4DF7 DD 7E FF      [19] 3099 	ld	a,-1 (ix)
   4DFA F5            [11] 3100 	push	af
   4DFB 33            [ 6] 3101 	inc	sp
   4DFC C5            [11] 3102 	push	bc
   4DFD CD FC 5F      [17] 3103 	call	_cpct_memset
   4E00 D1            [10] 3104 	pop	de
                           3105 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4E01 63            [ 4] 3106 	ld	h,e
   4E02 24            [ 4] 3107 	inc	h
   4E03 D5            [11] 3108 	push	de
   4E04 E5            [11] 3109 	push	hl
   4E05 33            [ 6] 3110 	inc	sp
   4E06 D5            [11] 3111 	push	de
   4E07 33            [ 6] 3112 	inc	sp
   4E08 21 00 C0      [10] 3113 	ld	hl,#0xC000
   4E0B E5            [11] 3114 	push	hl
   4E0C CD FB 60      [17] 3115 	call	_cpct_getScreenPtr
   4E0F D1            [10] 3116 	pop	de
                           3117 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E10 E5            [11] 3118 	push	hl
   4E11 D5            [11] 3119 	push	de
   4E12 DD 66 06      [19] 3120 	ld	h,6 (ix)
   4E15 DD 6E 06      [19] 3121 	ld	l,6 (ix)
   4E18 E5            [11] 3122 	push	hl
   4E19 DD 66 06      [19] 3123 	ld	h,6 (ix)
   4E1C DD 6E 06      [19] 3124 	ld	l,6 (ix)
   4E1F E5            [11] 3125 	push	hl
   4E20 CD 0A 60      [17] 3126 	call	_cpct_px2byteM1
   4E23 F1            [10] 3127 	pop	af
   4E24 F1            [10] 3128 	pop	af
   4E25 5D            [ 4] 3129 	ld	e,l
   4E26 F1            [10] 3130 	pop	af
   4E27 57            [ 4] 3131 	ld	d,a
   4E28 C1            [10] 3132 	pop	bc
   4E29 D5            [11] 3133 	push	de
   4E2A 21 04 00      [10] 3134 	ld	hl,#0x0004
   4E2D E5            [11] 3135 	push	hl
   4E2E 7B            [ 4] 3136 	ld	a,e
   4E2F F5            [11] 3137 	push	af
   4E30 33            [ 6] 3138 	inc	sp
   4E31 C5            [11] 3139 	push	bc
   4E32 CD FC 5F      [17] 3140 	call	_cpct_memset
   4E35 D1            [10] 3141 	pop	de
                           3142 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E36 DD 7E 05      [19] 3143 	ld	a,5 (ix)
   4E39 3C            [ 4] 3144 	inc	a
   4E3A 07            [ 4] 3145 	rlca
   4E3B 07            [ 4] 3146 	rlca
   4E3C 07            [ 4] 3147 	rlca
   4E3D 07            [ 4] 3148 	rlca
   4E3E E6 F0         [ 7] 3149 	and	a,#0xF0
   4E40 5F            [ 4] 3150 	ld	e,a
   4E41 63            [ 4] 3151 	ld	h,e
   4E42 25            [ 4] 3152 	dec	h
   4E43 D5            [11] 3153 	push	de
   4E44 E5            [11] 3154 	push	hl
   4E45 33            [ 6] 3155 	inc	sp
   4E46 D5            [11] 3156 	push	de
   4E47 33            [ 6] 3157 	inc	sp
   4E48 21 00 C0      [10] 3158 	ld	hl,#0xC000
   4E4B E5            [11] 3159 	push	hl
   4E4C CD FB 60      [17] 3160 	call	_cpct_getScreenPtr
   4E4F D1            [10] 3161 	pop	de
                           3162 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E50 E5            [11] 3163 	push	hl
   4E51 D5            [11] 3164 	push	de
   4E52 DD 66 06      [19] 3165 	ld	h,6 (ix)
   4E55 DD 6E 06      [19] 3166 	ld	l,6 (ix)
   4E58 E5            [11] 3167 	push	hl
   4E59 DD 66 06      [19] 3168 	ld	h,6 (ix)
   4E5C DD 6E 06      [19] 3169 	ld	l,6 (ix)
   4E5F E5            [11] 3170 	push	hl
   4E60 CD 0A 60      [17] 3171 	call	_cpct_px2byteM1
   4E63 F1            [10] 3172 	pop	af
   4E64 F1            [10] 3173 	pop	af
   4E65 DD 75 FF      [19] 3174 	ld	-1 (ix),l
   4E68 D1            [10] 3175 	pop	de
   4E69 C1            [10] 3176 	pop	bc
   4E6A D5            [11] 3177 	push	de
   4E6B 21 04 00      [10] 3178 	ld	hl,#0x0004
   4E6E E5            [11] 3179 	push	hl
   4E6F DD 7E FF      [19] 3180 	ld	a,-1 (ix)
   4E72 F5            [11] 3181 	push	af
   4E73 33            [ 6] 3182 	inc	sp
   4E74 C5            [11] 3183 	push	bc
   4E75 CD FC 5F      [17] 3184 	call	_cpct_memset
   4E78 D1            [10] 3185 	pop	de
                           3186 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4E79 63            [ 4] 3187 	ld	h,e
   4E7A 25            [ 4] 3188 	dec	h
   4E7B 25            [ 4] 3189 	dec	h
   4E7C E5            [11] 3190 	push	hl
   4E7D 33            [ 6] 3191 	inc	sp
   4E7E D5            [11] 3192 	push	de
   4E7F 33            [ 6] 3193 	inc	sp
   4E80 21 00 C0      [10] 3194 	ld	hl,#0xC000
   4E83 E5            [11] 3195 	push	hl
   4E84 CD FB 60      [17] 3196 	call	_cpct_getScreenPtr
                           3197 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E87 E5            [11] 3198 	push	hl
   4E88 DD 66 06      [19] 3199 	ld	h,6 (ix)
   4E8B DD 6E 06      [19] 3200 	ld	l,6 (ix)
   4E8E E5            [11] 3201 	push	hl
   4E8F DD 66 06      [19] 3202 	ld	h,6 (ix)
   4E92 DD 6E 06      [19] 3203 	ld	l,6 (ix)
   4E95 E5            [11] 3204 	push	hl
   4E96 CD 0A 60      [17] 3205 	call	_cpct_px2byteM1
   4E99 F1            [10] 3206 	pop	af
   4E9A F1            [10] 3207 	pop	af
   4E9B 65            [ 4] 3208 	ld	h,l
   4E9C D1            [10] 3209 	pop	de
   4E9D 01 04 00      [10] 3210 	ld	bc,#0x0004
   4EA0 C5            [11] 3211 	push	bc
   4EA1 E5            [11] 3212 	push	hl
   4EA2 33            [ 6] 3213 	inc	sp
   4EA3 D5            [11] 3214 	push	de
   4EA4 CD FC 5F      [17] 3215 	call	_cpct_memset
                           3216 ;src/includes/world.h:18: break;
   4EA7 C3 8F 4F      [10] 3217 	jp	00119$
                           3218 ;src/includes/world.h:19: case T_SSNS:
   4EAA                    3219 00102$:
                           3220 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EAA 11 A9 42      [10] 3221 	ld	de,#_station_small_ns
   4EAD 21 04 10      [10] 3222 	ld	hl,#0x1004
   4EB0 E5            [11] 3223 	push	hl
   4EB1 C5            [11] 3224 	push	bc
   4EB2 D5            [11] 3225 	push	de
   4EB3 CD 36 5E      [17] 3226 	call	_cpct_drawSprite
                           3227 ;src/includes/world.h:21: break;
   4EB6 C3 8F 4F      [10] 3228 	jp	00119$
                           3229 ;src/includes/world.h:22: case T_SSEW:
   4EB9                    3230 00103$:
                           3231 ;src/includes/world.h:23: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EB9 11 E9 42      [10] 3232 	ld	de,#_station_small_ew
   4EBC 21 04 10      [10] 3233 	ld	hl,#0x1004
   4EBF E5            [11] 3234 	push	hl
   4EC0 C5            [11] 3235 	push	bc
   4EC1 D5            [11] 3236 	push	de
   4EC2 CD 36 5E      [17] 3237 	call	_cpct_drawSprite
                           3238 ;src/includes/world.h:24: break;
   4EC5 C3 8F 4F      [10] 3239 	jp	00119$
                           3240 ;src/includes/world.h:25: case T_SMNS:
   4EC8                    3241 00104$:
                           3242 ;src/includes/world.h:26: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EC8 11 29 43      [10] 3243 	ld	de,#_station_medium_ns
   4ECB 21 04 10      [10] 3244 	ld	hl,#0x1004
   4ECE E5            [11] 3245 	push	hl
   4ECF C5            [11] 3246 	push	bc
   4ED0 D5            [11] 3247 	push	de
   4ED1 CD 36 5E      [17] 3248 	call	_cpct_drawSprite
                           3249 ;src/includes/world.h:27: break;
   4ED4 C3 8F 4F      [10] 3250 	jp	00119$
                           3251 ;src/includes/world.h:28: case T_SMEW:
   4ED7                    3252 00105$:
                           3253 ;src/includes/world.h:29: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4ED7 11 69 43      [10] 3254 	ld	de,#_station_medium_ew
   4EDA 21 04 10      [10] 3255 	ld	hl,#0x1004
   4EDD E5            [11] 3256 	push	hl
   4EDE C5            [11] 3257 	push	bc
   4EDF D5            [11] 3258 	push	de
   4EE0 CD 36 5E      [17] 3259 	call	_cpct_drawSprite
                           3260 ;src/includes/world.h:30: break;
   4EE3 C3 8F 4F      [10] 3261 	jp	00119$
                           3262 ;src/includes/world.h:31: case T_SLNS:
   4EE6                    3263 00106$:
                           3264 ;src/includes/world.h:32: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EE6 11 A9 43      [10] 3265 	ld	de,#_station_large_ns
   4EE9 21 04 10      [10] 3266 	ld	hl,#0x1004
   4EEC E5            [11] 3267 	push	hl
   4EED C5            [11] 3268 	push	bc
   4EEE D5            [11] 3269 	push	de
   4EEF CD 36 5E      [17] 3270 	call	_cpct_drawSprite
                           3271 ;src/includes/world.h:33: break;
   4EF2 C3 8F 4F      [10] 3272 	jp	00119$
                           3273 ;src/includes/world.h:34: case T_SLEW:
   4EF5                    3274 00107$:
                           3275 ;src/includes/world.h:35: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EF5 11 E9 43      [10] 3276 	ld	de,#_station_large_ew
   4EF8 21 04 10      [10] 3277 	ld	hl,#0x1004
   4EFB E5            [11] 3278 	push	hl
   4EFC C5            [11] 3279 	push	bc
   4EFD D5            [11] 3280 	push	de
   4EFE CD 36 5E      [17] 3281 	call	_cpct_drawSprite
                           3282 ;src/includes/world.h:36: break;
   4F01 C3 8F 4F      [10] 3283 	jp	00119$
                           3284 ;src/includes/world.h:37: case T_REW:
   4F04                    3285 00108$:
                           3286 ;src/includes/world.h:38: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4F04 11 29 44      [10] 3287 	ld	de,#_rail_ew
   4F07 21 04 10      [10] 3288 	ld	hl,#0x1004
   4F0A E5            [11] 3289 	push	hl
   4F0B C5            [11] 3290 	push	bc
   4F0C D5            [11] 3291 	push	de
   4F0D CD 36 5E      [17] 3292 	call	_cpct_drawSprite
                           3293 ;src/includes/world.h:39: break;
   4F10 C3 8F 4F      [10] 3294 	jp	00119$
                           3295 ;src/includes/world.h:40: case T_RNS:
   4F13                    3296 00109$:
                           3297 ;src/includes/world.h:41: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4F13 11 69 44      [10] 3298 	ld	de,#_rail_ns
   4F16 21 04 10      [10] 3299 	ld	hl,#0x1004
   4F19 E5            [11] 3300 	push	hl
   4F1A C5            [11] 3301 	push	bc
   4F1B D5            [11] 3302 	push	de
   4F1C CD 36 5E      [17] 3303 	call	_cpct_drawSprite
                           3304 ;src/includes/world.h:42: break;
   4F1F 18 6E         [12] 3305 	jr	00119$
                           3306 ;src/includes/world.h:43: case T_REN:
   4F21                    3307 00110$:
                           3308 ;src/includes/world.h:44: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4F21 11 A9 44      [10] 3309 	ld	de,#_rail_en
   4F24 21 04 10      [10] 3310 	ld	hl,#0x1004
   4F27 E5            [11] 3311 	push	hl
   4F28 C5            [11] 3312 	push	bc
   4F29 D5            [11] 3313 	push	de
   4F2A CD 36 5E      [17] 3314 	call	_cpct_drawSprite
                           3315 ;src/includes/world.h:45: break;
   4F2D 18 60         [12] 3316 	jr	00119$
                           3317 ;src/includes/world.h:46: case T_RES:
   4F2F                    3318 00111$:
                           3319 ;src/includes/world.h:47: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4F2F 11 E9 44      [10] 3320 	ld	de,#_rail_es
   4F32 21 04 10      [10] 3321 	ld	hl,#0x1004
   4F35 E5            [11] 3322 	push	hl
   4F36 C5            [11] 3323 	push	bc
   4F37 D5            [11] 3324 	push	de
   4F38 CD 36 5E      [17] 3325 	call	_cpct_drawSprite
                           3326 ;src/includes/world.h:48: break;
   4F3B 18 52         [12] 3327 	jr	00119$
                           3328 ;src/includes/world.h:49: case T_RWN:
   4F3D                    3329 00112$:
                           3330 ;src/includes/world.h:50: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4F3D 11 29 45      [10] 3331 	ld	de,#_rail_wn
   4F40 21 04 10      [10] 3332 	ld	hl,#0x1004
   4F43 E5            [11] 3333 	push	hl
   4F44 C5            [11] 3334 	push	bc
   4F45 D5            [11] 3335 	push	de
   4F46 CD 36 5E      [17] 3336 	call	_cpct_drawSprite
                           3337 ;src/includes/world.h:51: break;
   4F49 18 44         [12] 3338 	jr	00119$
                           3339 ;src/includes/world.h:52: case T_RWS:
   4F4B                    3340 00113$:
                           3341 ;src/includes/world.h:53: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4F4B 11 69 45      [10] 3342 	ld	de,#_rail_ws
   4F4E 21 04 10      [10] 3343 	ld	hl,#0x1004
   4F51 E5            [11] 3344 	push	hl
   4F52 C5            [11] 3345 	push	bc
   4F53 D5            [11] 3346 	push	de
   4F54 CD 36 5E      [17] 3347 	call	_cpct_drawSprite
                           3348 ;src/includes/world.h:54: break;
   4F57 18 36         [12] 3349 	jr	00119$
                           3350 ;src/includes/world.h:55: case T_REWN:
   4F59                    3351 00114$:
                           3352 ;src/includes/world.h:56: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4F59 11 A9 45      [10] 3353 	ld	de,#_rail_ew_n
   4F5C 21 04 10      [10] 3354 	ld	hl,#0x1004
   4F5F E5            [11] 3355 	push	hl
   4F60 C5            [11] 3356 	push	bc
   4F61 D5            [11] 3357 	push	de
   4F62 CD 36 5E      [17] 3358 	call	_cpct_drawSprite
                           3359 ;src/includes/world.h:57: break;
   4F65 18 28         [12] 3360 	jr	00119$
                           3361 ;src/includes/world.h:58: case T_REWS:
   4F67                    3362 00115$:
                           3363 ;src/includes/world.h:59: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4F67 11 E9 45      [10] 3364 	ld	de,#_rail_ew_s
   4F6A 21 04 10      [10] 3365 	ld	hl,#0x1004
   4F6D E5            [11] 3366 	push	hl
   4F6E C5            [11] 3367 	push	bc
   4F6F D5            [11] 3368 	push	de
   4F70 CD 36 5E      [17] 3369 	call	_cpct_drawSprite
                           3370 ;src/includes/world.h:60: break;
   4F73 18 1A         [12] 3371 	jr	00119$
                           3372 ;src/includes/world.h:61: case T_RNSE:
   4F75                    3373 00116$:
                           3374 ;src/includes/world.h:62: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4F75 11 69 46      [10] 3375 	ld	de,#_rail_ns_e
   4F78 21 04 10      [10] 3376 	ld	hl,#0x1004
   4F7B E5            [11] 3377 	push	hl
   4F7C C5            [11] 3378 	push	bc
   4F7D D5            [11] 3379 	push	de
   4F7E CD 36 5E      [17] 3380 	call	_cpct_drawSprite
                           3381 ;src/includes/world.h:63: break;
   4F81 18 0C         [12] 3382 	jr	00119$
                           3383 ;src/includes/world.h:64: case T_RNSW:
   4F83                    3384 00117$:
                           3385 ;src/includes/world.h:65: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4F83 11 29 46      [10] 3386 	ld	de,#_rail_ns_w
   4F86 21 04 10      [10] 3387 	ld	hl,#0x1004
   4F89 E5            [11] 3388 	push	hl
   4F8A C5            [11] 3389 	push	bc
   4F8B D5            [11] 3390 	push	de
   4F8C CD 36 5E      [17] 3391 	call	_cpct_drawSprite
                           3392 ;src/includes/world.h:67: }
   4F8F                    3393 00119$:
   4F8F 33            [ 6] 3394 	inc	sp
   4F90 DD E1         [14] 3395 	pop	ix
   4F92 C9            [10] 3396 	ret
                           3397 ;src/includes/world.h:70: void generateWorld()
                           3398 ;	---------------------------------
                           3399 ; Function generateWorld
                           3400 ; ---------------------------------
   4F93                    3401 _generateWorld::
   4F93 DD E5         [15] 3402 	push	ix
   4F95 DD 21 00 00   [14] 3403 	ld	ix,#0
   4F99 DD 39         [15] 3404 	add	ix,sp
   4F9B F5            [11] 3405 	push	af
   4F9C F5            [11] 3406 	push	af
                           3407 ;src/includes/world.h:78: cpct_setRandomSeedUniform_u8(0);
   4F9D 2E 00         [ 7] 3408 	ld	l,#0x00
   4F9F CD E1 5D      [17] 3409 	call	_cpct_setRandomSeedUniform_u8
                           3410 ;src/includes/world.h:80: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FA2 11 00 00      [10] 3411 	ld	de,#0x0000
   4FA5                    3412 00114$:
                           3413 ;src/includes/world.h:82: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   4FA5 21 A8 61      [10] 3414 	ld	hl,#_p_world
   4FA8 19            [11] 3415 	add	hl,de
   4FA9 E5            [11] 3416 	push	hl
   4FAA D5            [11] 3417 	push	de
   4FAB 2E 00         [ 7] 3418 	ld	l,#0x00
   4FAD CD BD 5F      [17] 3419 	call	_cpct_getRandomUniform_u8_f
   4FB0 7D            [ 4] 3420 	ld	a,l
   4FB1 D1            [10] 3421 	pop	de
   4FB2 E1            [10] 3422 	pop	hl
   4FB3 E6 01         [ 7] 3423 	and	a, #0x01
   4FB5 77            [ 7] 3424 	ld	(hl),a
                           3425 ;src/includes/world.h:80: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FB6 13            [ 6] 3426 	inc	de
   4FB7 7A            [ 4] 3427 	ld	a,d
   4FB8 EE 80         [ 7] 3428 	xor	a, #0x80
   4FBA D6 8F         [ 7] 3429 	sub	a, #0x8F
   4FBC 38 E7         [12] 3430 	jr	C,00114$
                           3431 ;src/includes/world.h:109: cpct_setRandomSeedUniform_u8(1);
   4FBE 2E 01         [ 7] 3432 	ld	l,#0x01
   4FC0 CD E1 5D      [17] 3433 	call	_cpct_setRandomSeedUniform_u8
                           3434 ;src/includes/world.h:111: for(ix=0; ix<NBFARM; ix++)
   4FC3 21 00 00      [10] 3435 	ld	hl,#0x0000
   4FC6 E3            [19] 3436 	ex	(sp), hl
   4FC7                    3437 00116$:
                           3438 ;src/includes/world.h:113: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   4FC7 2E 01         [ 7] 3439 	ld	l,#0x01
   4FC9 CD BD 5F      [17] 3440 	call	_cpct_getRandomUniform_u8_f
   4FCC 4D            [ 4] 3441 	ld	c,l
   4FCD 06 00         [ 7] 3442 	ld	b,#0x00
   4FCF 69            [ 4] 3443 	ld	l, c
   4FD0 60            [ 4] 3444 	ld	h, b
   4FD1 29            [11] 3445 	add	hl, hl
   4FD2 09            [11] 3446 	add	hl, bc
   4FD3 29            [11] 3447 	add	hl, hl
   4FD4 09            [11] 3448 	add	hl, bc
   4FD5 29            [11] 3449 	add	hl, hl
   4FD6 09            [11] 3450 	add	hl, bc
                           3451 ;src/includes/world.h:115: shift = cpct_getRandomUniform_u8_f(1)%10;
   4FD7 E5            [11] 3452 	push	hl
   4FD8 2E 01         [ 7] 3453 	ld	l,#0x01
   4FDA CD BD 5F      [17] 3454 	call	_cpct_getRandomUniform_u8_f
   4FDD 45            [ 4] 3455 	ld	b,l
   4FDE 3E 0A         [ 7] 3456 	ld	a,#0x0A
   4FE0 F5            [11] 3457 	push	af
   4FE1 33            [ 6] 3458 	inc	sp
   4FE2 C5            [11] 3459 	push	bc
   4FE3 33            [ 6] 3460 	inc	sp
   4FE4 CD DB 5E      [17] 3461 	call	__moduchar
   4FE7 F1            [10] 3462 	pop	af
   4FE8 D1            [10] 3463 	pop	de
   4FE9 26 00         [ 7] 3464 	ld	h,#0x00
                           3465 ;src/includes/world.h:116: shift=iy-shift+5;
   4FEB 7B            [ 4] 3466 	ld	a,e
   4FEC 95            [ 4] 3467 	sub	a, l
   4FED 6F            [ 4] 3468 	ld	l,a
   4FEE 7A            [ 4] 3469 	ld	a,d
   4FEF 9C            [ 4] 3470 	sbc	a, h
   4FF0 67            [ 4] 3471 	ld	h,a
   4FF1 01 05 00      [10] 3472 	ld	bc,#0x0005
   4FF4 09            [11] 3473 	add	hl,bc
                           3474 ;src/includes/world.h:118: if(shift>0 && shift<WIDTH*HEIGHT)
   4FF5 AF            [ 4] 3475 	xor	a, a
   4FF6 BD            [ 4] 3476 	cp	a, l
   4FF7 9C            [ 4] 3477 	sbc	a, h
   4FF8 E2 FD 4F      [10] 3478 	jp	PO, 00180$
   4FFB EE 80         [ 7] 3479 	xor	a, #0x80
   4FFD                    3480 00180$:
   4FFD F2 18 50      [10] 3481 	jp	P,00117$
   5000 7C            [ 4] 3482 	ld	a,h
   5001 EE 80         [ 7] 3483 	xor	a, #0x80
   5003 D6 8F         [ 7] 3484 	sub	a, #0x8F
   5005 30 11         [12] 3485 	jr	NC,00117$
                           3486 ;src/includes/world.h:119: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
   5007 11 A8 61      [10] 3487 	ld	de,#_p_world
   500A 19            [11] 3488 	add	hl,de
   500B E5            [11] 3489 	push	hl
   500C 2E 01         [ 7] 3490 	ld	l,#0x01
   500E CD BD 5F      [17] 3491 	call	_cpct_getRandomUniform_u8_f
   5011 7D            [ 4] 3492 	ld	a,l
   5012 E1            [10] 3493 	pop	hl
   5013 E6 01         [ 7] 3494 	and	a, #0x01
   5015 C6 05         [ 7] 3495 	add	a, #0x05
   5017 77            [ 7] 3496 	ld	(hl),a
   5018                    3497 00117$:
                           3498 ;src/includes/world.h:111: for(ix=0; ix<NBFARM; ix++)
   5018 DD 34 FC      [23] 3499 	inc	-4 (ix)
   501B 20 03         [12] 3500 	jr	NZ,00181$
   501D DD 34 FD      [23] 3501 	inc	-3 (ix)
   5020                    3502 00181$:
   5020 DD 7E FC      [19] 3503 	ld	a,-4 (ix)
   5023 D6 3C         [ 7] 3504 	sub	a, #0x3C
   5025 DD 7E FD      [19] 3505 	ld	a,-3 (ix)
   5028 17            [ 4] 3506 	rla
   5029 3F            [ 4] 3507 	ccf
   502A 1F            [ 4] 3508 	rra
   502B DE 80         [ 7] 3509 	sbc	a, #0x80
   502D 38 98         [12] 3510 	jr	C,00116$
                           3511 ;src/includes/world.h:124: cpct_setRandomSeedUniform_u8(2);
   502F 2E 02         [ 7] 3512 	ld	l,#0x02
   5031 CD E1 5D      [17] 3513 	call	_cpct_setRandomSeedUniform_u8
                           3514 ;src/includes/world.h:126: for(ix=0; ix<NBURBAN; ix++)
   5034 21 00 00      [10] 3515 	ld	hl,#0x0000
   5037 E3            [19] 3516 	ex	(sp), hl
   5038                    3517 00118$:
                           3518 ;src/includes/world.h:128: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
   5038 2E 02         [ 7] 3519 	ld	l,#0x02
   503A CD BD 5F      [17] 3520 	call	_cpct_getRandomUniform_u8_f
   503D 4D            [ 4] 3521 	ld	c,l
   503E 06 00         [ 7] 3522 	ld	b,#0x00
   5040 69            [ 4] 3523 	ld	l, c
   5041 60            [ 4] 3524 	ld	h, b
   5042 29            [11] 3525 	add	hl, hl
   5043 09            [11] 3526 	add	hl, bc
   5044 29            [11] 3527 	add	hl, hl
   5045 09            [11] 3528 	add	hl, bc
   5046 29            [11] 3529 	add	hl, hl
   5047 09            [11] 3530 	add	hl, bc
                           3531 ;src/includes/world.h:130: shift = cpct_getRandomUniform_u8_f(2)%10;
   5048 E5            [11] 3532 	push	hl
   5049 2E 02         [ 7] 3533 	ld	l,#0x02
   504B CD BD 5F      [17] 3534 	call	_cpct_getRandomUniform_u8_f
   504E 45            [ 4] 3535 	ld	b,l
   504F 3E 0A         [ 7] 3536 	ld	a,#0x0A
   5051 F5            [11] 3537 	push	af
   5052 33            [ 6] 3538 	inc	sp
   5053 C5            [11] 3539 	push	bc
   5054 33            [ 6] 3540 	inc	sp
   5055 CD DB 5E      [17] 3541 	call	__moduchar
   5058 F1            [10] 3542 	pop	af
   5059 D1            [10] 3543 	pop	de
   505A 26 00         [ 7] 3544 	ld	h,#0x00
                           3545 ;src/includes/world.h:131: shift=iy-shift+5;
   505C 7B            [ 4] 3546 	ld	a,e
   505D 95            [ 4] 3547 	sub	a, l
   505E 4F            [ 4] 3548 	ld	c,a
   505F 7A            [ 4] 3549 	ld	a,d
   5060 9C            [ 4] 3550 	sbc	a, h
   5061 47            [ 4] 3551 	ld	b,a
   5062 03            [ 6] 3552 	inc	bc
   5063 03            [ 6] 3553 	inc	bc
   5064 03            [ 6] 3554 	inc	bc
   5065 03            [ 6] 3555 	inc	bc
   5066 03            [ 6] 3556 	inc	bc
                           3557 ;src/includes/world.h:133: if(shift>0 && shift<WIDTH*HEIGHT)
   5067 AF            [ 4] 3558 	xor	a, a
   5068 B9            [ 4] 3559 	cp	a, c
   5069 98            [ 4] 3560 	sbc	a, b
   506A E2 6F 50      [10] 3561 	jp	PO, 00182$
   506D EE 80         [ 7] 3562 	xor	a, #0x80
   506F                    3563 00182$:
   506F F2 93 50      [10] 3564 	jp	P,00119$
   5072 78            [ 4] 3565 	ld	a,b
   5073 EE 80         [ 7] 3566 	xor	a, #0x80
   5075 D6 8F         [ 7] 3567 	sub	a, #0x8F
   5077 30 1A         [12] 3568 	jr	NC,00119$
                           3569 ;src/includes/world.h:134: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
   5079 21 A8 61      [10] 3570 	ld	hl,#_p_world
   507C 09            [11] 3571 	add	hl,bc
   507D E5            [11] 3572 	push	hl
   507E 2E 02         [ 7] 3573 	ld	l,#0x02
   5080 CD BD 5F      [17] 3574 	call	_cpct_getRandomUniform_u8_f
   5083 45            [ 4] 3575 	ld	b,l
   5084 3E 03         [ 7] 3576 	ld	a,#0x03
   5086 F5            [11] 3577 	push	af
   5087 33            [ 6] 3578 	inc	sp
   5088 C5            [11] 3579 	push	bc
   5089 33            [ 6] 3580 	inc	sp
   508A CD DB 5E      [17] 3581 	call	__moduchar
   508D F1            [10] 3582 	pop	af
   508E 7D            [ 4] 3583 	ld	a,l
   508F D1            [10] 3584 	pop	de
   5090 C6 02         [ 7] 3585 	add	a, #0x02
   5092 12            [ 7] 3586 	ld	(de),a
   5093                    3587 00119$:
                           3588 ;src/includes/world.h:126: for(ix=0; ix<NBURBAN; ix++)
   5093 DD 34 FC      [23] 3589 	inc	-4 (ix)
   5096 20 03         [12] 3590 	jr	NZ,00183$
   5098 DD 34 FD      [23] 3591 	inc	-3 (ix)
   509B                    3592 00183$:
   509B DD 7E FC      [19] 3593 	ld	a,-4 (ix)
   509E D6 1E         [ 7] 3594 	sub	a, #0x1E
   50A0 DD 7E FD      [19] 3595 	ld	a,-3 (ix)
   50A3 17            [ 4] 3596 	rla
   50A4 3F            [ 4] 3597 	ccf
   50A5 1F            [ 4] 3598 	rra
   50A6 DE 80         [ 7] 3599 	sbc	a, #0x80
   50A8 38 8E         [12] 3600 	jr	C,00118$
                           3601 ;src/includes/world.h:139: cpct_setRandomSeedUniform_u8(3);
   50AA 2E 03         [ 7] 3602 	ld	l,#0x03
   50AC CD E1 5D      [17] 3603 	call	_cpct_setRandomSeedUniform_u8
                           3604 ;src/includes/world.h:141: for(ix=0; ix<NBLIVESTOCK; ix++)
   50AF 11 00 00      [10] 3605 	ld	de,#0x0000
   50B2                    3606 00120$:
                           3607 ;src/includes/world.h:143: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
   50B2 D5            [11] 3608 	push	de
   50B3 2E 03         [ 7] 3609 	ld	l,#0x03
   50B5 CD BD 5F      [17] 3610 	call	_cpct_getRandomUniform_u8_f
   50B8 D1            [10] 3611 	pop	de
   50B9 4D            [ 4] 3612 	ld	c,l
   50BA 06 00         [ 7] 3613 	ld	b,#0x00
   50BC 69            [ 4] 3614 	ld	l, c
   50BD 60            [ 4] 3615 	ld	h, b
   50BE 29            [11] 3616 	add	hl, hl
   50BF 09            [11] 3617 	add	hl, bc
   50C0 29            [11] 3618 	add	hl, hl
   50C1 09            [11] 3619 	add	hl, bc
   50C2 29            [11] 3620 	add	hl, hl
   50C3 09            [11] 3621 	add	hl, bc
   50C4 DD 75 FE      [19] 3622 	ld	-2 (ix),l
   50C7 DD 74 FF      [19] 3623 	ld	-1 (ix),h
                           3624 ;src/includes/world.h:145: shift = cpct_getRandomUniform_u8_f(3)%10;
   50CA D5            [11] 3625 	push	de
   50CB 2E 03         [ 7] 3626 	ld	l,#0x03
   50CD CD BD 5F      [17] 3627 	call	_cpct_getRandomUniform_u8_f
   50D0 45            [ 4] 3628 	ld	b,l
   50D1 3E 0A         [ 7] 3629 	ld	a,#0x0A
   50D3 F5            [11] 3630 	push	af
   50D4 33            [ 6] 3631 	inc	sp
   50D5 C5            [11] 3632 	push	bc
   50D6 33            [ 6] 3633 	inc	sp
   50D7 CD DB 5E      [17] 3634 	call	__moduchar
   50DA F1            [10] 3635 	pop	af
   50DB D1            [10] 3636 	pop	de
   50DC 26 00         [ 7] 3637 	ld	h,#0x00
                           3638 ;src/includes/world.h:146: shift=iy-shift+5;
   50DE DD 7E FE      [19] 3639 	ld	a,-2 (ix)
   50E1 95            [ 4] 3640 	sub	a, l
   50E2 6F            [ 4] 3641 	ld	l,a
   50E3 DD 7E FF      [19] 3642 	ld	a,-1 (ix)
   50E6 9C            [ 4] 3643 	sbc	a, h
   50E7 67            [ 4] 3644 	ld	h,a
   50E8 01 05 00      [10] 3645 	ld	bc,#0x0005
   50EB 09            [11] 3646 	add	hl,bc
                           3647 ;src/includes/world.h:148: if(shift>0 && shift<WIDTH*HEIGHT)
   50EC AF            [ 4] 3648 	xor	a, a
   50ED BD            [ 4] 3649 	cp	a, l
   50EE 9C            [ 4] 3650 	sbc	a, h
   50EF E2 F4 50      [10] 3651 	jp	PO, 00184$
   50F2 EE 80         [ 7] 3652 	xor	a, #0x80
   50F4                    3653 00184$:
   50F4 F2 04 51      [10] 3654 	jp	P,00121$
   50F7 7C            [ 4] 3655 	ld	a,h
   50F8 EE 80         [ 7] 3656 	xor	a, #0x80
   50FA D6 8F         [ 7] 3657 	sub	a, #0x8F
   50FC 30 06         [12] 3658 	jr	NC,00121$
                           3659 ;src/includes/world.h:149: p_world[shift] = LIVESTOCK;
   50FE 01 A8 61      [10] 3660 	ld	bc,#_p_world
   5101 09            [11] 3661 	add	hl,bc
   5102 36 09         [10] 3662 	ld	(hl),#0x09
   5104                    3663 00121$:
                           3664 ;src/includes/world.h:141: for(ix=0; ix<NBLIVESTOCK; ix++)
   5104 13            [ 6] 3665 	inc	de
   5105 7B            [ 4] 3666 	ld	a,e
   5106 D6 13         [ 7] 3667 	sub	a, #0x13
   5108 7A            [ 4] 3668 	ld	a,d
   5109 17            [ 4] 3669 	rla
   510A 3F            [ 4] 3670 	ccf
   510B 1F            [ 4] 3671 	rra
   510C DE 80         [ 7] 3672 	sbc	a, #0x80
   510E 38 A2         [12] 3673 	jr	C,00120$
   5110 DD F9         [10] 3674 	ld	sp, ix
   5112 DD E1         [14] 3675 	pop	ix
   5114 C9            [10] 3676 	ret
                           3677 ;src/includes/world.h:153: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           3678 ;	---------------------------------
                           3679 ; Function drawTile
                           3680 ; ---------------------------------
   5115                    3681 _drawTile::
   5115 DD E5         [15] 3682 	push	ix
   5117 DD 21 00 00   [14] 3683 	ld	ix,#0
   511B DD 39         [15] 3684 	add	ix,sp
                           3685 ;src/includes/world.h:156: int adress = (y_+iy)*WIDTH+x_+ix;
   511D DD 6E 05      [19] 3686 	ld	l,5 (ix)
   5120 26 00         [ 7] 3687 	ld	h,#0x00
   5122 DD 5E 07      [19] 3688 	ld	e,7 (ix)
   5125 16 00         [ 7] 3689 	ld	d,#0x00
   5127 19            [11] 3690 	add	hl,de
   5128 4D            [ 4] 3691 	ld	c, l
   5129 44            [ 4] 3692 	ld	b, h
   512A 29            [11] 3693 	add	hl, hl
   512B 29            [11] 3694 	add	hl, hl
   512C 09            [11] 3695 	add	hl, bc
   512D 29            [11] 3696 	add	hl, hl
   512E 29            [11] 3697 	add	hl, hl
   512F 29            [11] 3698 	add	hl, hl
   5130 29            [11] 3699 	add	hl, hl
   5131 DD 5E 04      [19] 3700 	ld	e,4 (ix)
   5134 16 00         [ 7] 3701 	ld	d,#0x00
   5136 19            [11] 3702 	add	hl,de
   5137 DD 5E 06      [19] 3703 	ld	e,6 (ix)
   513A 16 00         [ 7] 3704 	ld	d,#0x00
   513C 19            [11] 3705 	add	hl,de
   513D 5D            [ 4] 3706 	ld	e, l
   513E 54            [ 4] 3707 	ld	d, h
                           3708 ;src/includes/world.h:158: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   513F DD 7E 07      [19] 3709 	ld	a,7 (ix)
   5142 07            [ 4] 3710 	rlca
   5143 07            [ 4] 3711 	rlca
   5144 07            [ 4] 3712 	rlca
   5145 07            [ 4] 3713 	rlca
   5146 E6 F0         [ 7] 3714 	and	a,#0xF0
   5148 67            [ 4] 3715 	ld	h,a
   5149 DD 7E 06      [19] 3716 	ld	a,6 (ix)
   514C 87            [ 4] 3717 	add	a, a
   514D 87            [ 4] 3718 	add	a, a
   514E D5            [11] 3719 	push	de
   514F E5            [11] 3720 	push	hl
   5150 33            [ 6] 3721 	inc	sp
   5151 F5            [11] 3722 	push	af
   5152 33            [ 6] 3723 	inc	sp
   5153 21 00 C0      [10] 3724 	ld	hl,#0xC000
   5156 E5            [11] 3725 	push	hl
   5157 CD FB 60      [17] 3726 	call	_cpct_getScreenPtr
   515A D1            [10] 3727 	pop	de
   515B 4D            [ 4] 3728 	ld	c, l
   515C 44            [ 4] 3729 	ld	b, h
                           3730 ;src/includes/world.h:160: switch(p_world[adress])
   515D 21 A8 61      [10] 3731 	ld	hl,#_p_world
   5160 19            [11] 3732 	add	hl,de
   5161 5E            [ 7] 3733 	ld	e,(hl)
   5162 3E 19         [ 7] 3734 	ld	a,#0x19
   5164 93            [ 4] 3735 	sub	a, e
   5165 DA 3A 53      [10] 3736 	jp	C,00128$
   5168 16 00         [ 7] 3737 	ld	d,#0x00
   516A 21 71 51      [10] 3738 	ld	hl,#00134$
   516D 19            [11] 3739 	add	hl,de
   516E 19            [11] 3740 	add	hl,de
   516F 19            [11] 3741 	add	hl,de
   5170 E9            [ 4] 3742 	jp	(hl)
   5171                    3743 00134$:
   5171 C3 BF 51      [10] 3744 	jp	00101$
   5174 C3 CE 51      [10] 3745 	jp	00102$
   5177 C3 DD 51      [10] 3746 	jp	00103$
   517A C3 EC 51      [10] 3747 	jp	00104$
   517D C3 FB 51      [10] 3748 	jp	00105$
   5180 C3 0A 52      [10] 3749 	jp	00106$
   5183 C3 19 52      [10] 3750 	jp	00107$
   5186 C3 28 52      [10] 3751 	jp	00108$
   5189 C3 37 52      [10] 3752 	jp	00109$
   518C C3 46 52      [10] 3753 	jp	00110$
   518F C3 55 52      [10] 3754 	jp	00111$
   5192 C3 64 52      [10] 3755 	jp	00112$
   5195 C3 73 52      [10] 3756 	jp	00113$
   5198 C3 82 52      [10] 3757 	jp	00114$
   519B C3 91 52      [10] 3758 	jp	00115$
   519E C3 A0 52      [10] 3759 	jp	00116$
   51A1 C3 AF 52      [10] 3760 	jp	00117$
   51A4 C3 BE 52      [10] 3761 	jp	00118$
   51A7 C3 CC 52      [10] 3762 	jp	00119$
   51AA C3 DA 52      [10] 3763 	jp	00120$
   51AD C3 E8 52      [10] 3764 	jp	00121$
   51B0 C3 F6 52      [10] 3765 	jp	00122$
   51B3 C3 04 53      [10] 3766 	jp	00123$
   51B6 C3 12 53      [10] 3767 	jp	00124$
   51B9 C3 20 53      [10] 3768 	jp	00125$
   51BC C3 2E 53      [10] 3769 	jp	00126$
                           3770 ;src/includes/world.h:162: case GRASS1:
   51BF                    3771 00101$:
                           3772 ;src/includes/world.h:163: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   51BF 11 29 40      [10] 3773 	ld	de,#_grass1
   51C2 21 04 10      [10] 3774 	ld	hl,#0x1004
   51C5 E5            [11] 3775 	push	hl
   51C6 C5            [11] 3776 	push	bc
   51C7 D5            [11] 3777 	push	de
   51C8 CD 36 5E      [17] 3778 	call	_cpct_drawSprite
                           3779 ;src/includes/world.h:164: break;
   51CB C3 3A 53      [10] 3780 	jp	00128$
                           3781 ;src/includes/world.h:165: case GRASS2:
   51CE                    3782 00102$:
                           3783 ;src/includes/world.h:166: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   51CE 11 69 40      [10] 3784 	ld	de,#_grass2
   51D1 21 04 10      [10] 3785 	ld	hl,#0x1004
   51D4 E5            [11] 3786 	push	hl
   51D5 C5            [11] 3787 	push	bc
   51D6 D5            [11] 3788 	push	de
   51D7 CD 36 5E      [17] 3789 	call	_cpct_drawSprite
                           3790 ;src/includes/world.h:167: break;
   51DA C3 3A 53      [10] 3791 	jp	00128$
                           3792 ;src/includes/world.h:168: case DWELLINGS1:
   51DD                    3793 00103$:
                           3794 ;src/includes/world.h:169: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   51DD 11 E9 40      [10] 3795 	ld	de,#_dwellings1
   51E0 21 04 10      [10] 3796 	ld	hl,#0x1004
   51E3 E5            [11] 3797 	push	hl
   51E4 C5            [11] 3798 	push	bc
   51E5 D5            [11] 3799 	push	de
   51E6 CD 36 5E      [17] 3800 	call	_cpct_drawSprite
                           3801 ;src/includes/world.h:170: break;
   51E9 C3 3A 53      [10] 3802 	jp	00128$
                           3803 ;src/includes/world.h:171: case DWELLINGS2:
   51EC                    3804 00104$:
                           3805 ;src/includes/world.h:172: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   51EC 11 29 41      [10] 3806 	ld	de,#_dwellings2
   51EF 21 04 10      [10] 3807 	ld	hl,#0x1004
   51F2 E5            [11] 3808 	push	hl
   51F3 C5            [11] 3809 	push	bc
   51F4 D5            [11] 3810 	push	de
   51F5 CD 36 5E      [17] 3811 	call	_cpct_drawSprite
                           3812 ;src/includes/world.h:173: break;
   51F8 C3 3A 53      [10] 3813 	jp	00128$
                           3814 ;src/includes/world.h:174: case DWELLINGS3:
   51FB                    3815 00105$:
                           3816 ;src/includes/world.h:175: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   51FB 11 69 41      [10] 3817 	ld	de,#_dwellings3
   51FE 21 04 10      [10] 3818 	ld	hl,#0x1004
   5201 E5            [11] 3819 	push	hl
   5202 C5            [11] 3820 	push	bc
   5203 D5            [11] 3821 	push	de
   5204 CD 36 5E      [17] 3822 	call	_cpct_drawSprite
                           3823 ;src/includes/world.h:176: break;
   5207 C3 3A 53      [10] 3824 	jp	00128$
                           3825 ;src/includes/world.h:177: case FARM1:
   520A                    3826 00106$:
                           3827 ;src/includes/world.h:178: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   520A 11 E9 41      [10] 3828 	ld	de,#_farm1
   520D 21 04 10      [10] 3829 	ld	hl,#0x1004
   5210 E5            [11] 3830 	push	hl
   5211 C5            [11] 3831 	push	bc
   5212 D5            [11] 3832 	push	de
   5213 CD 36 5E      [17] 3833 	call	_cpct_drawSprite
                           3834 ;src/includes/world.h:179: break;
   5216 C3 3A 53      [10] 3835 	jp	00128$
                           3836 ;src/includes/world.h:180: case FARM2:
   5219                    3837 00107$:
                           3838 ;src/includes/world.h:181: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   5219 11 29 42      [10] 3839 	ld	de,#_farm2
   521C 21 04 10      [10] 3840 	ld	hl,#0x1004
   521F E5            [11] 3841 	push	hl
   5220 C5            [11] 3842 	push	bc
   5221 D5            [11] 3843 	push	de
   5222 CD 36 5E      [17] 3844 	call	_cpct_drawSprite
                           3845 ;src/includes/world.h:182: break;
   5225 C3 3A 53      [10] 3846 	jp	00128$
                           3847 ;src/includes/world.h:183: case WATER:
   5228                    3848 00108$:
                           3849 ;src/includes/world.h:184: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   5228 11 A9 41      [10] 3850 	ld	de,#_water
   522B 21 04 10      [10] 3851 	ld	hl,#0x1004
   522E E5            [11] 3852 	push	hl
   522F C5            [11] 3853 	push	bc
   5230 D5            [11] 3854 	push	de
   5231 CD 36 5E      [17] 3855 	call	_cpct_drawSprite
                           3856 ;src/includes/world.h:185: break;
   5234 C3 3A 53      [10] 3857 	jp	00128$
                           3858 ;src/includes/world.h:186: case FOREST:
   5237                    3859 00109$:
                           3860 ;src/includes/world.h:187: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5237 11 A9 40      [10] 3861 	ld	de,#_forest
   523A 21 04 10      [10] 3862 	ld	hl,#0x1004
   523D E5            [11] 3863 	push	hl
   523E C5            [11] 3864 	push	bc
   523F D5            [11] 3865 	push	de
   5240 CD 36 5E      [17] 3866 	call	_cpct_drawSprite
                           3867 ;src/includes/world.h:188: break;
   5243 C3 3A 53      [10] 3868 	jp	00128$
                           3869 ;src/includes/world.h:189: case LIVESTOCK:
   5246                    3870 00110$:
                           3871 ;src/includes/world.h:190: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5246 11 69 42      [10] 3872 	ld	de,#_livestock
   5249 21 04 10      [10] 3873 	ld	hl,#0x1004
   524C E5            [11] 3874 	push	hl
   524D C5            [11] 3875 	push	bc
   524E D5            [11] 3876 	push	de
   524F CD 36 5E      [17] 3877 	call	_cpct_drawSprite
                           3878 ;src/includes/world.h:191: break;
   5252 C3 3A 53      [10] 3879 	jp	00128$
                           3880 ;src/includes/world.h:192: case SSNS:
   5255                    3881 00111$:
                           3882 ;src/includes/world.h:193: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5255 11 A9 42      [10] 3883 	ld	de,#_station_small_ns
   5258 21 04 10      [10] 3884 	ld	hl,#0x1004
   525B E5            [11] 3885 	push	hl
   525C C5            [11] 3886 	push	bc
   525D D5            [11] 3887 	push	de
   525E CD 36 5E      [17] 3888 	call	_cpct_drawSprite
                           3889 ;src/includes/world.h:194: break;
   5261 C3 3A 53      [10] 3890 	jp	00128$
                           3891 ;src/includes/world.h:195: case SSEW:
   5264                    3892 00112$:
                           3893 ;src/includes/world.h:196: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5264 11 E9 42      [10] 3894 	ld	de,#_station_small_ew
   5267 21 04 10      [10] 3895 	ld	hl,#0x1004
   526A E5            [11] 3896 	push	hl
   526B C5            [11] 3897 	push	bc
   526C D5            [11] 3898 	push	de
   526D CD 36 5E      [17] 3899 	call	_cpct_drawSprite
                           3900 ;src/includes/world.h:197: break;
   5270 C3 3A 53      [10] 3901 	jp	00128$
                           3902 ;src/includes/world.h:198: case SMNS:
   5273                    3903 00113$:
                           3904 ;src/includes/world.h:199: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5273 11 29 43      [10] 3905 	ld	de,#_station_medium_ns
   5276 21 04 10      [10] 3906 	ld	hl,#0x1004
   5279 E5            [11] 3907 	push	hl
   527A C5            [11] 3908 	push	bc
   527B D5            [11] 3909 	push	de
   527C CD 36 5E      [17] 3910 	call	_cpct_drawSprite
                           3911 ;src/includes/world.h:200: break;
   527F C3 3A 53      [10] 3912 	jp	00128$
                           3913 ;src/includes/world.h:201: case SMEW:
   5282                    3914 00114$:
                           3915 ;src/includes/world.h:202: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5282 11 69 43      [10] 3916 	ld	de,#_station_medium_ew
   5285 21 04 10      [10] 3917 	ld	hl,#0x1004
   5288 E5            [11] 3918 	push	hl
   5289 C5            [11] 3919 	push	bc
   528A D5            [11] 3920 	push	de
   528B CD 36 5E      [17] 3921 	call	_cpct_drawSprite
                           3922 ;src/includes/world.h:203: break;
   528E C3 3A 53      [10] 3923 	jp	00128$
                           3924 ;src/includes/world.h:204: case SLNS:
   5291                    3925 00115$:
                           3926 ;src/includes/world.h:205: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5291 11 A9 43      [10] 3927 	ld	de,#_station_large_ns
   5294 21 04 10      [10] 3928 	ld	hl,#0x1004
   5297 E5            [11] 3929 	push	hl
   5298 C5            [11] 3930 	push	bc
   5299 D5            [11] 3931 	push	de
   529A CD 36 5E      [17] 3932 	call	_cpct_drawSprite
                           3933 ;src/includes/world.h:206: break;
   529D C3 3A 53      [10] 3934 	jp	00128$
                           3935 ;src/includes/world.h:207: case SLEW:
   52A0                    3936 00116$:
                           3937 ;src/includes/world.h:208: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   52A0 11 E9 43      [10] 3938 	ld	de,#_station_large_ew
   52A3 21 04 10      [10] 3939 	ld	hl,#0x1004
   52A6 E5            [11] 3940 	push	hl
   52A7 C5            [11] 3941 	push	bc
   52A8 D5            [11] 3942 	push	de
   52A9 CD 36 5E      [17] 3943 	call	_cpct_drawSprite
                           3944 ;src/includes/world.h:209: break;
   52AC C3 3A 53      [10] 3945 	jp	00128$
                           3946 ;src/includes/world.h:210: case REW:
   52AF                    3947 00117$:
                           3948 ;src/includes/world.h:211: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   52AF 11 29 44      [10] 3949 	ld	de,#_rail_ew
   52B2 21 04 10      [10] 3950 	ld	hl,#0x1004
   52B5 E5            [11] 3951 	push	hl
   52B6 C5            [11] 3952 	push	bc
   52B7 D5            [11] 3953 	push	de
   52B8 CD 36 5E      [17] 3954 	call	_cpct_drawSprite
                           3955 ;src/includes/world.h:212: break;
   52BB C3 3A 53      [10] 3956 	jp	00128$
                           3957 ;src/includes/world.h:213: case RNS:
   52BE                    3958 00118$:
                           3959 ;src/includes/world.h:214: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   52BE 11 69 44      [10] 3960 	ld	de,#_rail_ns
   52C1 21 04 10      [10] 3961 	ld	hl,#0x1004
   52C4 E5            [11] 3962 	push	hl
   52C5 C5            [11] 3963 	push	bc
   52C6 D5            [11] 3964 	push	de
   52C7 CD 36 5E      [17] 3965 	call	_cpct_drawSprite
                           3966 ;src/includes/world.h:215: break;
   52CA 18 6E         [12] 3967 	jr	00128$
                           3968 ;src/includes/world.h:216: case REN:
   52CC                    3969 00119$:
                           3970 ;src/includes/world.h:217: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   52CC 11 A9 44      [10] 3971 	ld	de,#_rail_en
   52CF 21 04 10      [10] 3972 	ld	hl,#0x1004
   52D2 E5            [11] 3973 	push	hl
   52D3 C5            [11] 3974 	push	bc
   52D4 D5            [11] 3975 	push	de
   52D5 CD 36 5E      [17] 3976 	call	_cpct_drawSprite
                           3977 ;src/includes/world.h:218: break;
   52D8 18 60         [12] 3978 	jr	00128$
                           3979 ;src/includes/world.h:219: case RES:
   52DA                    3980 00120$:
                           3981 ;src/includes/world.h:220: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   52DA 11 E9 44      [10] 3982 	ld	de,#_rail_es
   52DD 21 04 10      [10] 3983 	ld	hl,#0x1004
   52E0 E5            [11] 3984 	push	hl
   52E1 C5            [11] 3985 	push	bc
   52E2 D5            [11] 3986 	push	de
   52E3 CD 36 5E      [17] 3987 	call	_cpct_drawSprite
                           3988 ;src/includes/world.h:221: break;
   52E6 18 52         [12] 3989 	jr	00128$
                           3990 ;src/includes/world.h:222: case RWN:
   52E8                    3991 00121$:
                           3992 ;src/includes/world.h:223: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   52E8 11 29 45      [10] 3993 	ld	de,#_rail_wn
   52EB 21 04 10      [10] 3994 	ld	hl,#0x1004
   52EE E5            [11] 3995 	push	hl
   52EF C5            [11] 3996 	push	bc
   52F0 D5            [11] 3997 	push	de
   52F1 CD 36 5E      [17] 3998 	call	_cpct_drawSprite
                           3999 ;src/includes/world.h:224: break;
   52F4 18 44         [12] 4000 	jr	00128$
                           4001 ;src/includes/world.h:225: case RWS:
   52F6                    4002 00122$:
                           4003 ;src/includes/world.h:226: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   52F6 11 69 45      [10] 4004 	ld	de,#_rail_ws
   52F9 21 04 10      [10] 4005 	ld	hl,#0x1004
   52FC E5            [11] 4006 	push	hl
   52FD C5            [11] 4007 	push	bc
   52FE D5            [11] 4008 	push	de
   52FF CD 36 5E      [17] 4009 	call	_cpct_drawSprite
                           4010 ;src/includes/world.h:227: break;
   5302 18 36         [12] 4011 	jr	00128$
                           4012 ;src/includes/world.h:228: case REWN:
   5304                    4013 00123$:
                           4014 ;src/includes/world.h:229: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5304 11 A9 45      [10] 4015 	ld	de,#_rail_ew_n
   5307 21 04 10      [10] 4016 	ld	hl,#0x1004
   530A E5            [11] 4017 	push	hl
   530B C5            [11] 4018 	push	bc
   530C D5            [11] 4019 	push	de
   530D CD 36 5E      [17] 4020 	call	_cpct_drawSprite
                           4021 ;src/includes/world.h:230: break;
   5310 18 28         [12] 4022 	jr	00128$
                           4023 ;src/includes/world.h:231: case REWS:
   5312                    4024 00124$:
                           4025 ;src/includes/world.h:232: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5312 11 E9 45      [10] 4026 	ld	de,#_rail_ew_s
   5315 21 04 10      [10] 4027 	ld	hl,#0x1004
   5318 E5            [11] 4028 	push	hl
   5319 C5            [11] 4029 	push	bc
   531A D5            [11] 4030 	push	de
   531B CD 36 5E      [17] 4031 	call	_cpct_drawSprite
                           4032 ;src/includes/world.h:233: break;
   531E 18 1A         [12] 4033 	jr	00128$
                           4034 ;src/includes/world.h:234: case RNSE:
   5320                    4035 00125$:
                           4036 ;src/includes/world.h:235: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5320 11 69 46      [10] 4037 	ld	de,#_rail_ns_e
   5323 21 04 10      [10] 4038 	ld	hl,#0x1004
   5326 E5            [11] 4039 	push	hl
   5327 C5            [11] 4040 	push	bc
   5328 D5            [11] 4041 	push	de
   5329 CD 36 5E      [17] 4042 	call	_cpct_drawSprite
                           4043 ;src/includes/world.h:236: break;
   532C 18 0C         [12] 4044 	jr	00128$
                           4045 ;src/includes/world.h:237: case RNSW:
   532E                    4046 00126$:
                           4047 ;src/includes/world.h:238: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   532E 11 29 46      [10] 4048 	ld	de,#_rail_ns_w
   5331 21 04 10      [10] 4049 	ld	hl,#0x1004
   5334 E5            [11] 4050 	push	hl
   5335 C5            [11] 4051 	push	bc
   5336 D5            [11] 4052 	push	de
   5337 CD 36 5E      [17] 4053 	call	_cpct_drawSprite
                           4054 ;src/includes/world.h:240: }
   533A                    4055 00128$:
   533A DD E1         [14] 4056 	pop	ix
   533C C9            [10] 4057 	ret
                           4058 ;src/includes/world.h:243: void drawWorld(u8 x_, u8 y_)
                           4059 ;	---------------------------------
                           4060 ; Function drawWorld
                           4061 ; ---------------------------------
   533D                    4062 _drawWorld::
   533D DD E5         [15] 4063 	push	ix
   533F DD 21 00 00   [14] 4064 	ld	ix,#0
   5343 DD 39         [15] 4065 	add	ix,sp
   5345 3B            [ 6] 4066 	dec	sp
                           4067 ;src/includes/world.h:251: for(iy=0; iy<NBTILE_H;iy++)
   5346 16 00         [ 7] 4068 	ld	d,#0x00
                           4069 ;src/includes/world.h:253: for(ix=0; ix<NBTILE_W;ix++)
   5348                    4070 00109$:
   5348 1E 00         [ 7] 4071 	ld	e,#0x00
   534A                    4072 00103$:
                           4073 ;src/includes/world.h:255: drawTile(x_, y_, ix, iy);
   534A D5            [11] 4074 	push	de
   534B D5            [11] 4075 	push	de
   534C DD 66 05      [19] 4076 	ld	h,5 (ix)
   534F DD 6E 04      [19] 4077 	ld	l,4 (ix)
   5352 E5            [11] 4078 	push	hl
   5353 CD 15 51      [17] 4079 	call	_drawTile
   5356 F1            [10] 4080 	pop	af
   5357 F1            [10] 4081 	pop	af
   5358 D1            [10] 4082 	pop	de
                           4083 ;src/includes/world.h:253: for(ix=0; ix<NBTILE_W;ix++)
   5359 1C            [ 4] 4084 	inc	e
   535A 7B            [ 4] 4085 	ld	a,e
   535B D6 14         [ 7] 4086 	sub	a, #0x14
   535D 38 EB         [12] 4087 	jr	C,00103$
                           4088 ;src/includes/world.h:251: for(iy=0; iy<NBTILE_H;iy++)
   535F 14            [ 4] 4089 	inc	d
   5360 7A            [ 4] 4090 	ld	a,d
   5361 D6 0C         [ 7] 4091 	sub	a, #0x0C
   5363 38 E3         [12] 4092 	jr	C,00109$
                           4093 ;src/includes/world.h:261: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5365 DD 4E 04      [19] 4094 	ld	c,4 (ix)
   5368 06 00         [ 7] 4095 	ld	b,#0x00
   536A 69            [ 4] 4096 	ld	l, c
   536B 60            [ 4] 4097 	ld	h, b
   536C 29            [11] 4098 	add	hl, hl
   536D 29            [11] 4099 	add	hl, hl
   536E 29            [11] 4100 	add	hl, hl
   536F 09            [11] 4101 	add	hl, bc
   5370 29            [11] 4102 	add	hl, hl
   5371 09            [11] 4103 	add	hl, bc
   5372 29            [11] 4104 	add	hl, hl
   5373 29            [11] 4105 	add	hl, hl
   5374 01 3C 00      [10] 4106 	ld	bc,#0x003C
   5377 C5            [11] 4107 	push	bc
   5378 E5            [11] 4108 	push	hl
   5379 CD 4C 61      [17] 4109 	call	__divsint
   537C F1            [10] 4110 	pop	af
   537D F1            [10] 4111 	pop	af
   537E 55            [ 4] 4112 	ld	d,l
                           4113 ;src/includes/world.h:262: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   537F DD 4E 05      [19] 4114 	ld	c,5 (ix)
   5382 06 00         [ 7] 4115 	ld	b,#0x00
   5384 69            [ 4] 4116 	ld	l, c
   5385 60            [ 4] 4117 	ld	h, b
   5386 29            [11] 4118 	add	hl, hl
   5387 29            [11] 4119 	add	hl, hl
   5388 09            [11] 4120 	add	hl, bc
   5389 29            [11] 4121 	add	hl, hl
   538A 09            [11] 4122 	add	hl, bc
   538B 29            [11] 4123 	add	hl, hl
   538C 29            [11] 4124 	add	hl, hl
   538D 29            [11] 4125 	add	hl, hl
   538E 29            [11] 4126 	add	hl, hl
   538F D5            [11] 4127 	push	de
   5390 01 24 00      [10] 4128 	ld	bc,#0x0024
   5393 C5            [11] 4129 	push	bc
   5394 E5            [11] 4130 	push	hl
   5395 CD 4C 61      [17] 4131 	call	__divsint
   5398 F1            [10] 4132 	pop	af
   5399 F1            [10] 4133 	pop	af
   539A D1            [10] 4134 	pop	de
   539B DD 75 FF      [19] 4135 	ld	-1 (ix),l
                           4136 ;src/includes/world.h:264: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   539E AF            [ 4] 4137 	xor	a, a
   539F F5            [11] 4138 	push	af
   53A0 33            [ 6] 4139 	inc	sp
   53A1 D5            [11] 4140 	push	de
   53A2 33            [ 6] 4141 	inc	sp
   53A3 21 00 C0      [10] 4142 	ld	hl,#0xC000
   53A6 E5            [11] 4143 	push	hl
   53A7 CD FB 60      [17] 4144 	call	_cpct_getScreenPtr
                           4145 ;src/includes/world.h:265: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   53AA E5            [11] 4146 	push	hl
   53AB 21 00 00      [10] 4147 	ld	hl,#0x0000
   53AE E5            [11] 4148 	push	hl
   53AF 2E 00         [ 7] 4149 	ld	l, #0x00
   53B1 E5            [11] 4150 	push	hl
   53B2 CD 0A 60      [17] 4151 	call	_cpct_px2byteM1
   53B5 F1            [10] 4152 	pop	af
   53B6 F1            [10] 4153 	pop	af
   53B7 45            [ 4] 4154 	ld	b,l
   53B8 D1            [10] 4155 	pop	de
   53B9 21 04 04      [10] 4156 	ld	hl,#0x0404
   53BC E5            [11] 4157 	push	hl
   53BD C5            [11] 4158 	push	bc
   53BE 33            [ 6] 4159 	inc	sp
   53BF D5            [11] 4160 	push	de
   53C0 CD 42 60      [17] 4161 	call	_cpct_drawSolidBox
   53C3 F1            [10] 4162 	pop	af
   53C4 F1            [10] 4163 	pop	af
   53C5 33            [ 6] 4164 	inc	sp
                           4165 ;src/includes/world.h:267: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   53C6 DD 7E FF      [19] 4166 	ld	a,-1 (ix)
   53C9 F5            [11] 4167 	push	af
   53CA 33            [ 6] 4168 	inc	sp
   53CB AF            [ 4] 4169 	xor	a, a
   53CC F5            [11] 4170 	push	af
   53CD 33            [ 6] 4171 	inc	sp
   53CE 21 00 C0      [10] 4172 	ld	hl,#0xC000
   53D1 E5            [11] 4173 	push	hl
   53D2 CD FB 60      [17] 4174 	call	_cpct_getScreenPtr
                           4175 ;src/includes/world.h:268: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   53D5 E5            [11] 4176 	push	hl
   53D6 21 00 00      [10] 4177 	ld	hl,#0x0000
   53D9 E5            [11] 4178 	push	hl
   53DA 2E 00         [ 7] 4179 	ld	l, #0x00
   53DC E5            [11] 4180 	push	hl
   53DD CD 0A 60      [17] 4181 	call	_cpct_px2byteM1
   53E0 F1            [10] 4182 	pop	af
   53E1 F1            [10] 4183 	pop	af
   53E2 45            [ 4] 4184 	ld	b,l
   53E3 D1            [10] 4185 	pop	de
   53E4 21 01 10      [10] 4186 	ld	hl,#0x1001
   53E7 E5            [11] 4187 	push	hl
   53E8 C5            [11] 4188 	push	bc
   53E9 33            [ 6] 4189 	inc	sp
   53EA D5            [11] 4190 	push	de
   53EB CD 42 60      [17] 4191 	call	_cpct_drawSolidBox
   53EE F1            [10] 4192 	pop	af
   53EF F1            [10] 4193 	pop	af
   53F0 33            [ 6] 4194 	inc	sp
   53F1 33            [ 6] 4195 	inc	sp
   53F2 DD E1         [14] 4196 	pop	ix
   53F4 C9            [10] 4197 	ret
                           4198 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           4199 ;	---------------------------------
                           4200 ; Function windowInfoTile
                           4201 ; ---------------------------------
   53F5                    4202 _windowInfoTile::
   53F5 DD E5         [15] 4203 	push	ix
   53F7 DD 21 00 00   [14] 4204 	ld	ix,#0
   53FB DD 39         [15] 4205 	add	ix,sp
   53FD 21 F8 FF      [10] 4206 	ld	hl,#-8
   5400 39            [11] 4207 	add	hl,sp
   5401 F9            [ 6] 4208 	ld	sp,hl
                           4209 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   5402 DD 4E 05      [19] 4210 	ld	c,5 (ix)
   5405 06 00         [ 7] 4211 	ld	b,#0x00
   5407 69            [ 4] 4212 	ld	l, c
   5408 60            [ 4] 4213 	ld	h, b
   5409 29            [11] 4214 	add	hl, hl
   540A 29            [11] 4215 	add	hl, hl
   540B 09            [11] 4216 	add	hl, bc
   540C 29            [11] 4217 	add	hl, hl
   540D 29            [11] 4218 	add	hl, hl
   540E 29            [11] 4219 	add	hl, hl
   540F 29            [11] 4220 	add	hl, hl
   5410 DD 5E 04      [19] 4221 	ld	e,4 (ix)
   5413 16 00         [ 7] 4222 	ld	d,#0x00
   5415 19            [11] 4223 	add	hl,de
   5416 11 A8 61      [10] 4224 	ld	de,#_p_world
   5419 19            [11] 4225 	add	hl,de
   541A 4E            [ 7] 4226 	ld	c,(hl)
   541B 3E 09         [ 7] 4227 	ld	a,#0x09
   541D 91            [ 4] 4228 	sub	a, c
   541E DA 4F 55      [10] 4229 	jp	C,00111$
   5421 59            [ 4] 4230 	ld	e,c
   5422 16 00         [ 7] 4231 	ld	d,#0x00
   5424 21 2B 54      [10] 4232 	ld	hl,#00119$
   5427 19            [11] 4233 	add	hl,de
   5428 19            [11] 4234 	add	hl,de
   5429 19            [11] 4235 	add	hl,de
   542A E9            [ 4] 4236 	jp	(hl)
   542B                    4237 00119$:
   542B C3 49 54      [10] 4238 	jp	00101$
   542E C3 49 54      [10] 4239 	jp	00102$
   5431 C3 75 54      [10] 4240 	jp	00103$
   5434 C3 75 54      [10] 4241 	jp	00104$
   5437 C3 75 54      [10] 4242 	jp	00105$
   543A C3 A1 54      [10] 4243 	jp	00106$
   543D C3 A1 54      [10] 4244 	jp	00107$
   5440 C3 CD 54      [10] 4245 	jp	00108$
   5443 C3 F9 54      [10] 4246 	jp	00109$
   5446 C3 24 55      [10] 4247 	jp	00110$
                           4248 ;src/includes/game.h:7: case GRASS1:
   5449                    4249 00101$:
                           4250 ;src/includes/game.h:8: case GRASS2:
   5449                    4251 00102$:
                           4252 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   5449 21 00 00      [10] 4253 	ld	hl,#0x0000
   544C 39            [11] 4254 	add	hl,sp
   544D 5D            [ 4] 4255 	ld	e,l
   544E 54            [ 4] 4256 	ld	d,h
   544F 36 8A         [10] 4257 	ld	(hl),#<(___str_2)
   5451 23            [ 6] 4258 	inc	hl
   5452 36 55         [10] 4259 	ld	(hl),#>(___str_2)
                           4260 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   5454 6B            [ 4] 4261 	ld	l, e
   5455 62            [ 4] 4262 	ld	h, d
   5456 23            [ 6] 4263 	inc	hl
   5457 23            [ 6] 4264 	inc	hl
   5458 01 94 55      [10] 4265 	ld	bc,#___str_3+0
   545B 71            [ 7] 4266 	ld	(hl),c
   545C 23            [ 6] 4267 	inc	hl
   545D 70            [ 7] 4268 	ld	(hl),b
                           4269 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   545E 21 04 00      [10] 4270 	ld	hl,#0x0004
   5461 19            [11] 4271 	add	hl,de
   5462 01 95 55      [10] 4272 	ld	bc,#___str_4+0
   5465 71            [ 7] 4273 	ld	(hl),c
   5466 23            [ 6] 4274 	inc	hl
   5467 70            [ 7] 4275 	ld	(hl),b
                           4276 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   5468 21 06 00      [10] 4277 	ld	hl,#0x0006
   546B 19            [11] 4278 	add	hl,de
   546C 11 A9 55      [10] 4279 	ld	de,#___str_5+0
   546F 73            [ 7] 4280 	ld	(hl),e
   5470 23            [ 6] 4281 	inc	hl
   5471 72            [ 7] 4282 	ld	(hl),d
                           4283 ;src/includes/game.h:13: break;
   5472 C3 78 55      [10] 4284 	jp	00112$
                           4285 ;src/includes/game.h:14: case DWELLINGS1:
   5475                    4286 00103$:
                           4287 ;src/includes/game.h:15: case DWELLINGS2:
   5475                    4288 00104$:
                           4289 ;src/includes/game.h:16: case DWELLINGS3:
   5475                    4290 00105$:
                           4291 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   5475 21 00 00      [10] 4292 	ld	hl,#0x0000
   5478 39            [11] 4293 	add	hl,sp
   5479 5D            [ 4] 4294 	ld	e,l
   547A 54            [ 4] 4295 	ld	d,h
   547B 36 B9         [10] 4296 	ld	(hl),#<(___str_6)
   547D 23            [ 6] 4297 	inc	hl
   547E 36 55         [10] 4298 	ld	(hl),#>(___str_6)
                           4299 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   5480 6B            [ 4] 4300 	ld	l, e
   5481 62            [ 4] 4301 	ld	h, d
   5482 23            [ 6] 4302 	inc	hl
   5483 23            [ 6] 4303 	inc	hl
   5484 01 94 55      [10] 4304 	ld	bc,#___str_3+0
   5487 71            [ 7] 4305 	ld	(hl),c
   5488 23            [ 6] 4306 	inc	hl
   5489 70            [ 7] 4307 	ld	(hl),b
                           4308 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   548A 21 04 00      [10] 4309 	ld	hl,#0x0004
   548D 19            [11] 4310 	add	hl,de
   548E 01 BE 55      [10] 4311 	ld	bc,#___str_7+0
   5491 71            [ 7] 4312 	ld	(hl),c
   5492 23            [ 6] 4313 	inc	hl
   5493 70            [ 7] 4314 	ld	(hl),b
                           4315 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   5494 21 06 00      [10] 4316 	ld	hl,#0x0006
   5497 19            [11] 4317 	add	hl,de
   5498 11 DB 55      [10] 4318 	ld	de,#___str_8+0
   549B 73            [ 7] 4319 	ld	(hl),e
   549C 23            [ 6] 4320 	inc	hl
   549D 72            [ 7] 4321 	ld	(hl),d
                           4322 ;src/includes/game.h:21: break;
   549E C3 78 55      [10] 4323 	jp	00112$
                           4324 ;src/includes/game.h:22: case FARM1:
   54A1                    4325 00106$:
                           4326 ;src/includes/game.h:23: case FARM2:
   54A1                    4327 00107$:
                           4328 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   54A1 21 00 00      [10] 4329 	ld	hl,#0x0000
   54A4 39            [11] 4330 	add	hl,sp
   54A5 5D            [ 4] 4331 	ld	e,l
   54A6 54            [ 4] 4332 	ld	d,h
   54A7 36 00         [10] 4333 	ld	(hl),#<(___str_9)
   54A9 23            [ 6] 4334 	inc	hl
   54AA 36 56         [10] 4335 	ld	(hl),#>(___str_9)
                           4336 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   54AC 6B            [ 4] 4337 	ld	l, e
   54AD 62            [ 4] 4338 	ld	h, d
   54AE 23            [ 6] 4339 	inc	hl
   54AF 23            [ 6] 4340 	inc	hl
   54B0 01 94 55      [10] 4341 	ld	bc,#___str_3+0
   54B3 71            [ 7] 4342 	ld	(hl),c
   54B4 23            [ 6] 4343 	inc	hl
   54B5 70            [ 7] 4344 	ld	(hl),b
                           4345 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   54B6 21 04 00      [10] 4346 	ld	hl,#0x0004
   54B9 19            [11] 4347 	add	hl,de
   54BA 01 05 56      [10] 4348 	ld	bc,#___str_10+0
   54BD 71            [ 7] 4349 	ld	(hl),c
   54BE 23            [ 6] 4350 	inc	hl
   54BF 70            [ 7] 4351 	ld	(hl),b
                           4352 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   54C0 21 06 00      [10] 4353 	ld	hl,#0x0006
   54C3 19            [11] 4354 	add	hl,de
   54C4 11 18 56      [10] 4355 	ld	de,#___str_11+0
   54C7 73            [ 7] 4356 	ld	(hl),e
   54C8 23            [ 6] 4357 	inc	hl
   54C9 72            [ 7] 4358 	ld	(hl),d
                           4359 ;src/includes/game.h:28: break;
   54CA C3 78 55      [10] 4360 	jp	00112$
                           4361 ;src/includes/game.h:29: case WATER:
   54CD                    4362 00108$:
                           4363 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   54CD 21 00 00      [10] 4364 	ld	hl,#0x0000
   54D0 39            [11] 4365 	add	hl,sp
   54D1 5D            [ 4] 4366 	ld	e,l
   54D2 54            [ 4] 4367 	ld	d,h
   54D3 36 28         [10] 4368 	ld	(hl),#<(___str_12)
   54D5 23            [ 6] 4369 	inc	hl
   54D6 36 56         [10] 4370 	ld	(hl),#>(___str_12)
                           4371 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   54D8 6B            [ 4] 4372 	ld	l, e
   54D9 62            [ 4] 4373 	ld	h, d
   54DA 23            [ 6] 4374 	inc	hl
   54DB 23            [ 6] 4375 	inc	hl
   54DC 01 94 55      [10] 4376 	ld	bc,#___str_3+0
   54DF 71            [ 7] 4377 	ld	(hl),c
   54E0 23            [ 6] 4378 	inc	hl
   54E1 70            [ 7] 4379 	ld	(hl),b
                           4380 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   54E2 21 04 00      [10] 4381 	ld	hl,#0x0004
   54E5 19            [11] 4382 	add	hl,de
   54E6 01 2E 56      [10] 4383 	ld	bc,#___str_13+0
   54E9 71            [ 7] 4384 	ld	(hl),c
   54EA 23            [ 6] 4385 	inc	hl
   54EB 70            [ 7] 4386 	ld	(hl),b
                           4387 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   54EC 21 06 00      [10] 4388 	ld	hl,#0x0006
   54EF 19            [11] 4389 	add	hl,de
   54F0 11 18 56      [10] 4390 	ld	de,#___str_11+0
   54F3 73            [ 7] 4391 	ld	(hl),e
   54F4 23            [ 6] 4392 	inc	hl
   54F5 72            [ 7] 4393 	ld	(hl),d
                           4394 ;src/includes/game.h:34: break;
   54F6 C3 78 55      [10] 4395 	jp	00112$
                           4396 ;src/includes/game.h:35: case FOREST:
   54F9                    4397 00109$:
                           4398 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   54F9 21 00 00      [10] 4399 	ld	hl,#0x0000
   54FC 39            [11] 4400 	add	hl,sp
   54FD 5D            [ 4] 4401 	ld	e,l
   54FE 54            [ 4] 4402 	ld	d,h
   54FF 36 42         [10] 4403 	ld	(hl),#<(___str_14)
   5501 23            [ 6] 4404 	inc	hl
   5502 36 56         [10] 4405 	ld	(hl),#>(___str_14)
                           4406 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   5504 6B            [ 4] 4407 	ld	l, e
   5505 62            [ 4] 4408 	ld	h, d
   5506 23            [ 6] 4409 	inc	hl
   5507 23            [ 6] 4410 	inc	hl
   5508 01 94 55      [10] 4411 	ld	bc,#___str_3+0
   550B 71            [ 7] 4412 	ld	(hl),c
   550C 23            [ 6] 4413 	inc	hl
   550D 70            [ 7] 4414 	ld	(hl),b
                           4415 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   550E 21 04 00      [10] 4416 	ld	hl,#0x0004
   5511 19            [11] 4417 	add	hl,de
   5512 01 2E 56      [10] 4418 	ld	bc,#___str_13+0
   5515 71            [ 7] 4419 	ld	(hl),c
   5516 23            [ 6] 4420 	inc	hl
   5517 70            [ 7] 4421 	ld	(hl),b
                           4422 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   5518 21 06 00      [10] 4423 	ld	hl,#0x0006
   551B 19            [11] 4424 	add	hl,de
   551C 11 18 56      [10] 4425 	ld	de,#___str_11+0
   551F 73            [ 7] 4426 	ld	(hl),e
   5520 23            [ 6] 4427 	inc	hl
   5521 72            [ 7] 4428 	ld	(hl),d
                           4429 ;src/includes/game.h:40: break;
   5522 18 54         [12] 4430 	jr	00112$
                           4431 ;src/includes/game.h:41: case LIVESTOCK:
   5524                    4432 00110$:
                           4433 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   5524 21 00 00      [10] 4434 	ld	hl,#0x0000
   5527 39            [11] 4435 	add	hl,sp
   5528 5D            [ 4] 4436 	ld	e,l
   5529 54            [ 4] 4437 	ld	d,h
   552A 36 49         [10] 4438 	ld	(hl),#<(___str_15)
   552C 23            [ 6] 4439 	inc	hl
   552D 36 56         [10] 4440 	ld	(hl),#>(___str_15)
                           4441 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   552F 6B            [ 4] 4442 	ld	l, e
   5530 62            [ 4] 4443 	ld	h, d
   5531 23            [ 6] 4444 	inc	hl
   5532 23            [ 6] 4445 	inc	hl
   5533 01 94 55      [10] 4446 	ld	bc,#___str_3+0
   5536 71            [ 7] 4447 	ld	(hl),c
   5537 23            [ 6] 4448 	inc	hl
   5538 70            [ 7] 4449 	ld	(hl),b
                           4450 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   5539 21 04 00      [10] 4451 	ld	hl,#0x0004
   553C 19            [11] 4452 	add	hl,de
   553D 01 5B 56      [10] 4453 	ld	bc,#___str_16+0
   5540 71            [ 7] 4454 	ld	(hl),c
   5541 23            [ 6] 4455 	inc	hl
   5542 70            [ 7] 4456 	ld	(hl),b
                           4457 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   5543 21 06 00      [10] 4458 	ld	hl,#0x0006
   5546 19            [11] 4459 	add	hl,de
   5547 11 77 56      [10] 4460 	ld	de,#___str_17+0
   554A 73            [ 7] 4461 	ld	(hl),e
   554B 23            [ 6] 4462 	inc	hl
   554C 72            [ 7] 4463 	ld	(hl),d
                           4464 ;src/includes/game.h:46: break;
   554D 18 29         [12] 4465 	jr	00112$
                           4466 ;src/includes/game.h:47: default:
   554F                    4467 00111$:
                           4468 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   554F 21 00 00      [10] 4469 	ld	hl,#0x0000
   5552 39            [11] 4470 	add	hl,sp
   5553 5D            [ 4] 4471 	ld	e,l
   5554 54            [ 4] 4472 	ld	d,h
   5555 36 86         [10] 4473 	ld	(hl),#<(___str_18)
   5557 23            [ 6] 4474 	inc	hl
   5558 36 56         [10] 4475 	ld	(hl),#>(___str_18)
                           4476 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   555A 6B            [ 4] 4477 	ld	l, e
   555B 62            [ 4] 4478 	ld	h, d
   555C 23            [ 6] 4479 	inc	hl
   555D 23            [ 6] 4480 	inc	hl
   555E 01 94 55      [10] 4481 	ld	bc,#___str_3+0
   5561 71            [ 7] 4482 	ld	(hl),c
   5562 23            [ 6] 4483 	inc	hl
   5563 70            [ 7] 4484 	ld	(hl),b
                           4485 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   5564 21 04 00      [10] 4486 	ld	hl,#0x0004
   5567 19            [11] 4487 	add	hl,de
   5568 01 9A 56      [10] 4488 	ld	bc,#___str_19+0
   556B 71            [ 7] 4489 	ld	(hl),c
   556C 23            [ 6] 4490 	inc	hl
   556D 70            [ 7] 4491 	ld	(hl),b
                           4492 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   556E 21 06 00      [10] 4493 	ld	hl,#0x0006
   5571 19            [11] 4494 	add	hl,de
   5572 11 A8 56      [10] 4495 	ld	de,#___str_20+0
   5575 73            [ 7] 4496 	ld	(hl),e
   5576 23            [ 6] 4497 	inc	hl
   5577 72            [ 7] 4498 	ld	(hl),d
                           4499 ;src/includes/game.h:53: }
   5578                    4500 00112$:
                           4501 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   5578 21 00 00      [10] 4502 	ld	hl,#0x0000
   557B 39            [11] 4503 	add	hl,sp
   557C EB            [ 4] 4504 	ex	de,hl
   557D 21 04 00      [10] 4505 	ld	hl,#0x0004
   5580 E5            [11] 4506 	push	hl
   5581 D5            [11] 4507 	push	de
   5582 CD C1 4B      [17] 4508 	call	_drawWindow
   5585 DD F9         [10] 4509 	ld	sp,ix
   5587 DD E1         [14] 4510 	pop	ix
   5589 C9            [10] 4511 	ret
   558A                    4512 ___str_2:
   558A 47 72 61 73 73 6C  4513 	.ascii "Grassland"
        61 6E 64
   5593 00                 4514 	.db 0x00
   5594                    4515 ___str_3:
   5594 00                 4516 	.db 0x00
   5595                    4517 ___str_4:
   5595 50 72 6F 64 75 63  4518 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   55A8 00                 4519 	.db 0x00
   55A9                    4520 ___str_5:
   55A9 44 65 6D 61 6E 64  4521 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   55B8 00                 4522 	.db 0x00
   55B9                    4523 ___str_6:
   55B9 43 69 74 79        4524 	.ascii "City"
   55BD 00                 4525 	.db 0x00
   55BE                    4526 ___str_7:
   55BE 50 72 6F 64 75 63  4527 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   55DA 00                 4528 	.db 0x00
   55DB                    4529 ___str_8:
   55DB 44 65 6D 61 6E 64  4530 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   55FF 00                 4531 	.db 0x00
   5600                    4532 ___str_9:
   5600 46 61 72 6D        4533 	.ascii "Farm"
   5604 00                 4534 	.db 0x00
   5605                    4535 ___str_10:
   5605 50 72 6F 64 75 63  4536 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5617 00                 4537 	.db 0x00
   5618                    4538 ___str_11:
   5618 44 65 6D 61 6E 64  4539 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   5627 00                 4540 	.db 0x00
   5628                    4541 ___str_12:
   5628 57 61 74 65 72     4542 	.ascii "Water"
   562D 00                 4543 	.db 0x00
   562E                    4544 ___str_13:
   562E 50 72 6F 64 75 63  4545 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   5641 00                 4546 	.db 0x00
   5642                    4547 ___str_14:
   5642 46 6F 72 65 73 74  4548 	.ascii "Forest"
   5648 00                 4549 	.db 0x00
   5649                    4550 ___str_15:
   5649 4C 69 76 65 73 74  4551 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   565A 00                 4552 	.db 0x00
   565B                    4553 ___str_16:
   565B 50 72 6F 64 75 63  4554 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   5676 00                 4555 	.db 0x00
   5677                    4556 ___str_17:
   5677 44 65 6D 61 6E 64  4557 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   5685 00                 4558 	.db 0x00
   5686                    4559 ___str_18:
   5686 4E 6F 74 20 79 65  4560 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   5699 00                 4561 	.db 0x00
   569A                    4562 ___str_19:
   569A 50 72 6F 64 75 63  4563 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   56A7 00                 4564 	.db 0x00
   56A8                    4565 ___str_20:
   56A8 44 65 6D 61 6E 64  4566 	.ascii "Demand: ?"
        3A 20 3F
   56B1 00                 4567 	.db 0x00
                           4568 ;src/includes/game.h:58: void menuStations()
                           4569 ;	---------------------------------
                           4570 ; Function menuStations
                           4571 ; ---------------------------------
   56B2                    4572 _menuStations::
   56B2 DD E5         [15] 4573 	push	ix
   56B4 DD 21 00 00   [14] 4574 	ld	ix,#0
   56B8 DD 39         [15] 4575 	add	ix,sp
   56BA 21 FA FF      [10] 4576 	ld	hl,#-6
   56BD 39            [11] 4577 	add	hl,sp
   56BE F9            [ 6] 4578 	ld	sp,hl
                           4579 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   56BF 21 00 00      [10] 4580 	ld	hl,#0x0000
   56C2 39            [11] 4581 	add	hl,sp
   56C3 5D            [ 4] 4582 	ld	e,l
   56C4 54            [ 4] 4583 	ld	d,h
   56C5 36 14         [10] 4584 	ld	(hl),#<(___str_21)
   56C7 23            [ 6] 4585 	inc	hl
   56C8 36 57         [10] 4586 	ld	(hl),#>(___str_21)
   56CA 6B            [ 4] 4587 	ld	l, e
   56CB 62            [ 4] 4588 	ld	h, d
   56CC 23            [ 6] 4589 	inc	hl
   56CD 23            [ 6] 4590 	inc	hl
   56CE 01 1A 57      [10] 4591 	ld	bc,#___str_22+0
   56D1 71            [ 7] 4592 	ld	(hl),c
   56D2 23            [ 6] 4593 	inc	hl
   56D3 70            [ 7] 4594 	ld	(hl),b
   56D4 21 04 00      [10] 4595 	ld	hl,#0x0004
   56D7 19            [11] 4596 	add	hl,de
   56D8 01 21 57      [10] 4597 	ld	bc,#___str_23+0
   56DB 71            [ 7] 4598 	ld	(hl),c
   56DC 23            [ 6] 4599 	inc	hl
   56DD 70            [ 7] 4600 	ld	(hl),b
                           4601 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   56DE 3E 03         [ 7] 4602 	ld	a,#0x03
   56E0 F5            [11] 4603 	push	af
   56E1 33            [ 6] 4604 	inc	sp
   56E2 D5            [11] 4605 	push	de
   56E3 CD C3 4A      [17] 4606 	call	_drawMenu
   56E6 F1            [10] 4607 	pop	af
   56E7 33            [ 6] 4608 	inc	sp
   56E8 5D            [ 4] 4609 	ld	e,l
                           4610 ;src/includes/game.h:70: switch(result)
   56E9 3E 02         [ 7] 4611 	ld	a,#0x02
   56EB 93            [ 4] 4612 	sub	a, e
   56EC 38 21         [12] 4613 	jr	C,00105$
   56EE 16 00         [ 7] 4614 	ld	d,#0x00
   56F0 21 F6 56      [10] 4615 	ld	hl,#00111$
   56F3 19            [11] 4616 	add	hl,de
   56F4 19            [11] 4617 	add	hl,de
                           4618 ;src/includes/game.h:72: case 0:
   56F5 E9            [ 4] 4619 	jp	(hl)
   56F6                    4620 00111$:
   56F6 18 04         [12] 4621 	jr	00101$
   56F8 18 09         [12] 4622 	jr	00102$
   56FA 18 0E         [12] 4623 	jr	00103$
   56FC                    4624 00101$:
                           4625 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   56FC 21 A8 70      [10] 4626 	ld	hl,#_CURSOR_MODE + 0
   56FF 36 02         [10] 4627 	ld	(hl), #0x02
                           4628 ;src/includes/game.h:74: break;
   5701 18 0C         [12] 4629 	jr	00105$
                           4630 ;src/includes/game.h:76: case 1:
   5703                    4631 00102$:
                           4632 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5703 21 A8 70      [10] 4633 	ld	hl,#_CURSOR_MODE + 0
   5706 36 04         [10] 4634 	ld	(hl), #0x04
                           4635 ;src/includes/game.h:78: break;
   5708 18 05         [12] 4636 	jr	00105$
                           4637 ;src/includes/game.h:80: case 2:
   570A                    4638 00103$:
                           4639 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   570A 21 A8 70      [10] 4640 	ld	hl,#_CURSOR_MODE + 0
   570D 36 06         [10] 4641 	ld	(hl), #0x06
                           4642 ;src/includes/game.h:83: }
   570F                    4643 00105$:
   570F DD F9         [10] 4644 	ld	sp, ix
   5711 DD E1         [14] 4645 	pop	ix
   5713 C9            [10] 4646 	ret
   5714                    4647 ___str_21:
   5714 53 6D 61 6C 6C     4648 	.ascii "Small"
   5719 00                 4649 	.db 0x00
   571A                    4650 ___str_22:
   571A 4D 65 64 69 75 6D  4651 	.ascii "Medium"
   5720 00                 4652 	.db 0x00
   5721                    4653 ___str_23:
   5721 4C 61 72 67 65     4654 	.ascii "Large"
   5726 00                 4655 	.db 0x00
                           4656 ;src/includes/game.h:86: void menuTile(u8 x, u8 y)
                           4657 ;	---------------------------------
                           4658 ; Function menuTile
                           4659 ; ---------------------------------
   5727                    4660 _menuTile::
   5727 DD E5         [15] 4661 	push	ix
   5729 DD 21 00 00   [14] 4662 	ld	ix,#0
   572D DD 39         [15] 4663 	add	ix,sp
   572F 21 E6 FF      [10] 4664 	ld	hl,#-26
   5732 39            [11] 4665 	add	hl,sp
   5733 F9            [ 6] 4666 	ld	sp,hl
                           4667 ;src/includes/game.h:90: const char *txtMenuTile[] = { 
   5734 21 00 00      [10] 4668 	ld	hl,#0x0000
   5737 39            [11] 4669 	add	hl,sp
   5738 5D            [ 4] 4670 	ld	e,l
   5739 54            [ 4] 4671 	ld	d,h
   573A 36 4F         [10] 4672 	ld	(hl),#<(___str_24)
   573C 23            [ 6] 4673 	inc	hl
   573D 36 58         [10] 4674 	ld	(hl),#>(___str_24)
   573F 6B            [ 4] 4675 	ld	l, e
   5740 62            [ 4] 4676 	ld	h, d
   5741 23            [ 6] 4677 	inc	hl
   5742 23            [ 6] 4678 	inc	hl
   5743 01 5F 58      [10] 4679 	ld	bc,#___str_25+0
   5746 71            [ 7] 4680 	ld	(hl),c
   5747 23            [ 6] 4681 	inc	hl
   5748 70            [ 7] 4682 	ld	(hl),b
   5749 21 04 00      [10] 4683 	ld	hl,#0x0004
   574C 19            [11] 4684 	add	hl,de
   574D 01 6F 58      [10] 4685 	ld	bc,#___str_26+0
   5750 71            [ 7] 4686 	ld	(hl),c
   5751 23            [ 6] 4687 	inc	hl
   5752 70            [ 7] 4688 	ld	(hl),b
   5753 21 06 00      [10] 4689 	ld	hl,#0x0006
   5756 19            [11] 4690 	add	hl,de
   5757 01 7F 58      [10] 4691 	ld	bc,#___str_27+0
   575A 71            [ 7] 4692 	ld	(hl),c
   575B 23            [ 6] 4693 	inc	hl
   575C 70            [ 7] 4694 	ld	(hl),b
   575D 21 08 00      [10] 4695 	ld	hl,#0x0008
   5760 19            [11] 4696 	add	hl,de
   5761 01 87 58      [10] 4697 	ld	bc,#___str_28+0
   5764 71            [ 7] 4698 	ld	(hl),c
   5765 23            [ 6] 4699 	inc	hl
   5766 70            [ 7] 4700 	ld	(hl),b
   5767 21 0A 00      [10] 4701 	ld	hl,#0x000A
   576A 19            [11] 4702 	add	hl,de
   576B 01 96 58      [10] 4703 	ld	bc,#___str_29+0
   576E 71            [ 7] 4704 	ld	(hl),c
   576F 23            [ 6] 4705 	inc	hl
   5770 70            [ 7] 4706 	ld	(hl),b
   5771 21 0C 00      [10] 4707 	ld	hl,#0x000C
   5774 19            [11] 4708 	add	hl,de
   5775 01 A1 58      [10] 4709 	ld	bc,#___str_30+0
   5778 71            [ 7] 4710 	ld	(hl),c
   5779 23            [ 6] 4711 	inc	hl
   577A 70            [ 7] 4712 	ld	(hl),b
                           4713 ;src/includes/game.h:100: const char *txtWindowDestroy[] = { 
   577B 21 0E 00      [10] 4714 	ld	hl,#0x000E
   577E 39            [11] 4715 	add	hl,sp
   577F 4D            [ 4] 4716 	ld	c,l
   5780 44            [ 4] 4717 	ld	b,h
   5781 36 A8         [10] 4718 	ld	(hl),#<(___str_31)
   5783 23            [ 6] 4719 	inc	hl
   5784 36 58         [10] 4720 	ld	(hl),#>(___str_31)
   5786 21 02 00      [10] 4721 	ld	hl,#0x0002
   5789 09            [11] 4722 	add	hl,bc
   578A DD 75 FE      [19] 4723 	ld	-2 (ix),l
   578D DD 74 FF      [19] 4724 	ld	-1 (ix),h
   5790 DD 6E FE      [19] 4725 	ld	l,-2 (ix)
   5793 DD 66 FF      [19] 4726 	ld	h,-1 (ix)
   5796 36 CB         [10] 4727 	ld	(hl),#<(___str_32)
   5798 23            [ 6] 4728 	inc	hl
   5799 36 58         [10] 4729 	ld	(hl),#>(___str_32)
   579B 21 04 00      [10] 4730 	ld	hl,#0x0004
   579E 09            [11] 4731 	add	hl,bc
   579F DD 75 FE      [19] 4732 	ld	-2 (ix),l
   57A2 DD 74 FF      [19] 4733 	ld	-1 (ix),h
   57A5 DD 6E FE      [19] 4734 	ld	l,-2 (ix)
   57A8 DD 66 FF      [19] 4735 	ld	h,-1 (ix)
   57AB 36 CC         [10] 4736 	ld	(hl),#<(___str_33)
   57AD 23            [ 6] 4737 	inc	hl
   57AE 36 58         [10] 4738 	ld	(hl),#>(___str_33)
                           4739 ;src/includes/game.h:107: putM2();
   57B0 C5            [11] 4740 	push	bc
   57B1 D5            [11] 4741 	push	de
   57B2 CD BD 46      [17] 4742 	call	_putM2
   57B5 D1            [10] 4743 	pop	de
   57B6 C1            [10] 4744 	pop	bc
                           4745 ;src/includes/game.h:109: do{
   57B7 D5            [11] 4746 	push	de
   57B8 DD 5E 05      [19] 4747 	ld	e,5 (ix)
   57BB 16 00         [ 7] 4748 	ld	d,#0x00
   57BD 6B            [ 4] 4749 	ld	l, e
   57BE 62            [ 4] 4750 	ld	h, d
   57BF 29            [11] 4751 	add	hl, hl
   57C0 29            [11] 4752 	add	hl, hl
   57C1 19            [11] 4753 	add	hl, de
   57C2 29            [11] 4754 	add	hl, hl
   57C3 29            [11] 4755 	add	hl, hl
   57C4 29            [11] 4756 	add	hl, hl
   57C5 29            [11] 4757 	add	hl, hl
   57C6 D1            [10] 4758 	pop	de
   57C7 DD 75 FE      [19] 4759 	ld	-2 (ix),l
   57CA DD 74 FF      [19] 4760 	ld	-1 (ix),h
   57CD DD 71 FC      [19] 4761 	ld	-4 (ix),c
   57D0 DD 70 FD      [19] 4762 	ld	-3 (ix),b
   57D3 DD 73 FA      [19] 4763 	ld	-6 (ix),e
   57D6 DD 72 FB      [19] 4764 	ld	-5 (ix),d
   57D9                    4765 00114$:
                           4766 ;src/includes/game.h:110: menuChoice = drawMenu(txtMenuTile,7);
   57D9 DD 5E FA      [19] 4767 	ld	e,-6 (ix)
   57DC DD 56 FB      [19] 4768 	ld	d,-5 (ix)
   57DF 3E 07         [ 7] 4769 	ld	a,#0x07
   57E1 F5            [11] 4770 	push	af
   57E2 33            [ 6] 4771 	inc	sp
   57E3 D5            [11] 4772 	push	de
   57E4 CD C3 4A      [17] 4773 	call	_drawMenu
   57E7 F1            [10] 4774 	pop	af
   57E8 33            [ 6] 4775 	inc	sp
   57E9 55            [ 4] 4776 	ld	d,l
                           4777 ;src/includes/game.h:112: if(menuChoice==0)
   57EA 7A            [ 4] 4778 	ld	a,d
   57EB B7            [ 4] 4779 	or	a, a
   57EC 20 0F         [12] 4780 	jr	NZ,00112$
                           4781 ;src/includes/game.h:113: windowInfoTile(x, y);
   57EE D5            [11] 4782 	push	de
   57EF DD 66 05      [19] 4783 	ld	h,5 (ix)
   57F2 DD 6E 04      [19] 4784 	ld	l,4 (ix)
   57F5 E5            [11] 4785 	push	hl
   57F6 CD F5 53      [17] 4786 	call	_windowInfoTile
   57F9 F1            [10] 4787 	pop	af
   57FA D1            [10] 4788 	pop	de
   57FB 18 45         [12] 4789 	jr	00115$
   57FD                    4790 00112$:
                           4791 ;src/includes/game.h:114: else if(menuChoice==1)
   57FD 7A            [ 4] 4792 	ld	a,d
   57FE 3D            [ 4] 4793 	dec	a
   57FF 20 09         [12] 4794 	jr	NZ,00109$
                           4795 ;src/includes/game.h:116: CURSOR_MODE=T_REW;
   5801 21 A8 70      [10] 4796 	ld	hl,#_CURSOR_MODE + 0
   5804 36 07         [10] 4797 	ld	(hl), #0x07
                           4798 ;src/includes/game.h:117: menuChoice=6;
   5806 16 06         [ 7] 4799 	ld	d,#0x06
   5808 18 38         [12] 4800 	jr	00115$
   580A                    4801 00109$:
                           4802 ;src/includes/game.h:119: else if(menuChoice==2)
   580A 7A            [ 4] 4803 	ld	a,d
   580B D6 02         [ 7] 4804 	sub	a, #0x02
   580D 20 07         [12] 4805 	jr	NZ,00106$
                           4806 ;src/includes/game.h:121: menuStations();
   580F CD B2 56      [17] 4807 	call	_menuStations
                           4808 ;src/includes/game.h:122: menuChoice=6;
   5812 16 06         [ 7] 4809 	ld	d,#0x06
   5814 18 2C         [12] 4810 	jr	00115$
   5816                    4811 00106$:
                           4812 ;src/includes/game.h:124: else if(menuChoice==3)
   5816 7A            [ 4] 4813 	ld	a,d
   5817 D6 03         [ 7] 4814 	sub	a, #0x03
   5819 20 27         [12] 4815 	jr	NZ,00115$
                           4816 ;src/includes/game.h:126: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   581B DD 5E FC      [19] 4817 	ld	e,-4 (ix)
   581E DD 56 FD      [19] 4818 	ld	d,-3 (ix)
   5821 21 03 01      [10] 4819 	ld	hl,#0x0103
   5824 E5            [11] 4820 	push	hl
   5825 D5            [11] 4821 	push	de
   5826 CD C1 4B      [17] 4822 	call	_drawWindow
   5829 F1            [10] 4823 	pop	af
   582A F1            [10] 4824 	pop	af
   582B 2D            [ 4] 4825 	dec	l
   582C 20 12         [12] 4826 	jr	NZ,00102$
                           4827 ;src/includes/game.h:127: p_world[x+y*WIDTH] = GRASS1;
   582E DD 6E 04      [19] 4828 	ld	l,4 (ix)
   5831 26 00         [ 7] 4829 	ld	h,#0x00
   5833 DD 5E FE      [19] 4830 	ld	e,-2 (ix)
   5836 DD 56 FF      [19] 4831 	ld	d,-1 (ix)
   5839 19            [11] 4832 	add	hl,de
   583A 11 A8 61      [10] 4833 	ld	de,#_p_world
   583D 19            [11] 4834 	add	hl,de
   583E 36 00         [10] 4835 	ld	(hl),#0x00
   5840                    4836 00102$:
                           4837 ;src/includes/game.h:129: menuChoice=6;
   5840 16 06         [ 7] 4838 	ld	d,#0x06
   5842                    4839 00115$:
                           4840 ;src/includes/game.h:133: while(menuChoice!=6);
   5842 7A            [ 4] 4841 	ld	a,d
   5843 D6 06         [ 7] 4842 	sub	a, #0x06
   5845 20 92         [12] 4843 	jr	NZ,00114$
                           4844 ;src/includes/game.h:135: putM1();
   5847 CD A9 46      [17] 4845 	call	_putM1
   584A DD F9         [10] 4846 	ld	sp, ix
   584C DD E1         [14] 4847 	pop	ix
   584E C9            [10] 4848 	ret
   584F                    4849 ___str_24:
   584F 41 62 6F 75 74 20  4850 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   585E 00                 4851 	.db 0x00
   585F                    4852 ___str_25:
   585F 42 75 69 6C 64 20  4853 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   586E 00                 4854 	.db 0x00
   586F                    4855 ___str_26:
   586F 42 75 69 6C 64 20  4856 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   587E 00                 4857 	.db 0x00
   587F                    4858 ___str_27:
   587F 44 65 73 74 72 6F  4859 	.ascii "Destroy"
        79
   5886 00                 4860 	.db 0x00
   5887                    4861 ___str_28:
   5887 52 61 69 6C 72 6F  4862 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   5895 00                 4863 	.db 0x00
   5896                    4864 ___str_29:
   5896 41 63 63 6F 75 6E  4865 	.ascii "Accounting"
        74 69 6E 67
   58A0 00                 4866 	.db 0x00
   58A1                    4867 ___str_30:
   58A1 52 65 73 75 6D 65  4868 	.ascii "Resume"
   58A7 00                 4869 	.db 0x00
   58A8                    4870 ___str_31:
   58A8 44 65 73 74 72 6F  4871 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   58CA 00                 4872 	.db 0x00
   58CB                    4873 ___str_32:
   58CB 00                 4874 	.db 0x00
   58CC                    4875 ___str_33:
   58CC 43 6F 6E 74 69 6E  4876 	.ascii "Continue ?"
        75 65 20 3F
   58D6 00                 4877 	.db 0x00
                           4878 ;src/includes/game.h:139: void game()
                           4879 ;	---------------------------------
                           4880 ; Function game
                           4881 ; ---------------------------------
   58D7                    4882 _game::
   58D7 DD E5         [15] 4883 	push	ix
   58D9 DD 21 00 00   [14] 4884 	ld	ix,#0
   58DD DD 39         [15] 4885 	add	ix,sp
   58DF 21 F1 FF      [10] 4886 	ld	hl,#-15
   58E2 39            [11] 4887 	add	hl,sp
   58E3 F9            [ 6] 4888 	ld	sp,hl
                           4889 ;src/includes/game.h:142: int ulx = 0;
   58E4 DD 36 F7 00   [19] 4890 	ld	-9 (ix),#0x00
   58E8 DD 36 F8 00   [19] 4891 	ld	-8 (ix),#0x00
                           4892 ;src/includes/game.h:143: int uly = 0;
   58EC DD 36 F5 00   [19] 4893 	ld	-11 (ix),#0x00
   58F0 DD 36 F6 00   [19] 4894 	ld	-10 (ix),#0x00
                           4895 ;src/includes/game.h:144: int xCursor = 10;
   58F4 DD 36 F3 0A   [19] 4896 	ld	-13 (ix),#0x0A
   58F8 DD 36 F4 00   [19] 4897 	ld	-12 (ix),#0x00
                           4898 ;src/includes/game.h:145: int yCursor = 6;
   58FC 21 06 00      [10] 4899 	ld	hl,#0x0006
   58FF E3            [19] 4900 	ex	(sp), hl
                           4901 ;src/includes/game.h:147: u8 exit=0;
   5900 DD 36 F9 00   [19] 4902 	ld	-7 (ix),#0x00
                           4903 ;src/includes/game.h:149: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   5904 21 00 00      [10] 4904 	ld	hl,#0x0000
   5907 E5            [11] 4905 	push	hl
   5908 2E 00         [ 7] 4906 	ld	l, #0x00
   590A E5            [11] 4907 	push	hl
   590B CD 0A 60      [17] 4908 	call	_cpct_px2byteM1
   590E F1            [10] 4909 	pop	af
   590F F1            [10] 4910 	pop	af
   5910 65            [ 4] 4911 	ld	h,l
   5911 01 00 40      [10] 4912 	ld	bc,#0x4000
   5914 C5            [11] 4913 	push	bc
   5915 E5            [11] 4914 	push	hl
   5916 33            [ 6] 4915 	inc	sp
   5917 21 00 C0      [10] 4916 	ld	hl,#0xC000
   591A E5            [11] 4917 	push	hl
   591B CD FC 5F      [17] 4918 	call	_cpct_memset
                           4919 ;src/includes/game.h:151: generateWorld();
   591E CD 93 4F      [17] 4920 	call	_generateWorld
                           4921 ;src/includes/game.h:153: drawWorld(ulx, uly);
   5921 21 00 00      [10] 4922 	ld	hl,#0x0000
   5924 E5            [11] 4923 	push	hl
   5925 CD 3D 53      [17] 4924 	call	_drawWorld
   5928 F1            [10] 4925 	pop	af
                           4926 ;src/includes/game.h:155: do{
   5929                    4927 00172$:
                           4928 ;src/includes/game.h:156: cpct_scanKeyboard(); 
   5929 CD 1B 61      [17] 4929 	call	_cpct_scanKeyboard
                           4930 ;src/includes/game.h:158: if ( cpct_isKeyPressed(Key_CursorUp) )
   592C 21 00 01      [10] 4931 	ld	hl,#0x0100
   592F CD FD 5D      [17] 4932 	call	_cpct_isKeyPressed
                           4933 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5932 DD 7E F3      [19] 4934 	ld	a,-13 (ix)
   5935 DD 77 FC      [19] 4935 	ld	-4 (ix),a
   5938 DD 7E F5      [19] 4936 	ld	a,-11 (ix)
   593B DD 77 FD      [19] 4937 	ld	-3 (ix),a
   593E DD 7E F7      [19] 4938 	ld	a,-9 (ix)
   5941 DD 77 FE      [19] 4939 	ld	-2 (ix),a
                           4940 ;src/includes/game.h:158: if ( cpct_isKeyPressed(Key_CursorUp) )
   5944 7D            [ 4] 4941 	ld	a,l
   5945 B7            [ 4] 4942 	or	a, a
   5946 28 5F         [12] 4943 	jr	Z,00107$
                           4944 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5948 DD 7E F1      [19] 4945 	ld	a,-15 (ix)
   594B DD 77 FF      [19] 4946 	ld	-1 (ix), a
   594E F5            [11] 4947 	push	af
   594F 33            [ 6] 4948 	inc	sp
   5950 DD 7E FC      [19] 4949 	ld	a,-4 (ix)
   5953 F5            [11] 4950 	push	af
   5954 33            [ 6] 4951 	inc	sp
   5955 DD 7E FD      [19] 4952 	ld	a,-3 (ix)
   5958 F5            [11] 4953 	push	af
   5959 33            [ 6] 4954 	inc	sp
   595A DD 7E FE      [19] 4955 	ld	a,-2 (ix)
   595D F5            [11] 4956 	push	af
   595E 33            [ 6] 4957 	inc	sp
   595F CD 15 51      [17] 4958 	call	_drawTile
   5962 F1            [10] 4959 	pop	af
   5963 F1            [10] 4960 	pop	af
                           4961 ;src/includes/game.h:162: yCursor-=1;
   5964 E1            [10] 4962 	pop	hl
   5965 E5            [11] 4963 	push	hl
   5966 2B            [ 6] 4964 	dec	hl
   5967 E3            [19] 4965 	ex	(sp), hl
                           4966 ;src/includes/game.h:165: if(yCursor<0)
   5968 DD CB F2 7E   [20] 4967 	bit	7, -14 (ix)
   596C 28 31         [12] 4968 	jr	Z,00201$
                           4969 ;src/includes/game.h:167: yCursor=0;
   596E 21 00 00      [10] 4970 	ld	hl,#0x0000
   5971 E3            [19] 4971 	ex	(sp), hl
                           4972 ;src/includes/game.h:170: if(uly>0)
   5972 AF            [ 4] 4973 	xor	a, a
   5973 DD BE F5      [19] 4974 	cp	a, -11 (ix)
   5976 DD 9E F6      [19] 4975 	sbc	a, -10 (ix)
   5979 E2 7E 59      [10] 4976 	jp	PO, 00356$
   597C EE 80         [ 7] 4977 	xor	a, #0x80
   597E                    4978 00356$:
   597E F2 9F 59      [10] 4979 	jp	P,00201$
                           4980 ;src/includes/game.h:172: uly-=1;
   5981 DD 6E F5      [19] 4981 	ld	l,-11 (ix)
   5984 DD 66 F6      [19] 4982 	ld	h,-10 (ix)
   5987 2B            [ 6] 4983 	dec	hl
   5988 DD 75 F5      [19] 4984 	ld	-11 (ix),l
   598B DD 74 F6      [19] 4985 	ld	-10 (ix),h
                           4986 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   598E DD 7E F5      [19] 4987 	ld	a,-11 (ix)
                           4988 ;src/includes/game.h:173: drawWorld(ulx, uly);
   5991 DD 77 FD      [19] 4989 	ld	-3 (ix), a
   5994 F5            [11] 4990 	push	af
   5995 33            [ 6] 4991 	inc	sp
   5996 DD 7E FE      [19] 4992 	ld	a,-2 (ix)
   5999 F5            [11] 4993 	push	af
   599A 33            [ 6] 4994 	inc	sp
   599B CD 3D 53      [17] 4995 	call	_drawWorld
   599E F1            [10] 4996 	pop	af
                           4997 ;src/includes/game.h:178: for(i=0; i<14000; i++) {}
   599F                    4998 00201$:
   599F 11 B0 36      [10] 4999 	ld	de,#0x36B0
   59A2                    5000 00177$:
   59A2 1B            [ 6] 5001 	dec	de
   59A3 7A            [ 4] 5002 	ld	a,d
   59A4 B3            [ 4] 5003 	or	a,e
   59A5 20 FB         [12] 5004 	jr	NZ,00177$
   59A7                    5005 00107$:
                           5006 ;src/includes/game.h:181: if ( cpct_isKeyPressed(Key_CursorDown) )
   59A7 21 00 04      [10] 5007 	ld	hl,#0x0400
   59AA CD FD 5D      [17] 5008 	call	_cpct_isKeyPressed
   59AD 7D            [ 4] 5009 	ld	a,l
   59AE B7            [ 4] 5010 	or	a, a
   59AF CA 2C 5A      [10] 5011 	jp	Z,00114$
                           5012 ;src/includes/game.h:183: drawTile(ulx, uly, xCursor, yCursor);
   59B2 DD 66 F1      [19] 5013 	ld	h,-15 (ix)
   59B5 E5            [11] 5014 	push	hl
   59B6 33            [ 6] 5015 	inc	sp
   59B7 DD 7E FC      [19] 5016 	ld	a,-4 (ix)
   59BA F5            [11] 5017 	push	af
   59BB 33            [ 6] 5018 	inc	sp
   59BC DD 7E FD      [19] 5019 	ld	a,-3 (ix)
   59BF F5            [11] 5020 	push	af
   59C0 33            [ 6] 5021 	inc	sp
   59C1 DD 7E FE      [19] 5022 	ld	a,-2 (ix)
   59C4 F5            [11] 5023 	push	af
   59C5 33            [ 6] 5024 	inc	sp
   59C6 CD 15 51      [17] 5025 	call	_drawTile
   59C9 F1            [10] 5026 	pop	af
   59CA F1            [10] 5027 	pop	af
                           5028 ;src/includes/game.h:184: yCursor+=1;
   59CB DD 34 F1      [23] 5029 	inc	-15 (ix)
   59CE 20 03         [12] 5030 	jr	NZ,00357$
   59D0 DD 34 F2      [23] 5031 	inc	-14 (ix)
   59D3                    5032 00357$:
                           5033 ;src/includes/game.h:185: if(yCursor>NBTILE_H-1)
   59D3 3E 0B         [ 7] 5034 	ld	a,#0x0B
   59D5 DD BE F1      [19] 5035 	cp	a, -15 (ix)
   59D8 3E 00         [ 7] 5036 	ld	a,#0x00
   59DA DD 9E F2      [19] 5037 	sbc	a, -14 (ix)
   59DD E2 E2 59      [10] 5038 	jp	PO, 00358$
   59E0 EE 80         [ 7] 5039 	xor	a, #0x80
   59E2                    5040 00358$:
   59E2 F2 11 5A      [10] 5041 	jp	P,00206$
                           5042 ;src/includes/game.h:187: yCursor=NBTILE_H-1;
   59E5 21 0B 00      [10] 5043 	ld	hl,#0x000B
   59E8 E3            [19] 5044 	ex	(sp), hl
                           5045 ;src/includes/game.h:188: if(uly<HEIGHT-NBTILE_H)
   59E9 DD 7E F5      [19] 5046 	ld	a,-11 (ix)
   59EC D6 24         [ 7] 5047 	sub	a, #0x24
   59EE DD 7E F6      [19] 5048 	ld	a,-10 (ix)
   59F1 17            [ 4] 5049 	rla
   59F2 3F            [ 4] 5050 	ccf
   59F3 1F            [ 4] 5051 	rra
   59F4 DE 80         [ 7] 5052 	sbc	a, #0x80
   59F6 30 19         [12] 5053 	jr	NC,00206$
                           5054 ;src/includes/game.h:190: uly+=1;
   59F8 DD 34 F5      [23] 5055 	inc	-11 (ix)
   59FB 20 03         [12] 5056 	jr	NZ,00359$
   59FD DD 34 F6      [23] 5057 	inc	-10 (ix)
   5A00                    5058 00359$:
                           5059 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5A00 DD 7E F5      [19] 5060 	ld	a,-11 (ix)
                           5061 ;src/includes/game.h:191: drawWorld(ulx, uly);
   5A03 DD 77 FD      [19] 5062 	ld	-3 (ix), a
   5A06 F5            [11] 5063 	push	af
   5A07 33            [ 6] 5064 	inc	sp
   5A08 DD 7E FE      [19] 5065 	ld	a,-2 (ix)
   5A0B F5            [11] 5066 	push	af
   5A0C 33            [ 6] 5067 	inc	sp
   5A0D CD 3D 53      [17] 5068 	call	_drawWorld
   5A10 F1            [10] 5069 	pop	af
                           5070 ;src/includes/game.h:196: for(i=0; i<14000; i++) {}
   5A11                    5071 00206$:
   5A11 DD 36 FA B0   [19] 5072 	ld	-6 (ix),#0xB0
   5A15 DD 36 FB 36   [19] 5073 	ld	-5 (ix),#0x36
   5A19                    5074 00180$:
   5A19 DD 6E FA      [19] 5075 	ld	l,-6 (ix)
   5A1C DD 66 FB      [19] 5076 	ld	h,-5 (ix)
   5A1F 2B            [ 6] 5077 	dec	hl
   5A20 DD 75 FA      [19] 5078 	ld	-6 (ix),l
   5A23 DD 74 FB      [19] 5079 	ld	-5 (ix), h
   5A26 7C            [ 4] 5080 	ld	a, h
   5A27 DD B6 FA      [19] 5081 	or	a,-6 (ix)
   5A2A 20 ED         [12] 5082 	jr	NZ,00180$
   5A2C                    5083 00114$:
                           5084 ;src/includes/game.h:199: if ( cpct_isKeyPressed(Key_CursorLeft) )
   5A2C 21 01 01      [10] 5085 	ld	hl,#0x0101
   5A2F CD FD 5D      [17] 5086 	call	_cpct_isKeyPressed
                           5087 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5A32 DD 7E F1      [19] 5088 	ld	a,-15 (ix)
   5A35 DD 77 FF      [19] 5089 	ld	-1 (ix),a
                           5090 ;src/includes/game.h:199: if ( cpct_isKeyPressed(Key_CursorLeft) )
   5A38 7D            [ 4] 5091 	ld	a,l
   5A39 B7            [ 4] 5092 	or	a, a
   5A3A 28 6C         [12] 5093 	jr	Z,00121$
                           5094 ;src/includes/game.h:201: drawTile(ulx, uly, xCursor, yCursor);
   5A3C DD 7E FF      [19] 5095 	ld	a,-1 (ix)
   5A3F F5            [11] 5096 	push	af
   5A40 33            [ 6] 5097 	inc	sp
   5A41 DD 7E FC      [19] 5098 	ld	a,-4 (ix)
   5A44 F5            [11] 5099 	push	af
   5A45 33            [ 6] 5100 	inc	sp
   5A46 DD 7E FD      [19] 5101 	ld	a,-3 (ix)
   5A49 F5            [11] 5102 	push	af
   5A4A 33            [ 6] 5103 	inc	sp
   5A4B DD 7E FE      [19] 5104 	ld	a,-2 (ix)
   5A4E F5            [11] 5105 	push	af
   5A4F 33            [ 6] 5106 	inc	sp
   5A50 CD 15 51      [17] 5107 	call	_drawTile
   5A53 F1            [10] 5108 	pop	af
   5A54 F1            [10] 5109 	pop	af
                           5110 ;src/includes/game.h:202: xCursor-=1;
   5A55 DD 6E F3      [19] 5111 	ld	l,-13 (ix)
   5A58 DD 66 F4      [19] 5112 	ld	h,-12 (ix)
   5A5B 2B            [ 6] 5113 	dec	hl
   5A5C DD 75 F3      [19] 5114 	ld	-13 (ix),l
   5A5F DD 74 F4      [19] 5115 	ld	-12 (ix),h
                           5116 ;src/includes/game.h:203: if(xCursor<0)
   5A62 DD CB F4 7E   [20] 5117 	bit	7, -12 (ix)
   5A66 28 38         [12] 5118 	jr	Z,00211$
                           5119 ;src/includes/game.h:205: xCursor=0;
   5A68 DD 36 F3 00   [19] 5120 	ld	-13 (ix),#0x00
   5A6C DD 36 F4 00   [19] 5121 	ld	-12 (ix),#0x00
                           5122 ;src/includes/game.h:206: if(ulx>0)
   5A70 AF            [ 4] 5123 	xor	a, a
   5A71 DD BE F7      [19] 5124 	cp	a, -9 (ix)
   5A74 DD 9E F8      [19] 5125 	sbc	a, -8 (ix)
   5A77 E2 7C 5A      [10] 5126 	jp	PO, 00360$
   5A7A EE 80         [ 7] 5127 	xor	a, #0x80
   5A7C                    5128 00360$:
   5A7C F2 A0 5A      [10] 5129 	jp	P,00211$
                           5130 ;src/includes/game.h:208: ulx-=1;
   5A7F DD 6E F7      [19] 5131 	ld	l,-9 (ix)
   5A82 DD 66 F8      [19] 5132 	ld	h,-8 (ix)
   5A85 2B            [ 6] 5133 	dec	hl
   5A86 DD 75 F7      [19] 5134 	ld	-9 (ix),l
   5A89 DD 74 F8      [19] 5135 	ld	-8 (ix),h
                           5136 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5A8C DD 7E F7      [19] 5137 	ld	a,-9 (ix)
   5A8F DD 77 FE      [19] 5138 	ld	-2 (ix),a
                           5139 ;src/includes/game.h:209: drawWorld(ulx, uly);
   5A92 DD 7E FD      [19] 5140 	ld	a,-3 (ix)
   5A95 F5            [11] 5141 	push	af
   5A96 33            [ 6] 5142 	inc	sp
   5A97 DD 7E FE      [19] 5143 	ld	a,-2 (ix)
   5A9A F5            [11] 5144 	push	af
   5A9B 33            [ 6] 5145 	inc	sp
   5A9C CD 3D 53      [17] 5146 	call	_drawWorld
   5A9F F1            [10] 5147 	pop	af
                           5148 ;src/includes/game.h:214: for(i=0; i<14000; i++) {}
   5AA0                    5149 00211$:
   5AA0 11 B0 36      [10] 5150 	ld	de,#0x36B0
   5AA3                    5151 00183$:
   5AA3 1B            [ 6] 5152 	dec	de
   5AA4 7A            [ 4] 5153 	ld	a,d
   5AA5 B3            [ 4] 5154 	or	a,e
   5AA6 20 FB         [12] 5155 	jr	NZ,00183$
   5AA8                    5156 00121$:
                           5157 ;src/includes/game.h:217: if ( cpct_isKeyPressed(Key_CursorRight) )
   5AA8 21 00 02      [10] 5158 	ld	hl,#0x0200
   5AAB CD FD 5D      [17] 5159 	call	_cpct_isKeyPressed
   5AAE 7D            [ 4] 5160 	ld	a,l
   5AAF B7            [ 4] 5161 	or	a, a
   5AB0 28 6E         [12] 5162 	jr	Z,00128$
                           5163 ;src/includes/game.h:219: drawTile(ulx, uly, xCursor, yCursor);
   5AB2 DD 56 F3      [19] 5164 	ld	d,-13 (ix)
   5AB5 DD 7E FF      [19] 5165 	ld	a,-1 (ix)
   5AB8 F5            [11] 5166 	push	af
   5AB9 33            [ 6] 5167 	inc	sp
   5ABA D5            [11] 5168 	push	de
   5ABB 33            [ 6] 5169 	inc	sp
   5ABC DD 7E FD      [19] 5170 	ld	a,-3 (ix)
   5ABF F5            [11] 5171 	push	af
   5AC0 33            [ 6] 5172 	inc	sp
   5AC1 DD 7E FE      [19] 5173 	ld	a,-2 (ix)
   5AC4 F5            [11] 5174 	push	af
   5AC5 33            [ 6] 5175 	inc	sp
   5AC6 CD 15 51      [17] 5176 	call	_drawTile
   5AC9 F1            [10] 5177 	pop	af
   5ACA F1            [10] 5178 	pop	af
                           5179 ;src/includes/game.h:220: xCursor+=1;
   5ACB DD 34 F3      [23] 5180 	inc	-13 (ix)
   5ACE 20 03         [12] 5181 	jr	NZ,00361$
   5AD0 DD 34 F4      [23] 5182 	inc	-12 (ix)
   5AD3                    5183 00361$:
                           5184 ;src/includes/game.h:221: if(xCursor>NBTILE_W-1)
   5AD3 3E 13         [ 7] 5185 	ld	a,#0x13
   5AD5 DD BE F3      [19] 5186 	cp	a, -13 (ix)
   5AD8 3E 00         [ 7] 5187 	ld	a,#0x00
   5ADA DD 9E F4      [19] 5188 	sbc	a, -12 (ix)
   5ADD E2 E2 5A      [10] 5189 	jp	PO, 00362$
   5AE0 EE 80         [ 7] 5190 	xor	a, #0x80
   5AE2                    5191 00362$:
   5AE2 F2 18 5B      [10] 5192 	jp	P,00216$
                           5193 ;src/includes/game.h:223: xCursor=NBTILE_W-1;
   5AE5 DD 36 F3 13   [19] 5194 	ld	-13 (ix),#0x13
   5AE9 DD 36 F4 00   [19] 5195 	ld	-12 (ix),#0x00
                           5196 ;src/includes/game.h:224: if(ulx<WIDTH-NBTILE_W)
   5AED DD 7E F7      [19] 5197 	ld	a,-9 (ix)
   5AF0 D6 3C         [ 7] 5198 	sub	a, #0x3C
   5AF2 DD 7E F8      [19] 5199 	ld	a,-8 (ix)
   5AF5 17            [ 4] 5200 	rla
   5AF6 3F            [ 4] 5201 	ccf
   5AF7 1F            [ 4] 5202 	rra
   5AF8 DE 80         [ 7] 5203 	sbc	a, #0x80
   5AFA 30 1C         [12] 5204 	jr	NC,00216$
                           5205 ;src/includes/game.h:226: ulx+=1;
   5AFC DD 34 F7      [23] 5206 	inc	-9 (ix)
   5AFF 20 03         [12] 5207 	jr	NZ,00363$
   5B01 DD 34 F8      [23] 5208 	inc	-8 (ix)
   5B04                    5209 00363$:
                           5210 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5B04 DD 7E F7      [19] 5211 	ld	a,-9 (ix)
   5B07 DD 77 FE      [19] 5212 	ld	-2 (ix),a
                           5213 ;src/includes/game.h:227: drawWorld(ulx, uly);
   5B0A DD 7E FD      [19] 5214 	ld	a,-3 (ix)
   5B0D F5            [11] 5215 	push	af
   5B0E 33            [ 6] 5216 	inc	sp
   5B0F DD 7E FE      [19] 5217 	ld	a,-2 (ix)
   5B12 F5            [11] 5218 	push	af
   5B13 33            [ 6] 5219 	inc	sp
   5B14 CD 3D 53      [17] 5220 	call	_drawWorld
   5B17 F1            [10] 5221 	pop	af
                           5222 ;src/includes/game.h:232: for(i=0; i<14000; i++) {}
   5B18                    5223 00216$:
   5B18 11 B0 36      [10] 5224 	ld	de,#0x36B0
   5B1B                    5225 00186$:
   5B1B 1B            [ 6] 5226 	dec	de
   5B1C 7A            [ 4] 5227 	ld	a,d
   5B1D B3            [ 4] 5228 	or	a,e
   5B1E 20 FB         [12] 5229 	jr	NZ,00186$
   5B20                    5230 00128$:
                           5231 ;src/includes/game.h:236: if ( cpct_isKeyPressed(Key_Space) )
   5B20 21 05 80      [10] 5232 	ld	hl,#0x8005
   5B23 CD FD 5D      [17] 5233 	call	_cpct_isKeyPressed
   5B26 7D            [ 4] 5234 	ld	a,l
   5B27 B7            [ 4] 5235 	or	a, a
   5B28 CA A3 5B      [10] 5236 	jp	Z,00155$
                           5237 ;src/includes/game.h:238: if(CURSOR_MODE==T_SSNS)
   5B2B 3A A8 70      [13] 5238 	ld	a,(#_CURSOR_MODE + 0)
   5B2E 3D            [ 4] 5239 	dec	a
   5B2F 20 07         [12] 5240 	jr	NZ,00151$
                           5241 ;src/includes/game.h:239: CURSOR_MODE=T_SSEW;
   5B31 21 A8 70      [10] 5242 	ld	hl,#_CURSOR_MODE + 0
   5B34 36 02         [10] 5243 	ld	(hl), #0x02
   5B36 18 63         [12] 5244 	jr	00228$
   5B38                    5245 00151$:
                           5246 ;src/includes/game.h:240: else if(CURSOR_MODE==T_SSEW)
   5B38 3A A8 70      [13] 5247 	ld	a,(#_CURSOR_MODE + 0)
   5B3B D6 02         [ 7] 5248 	sub	a, #0x02
   5B3D 20 07         [12] 5249 	jr	NZ,00148$
                           5250 ;src/includes/game.h:241: CURSOR_MODE=T_SSNS;
   5B3F 21 A8 70      [10] 5251 	ld	hl,#_CURSOR_MODE + 0
   5B42 36 01         [10] 5252 	ld	(hl), #0x01
   5B44 18 55         [12] 5253 	jr	00228$
   5B46                    5254 00148$:
                           5255 ;src/includes/game.h:242: else if(CURSOR_MODE==T_SMNS)
   5B46 3A A8 70      [13] 5256 	ld	a,(#_CURSOR_MODE + 0)
   5B49 D6 03         [ 7] 5257 	sub	a, #0x03
   5B4B 20 07         [12] 5258 	jr	NZ,00145$
                           5259 ;src/includes/game.h:243: CURSOR_MODE=T_SMEW;
   5B4D 21 A8 70      [10] 5260 	ld	hl,#_CURSOR_MODE + 0
   5B50 36 04         [10] 5261 	ld	(hl), #0x04
   5B52 18 47         [12] 5262 	jr	00228$
   5B54                    5263 00145$:
                           5264 ;src/includes/game.h:244: else if(CURSOR_MODE==T_SMEW)
   5B54 3A A8 70      [13] 5265 	ld	a,(#_CURSOR_MODE + 0)
   5B57 D6 04         [ 7] 5266 	sub	a, #0x04
   5B59 20 07         [12] 5267 	jr	NZ,00142$
                           5268 ;src/includes/game.h:245: CURSOR_MODE=T_SMNS;
   5B5B 21 A8 70      [10] 5269 	ld	hl,#_CURSOR_MODE + 0
   5B5E 36 03         [10] 5270 	ld	(hl), #0x03
   5B60 18 39         [12] 5271 	jr	00228$
   5B62                    5272 00142$:
                           5273 ;src/includes/game.h:246: else if(CURSOR_MODE==T_SLNS)
   5B62 3A A8 70      [13] 5274 	ld	a,(#_CURSOR_MODE + 0)
   5B65 D6 05         [ 7] 5275 	sub	a, #0x05
   5B67 20 07         [12] 5276 	jr	NZ,00139$
                           5277 ;src/includes/game.h:247: CURSOR_MODE=T_SLEW;
   5B69 21 A8 70      [10] 5278 	ld	hl,#_CURSOR_MODE + 0
   5B6C 36 06         [10] 5279 	ld	(hl), #0x06
   5B6E 18 2B         [12] 5280 	jr	00228$
   5B70                    5281 00139$:
                           5282 ;src/includes/game.h:248: else if(CURSOR_MODE==T_SLEW)
   5B70 3A A8 70      [13] 5283 	ld	a,(#_CURSOR_MODE + 0)
   5B73 D6 06         [ 7] 5284 	sub	a, #0x06
   5B75 20 07         [12] 5285 	jr	NZ,00136$
                           5286 ;src/includes/game.h:249: CURSOR_MODE=T_SLNS;
   5B77 21 A8 70      [10] 5287 	ld	hl,#_CURSOR_MODE + 0
   5B7A 36 05         [10] 5288 	ld	(hl), #0x05
   5B7C 18 1D         [12] 5289 	jr	00228$
   5B7E                    5290 00136$:
                           5291 ;src/includes/game.h:250: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   5B7E 3A A8 70      [13] 5292 	ld	a,(#_CURSOR_MODE + 0)
   5B81 FE 07         [ 7] 5293 	cp	a,#0x07
   5B83 38 0A         [12] 5294 	jr	C,00132$
   5B85 D6 10         [ 7] 5295 	sub	a, #0x10
   5B87 30 06         [12] 5296 	jr	NC,00132$
                           5297 ;src/includes/game.h:251: CURSOR_MODE+=1;
   5B89 21 A8 70      [10] 5298 	ld	hl, #_CURSOR_MODE+0
   5B8C 34            [11] 5299 	inc	(hl)
   5B8D 18 0C         [12] 5300 	jr	00228$
   5B8F                    5301 00132$:
                           5302 ;src/includes/game.h:252: else if(CURSOR_MODE==T_RNSW)
   5B8F 3A A8 70      [13] 5303 	ld	a,(#_CURSOR_MODE + 0)
   5B92 D6 10         [ 7] 5304 	sub	a, #0x10
   5B94 20 05         [12] 5305 	jr	NZ,00228$
                           5306 ;src/includes/game.h:253: CURSOR_MODE=T_REW;
   5B96 21 A8 70      [10] 5307 	ld	hl,#_CURSOR_MODE + 0
   5B99 36 07         [10] 5308 	ld	(hl), #0x07
                           5309 ;src/includes/game.h:255: for(i=0; i<14000; i++) {}
   5B9B                    5310 00228$:
   5B9B 21 B0 36      [10] 5311 	ld	hl,#0x36B0
   5B9E                    5312 00189$:
   5B9E 2B            [ 6] 5313 	dec	hl
   5B9F 7C            [ 4] 5314 	ld	a,h
   5BA0 B5            [ 4] 5315 	or	a,l
   5BA1 20 FB         [12] 5316 	jr	NZ,00189$
   5BA3                    5317 00155$:
                           5318 ;src/includes/game.h:258: if ( cpct_isKeyPressed(Key_Esc) )
   5BA3 21 08 04      [10] 5319 	ld	hl,#0x0408
   5BA6 CD FD 5D      [17] 5320 	call	_cpct_isKeyPressed
                           5321 ;src/includes/game.h:160: drawTile(ulx, uly, xCursor, yCursor);
   5BA9 DD 46 F3      [19] 5322 	ld	b,-13 (ix)
                           5323 ;src/includes/game.h:258: if ( cpct_isKeyPressed(Key_Esc) )
   5BAC 7D            [ 4] 5324 	ld	a,l
   5BAD B7            [ 4] 5325 	or	a, a
   5BAE 28 34         [12] 5326 	jr	Z,00161$
                           5327 ;src/includes/game.h:261: if(CURSOR_MODE==NONE)
   5BB0 3A A8 70      [13] 5328 	ld	a,(#_CURSOR_MODE + 0)
   5BB3 B7            [ 4] 5329 	or	a, a
   5BB4 20 06         [12] 5330 	jr	NZ,00157$
                           5331 ;src/includes/game.h:262: exit=1;
   5BB6 DD 36 F9 01   [19] 5332 	ld	-7 (ix),#0x01
   5BBA 18 20         [12] 5333 	jr	00232$
   5BBC                    5334 00157$:
                           5335 ;src/includes/game.h:265: CURSOR_MODE=NONE;
   5BBC FD 21 A8 70   [14] 5336 	ld	iy,#_CURSOR_MODE
   5BC0 FD 36 00 00   [19] 5337 	ld	0 (iy),#0x00
                           5338 ;src/includes/game.h:266: drawTile(ulx, uly, xCursor, yCursor);
   5BC4 C5            [11] 5339 	push	bc
   5BC5 DD 7E FF      [19] 5340 	ld	a,-1 (ix)
   5BC8 F5            [11] 5341 	push	af
   5BC9 33            [ 6] 5342 	inc	sp
   5BCA C5            [11] 5343 	push	bc
   5BCB 33            [ 6] 5344 	inc	sp
   5BCC DD 7E FD      [19] 5345 	ld	a,-3 (ix)
   5BCF F5            [11] 5346 	push	af
   5BD0 33            [ 6] 5347 	inc	sp
   5BD1 DD 7E FE      [19] 5348 	ld	a,-2 (ix)
   5BD4 F5            [11] 5349 	push	af
   5BD5 33            [ 6] 5350 	inc	sp
   5BD6 CD 15 51      [17] 5351 	call	_drawTile
   5BD9 F1            [10] 5352 	pop	af
   5BDA F1            [10] 5353 	pop	af
   5BDB C1            [10] 5354 	pop	bc
                           5355 ;src/includes/game.h:270: for(i=0; i<14000; i++) {}
   5BDC                    5356 00232$:
   5BDC 21 B0 36      [10] 5357 	ld	hl,#0x36B0
   5BDF                    5358 00192$:
   5BDF 2B            [ 6] 5359 	dec	hl
   5BE0 7C            [ 4] 5360 	ld	a,h
   5BE1 B5            [ 4] 5361 	or	a,l
   5BE2 20 FB         [12] 5362 	jr	NZ,00192$
   5BE4                    5363 00161$:
                           5364 ;src/includes/game.h:273: if ( cpct_isKeyPressed(Key_Return) )
   5BE4 C5            [11] 5365 	push	bc
   5BE5 21 02 04      [10] 5366 	ld	hl,#0x0402
   5BE8 CD FD 5D      [17] 5367 	call	_cpct_isKeyPressed
   5BEB 7D            [ 4] 5368 	ld	a,l
   5BEC C1            [10] 5369 	pop	bc
   5BED B7            [ 4] 5370 	or	a, a
   5BEE CA 90 5C      [10] 5371 	jp	Z,00171$
                           5372 ;src/includes/game.h:276: if(CURSOR_MODE==NONE)
   5BF1 3A A8 70      [13] 5373 	ld	a,(#_CURSOR_MODE + 0)
   5BF4 B7            [ 4] 5374 	or	a, a
   5BF5 20 44         [12] 5375 	jr	NZ,00167$
                           5376 ;src/includes/game.h:278: menuTile(ulx+xCursor, uly+yCursor);
   5BF7 DD 7E F5      [19] 5377 	ld	a, -11 (ix)
   5BFA DD 66 F1      [19] 5378 	ld	h, -15 (ix)
   5BFD 84            [ 4] 5379 	add	a, h
   5BFE 67            [ 4] 5380 	ld	h,a
   5BFF DD 6E F7      [19] 5381 	ld	l,-9 (ix)
   5C02 DD 56 F3      [19] 5382 	ld	d,-13 (ix)
   5C05 7D            [ 4] 5383 	ld	a,l
   5C06 82            [ 4] 5384 	add	a, d
   5C07 C5            [11] 5385 	push	bc
   5C08 E5            [11] 5386 	push	hl
   5C09 33            [ 6] 5387 	inc	sp
   5C0A F5            [11] 5388 	push	af
   5C0B 33            [ 6] 5389 	inc	sp
   5C0C CD 27 57      [17] 5390 	call	_menuTile
   5C0F F1            [10] 5391 	pop	af
   5C10 21 00 00      [10] 5392 	ld	hl,#0x0000
   5C13 E5            [11] 5393 	push	hl
   5C14 2E 00         [ 7] 5394 	ld	l, #0x00
   5C16 E5            [11] 5395 	push	hl
   5C17 CD 0A 60      [17] 5396 	call	_cpct_px2byteM1
   5C1A F1            [10] 5397 	pop	af
   5C1B F1            [10] 5398 	pop	af
   5C1C 65            [ 4] 5399 	ld	h,l
   5C1D 11 00 40      [10] 5400 	ld	de,#0x4000
   5C20 D5            [11] 5401 	push	de
   5C21 E5            [11] 5402 	push	hl
   5C22 33            [ 6] 5403 	inc	sp
   5C23 21 00 C0      [10] 5404 	ld	hl,#0xC000
   5C26 E5            [11] 5405 	push	hl
   5C27 CD FC 5F      [17] 5406 	call	_cpct_memset
   5C2A DD 7E FD      [19] 5407 	ld	a,-3 (ix)
   5C2D F5            [11] 5408 	push	af
   5C2E 33            [ 6] 5409 	inc	sp
   5C2F DD 7E FE      [19] 5410 	ld	a,-2 (ix)
   5C32 F5            [11] 5411 	push	af
   5C33 33            [ 6] 5412 	inc	sp
   5C34 CD 3D 53      [17] 5413 	call	_drawWorld
   5C37 F1            [10] 5414 	pop	af
   5C38 C1            [10] 5415 	pop	bc
   5C39 18 4D         [12] 5416 	jr	00238$
   5C3B                    5417 00167$:
                           5418 ;src/includes/game.h:283: else if(CURSOR_MODE>=T_SSNS)
   5C3B 3A A8 70      [13] 5419 	ld	a,(#_CURSOR_MODE + 0)
   5C3E D6 01         [ 7] 5420 	sub	a, #0x01
   5C40 38 46         [12] 5421 	jr	C,00238$
                           5422 ;src/includes/game.h:285: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   5C42 DD 7E F7      [19] 5423 	ld	a,-9 (ix)
   5C45 DD 86 F3      [19] 5424 	add	a, -13 (ix)
   5C48 5F            [ 4] 5425 	ld	e,a
   5C49 DD 7E F8      [19] 5426 	ld	a,-8 (ix)
   5C4C DD 8E F4      [19] 5427 	adc	a, -12 (ix)
   5C4F 57            [ 4] 5428 	ld	d,a
   5C50 DD 7E F5      [19] 5429 	ld	a,-11 (ix)
   5C53 DD 86 F1      [19] 5430 	add	a, -15 (ix)
   5C56 6F            [ 4] 5431 	ld	l,a
   5C57 DD 7E F6      [19] 5432 	ld	a,-10 (ix)
   5C5A DD 8E F2      [19] 5433 	adc	a, -14 (ix)
   5C5D 67            [ 4] 5434 	ld	h,a
   5C5E D5            [11] 5435 	push	de
   5C5F 5D            [ 4] 5436 	ld	e, l
   5C60 54            [ 4] 5437 	ld	d, h
   5C61 29            [11] 5438 	add	hl, hl
   5C62 29            [11] 5439 	add	hl, hl
   5C63 19            [11] 5440 	add	hl, de
   5C64 29            [11] 5441 	add	hl, hl
   5C65 29            [11] 5442 	add	hl, hl
   5C66 29            [11] 5443 	add	hl, hl
   5C67 29            [11] 5444 	add	hl, hl
   5C68 D1            [10] 5445 	pop	de
   5C69 19            [11] 5446 	add	hl,de
   5C6A 3E A8         [ 7] 5447 	ld	a,#<(_p_world)
   5C6C 85            [ 4] 5448 	add	a, l
   5C6D 5F            [ 4] 5449 	ld	e,a
   5C6E 3E 61         [ 7] 5450 	ld	a,#>(_p_world)
   5C70 8C            [ 4] 5451 	adc	a, h
   5C71 57            [ 4] 5452 	ld	d,a
   5C72 3A A8 70      [13] 5453 	ld	a,(#_CURSOR_MODE + 0)
   5C75 C6 09         [ 7] 5454 	add	a, #0x09
   5C77 12            [ 7] 5455 	ld	(de),a
                           5456 ;src/includes/game.h:288: if(CURSOR_MODE<=T_SLEW)
   5C78 3E 06         [ 7] 5457 	ld	a,#0x06
   5C7A FD 21 A8 70   [14] 5458 	ld	iy,#_CURSOR_MODE
   5C7E FD 96 00      [19] 5459 	sub	a, 0 (iy)
   5C81 38 05         [12] 5460 	jr	C,00238$
                           5461 ;src/includes/game.h:289: CURSOR_MODE=NONE;
   5C83 21 A8 70      [10] 5462 	ld	hl,#_CURSOR_MODE + 0
   5C86 36 00         [10] 5463 	ld	(hl), #0x00
                           5464 ;src/includes/game.h:293: for(i=0; i<14000; i++) {}
   5C88                    5465 00238$:
   5C88 21 B0 36      [10] 5466 	ld	hl,#0x36B0
   5C8B                    5467 00195$:
   5C8B 2B            [ 6] 5468 	dec	hl
   5C8C 7C            [ 4] 5469 	ld	a,h
   5C8D B5            [ 4] 5470 	or	a,l
   5C8E 20 FB         [12] 5471 	jr	NZ,00195$
   5C90                    5472 00171$:
                           5473 ;src/includes/game.h:297: drawCursor(xCursor, yCursor, 0);
   5C90 AF            [ 4] 5474 	xor	a, a
   5C91 F5            [11] 5475 	push	af
   5C92 33            [ 6] 5476 	inc	sp
   5C93 DD 7E FF      [19] 5477 	ld	a,-1 (ix)
   5C96 F5            [11] 5478 	push	af
   5C97 33            [ 6] 5479 	inc	sp
   5C98 C5            [11] 5480 	push	bc
   5C99 33            [ 6] 5481 	inc	sp
   5C9A CD 5E 4D      [17] 5482 	call	_drawCursor
   5C9D F1            [10] 5483 	pop	af
   5C9E 33            [ 6] 5484 	inc	sp
                           5485 ;src/includes/game.h:299: while(!exit);
   5C9F DD 7E F9      [19] 5486 	ld	a,-7 (ix)
   5CA2 B7            [ 4] 5487 	or	a, a
   5CA3 CA 29 59      [10] 5488 	jp	Z,00172$
   5CA6 DD F9         [10] 5489 	ld	sp, ix
   5CA8 DD E1         [14] 5490 	pop	ix
   5CAA C9            [10] 5491 	ret
                           5492 ;src/main.c:17: void drawTrain() 
                           5493 ;	---------------------------------
                           5494 ; Function drawTrain
                           5495 ; ---------------------------------
   5CAB                    5496 _drawTrain::
                           5497 ;src/main.c:55: }
   5CAB C9            [10] 5498 	ret
                           5499 ;src/main.c:58: void main(void)
                           5500 ;	---------------------------------
                           5501 ; Function main
                           5502 ; ---------------------------------
   5CAC                    5503 _main::
   5CAC DD E5         [15] 5504 	push	ix
   5CAE DD 21 00 00   [14] 5505 	ld	ix,#0
   5CB2 DD 39         [15] 5506 	add	ix,sp
   5CB4 21 ED FF      [10] 5507 	ld	hl,#-19
   5CB7 39            [11] 5508 	add	hl,sp
   5CB8 F9            [ 6] 5509 	ld	sp,hl
                           5510 ;src/main.c:63: const char *menuMain[] = { 
   5CB9 21 07 00      [10] 5511 	ld	hl,#0x0007
   5CBC 39            [11] 5512 	add	hl,sp
   5CBD 5D            [ 4] 5513 	ld	e,l
   5CBE 54            [ 4] 5514 	ld	d,h
   5CBF 36 A6         [10] 5515 	ld	(hl),#<(___str_34)
   5CC1 23            [ 6] 5516 	inc	hl
   5CC2 36 5D         [10] 5517 	ld	(hl),#>(___str_34)
   5CC4 6B            [ 4] 5518 	ld	l, e
   5CC5 62            [ 4] 5519 	ld	h, d
   5CC6 23            [ 6] 5520 	inc	hl
   5CC7 23            [ 6] 5521 	inc	hl
   5CC8 01 AF 5D      [10] 5522 	ld	bc,#___str_35+0
   5CCB 71            [ 7] 5523 	ld	(hl),c
   5CCC 23            [ 6] 5524 	inc	hl
   5CCD 70            [ 7] 5525 	ld	(hl),b
   5CCE 21 04 00      [10] 5526 	ld	hl,#0x0004
   5CD1 19            [11] 5527 	add	hl,de
   5CD2 01 B7 5D      [10] 5528 	ld	bc,#___str_36+0
   5CD5 71            [ 7] 5529 	ld	(hl),c
   5CD6 23            [ 6] 5530 	inc	hl
   5CD7 70            [ 7] 5531 	ld	(hl),b
                           5532 ;src/main.c:69: const char *windowCredit[] = { 
   5CD8 21 00 00      [10] 5533 	ld	hl,#0x0000
   5CDB 39            [11] 5534 	add	hl,sp
   5CDC DD 75 FE      [19] 5535 	ld	-2 (ix),l
   5CDF DD 74 FF      [19] 5536 	ld	-1 (ix),h
   5CE2 DD 6E FE      [19] 5537 	ld	l,-2 (ix)
   5CE5 DD 66 FF      [19] 5538 	ld	h,-1 (ix)
   5CE8 36 BC         [10] 5539 	ld	(hl),#<(___str_37)
   5CEA 23            [ 6] 5540 	inc	hl
   5CEB 36 5D         [10] 5541 	ld	(hl),#>(___str_37)
   5CED DD 6E FE      [19] 5542 	ld	l,-2 (ix)
   5CF0 DD 66 FF      [19] 5543 	ld	h,-1 (ix)
   5CF3 23            [ 6] 5544 	inc	hl
   5CF4 23            [ 6] 5545 	inc	hl
   5CF5 01 C5 5D      [10] 5546 	ld	bc,#___str_38+0
   5CF8 71            [ 7] 5547 	ld	(hl),c
   5CF9 23            [ 6] 5548 	inc	hl
   5CFA 70            [ 7] 5549 	ld	(hl),b
   5CFB DD 7E FE      [19] 5550 	ld	a,-2 (ix)
   5CFE C6 04         [ 7] 5551 	add	a, #0x04
   5D00 6F            [ 4] 5552 	ld	l,a
   5D01 DD 7E FF      [19] 5553 	ld	a,-1 (ix)
   5D04 CE 00         [ 7] 5554 	adc	a, #0x00
   5D06 67            [ 4] 5555 	ld	h,a
   5D07 01 C6 5D      [10] 5556 	ld	bc,#___str_39+0
   5D0A 71            [ 7] 5557 	ld	(hl),c
   5D0B 23            [ 6] 5558 	inc	hl
   5D0C 70            [ 7] 5559 	ld	(hl),b
                           5560 ;src/main.c:75: firmware = cpct_disableFirmware();
   5D0D D5            [11] 5561 	push	de
   5D0E CD 32 60      [17] 5562 	call	_cpct_disableFirmware
   5D11 D1            [10] 5563 	pop	de
   5D12 DD 75 FA      [19] 5564 	ld	-6 (ix),l
   5D15 DD 74 FB      [19] 5565 	ld	-5 (ix),h
                           5566 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   5D18 21 13 40      [10] 5567 	ld	hl,#_paletteTrains
   5D1B D5            [11] 5568 	push	de
   5D1C 01 10 00      [10] 5569 	ld	bc,#0x0010
   5D1F C5            [11] 5570 	push	bc
   5D20 E5            [11] 5571 	push	hl
   5D21 CD 3E 5F      [17] 5572 	call	_cpct_fw2hw
   5D24 D1            [10] 5573 	pop	de
                           5574 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   5D25 21 27 40      [10] 5575 	ld	hl,#_paletteMenusM2
   5D28 D5            [11] 5576 	push	de
   5D29 01 02 00      [10] 5577 	ld	bc,#0x0002
   5D2C C5            [11] 5578 	push	bc
   5D2D E5            [11] 5579 	push	hl
   5D2E CD 3E 5F      [17] 5580 	call	_cpct_fw2hw
   5D31 D1            [10] 5581 	pop	de
                           5582 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   5D32 21 23 40      [10] 5583 	ld	hl,#_paletteMenusM1
   5D35 D5            [11] 5584 	push	de
   5D36 01 04 00      [10] 5585 	ld	bc,#0x0004
   5D39 C5            [11] 5586 	push	bc
   5D3A E5            [11] 5587 	push	hl
   5D3B CD 3E 5F      [17] 5588 	call	_cpct_fw2hw
   5D3E D1            [10] 5589 	pop	de
                           5590 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   5D3F 3A 1F 40      [13] 5591 	ld	a, (#_paletteTrains + 12)
   5D42 D5            [11] 5592 	push	de
   5D43 57            [ 4] 5593 	ld	d,a
   5D44 1E 10         [ 7] 5594 	ld	e,#0x10
   5D46 D5            [11] 5595 	push	de
   5D47 CD 09 5E      [17] 5596 	call	_cpct_setPALColour
   5D4A CD BD 46      [17] 5597 	call	_putM2
   5D4D D1            [10] 5598 	pop	de
                           5599 ;src/main.c:85: do{
   5D4E DD 73 FC      [19] 5600 	ld	-4 (ix),e
   5D51 DD 72 FD      [19] 5601 	ld	-3 (ix),d
   5D54                    5602 00105$:
                           5603 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   5D54 DD 5E FC      [19] 5604 	ld	e,-4 (ix)
   5D57 DD 56 FD      [19] 5605 	ld	d,-3 (ix)
   5D5A 3E 03         [ 7] 5606 	ld	a,#0x03
   5D5C F5            [11] 5607 	push	af
   5D5D 33            [ 6] 5608 	inc	sp
   5D5E D5            [11] 5609 	push	de
   5D5F CD C3 4A      [17] 5610 	call	_drawMenu
   5D62 F1            [10] 5611 	pop	af
   5D63 33            [ 6] 5612 	inc	sp
                           5613 ;src/main.c:88: if(menuChoice==0)
   5D64 DD 75 F3      [19] 5614 	ld	-13 (ix), l
   5D67 7D            [ 4] 5615 	ld	a, l
   5D68 B7            [ 4] 5616 	or	a, a
   5D69 20 09         [12] 5617 	jr	NZ,00102$
                           5618 ;src/main.c:90: putM1();
   5D6B CD A9 46      [17] 5619 	call	_putM1
                           5620 ;src/main.c:92: game();
   5D6E CD D7 58      [17] 5621 	call	_game
                           5622 ;src/main.c:94: putM2();
   5D71 CD BD 46      [17] 5623 	call	_putM2
   5D74                    5624 00102$:
                           5625 ;src/main.c:97: if(menuChoice==1)
   5D74 DD 7E F3      [19] 5626 	ld	a,-13 (ix)
   5D77 3D            [ 4] 5627 	dec	a
   5D78 20 10         [12] 5628 	jr	NZ,00106$
                           5629 ;src/main.c:98: drawWindow(windowCredit,3,0);
   5D7A DD 5E FE      [19] 5630 	ld	e,-2 (ix)
   5D7D DD 56 FF      [19] 5631 	ld	d,-1 (ix)
   5D80 21 03 00      [10] 5632 	ld	hl,#0x0003
   5D83 E5            [11] 5633 	push	hl
   5D84 D5            [11] 5634 	push	de
   5D85 CD C1 4B      [17] 5635 	call	_drawWindow
   5D88 F1            [10] 5636 	pop	af
   5D89 F1            [10] 5637 	pop	af
   5D8A                    5638 00106$:
                           5639 ;src/main.c:100: while(menuChoice!=2);
   5D8A DD 7E F3      [19] 5640 	ld	a,-13 (ix)
   5D8D D6 02         [ 7] 5641 	sub	a, #0x02
   5D8F 20 C3         [12] 5642 	jr	NZ,00105$
                           5643 ;src/main.c:102: cpct_setVideoMode(0);
   5D91 AF            [ 4] 5644 	xor	a, a
   5D92 F5            [11] 5645 	push	af
   5D93 33            [ 6] 5646 	inc	sp
   5D94 CD CE 5F      [17] 5647 	call	_cpct_setVideoMode
   5D97 33            [ 6] 5648 	inc	sp
                           5649 ;src/main.c:103: cpct_reenableFirmware(firmware);
   5D98 DD 6E FA      [19] 5650 	ld	l,-6 (ix)
   5D9B DD 66 FB      [19] 5651 	ld	h,-5 (ix)
   5D9E CD 9C 5F      [17] 5652 	call	_cpct_reenableFirmware
   5DA1 DD F9         [10] 5653 	ld	sp, ix
   5DA3 DD E1         [14] 5654 	pop	ix
   5DA5 C9            [10] 5655 	ret
   5DA6                    5656 ___str_34:
   5DA6 4E 65 77 20 67 61  5657 	.ascii "New game"
        6D 65
   5DAE 00                 5658 	.db 0x00
   5DAF                    5659 ___str_35:
   5DAF 43 72 65 64 69 74  5660 	.ascii "Credits"
        73
   5DB6 00                 5661 	.db 0x00
   5DB7                    5662 ___str_36:
   5DB7 51 75 69 74        5663 	.ascii "Quit"
   5DBB 00                 5664 	.db 0x00
   5DBC                    5665 ___str_37:
   5DBC 52 61 69 6C 77 61  5666 	.ascii "Railways"
        79 73
   5DC4 00                 5667 	.db 0x00
   5DC5                    5668 ___str_38:
   5DC5 00                 5669 	.db 0x00
   5DC6                    5670 ___str_39:
   5DC6 54 72 65 77 64 62  5671 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   5DE0 00                 5672 	.db 0x00
                           5673 	.area _CODE
                           5674 	.area _INITIALIZER
   70A9                    5675 __xinit__CURSOR_MODE:
   70A9 00                 5676 	.db #0x00	; 0
                           5677 	.area _CABS (ABS)
