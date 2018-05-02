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
   58C9                      55 _trainManagement::
   58C9 DD E5         [15]   56 	push	ix
   58CB DD 21 00 00   [14]   57 	ld	ix,#0
   58CF DD 39         [15]   58 	add	ix,sp
   58D1 F5            [11]   59 	push	af
   58D2 F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   58D3 21 00 00      [10]   62 	ld	hl, #0x0000
   58D6 39            [11]   63 	add	hl, sp
   58D7 4D            [ 4]   64 	ld	c,l
   58D8 44            [ 4]   65 	ld	b,h
   58D9 36 01         [10]   66 	ld	(hl), #<(___str_0)
   58DB 23            [ 6]   67 	inc	hl
   58DC 36 59         [10]   68 	ld	(hl), #>(___str_0)
   58DE 69            [ 4]   69 	ld	l, c
   58DF 60            [ 4]   70 	ld	h, b
   58E0 23            [ 6]   71 	inc	hl
   58E1 23            [ 6]   72 	inc	hl
   58E2 11 0B 59      [10]   73 	ld	de, #___str_1+0
   58E5 73            [ 7]   74 	ld	(hl), e
   58E6 23            [ 6]   75 	inc	hl
   58E7 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   58E8 3E 02         [ 7]   78 	ld	a, #0x02
   58EA F5            [11]   79 	push	af
   58EB 33            [ 6]   80 	inc	sp
   58EC C5            [11]   81 	push	bc
   58ED CD 2F 45      [17]   82 	call	_drawMenu
   58F0 F1            [10]   83 	pop	af
   58F1 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   58F2 7D            [ 4]   86 	ld	a, l
   58F3 B7            [ 4]   87 	or	a, a
   58F4 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyTrain();
   58F6 CD F9 5B      [17]   90 	call	_buyTrain
   58F9                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   58F9 CD 33 41      [17]   93 	call	_putM1
   58FC DD F9         [10]   94 	ld	sp, ix
   58FE DD E1         [14]   95 	pop	ix
   5900 C9            [10]   96 	ret
   5901                      97 ___str_0:
   5901 4E 65 77 20 74 72    98 	.ascii "New train"
        61 69 6E
   590A 00                   99 	.db 0x00
   590B                     100 ___str_1:
   590B 4D 61 6E 61 67 65   101 	.ascii "Manage existing"
        20 65 78 69 73 74
        69 6E 67
   591A 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyTrain(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyTrain
                            106 ; ---------------------------------
   591B                     107 _confirmBuyTrain::
   591B DD E5         [15]  108 	push	ix
   591D DD 21 00 00   [14]  109 	ld	ix,#0
   5921 DD 39         [15]  110 	add	ix,sp
   5923 21 ED FF      [10]  111 	ld	hl, #-19
   5926 39            [11]  112 	add	hl, sp
   5927 F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   5928 CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   592B 21 01 00      [10]  117 	ld	hl, #0x0001
   592E 39            [11]  118 	add	hl, sp
   592F 4D            [ 4]  119 	ld	c,l
   5930 44            [ 4]  120 	ld	b,h
   5931 23            [ 6]  121 	inc	hl
   5932 23            [ 6]  122 	inc	hl
   5933 11 E0 5A      [10]  123 	ld	de, #___str_2+0
   5936 73            [ 7]  124 	ld	(hl), e
   5937 23            [ 6]  125 	inc	hl
   5938 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5939 21 04 00      [10]  128 	ld	hl, #0x0004
   593C 09            [11]  129 	add	hl,bc
   593D EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   593E 21 06 00      [10]  132 	ld	hl, #0x0006
   5941 09            [11]  133 	add	hl,bc
   5942 DD 75 FA      [19]  134 	ld	-6 (ix), l
   5945 DD 74 FB      [19]  135 	ld	-5 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5948 21 08 00      [10]  137 	ld	hl, #0x0008
   594B 09            [11]  138 	add	hl,bc
   594C DD 75 FE      [19]  139 	ld	-2 (ix), l
   594F DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5952 21 0A 00      [10]  142 	ld	hl, #0x000a
   5955 09            [11]  143 	add	hl,bc
   5956 DD 75 FC      [19]  144 	ld	-4 (ix), l
   5959 DD 74 FD      [19]  145 	ld	-3 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   595C DD 7E 04      [19]  147 	ld	a, 4 (ix)
   595F B7            [ 4]  148 	or	a, a
   5960 28 18         [12]  149 	jr	Z,00101$
   5962 DD 7E 04      [19]  150 	ld	a, 4 (ix)
   5965 3D            [ 4]  151 	dec	a
   5966 28 44         [12]  152 	jr	Z,00102$
   5968 DD 7E 04      [19]  153 	ld	a, 4 (ix)
   596B D6 02         [ 7]  154 	sub	a, #0x02
   596D 28 6E         [12]  155 	jr	Z,00103$
   596F DD 7E 04      [19]  156 	ld	a, 4 (ix)
   5972 D6 03         [ 7]  157 	sub	a, #0x03
   5974 CA 0E 5A      [10]  158 	jp	Z,00104$
   5977 C3 3D 5A      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   597A                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   597A 69            [ 4]  163 	ld	l, c
   597B 60            [ 4]  164 	ld	h, b
   597C 36 E1         [10]  165 	ld	(hl), #<(___str_3)
   597E 23            [ 6]  166 	inc	hl
   597F 36 5A         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5981 3E E7         [ 7]  169 	ld	a, #<(___str_4)
   5983 12            [ 7]  170 	ld	(de), a
   5984 13            [ 6]  171 	inc	de
   5985 3E 5A         [ 7]  172 	ld	a, #>(___str_4)
   5987 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5988 DD 6E FA      [19]  175 	ld	l,-6 (ix)
   598B DD 66 FB      [19]  176 	ld	h,-5 (ix)
   598E 36 F9         [10]  177 	ld	(hl), #<(___str_5)
   5990 23            [ 6]  178 	inc	hl
   5991 36 5A         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5993 DD 6E FE      [19]  181 	ld	l,-2 (ix)
   5996 DD 66 FF      [19]  182 	ld	h,-1 (ix)
   5999 36 10         [10]  183 	ld	(hl), #<(___str_6)
   599B 23            [ 6]  184 	inc	hl
   599C 36 5B         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   599E DD 6E FC      [19]  187 	ld	l,-4 (ix)
   59A1 DD 66 FD      [19]  188 	ld	h,-3 (ix)
   59A4 36 27         [10]  189 	ld	(hl), #<(___str_7)
   59A6 23            [ 6]  190 	inc	hl
   59A7 36 5B         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   59A9 C3 3D 5A      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   59AC                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   59AC 69            [ 4]  197 	ld	l, c
   59AD 60            [ 4]  198 	ld	h, b
   59AE 36 34         [10]  199 	ld	(hl), #<(___str_8)
   59B0 23            [ 6]  200 	inc	hl
   59B1 36 5B         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   59B3 3E E7         [ 7]  203 	ld	a, #<(___str_4)
   59B5 12            [ 7]  204 	ld	(de), a
   59B6 13            [ 6]  205 	inc	de
   59B7 3E 5A         [ 7]  206 	ld	a, #>(___str_4)
   59B9 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   59BA DD 6E FA      [19]  209 	ld	l,-6 (ix)
   59BD DD 66 FB      [19]  210 	ld	h,-5 (ix)
   59C0 36 3B         [10]  211 	ld	(hl), #<(___str_9)
   59C2 23            [ 6]  212 	inc	hl
   59C3 36 5B         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   59C5 DD 6E FE      [19]  215 	ld	l,-2 (ix)
   59C8 DD 66 FF      [19]  216 	ld	h,-1 (ix)
   59CB 36 52         [10]  217 	ld	(hl), #<(___str_10)
   59CD 23            [ 6]  218 	inc	hl
   59CE 36 5B         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   59D0 DD 6E FC      [19]  221 	ld	l,-4 (ix)
   59D3 DD 66 FD      [19]  222 	ld	h,-3 (ix)
   59D6 36 69         [10]  223 	ld	(hl), #<(___str_11)
   59D8 23            [ 6]  224 	inc	hl
   59D9 36 5B         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   59DB 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   59DD                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   59DD 69            [ 4]  231 	ld	l, c
   59DE 60            [ 4]  232 	ld	h, b
   59DF 36 75         [10]  233 	ld	(hl), #<(___str_12)
   59E1 23            [ 6]  234 	inc	hl
   59E2 36 5B         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   59E4 3E E7         [ 7]  237 	ld	a, #<(___str_4)
   59E6 12            [ 7]  238 	ld	(de), a
   59E7 13            [ 6]  239 	inc	de
   59E8 3E 5A         [ 7]  240 	ld	a, #>(___str_4)
   59EA 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   59EB DD 6E FA      [19]  243 	ld	l,-6 (ix)
   59EE DD 66 FB      [19]  244 	ld	h,-5 (ix)
   59F1 36 7C         [10]  245 	ld	(hl), #<(___str_13)
   59F3 23            [ 6]  246 	inc	hl
   59F4 36 5B         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   59F6 DD 6E FE      [19]  249 	ld	l,-2 (ix)
   59F9 DD 66 FF      [19]  250 	ld	h,-1 (ix)
   59FC 36 93         [10]  251 	ld	(hl), #<(___str_14)
   59FE 23            [ 6]  252 	inc	hl
   59FF 36 5B         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5A01 DD 6E FC      [19]  255 	ld	l,-4 (ix)
   5A04 DD 66 FD      [19]  256 	ld	h,-3 (ix)
   5A07 36 AA         [10]  257 	ld	(hl), #<(___str_15)
   5A09 23            [ 6]  258 	inc	hl
   5A0A 36 5B         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5A0C 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5A0E                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5A0E 69            [ 4]  265 	ld	l, c
   5A0F 60            [ 4]  266 	ld	h, b
   5A10 36 B7         [10]  267 	ld	(hl), #<(___str_16)
   5A12 23            [ 6]  268 	inc	hl
   5A13 36 5B         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   5A15 3E E7         [ 7]  271 	ld	a, #<(___str_4)
   5A17 12            [ 7]  272 	ld	(de), a
   5A18 13            [ 6]  273 	inc	de
   5A19 3E 5A         [ 7]  274 	ld	a, #>(___str_4)
   5A1B 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5A1C DD 6E FA      [19]  277 	ld	l,-6 (ix)
   5A1F DD 66 FB      [19]  278 	ld	h,-5 (ix)
   5A22 36 BD         [10]  279 	ld	(hl), #<(___str_17)
   5A24 23            [ 6]  280 	inc	hl
   5A25 36 5B         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   5A27 DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5A2A DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5A2D 36 D4         [10]  285 	ld	(hl), #<(___str_18)
   5A2F 23            [ 6]  286 	inc	hl
   5A30 36 5B         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   5A32 DD 6E FC      [19]  289 	ld	l,-4 (ix)
   5A35 DD 66 FD      [19]  290 	ld	h,-3 (ix)
   5A38 36 EC         [10]  291 	ld	(hl), #<(___str_19)
   5A3A 23            [ 6]  292 	inc	hl
   5A3B 36 5B         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5A3D                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5A3D 21 06 01      [10]  297 	ld	hl, #0x0106
   5A40 E5            [11]  298 	push	hl
   5A41 C5            [11]  299 	push	bc
   5A42 CD 2D 46      [17]  300 	call	_drawWindow
   5A45 F1            [10]  301 	pop	af
   5A46 F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   5A47 DD 75 ED      [19]  304 	ld	-19 (ix), l
   5A4A 7D            [ 4]  305 	ld	a, l
   5A4B 3D            [ 4]  306 	dec	a
   5A4C C2 D8 5A      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5A4F 3A 2A 76      [13]  309 	ld	a,(#_nbTrainList + 0)
   5A52 B7            [ 4]  310 	or	a, a
   5A53 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   5A55 21 07 00      [10]  313 	ld	hl, #0x0007
   5A58 E5            [11]  314 	push	hl
   5A59 CD F1 61      [17]  315 	call	_malloc
   5A5C F1            [10]  316 	pop	af
   5A5D 22 25 76      [16]  317 	ld	(_trainList), hl
   5A60 18 19         [12]  318 	jr	00108$
   5A62                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   5A62 21 2A 76      [10]  321 	ld	hl,#_nbTrainList + 0
   5A65 4E            [ 7]  322 	ld	c, (hl)
   5A66 06 00         [ 7]  323 	ld	b, #0x00
   5A68 03            [ 6]  324 	inc	bc
   5A69 69            [ 4]  325 	ld	l, c
   5A6A 60            [ 4]  326 	ld	h, b
   5A6B 29            [11]  327 	add	hl, hl
   5A6C 09            [11]  328 	add	hl, bc
   5A6D 29            [11]  329 	add	hl, hl
   5A6E 09            [11]  330 	add	hl, bc
   5A6F 4D            [ 4]  331 	ld	c, l
   5A70 44            [ 4]  332 	ld	b, h
   5A71 2A 25 76      [16]  333 	ld	hl, (_trainList)
   5A74 C5            [11]  334 	push	bc
   5A75 E5            [11]  335 	push	hl
   5A76 CD F8 5C      [17]  336 	call	_realloc
   5A79 F1            [10]  337 	pop	af
   5A7A F1            [10]  338 	pop	af
   5A7B                     339 00108$:
                            340 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   5A7B ED 4B 2A 76   [20]  341 	ld	bc, (_nbTrainList)
   5A7F 06 00         [ 7]  342 	ld	b, #0x00
   5A81 69            [ 4]  343 	ld	l, c
   5A82 60            [ 4]  344 	ld	h, b
   5A83 29            [11]  345 	add	hl, hl
   5A84 09            [11]  346 	add	hl, bc
   5A85 29            [11]  347 	add	hl, hl
   5A86 09            [11]  348 	add	hl, bc
   5A87 4D            [ 4]  349 	ld	c, l
   5A88 44            [ 4]  350 	ld	b, h
   5A89 2A 25 76      [16]  351 	ld	hl, (_trainList)
   5A8C 09            [11]  352 	add	hl, bc
   5A8D DD 7E 04      [19]  353 	ld	a, 4 (ix)
   5A90 77            [ 7]  354 	ld	(hl), a
                            355 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   5A91 ED 4B 2A 76   [20]  356 	ld	bc, (_nbTrainList)
   5A95 06 00         [ 7]  357 	ld	b, #0x00
   5A97 69            [ 4]  358 	ld	l, c
   5A98 60            [ 4]  359 	ld	h, b
   5A99 29            [11]  360 	add	hl, hl
   5A9A 09            [11]  361 	add	hl, bc
   5A9B 29            [11]  362 	add	hl, hl
   5A9C 09            [11]  363 	add	hl, bc
   5A9D 4D            [ 4]  364 	ld	c, l
   5A9E 44            [ 4]  365 	ld	b, h
   5A9F 2A 25 76      [16]  366 	ld	hl, (_trainList)
   5AA2 09            [11]  367 	add	hl, bc
   5AA3 23            [ 6]  368 	inc	hl
   5AA4 36 00         [10]  369 	ld	(hl), #0x00
                            370 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   5AA6 ED 4B 2A 76   [20]  371 	ld	bc, (_nbTrainList)
   5AAA 06 00         [ 7]  372 	ld	b, #0x00
   5AAC 69            [ 4]  373 	ld	l, c
   5AAD 60            [ 4]  374 	ld	h, b
   5AAE 29            [11]  375 	add	hl, hl
   5AAF 09            [11]  376 	add	hl, bc
   5AB0 29            [11]  377 	add	hl, hl
   5AB1 09            [11]  378 	add	hl, bc
   5AB2 4D            [ 4]  379 	ld	c, l
   5AB3 44            [ 4]  380 	ld	b, h
   5AB4 2A 25 76      [16]  381 	ld	hl, (_trainList)
   5AB7 09            [11]  382 	add	hl, bc
   5AB8 23            [ 6]  383 	inc	hl
   5AB9 23            [ 6]  384 	inc	hl
   5ABA 36 00         [10]  385 	ld	(hl), #0x00
                            386 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5ABC ED 4B 2A 76   [20]  387 	ld	bc, (_nbTrainList)
   5AC0 06 00         [ 7]  388 	ld	b, #0x00
   5AC2 69            [ 4]  389 	ld	l, c
   5AC3 60            [ 4]  390 	ld	h, b
   5AC4 29            [11]  391 	add	hl, hl
   5AC5 09            [11]  392 	add	hl, bc
   5AC6 29            [11]  393 	add	hl, hl
   5AC7 09            [11]  394 	add	hl, bc
   5AC8 4D            [ 4]  395 	ld	c, l
   5AC9 44            [ 4]  396 	ld	b, h
   5ACA 2A 25 76      [16]  397 	ld	hl, (_trainList)
   5ACD 09            [11]  398 	add	hl, bc
   5ACE 23            [ 6]  399 	inc	hl
   5ACF 23            [ 6]  400 	inc	hl
   5AD0 23            [ 6]  401 	inc	hl
   5AD1 36 00         [10]  402 	ld	(hl), #0x00
                            403 ;src/game/train.c:81: CURSOR_MODE = PUTTRAIN;
   5AD3 21 29 76      [10]  404 	ld	hl,#_CURSOR_MODE + 0
   5AD6 36 01         [10]  405 	ld	(hl), #0x01
   5AD8                     406 00110$:
                            407 ;src/game/train.c:84: return returnChoice;
   5AD8 DD 6E ED      [19]  408 	ld	l, -19 (ix)
   5ADB DD F9         [10]  409 	ld	sp, ix
   5ADD DD E1         [14]  410 	pop	ix
   5ADF C9            [10]  411 	ret
   5AE0                     412 ___str_2:
   5AE0 00                  413 	.db 0x00
   5AE1                     414 ___str_3:
   5AE1 31 33 30 20 42      415 	.ascii "130 B"
   5AE6 00                  416 	.db 0x00
   5AE7                     417 ___str_4:
   5AE7 50 72 6F 70 75 6C   418 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5AF8 00                  419 	.db 0x00
   5AF9                     420 ___str_5:
   5AF9 45 6E 74 72 79 20   421 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5B0F 00                  422 	.db 0x00
   5B10                     423 ___str_6:
   5B10 4D 61 78 69 6D 75   424 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5B26 00                  425 	.db 0x00
   5B27                     426 ___str_7:
   5B27 50 72 69 63 65 3A   427 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5B33 00                  428 	.db 0x00
   5B34                     429 ___str_8:
   5B34 31 34 31 20 54 41   430 	.ascii "141 TA"
   5B3A 00                  431 	.db 0x00
   5B3B                     432 ___str_9:
   5B3B 45 6E 74 72 79 20   433 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5B51 00                  434 	.db 0x00
   5B52                     435 ___str_10:
   5B52 4D 61 78 69 6D 75   436 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5B68 00                  437 	.db 0x00
   5B69                     438 ___str_11:
   5B69 50 72 69 63 65 3A   439 	.ascii "Price: 900$"
        20 39 30 30 24
   5B74 00                  440 	.db 0x00
   5B75                     441 ___str_12:
   5B75 32 34 32 20 43 54   442 	.ascii "242 CT"
   5B7B 00                  443 	.db 0x00
   5B7C                     444 ___str_13:
   5B7C 45 6E 74 72 79 20   445 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5B92 00                  446 	.db 0x00
   5B93                     447 ___str_14:
   5B93 4D 61 78 69 6D 75   448 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5BA9 00                  449 	.db 0x00
   5BAA                     450 ___str_15:
   5BAA 50 72 69 63 65 3A   451 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5BB6 00                  452 	.db 0x00
   5BB7                     453 ___str_16:
   5BB7 31 34 31 20 50      454 	.ascii "141 P"
   5BBC 00                  455 	.db 0x00
   5BBD                     456 ___str_17:
   5BBD 45 6E 74 72 79 20   457 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5BD3 00                  458 	.db 0x00
   5BD4                     459 ___str_18:
   5BD4 4D 61 78 69 6D 75   460 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5BEB 00                  461 	.db 0x00
   5BEC                     462 ___str_19:
   5BEC 50 72 69 63 65 3A   463 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5BF8 00                  464 	.db 0x00
                            465 ;src/game/train.c:87: void buyTrain()
                            466 ;	---------------------------------
                            467 ; Function buyTrain
                            468 ; ---------------------------------
   5BF9                     469 _buyTrain::
   5BF9 DD E5         [15]  470 	push	ix
   5BFB DD 21 00 00   [14]  471 	ld	ix,#0
   5BFF DD 39         [15]  472 	add	ix,sp
   5C01 21 E8 FF      [10]  473 	ld	hl, #-24
   5C04 39            [11]  474 	add	hl, sp
   5C05 F9            [ 6]  475 	ld	sp, hl
                            476 ;src/game/train.c:89: const char *txtMenuLoco[] = { 
   5C06 21 00 00      [10]  477 	ld	hl, #0x0000
   5C09 39            [11]  478 	add	hl, sp
   5C0A 4D            [ 4]  479 	ld	c,l
   5C0B 44            [ 4]  480 	ld	b,h
   5C0C 36 94         [10]  481 	ld	(hl), #<(___str_20)
   5C0E 23            [ 6]  482 	inc	hl
   5C0F 36 5C         [10]  483 	ld	(hl), #>(___str_20)
   5C11 69            [ 4]  484 	ld	l, c
   5C12 60            [ 4]  485 	ld	h, b
   5C13 23            [ 6]  486 	inc	hl
   5C14 23            [ 6]  487 	inc	hl
   5C15 11 9A 5C      [10]  488 	ld	de, #___str_21+0
   5C18 73            [ 7]  489 	ld	(hl), e
   5C19 23            [ 6]  490 	inc	hl
   5C1A 72            [ 7]  491 	ld	(hl), d
   5C1B 21 04 00      [10]  492 	ld	hl, #0x0004
   5C1E 09            [11]  493 	add	hl, bc
   5C1F 11 A1 5C      [10]  494 	ld	de, #___str_22+0
   5C22 73            [ 7]  495 	ld	(hl), e
   5C23 23            [ 6]  496 	inc	hl
   5C24 72            [ 7]  497 	ld	(hl), d
   5C25 21 06 00      [10]  498 	ld	hl, #0x0006
   5C28 09            [11]  499 	add	hl, bc
   5C29 11 A8 5C      [10]  500 	ld	de, #___str_23+0
   5C2C 73            [ 7]  501 	ld	(hl), e
   5C2D 23            [ 6]  502 	inc	hl
   5C2E 72            [ 7]  503 	ld	(hl), d
   5C2F 21 08 00      [10]  504 	ld	hl, #0x0008
   5C32 09            [11]  505 	add	hl, bc
   5C33 11 AE 5C      [10]  506 	ld	de, #___str_24+0
   5C36 73            [ 7]  507 	ld	(hl), e
   5C37 23            [ 6]  508 	inc	hl
   5C38 72            [ 7]  509 	ld	(hl), d
   5C39 21 0A 00      [10]  510 	ld	hl, #0x000a
   5C3C 09            [11]  511 	add	hl, bc
   5C3D 11 B7 5C      [10]  512 	ld	de, #___str_25+0
   5C40 73            [ 7]  513 	ld	(hl), e
   5C41 23            [ 6]  514 	inc	hl
   5C42 72            [ 7]  515 	ld	(hl), d
   5C43 21 0C 00      [10]  516 	ld	hl, #0x000c
   5C46 09            [11]  517 	add	hl, bc
   5C47 11 C1 5C      [10]  518 	ld	de, #___str_26+0
   5C4A 73            [ 7]  519 	ld	(hl), e
   5C4B 23            [ 6]  520 	inc	hl
   5C4C 72            [ 7]  521 	ld	(hl), d
   5C4D 21 0E 00      [10]  522 	ld	hl, #0x000e
   5C50 09            [11]  523 	add	hl, bc
   5C51 11 CA 5C      [10]  524 	ld	de, #___str_27+0
   5C54 73            [ 7]  525 	ld	(hl), e
   5C55 23            [ 6]  526 	inc	hl
   5C56 72            [ 7]  527 	ld	(hl), d
   5C57 21 10 00      [10]  528 	ld	hl, #0x0010
   5C5A 09            [11]  529 	add	hl, bc
   5C5B 11 D3 5C      [10]  530 	ld	de, #___str_28+0
   5C5E 73            [ 7]  531 	ld	(hl), e
   5C5F 23            [ 6]  532 	inc	hl
   5C60 72            [ 7]  533 	ld	(hl), d
   5C61 21 12 00      [10]  534 	ld	hl, #0x0012
   5C64 09            [11]  535 	add	hl, bc
   5C65 11 DA 5C      [10]  536 	ld	de, #___str_29+0
   5C68 73            [ 7]  537 	ld	(hl), e
   5C69 23            [ 6]  538 	inc	hl
   5C6A 72            [ 7]  539 	ld	(hl), d
   5C6B 21 14 00      [10]  540 	ld	hl, #0x0014
   5C6E 09            [11]  541 	add	hl, bc
   5C6F 11 E7 5C      [10]  542 	ld	de, #___str_30+0
   5C72 73            [ 7]  543 	ld	(hl), e
   5C73 23            [ 6]  544 	inc	hl
   5C74 72            [ 7]  545 	ld	(hl), d
   5C75 21 16 00      [10]  546 	ld	hl, #0x0016
   5C78 09            [11]  547 	add	hl, bc
   5C79 11 F0 5C      [10]  548 	ld	de, #___str_31+0
   5C7C 73            [ 7]  549 	ld	(hl), e
   5C7D 23            [ 6]  550 	inc	hl
   5C7E 72            [ 7]  551 	ld	(hl), d
                            552 ;src/game/train.c:104: confirmBuyTrain( drawMenu(txtMenuLoco,12) );
   5C7F 3E 0C         [ 7]  553 	ld	a, #0x0c
   5C81 F5            [11]  554 	push	af
   5C82 33            [ 6]  555 	inc	sp
   5C83 C5            [11]  556 	push	bc
   5C84 CD 2F 45      [17]  557 	call	_drawMenu
   5C87 F1            [10]  558 	pop	af
   5C88 33            [ 6]  559 	inc	sp
   5C89 45            [ 4]  560 	ld	b, l
   5C8A C5            [11]  561 	push	bc
   5C8B 33            [ 6]  562 	inc	sp
   5C8C CD 1B 59      [17]  563 	call	_confirmBuyTrain
   5C8F DD F9         [10]  564 	ld	sp,ix
   5C91 DD E1         [14]  565 	pop	ix
   5C93 C9            [10]  566 	ret
   5C94                     567 ___str_20:
   5C94 31 33 30 20 42      568 	.ascii "130 B"
   5C99 00                  569 	.db 0x00
   5C9A                     570 ___str_21:
   5C9A 31 34 31 20 54 41   571 	.ascii "141 TA"
   5CA0 00                  572 	.db 0x00
   5CA1                     573 ___str_22:
   5CA1 32 34 32 20 43 54   574 	.ascii "242 CT"
   5CA7 00                  575 	.db 0x00
   5CA8                     576 ___str_23:
   5CA8 31 34 31 20 50      577 	.ascii "141 P"
   5CAD 00                  578 	.db 0x00
   5CAE                     579 ___str_24:
   5CAE 42 42 20 36 33 30   580 	.ascii "BB 63000"
        30 30
   5CB6 00                  581 	.db 0x00
   5CB7                     582 ___str_25:
   5CB7 52 65 20 34 2F 34   583 	.ascii "Re 4/4 II"
        20 49 49
   5CC0 00                  584 	.db 0x00
   5CC1                     585 ___str_26:
   5CC1 42 42 20 36 37 30   586 	.ascii "BB 67000"
        30 30
   5CC9 00                  587 	.db 0x00
   5CCA                     588 ___str_27:
   5CCA 42 42 20 31 35 30   589 	.ascii "BB 15000"
        30 30
   5CD2 00                  590 	.db 0x00
   5CD3                     591 ___str_28:
   5CD3 52 65 20 34 36 30   592 	.ascii "Re 460"
   5CD9 00                  593 	.db 0x00
   5CDA                     594 ___str_29:
   5CDA 44 42 20 43 6C 61   595 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5CE6 00                  596 	.db 0x00
   5CE7                     597 ___str_30:
   5CE7 42 42 20 32 37 30   598 	.ascii "BB 27000"
        30 30
   5CEF 00                  599 	.db 0x00
   5CF0                     600 ___str_31:
   5CF0 45 53 20 36 34 46   601 	.ascii "ES 64F4"
        34
   5CF7 00                  602 	.db 0x00
                            603 	.area _CODE
                            604 	.area _INITIALIZER
                            605 	.area _CABS (ABS)
