                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module train
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _drawWindow
                             12 	.globl _drawMenu
                             13 	.globl _putM2
                             14 	.globl _putM1
                             15 	.globl _realloc
                             16 	.globl _malloc
                             17 	.globl _trainManagement
                             18 	.globl _confirmBuyTrain
                             19 	.globl _buyTrain
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DATA
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
                             31 ;--------------------------------------------------------
                             32 ; absolute external ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DABS (ABS)
                             35 ;--------------------------------------------------------
                             36 ; global & static initialisations
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _GSINIT
                             40 	.area _GSFINAL
                             41 	.area _GSINIT
                             42 ;--------------------------------------------------------
                             43 ; Home
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _HOME
                             47 ;--------------------------------------------------------
                             48 ; code
                             49 ;--------------------------------------------------------
                             50 	.area _CODE
                             51 ;src/game/train.c:3: void trainManagement()
                             52 ;	---------------------------------
                             53 ; Function trainManagement
                             54 ; ---------------------------------
   5966                      55 _trainManagement::
   5966 DD E5         [15]   56 	push	ix
   5968 DD 21 00 00   [14]   57 	ld	ix,#0
   596C DD 39         [15]   58 	add	ix,sp
   596E F5            [11]   59 	push	af
   596F F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   5970 21 00 00      [10]   62 	ld	hl, #0x0000
   5973 39            [11]   63 	add	hl, sp
   5974 4D            [ 4]   64 	ld	c,l
   5975 44            [ 4]   65 	ld	b,h
   5976 36 9E         [10]   66 	ld	(hl), #<(___str_0)
   5978 23            [ 6]   67 	inc	hl
   5979 36 59         [10]   68 	ld	(hl), #>(___str_0)
   597B 69            [ 4]   69 	ld	l, c
   597C 60            [ 4]   70 	ld	h, b
   597D 23            [ 6]   71 	inc	hl
   597E 23            [ 6]   72 	inc	hl
   597F 11 A8 59      [10]   73 	ld	de, #___str_1+0
   5982 73            [ 7]   74 	ld	(hl), e
   5983 23            [ 6]   75 	inc	hl
   5984 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   5985 3E 02         [ 7]   78 	ld	a, #0x02
   5987 F5            [11]   79 	push	af
   5988 33            [ 6]   80 	inc	sp
   5989 C5            [11]   81 	push	bc
   598A CD 2F 45      [17]   82 	call	_drawMenu
   598D F1            [10]   83 	pop	af
   598E 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   598F 7D            [ 4]   86 	ld	a, l
   5990 B7            [ 4]   87 	or	a, a
   5991 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyTrain();
   5993 CD 96 5C      [17]   90 	call	_buyTrain
   5996                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   5996 CD 33 41      [17]   93 	call	_putM1
   5999 DD F9         [10]   94 	ld	sp, ix
   599B DD E1         [14]   95 	pop	ix
   599D C9            [10]   96 	ret
   599E                      97 ___str_0:
   599E 4E 65 77 20 74 72    98 	.ascii "New train"
        61 69 6E
   59A7 00                   99 	.db 0x00
   59A8                     100 ___str_1:
   59A8 4D 61 6E 61 67 65   101 	.ascii "Manage existing"
        20 65 78 69 73 74
        69 6E 67
   59B7 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyTrain(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyTrain
                            106 ; ---------------------------------
   59B8                     107 _confirmBuyTrain::
   59B8 DD E5         [15]  108 	push	ix
   59BA DD 21 00 00   [14]  109 	ld	ix,#0
   59BE DD 39         [15]  110 	add	ix,sp
   59C0 21 ED FF      [10]  111 	ld	hl, #-19
   59C3 39            [11]  112 	add	hl, sp
   59C4 F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   59C5 CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   59C8 21 01 00      [10]  117 	ld	hl, #0x0001
   59CB 39            [11]  118 	add	hl, sp
   59CC 4D            [ 4]  119 	ld	c,l
   59CD 44            [ 4]  120 	ld	b,h
   59CE 23            [ 6]  121 	inc	hl
   59CF 23            [ 6]  122 	inc	hl
   59D0 11 7D 5B      [10]  123 	ld	de, #___str_2+0
   59D3 73            [ 7]  124 	ld	(hl), e
   59D4 23            [ 6]  125 	inc	hl
   59D5 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   59D6 21 04 00      [10]  128 	ld	hl, #0x0004
   59D9 09            [11]  129 	add	hl,bc
   59DA EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   59DB 21 06 00      [10]  132 	ld	hl, #0x0006
   59DE 09            [11]  133 	add	hl,bc
   59DF DD 75 FA      [19]  134 	ld	-6 (ix), l
   59E2 DD 74 FB      [19]  135 	ld	-5 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   59E5 21 08 00      [10]  137 	ld	hl, #0x0008
   59E8 09            [11]  138 	add	hl,bc
   59E9 DD 75 FE      [19]  139 	ld	-2 (ix), l
   59EC DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   59EF 21 0A 00      [10]  142 	ld	hl, #0x000a
   59F2 09            [11]  143 	add	hl,bc
   59F3 DD 75 FC      [19]  144 	ld	-4 (ix), l
   59F6 DD 74 FD      [19]  145 	ld	-3 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   59F9 DD 7E 04      [19]  147 	ld	a, 4 (ix)
   59FC B7            [ 4]  148 	or	a, a
   59FD 28 18         [12]  149 	jr	Z,00101$
   59FF DD 7E 04      [19]  150 	ld	a, 4 (ix)
   5A02 3D            [ 4]  151 	dec	a
   5A03 28 44         [12]  152 	jr	Z,00102$
   5A05 DD 7E 04      [19]  153 	ld	a, 4 (ix)
   5A08 D6 02         [ 7]  154 	sub	a, #0x02
   5A0A 28 6E         [12]  155 	jr	Z,00103$
   5A0C DD 7E 04      [19]  156 	ld	a, 4 (ix)
   5A0F D6 03         [ 7]  157 	sub	a, #0x03
   5A11 CA AB 5A      [10]  158 	jp	Z,00104$
   5A14 C3 DA 5A      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   5A17                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   5A17 69            [ 4]  163 	ld	l, c
   5A18 60            [ 4]  164 	ld	h, b
   5A19 36 7E         [10]  165 	ld	(hl), #<(___str_3)
   5A1B 23            [ 6]  166 	inc	hl
   5A1C 36 5B         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5A1E 3E 84         [ 7]  169 	ld	a, #<(___str_4)
   5A20 12            [ 7]  170 	ld	(de), a
   5A21 13            [ 6]  171 	inc	de
   5A22 3E 5B         [ 7]  172 	ld	a, #>(___str_4)
   5A24 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5A25 DD 6E FA      [19]  175 	ld	l,-6 (ix)
   5A28 DD 66 FB      [19]  176 	ld	h,-5 (ix)
   5A2B 36 96         [10]  177 	ld	(hl), #<(___str_5)
   5A2D 23            [ 6]  178 	inc	hl
   5A2E 36 5B         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5A30 DD 6E FE      [19]  181 	ld	l,-2 (ix)
   5A33 DD 66 FF      [19]  182 	ld	h,-1 (ix)
   5A36 36 AD         [10]  183 	ld	(hl), #<(___str_6)
   5A38 23            [ 6]  184 	inc	hl
   5A39 36 5B         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5A3B DD 6E FC      [19]  187 	ld	l,-4 (ix)
   5A3E DD 66 FD      [19]  188 	ld	h,-3 (ix)
   5A41 36 C4         [10]  189 	ld	(hl), #<(___str_7)
   5A43 23            [ 6]  190 	inc	hl
   5A44 36 5B         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   5A46 C3 DA 5A      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   5A49                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   5A49 69            [ 4]  197 	ld	l, c
   5A4A 60            [ 4]  198 	ld	h, b
   5A4B 36 D1         [10]  199 	ld	(hl), #<(___str_8)
   5A4D 23            [ 6]  200 	inc	hl
   5A4E 36 5B         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   5A50 3E 84         [ 7]  203 	ld	a, #<(___str_4)
   5A52 12            [ 7]  204 	ld	(de), a
   5A53 13            [ 6]  205 	inc	de
   5A54 3E 5B         [ 7]  206 	ld	a, #>(___str_4)
   5A56 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   5A57 DD 6E FA      [19]  209 	ld	l,-6 (ix)
   5A5A DD 66 FB      [19]  210 	ld	h,-5 (ix)
   5A5D 36 D8         [10]  211 	ld	(hl), #<(___str_9)
   5A5F 23            [ 6]  212 	inc	hl
   5A60 36 5B         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   5A62 DD 6E FE      [19]  215 	ld	l,-2 (ix)
   5A65 DD 66 FF      [19]  216 	ld	h,-1 (ix)
   5A68 36 EF         [10]  217 	ld	(hl), #<(___str_10)
   5A6A 23            [ 6]  218 	inc	hl
   5A6B 36 5B         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   5A6D DD 6E FC      [19]  221 	ld	l,-4 (ix)
   5A70 DD 66 FD      [19]  222 	ld	h,-3 (ix)
   5A73 36 06         [10]  223 	ld	(hl), #<(___str_11)
   5A75 23            [ 6]  224 	inc	hl
   5A76 36 5C         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   5A78 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   5A7A                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   5A7A 69            [ 4]  231 	ld	l, c
   5A7B 60            [ 4]  232 	ld	h, b
   5A7C 36 12         [10]  233 	ld	(hl), #<(___str_12)
   5A7E 23            [ 6]  234 	inc	hl
   5A7F 36 5C         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   5A81 3E 84         [ 7]  237 	ld	a, #<(___str_4)
   5A83 12            [ 7]  238 	ld	(de), a
   5A84 13            [ 6]  239 	inc	de
   5A85 3E 5B         [ 7]  240 	ld	a, #>(___str_4)
   5A87 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   5A88 DD 6E FA      [19]  243 	ld	l,-6 (ix)
   5A8B DD 66 FB      [19]  244 	ld	h,-5 (ix)
   5A8E 36 19         [10]  245 	ld	(hl), #<(___str_13)
   5A90 23            [ 6]  246 	inc	hl
   5A91 36 5C         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   5A93 DD 6E FE      [19]  249 	ld	l,-2 (ix)
   5A96 DD 66 FF      [19]  250 	ld	h,-1 (ix)
   5A99 36 30         [10]  251 	ld	(hl), #<(___str_14)
   5A9B 23            [ 6]  252 	inc	hl
   5A9C 36 5C         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5A9E DD 6E FC      [19]  255 	ld	l,-4 (ix)
   5AA1 DD 66 FD      [19]  256 	ld	h,-3 (ix)
   5AA4 36 47         [10]  257 	ld	(hl), #<(___str_15)
   5AA6 23            [ 6]  258 	inc	hl
   5AA7 36 5C         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5AA9 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5AAB                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5AAB 69            [ 4]  265 	ld	l, c
   5AAC 60            [ 4]  266 	ld	h, b
   5AAD 36 54         [10]  267 	ld	(hl), #<(___str_16)
   5AAF 23            [ 6]  268 	inc	hl
   5AB0 36 5C         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   5AB2 3E 84         [ 7]  271 	ld	a, #<(___str_4)
   5AB4 12            [ 7]  272 	ld	(de), a
   5AB5 13            [ 6]  273 	inc	de
   5AB6 3E 5B         [ 7]  274 	ld	a, #>(___str_4)
   5AB8 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5AB9 DD 6E FA      [19]  277 	ld	l,-6 (ix)
   5ABC DD 66 FB      [19]  278 	ld	h,-5 (ix)
   5ABF 36 5A         [10]  279 	ld	(hl), #<(___str_17)
   5AC1 23            [ 6]  280 	inc	hl
   5AC2 36 5C         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   5AC4 DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5AC7 DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5ACA 36 71         [10]  285 	ld	(hl), #<(___str_18)
   5ACC 23            [ 6]  286 	inc	hl
   5ACD 36 5C         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   5ACF DD 6E FC      [19]  289 	ld	l,-4 (ix)
   5AD2 DD 66 FD      [19]  290 	ld	h,-3 (ix)
   5AD5 36 89         [10]  291 	ld	(hl), #<(___str_19)
   5AD7 23            [ 6]  292 	inc	hl
   5AD8 36 5C         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5ADA                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5ADA 21 06 01      [10]  297 	ld	hl, #0x0106
   5ADD E5            [11]  298 	push	hl
   5ADE C5            [11]  299 	push	bc
   5ADF CD 2D 46      [17]  300 	call	_drawWindow
   5AE2 F1            [10]  301 	pop	af
   5AE3 F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   5AE4 DD 75 ED      [19]  304 	ld	-19 (ix), l
   5AE7 7D            [ 4]  305 	ld	a, l
   5AE8 3D            [ 4]  306 	dec	a
   5AE9 C2 75 5B      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5AEC 3A 22 83      [13]  309 	ld	a,(#_nbTrainList + 0)
   5AEF B7            [ 4]  310 	or	a, a
   5AF0 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   5AF2 21 07 00      [10]  313 	ld	hl, #0x0007
   5AF5 E5            [11]  314 	push	hl
   5AF6 CD 37 63      [17]  315 	call	_malloc
   5AF9 F1            [10]  316 	pop	af
   5AFA 22 1D 83      [16]  317 	ld	(_trainList), hl
   5AFD 18 19         [12]  318 	jr	00108$
   5AFF                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   5AFF 21 22 83      [10]  321 	ld	hl,#_nbTrainList + 0
   5B02 4E            [ 7]  322 	ld	c, (hl)
   5B03 06 00         [ 7]  323 	ld	b, #0x00
   5B05 03            [ 6]  324 	inc	bc
   5B06 69            [ 4]  325 	ld	l, c
   5B07 60            [ 4]  326 	ld	h, b
   5B08 29            [11]  327 	add	hl, hl
   5B09 09            [11]  328 	add	hl, bc
   5B0A 29            [11]  329 	add	hl, hl
   5B0B 09            [11]  330 	add	hl, bc
   5B0C 4D            [ 4]  331 	ld	c, l
   5B0D 44            [ 4]  332 	ld	b, h
   5B0E 2A 1D 83      [16]  333 	ld	hl, (_trainList)
   5B11 C5            [11]  334 	push	bc
   5B12 E5            [11]  335 	push	hl
   5B13 CD 95 5D      [17]  336 	call	_realloc
   5B16 F1            [10]  337 	pop	af
   5B17 F1            [10]  338 	pop	af
   5B18                     339 00108$:
                            340 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   5B18 ED 4B 22 83   [20]  341 	ld	bc, (_nbTrainList)
   5B1C 06 00         [ 7]  342 	ld	b, #0x00
   5B1E 69            [ 4]  343 	ld	l, c
   5B1F 60            [ 4]  344 	ld	h, b
   5B20 29            [11]  345 	add	hl, hl
   5B21 09            [11]  346 	add	hl, bc
   5B22 29            [11]  347 	add	hl, hl
   5B23 09            [11]  348 	add	hl, bc
   5B24 4D            [ 4]  349 	ld	c, l
   5B25 44            [ 4]  350 	ld	b, h
   5B26 2A 1D 83      [16]  351 	ld	hl, (_trainList)
   5B29 09            [11]  352 	add	hl, bc
   5B2A DD 7E 04      [19]  353 	ld	a, 4 (ix)
   5B2D 77            [ 7]  354 	ld	(hl), a
                            355 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   5B2E ED 4B 22 83   [20]  356 	ld	bc, (_nbTrainList)
   5B32 06 00         [ 7]  357 	ld	b, #0x00
   5B34 69            [ 4]  358 	ld	l, c
   5B35 60            [ 4]  359 	ld	h, b
   5B36 29            [11]  360 	add	hl, hl
   5B37 09            [11]  361 	add	hl, bc
   5B38 29            [11]  362 	add	hl, hl
   5B39 09            [11]  363 	add	hl, bc
   5B3A 4D            [ 4]  364 	ld	c, l
   5B3B 44            [ 4]  365 	ld	b, h
   5B3C 2A 1D 83      [16]  366 	ld	hl, (_trainList)
   5B3F 09            [11]  367 	add	hl, bc
   5B40 23            [ 6]  368 	inc	hl
   5B41 36 00         [10]  369 	ld	(hl), #0x00
                            370 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   5B43 ED 4B 22 83   [20]  371 	ld	bc, (_nbTrainList)
   5B47 06 00         [ 7]  372 	ld	b, #0x00
   5B49 69            [ 4]  373 	ld	l, c
   5B4A 60            [ 4]  374 	ld	h, b
   5B4B 29            [11]  375 	add	hl, hl
   5B4C 09            [11]  376 	add	hl, bc
   5B4D 29            [11]  377 	add	hl, hl
   5B4E 09            [11]  378 	add	hl, bc
   5B4F 4D            [ 4]  379 	ld	c, l
   5B50 44            [ 4]  380 	ld	b, h
   5B51 2A 1D 83      [16]  381 	ld	hl, (_trainList)
   5B54 09            [11]  382 	add	hl, bc
   5B55 23            [ 6]  383 	inc	hl
   5B56 23            [ 6]  384 	inc	hl
   5B57 36 00         [10]  385 	ld	(hl), #0x00
                            386 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5B59 ED 4B 22 83   [20]  387 	ld	bc, (_nbTrainList)
   5B5D 06 00         [ 7]  388 	ld	b, #0x00
   5B5F 69            [ 4]  389 	ld	l, c
   5B60 60            [ 4]  390 	ld	h, b
   5B61 29            [11]  391 	add	hl, hl
   5B62 09            [11]  392 	add	hl, bc
   5B63 29            [11]  393 	add	hl, hl
   5B64 09            [11]  394 	add	hl, bc
   5B65 4D            [ 4]  395 	ld	c, l
   5B66 44            [ 4]  396 	ld	b, h
   5B67 2A 1D 83      [16]  397 	ld	hl, (_trainList)
   5B6A 09            [11]  398 	add	hl, bc
   5B6B 23            [ 6]  399 	inc	hl
   5B6C 23            [ 6]  400 	inc	hl
   5B6D 23            [ 6]  401 	inc	hl
   5B6E 36 00         [10]  402 	ld	(hl), #0x00
                            403 ;src/game/train.c:81: CURSOR_MODE = PUTTRAIN;
   5B70 21 21 83      [10]  404 	ld	hl,#_CURSOR_MODE + 0
   5B73 36 01         [10]  405 	ld	(hl), #0x01
   5B75                     406 00110$:
                            407 ;src/game/train.c:84: return returnChoice;
   5B75 DD 6E ED      [19]  408 	ld	l, -19 (ix)
   5B78 DD F9         [10]  409 	ld	sp, ix
   5B7A DD E1         [14]  410 	pop	ix
   5B7C C9            [10]  411 	ret
   5B7D                     412 ___str_2:
   5B7D 00                  413 	.db 0x00
   5B7E                     414 ___str_3:
   5B7E 31 33 30 20 42      415 	.ascii "130 B"
   5B83 00                  416 	.db 0x00
   5B84                     417 ___str_4:
   5B84 50 72 6F 70 75 6C   418 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5B95 00                  419 	.db 0x00
   5B96                     420 ___str_5:
   5B96 45 6E 74 72 79 20   421 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5BAC 00                  422 	.db 0x00
   5BAD                     423 ___str_6:
   5BAD 4D 61 78 69 6D 75   424 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5BC3 00                  425 	.db 0x00
   5BC4                     426 ___str_7:
   5BC4 50 72 69 63 65 3A   427 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5BD0 00                  428 	.db 0x00
   5BD1                     429 ___str_8:
   5BD1 31 34 31 20 54 41   430 	.ascii "141 TA"
   5BD7 00                  431 	.db 0x00
   5BD8                     432 ___str_9:
   5BD8 45 6E 74 72 79 20   433 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5BEE 00                  434 	.db 0x00
   5BEF                     435 ___str_10:
   5BEF 4D 61 78 69 6D 75   436 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5C05 00                  437 	.db 0x00
   5C06                     438 ___str_11:
   5C06 50 72 69 63 65 3A   439 	.ascii "Price: 900$"
        20 39 30 30 24
   5C11 00                  440 	.db 0x00
   5C12                     441 ___str_12:
   5C12 32 34 32 20 43 54   442 	.ascii "242 CT"
   5C18 00                  443 	.db 0x00
   5C19                     444 ___str_13:
   5C19 45 6E 74 72 79 20   445 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5C2F 00                  446 	.db 0x00
   5C30                     447 ___str_14:
   5C30 4D 61 78 69 6D 75   448 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5C46 00                  449 	.db 0x00
   5C47                     450 ___str_15:
   5C47 50 72 69 63 65 3A   451 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5C53 00                  452 	.db 0x00
   5C54                     453 ___str_16:
   5C54 31 34 31 20 50      454 	.ascii "141 P"
   5C59 00                  455 	.db 0x00
   5C5A                     456 ___str_17:
   5C5A 45 6E 74 72 79 20   457 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5C70 00                  458 	.db 0x00
   5C71                     459 ___str_18:
   5C71 4D 61 78 69 6D 75   460 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5C88 00                  461 	.db 0x00
   5C89                     462 ___str_19:
   5C89 50 72 69 63 65 3A   463 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5C95 00                  464 	.db 0x00
                            465 ;src/game/train.c:87: void buyTrain()
                            466 ;	---------------------------------
                            467 ; Function buyTrain
                            468 ; ---------------------------------
   5C96                     469 _buyTrain::
   5C96 DD E5         [15]  470 	push	ix
   5C98 DD 21 00 00   [14]  471 	ld	ix,#0
   5C9C DD 39         [15]  472 	add	ix,sp
   5C9E 21 E8 FF      [10]  473 	ld	hl, #-24
   5CA1 39            [11]  474 	add	hl, sp
   5CA2 F9            [ 6]  475 	ld	sp, hl
                            476 ;src/game/train.c:89: const char *txtMenuLoco[] = { 
   5CA3 21 00 00      [10]  477 	ld	hl, #0x0000
   5CA6 39            [11]  478 	add	hl, sp
   5CA7 4D            [ 4]  479 	ld	c,l
   5CA8 44            [ 4]  480 	ld	b,h
   5CA9 36 31         [10]  481 	ld	(hl), #<(___str_20)
   5CAB 23            [ 6]  482 	inc	hl
   5CAC 36 5D         [10]  483 	ld	(hl), #>(___str_20)
   5CAE 69            [ 4]  484 	ld	l, c
   5CAF 60            [ 4]  485 	ld	h, b
   5CB0 23            [ 6]  486 	inc	hl
   5CB1 23            [ 6]  487 	inc	hl
   5CB2 11 37 5D      [10]  488 	ld	de, #___str_21+0
   5CB5 73            [ 7]  489 	ld	(hl), e
   5CB6 23            [ 6]  490 	inc	hl
   5CB7 72            [ 7]  491 	ld	(hl), d
   5CB8 21 04 00      [10]  492 	ld	hl, #0x0004
   5CBB 09            [11]  493 	add	hl, bc
   5CBC 11 3E 5D      [10]  494 	ld	de, #___str_22+0
   5CBF 73            [ 7]  495 	ld	(hl), e
   5CC0 23            [ 6]  496 	inc	hl
   5CC1 72            [ 7]  497 	ld	(hl), d
   5CC2 21 06 00      [10]  498 	ld	hl, #0x0006
   5CC5 09            [11]  499 	add	hl, bc
   5CC6 11 45 5D      [10]  500 	ld	de, #___str_23+0
   5CC9 73            [ 7]  501 	ld	(hl), e
   5CCA 23            [ 6]  502 	inc	hl
   5CCB 72            [ 7]  503 	ld	(hl), d
   5CCC 21 08 00      [10]  504 	ld	hl, #0x0008
   5CCF 09            [11]  505 	add	hl, bc
   5CD0 11 4B 5D      [10]  506 	ld	de, #___str_24+0
   5CD3 73            [ 7]  507 	ld	(hl), e
   5CD4 23            [ 6]  508 	inc	hl
   5CD5 72            [ 7]  509 	ld	(hl), d
   5CD6 21 0A 00      [10]  510 	ld	hl, #0x000a
   5CD9 09            [11]  511 	add	hl, bc
   5CDA 11 54 5D      [10]  512 	ld	de, #___str_25+0
   5CDD 73            [ 7]  513 	ld	(hl), e
   5CDE 23            [ 6]  514 	inc	hl
   5CDF 72            [ 7]  515 	ld	(hl), d
   5CE0 21 0C 00      [10]  516 	ld	hl, #0x000c
   5CE3 09            [11]  517 	add	hl, bc
   5CE4 11 5E 5D      [10]  518 	ld	de, #___str_26+0
   5CE7 73            [ 7]  519 	ld	(hl), e
   5CE8 23            [ 6]  520 	inc	hl
   5CE9 72            [ 7]  521 	ld	(hl), d
   5CEA 21 0E 00      [10]  522 	ld	hl, #0x000e
   5CED 09            [11]  523 	add	hl, bc
   5CEE 11 67 5D      [10]  524 	ld	de, #___str_27+0
   5CF1 73            [ 7]  525 	ld	(hl), e
   5CF2 23            [ 6]  526 	inc	hl
   5CF3 72            [ 7]  527 	ld	(hl), d
   5CF4 21 10 00      [10]  528 	ld	hl, #0x0010
   5CF7 09            [11]  529 	add	hl, bc
   5CF8 11 70 5D      [10]  530 	ld	de, #___str_28+0
   5CFB 73            [ 7]  531 	ld	(hl), e
   5CFC 23            [ 6]  532 	inc	hl
   5CFD 72            [ 7]  533 	ld	(hl), d
   5CFE 21 12 00      [10]  534 	ld	hl, #0x0012
   5D01 09            [11]  535 	add	hl, bc
   5D02 11 77 5D      [10]  536 	ld	de, #___str_29+0
   5D05 73            [ 7]  537 	ld	(hl), e
   5D06 23            [ 6]  538 	inc	hl
   5D07 72            [ 7]  539 	ld	(hl), d
   5D08 21 14 00      [10]  540 	ld	hl, #0x0014
   5D0B 09            [11]  541 	add	hl, bc
   5D0C 11 84 5D      [10]  542 	ld	de, #___str_30+0
   5D0F 73            [ 7]  543 	ld	(hl), e
   5D10 23            [ 6]  544 	inc	hl
   5D11 72            [ 7]  545 	ld	(hl), d
   5D12 21 16 00      [10]  546 	ld	hl, #0x0016
   5D15 09            [11]  547 	add	hl, bc
   5D16 11 8D 5D      [10]  548 	ld	de, #___str_31+0
   5D19 73            [ 7]  549 	ld	(hl), e
   5D1A 23            [ 6]  550 	inc	hl
   5D1B 72            [ 7]  551 	ld	(hl), d
                            552 ;src/game/train.c:104: confirmBuyTrain( drawMenu(txtMenuLoco,12) );
   5D1C 3E 0C         [ 7]  553 	ld	a, #0x0c
   5D1E F5            [11]  554 	push	af
   5D1F 33            [ 6]  555 	inc	sp
   5D20 C5            [11]  556 	push	bc
   5D21 CD 2F 45      [17]  557 	call	_drawMenu
   5D24 F1            [10]  558 	pop	af
   5D25 33            [ 6]  559 	inc	sp
   5D26 45            [ 4]  560 	ld	b, l
   5D27 C5            [11]  561 	push	bc
   5D28 33            [ 6]  562 	inc	sp
   5D29 CD B8 59      [17]  563 	call	_confirmBuyTrain
   5D2C DD F9         [10]  564 	ld	sp,ix
   5D2E DD E1         [14]  565 	pop	ix
   5D30 C9            [10]  566 	ret
   5D31                     567 ___str_20:
   5D31 31 33 30 20 42      568 	.ascii "130 B"
   5D36 00                  569 	.db 0x00
   5D37                     570 ___str_21:
   5D37 31 34 31 20 54 41   571 	.ascii "141 TA"
   5D3D 00                  572 	.db 0x00
   5D3E                     573 ___str_22:
   5D3E 32 34 32 20 43 54   574 	.ascii "242 CT"
   5D44 00                  575 	.db 0x00
   5D45                     576 ___str_23:
   5D45 31 34 31 20 50      577 	.ascii "141 P"
   5D4A 00                  578 	.db 0x00
   5D4B                     579 ___str_24:
   5D4B 42 42 20 36 33 30   580 	.ascii "BB 63000"
        30 30
   5D53 00                  581 	.db 0x00
   5D54                     582 ___str_25:
   5D54 52 65 20 34 2F 34   583 	.ascii "Re 4/4 II"
        20 49 49
   5D5D 00                  584 	.db 0x00
   5D5E                     585 ___str_26:
   5D5E 42 42 20 36 37 30   586 	.ascii "BB 67000"
        30 30
   5D66 00                  587 	.db 0x00
   5D67                     588 ___str_27:
   5D67 42 42 20 31 35 30   589 	.ascii "BB 15000"
        30 30
   5D6F 00                  590 	.db 0x00
   5D70                     591 ___str_28:
   5D70 52 65 20 34 36 30   592 	.ascii "Re 460"
   5D76 00                  593 	.db 0x00
   5D77                     594 ___str_29:
   5D77 44 42 20 43 6C 61   595 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5D83 00                  596 	.db 0x00
   5D84                     597 ___str_30:
   5D84 42 42 20 32 37 30   598 	.ascii "BB 27000"
        30 30
   5D8C 00                  599 	.db 0x00
   5D8D                     600 ___str_31:
   5D8D 45 53 20 36 34 46   601 	.ascii "ES 64F4"
        34
   5D94 00                  602 	.db 0x00
                            603 	.area _CODE
                            604 	.area _INITIALIZER
                            605 	.area _CABS (ABS)
