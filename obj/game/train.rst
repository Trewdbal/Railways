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
   58F9                      55 _trainManagement::
   58F9 DD E5         [15]   56 	push	ix
   58FB DD 21 00 00   [14]   57 	ld	ix,#0
   58FF DD 39         [15]   58 	add	ix,sp
   5901 F5            [11]   59 	push	af
   5902 F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   5903 21 00 00      [10]   62 	ld	hl, #0x0000
   5906 39            [11]   63 	add	hl, sp
   5907 4D            [ 4]   64 	ld	c,l
   5908 44            [ 4]   65 	ld	b,h
   5909 36 31         [10]   66 	ld	(hl), #<(___str_0)
   590B 23            [ 6]   67 	inc	hl
   590C 36 59         [10]   68 	ld	(hl), #>(___str_0)
   590E 69            [ 4]   69 	ld	l, c
   590F 60            [ 4]   70 	ld	h, b
   5910 23            [ 6]   71 	inc	hl
   5911 23            [ 6]   72 	inc	hl
   5912 11 3B 59      [10]   73 	ld	de, #___str_1+0
   5915 73            [ 7]   74 	ld	(hl), e
   5916 23            [ 6]   75 	inc	hl
   5917 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   5918 3E 02         [ 7]   78 	ld	a, #0x02
   591A F5            [11]   79 	push	af
   591B 33            [ 6]   80 	inc	sp
   591C C5            [11]   81 	push	bc
   591D CD 2F 45      [17]   82 	call	_drawMenu
   5920 F1            [10]   83 	pop	af
   5921 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   5922 7D            [ 4]   86 	ld	a, l
   5923 B7            [ 4]   87 	or	a, a
   5924 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyTrain();
   5926 CD 29 5C      [17]   90 	call	_buyTrain
   5929                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   5929 CD 33 41      [17]   93 	call	_putM1
   592C DD F9         [10]   94 	ld	sp, ix
   592E DD E1         [14]   95 	pop	ix
   5930 C9            [10]   96 	ret
   5931                      97 ___str_0:
   5931 4E 65 77 20 74 72    98 	.ascii "New train"
        61 69 6E
   593A 00                   99 	.db 0x00
   593B                     100 ___str_1:
   593B 4D 61 6E 61 67 65   101 	.ascii "Manage existing"
        20 65 78 69 73 74
        69 6E 67
   594A 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyTrain(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyTrain
                            106 ; ---------------------------------
   594B                     107 _confirmBuyTrain::
   594B DD E5         [15]  108 	push	ix
   594D DD 21 00 00   [14]  109 	ld	ix,#0
   5951 DD 39         [15]  110 	add	ix,sp
   5953 21 ED FF      [10]  111 	ld	hl, #-19
   5956 39            [11]  112 	add	hl, sp
   5957 F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   5958 CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   595B 21 01 00      [10]  117 	ld	hl, #0x0001
   595E 39            [11]  118 	add	hl, sp
   595F 4D            [ 4]  119 	ld	c,l
   5960 44            [ 4]  120 	ld	b,h
   5961 23            [ 6]  121 	inc	hl
   5962 23            [ 6]  122 	inc	hl
   5963 11 10 5B      [10]  123 	ld	de, #___str_2+0
   5966 73            [ 7]  124 	ld	(hl), e
   5967 23            [ 6]  125 	inc	hl
   5968 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5969 21 04 00      [10]  128 	ld	hl, #0x0004
   596C 09            [11]  129 	add	hl,bc
   596D EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   596E 21 06 00      [10]  132 	ld	hl, #0x0006
   5971 09            [11]  133 	add	hl,bc
   5972 DD 75 FA      [19]  134 	ld	-6 (ix), l
   5975 DD 74 FB      [19]  135 	ld	-5 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5978 21 08 00      [10]  137 	ld	hl, #0x0008
   597B 09            [11]  138 	add	hl,bc
   597C DD 75 FE      [19]  139 	ld	-2 (ix), l
   597F DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5982 21 0A 00      [10]  142 	ld	hl, #0x000a
   5985 09            [11]  143 	add	hl,bc
   5986 DD 75 FC      [19]  144 	ld	-4 (ix), l
   5989 DD 74 FD      [19]  145 	ld	-3 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   598C DD 7E 04      [19]  147 	ld	a, 4 (ix)
   598F B7            [ 4]  148 	or	a, a
   5990 28 18         [12]  149 	jr	Z,00101$
   5992 DD 7E 04      [19]  150 	ld	a, 4 (ix)
   5995 3D            [ 4]  151 	dec	a
   5996 28 44         [12]  152 	jr	Z,00102$
   5998 DD 7E 04      [19]  153 	ld	a, 4 (ix)
   599B D6 02         [ 7]  154 	sub	a, #0x02
   599D 28 6E         [12]  155 	jr	Z,00103$
   599F DD 7E 04      [19]  156 	ld	a, 4 (ix)
   59A2 D6 03         [ 7]  157 	sub	a, #0x03
   59A4 CA 3E 5A      [10]  158 	jp	Z,00104$
   59A7 C3 6D 5A      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   59AA                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   59AA 69            [ 4]  163 	ld	l, c
   59AB 60            [ 4]  164 	ld	h, b
   59AC 36 11         [10]  165 	ld	(hl), #<(___str_3)
   59AE 23            [ 6]  166 	inc	hl
   59AF 36 5B         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   59B1 3E 17         [ 7]  169 	ld	a, #<(___str_4)
   59B3 12            [ 7]  170 	ld	(de), a
   59B4 13            [ 6]  171 	inc	de
   59B5 3E 5B         [ 7]  172 	ld	a, #>(___str_4)
   59B7 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   59B8 DD 6E FA      [19]  175 	ld	l,-6 (ix)
   59BB DD 66 FB      [19]  176 	ld	h,-5 (ix)
   59BE 36 29         [10]  177 	ld	(hl), #<(___str_5)
   59C0 23            [ 6]  178 	inc	hl
   59C1 36 5B         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   59C3 DD 6E FE      [19]  181 	ld	l,-2 (ix)
   59C6 DD 66 FF      [19]  182 	ld	h,-1 (ix)
   59C9 36 40         [10]  183 	ld	(hl), #<(___str_6)
   59CB 23            [ 6]  184 	inc	hl
   59CC 36 5B         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   59CE DD 6E FC      [19]  187 	ld	l,-4 (ix)
   59D1 DD 66 FD      [19]  188 	ld	h,-3 (ix)
   59D4 36 57         [10]  189 	ld	(hl), #<(___str_7)
   59D6 23            [ 6]  190 	inc	hl
   59D7 36 5B         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   59D9 C3 6D 5A      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   59DC                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   59DC 69            [ 4]  197 	ld	l, c
   59DD 60            [ 4]  198 	ld	h, b
   59DE 36 64         [10]  199 	ld	(hl), #<(___str_8)
   59E0 23            [ 6]  200 	inc	hl
   59E1 36 5B         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   59E3 3E 17         [ 7]  203 	ld	a, #<(___str_4)
   59E5 12            [ 7]  204 	ld	(de), a
   59E6 13            [ 6]  205 	inc	de
   59E7 3E 5B         [ 7]  206 	ld	a, #>(___str_4)
   59E9 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   59EA DD 6E FA      [19]  209 	ld	l,-6 (ix)
   59ED DD 66 FB      [19]  210 	ld	h,-5 (ix)
   59F0 36 6B         [10]  211 	ld	(hl), #<(___str_9)
   59F2 23            [ 6]  212 	inc	hl
   59F3 36 5B         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   59F5 DD 6E FE      [19]  215 	ld	l,-2 (ix)
   59F8 DD 66 FF      [19]  216 	ld	h,-1 (ix)
   59FB 36 82         [10]  217 	ld	(hl), #<(___str_10)
   59FD 23            [ 6]  218 	inc	hl
   59FE 36 5B         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   5A00 DD 6E FC      [19]  221 	ld	l,-4 (ix)
   5A03 DD 66 FD      [19]  222 	ld	h,-3 (ix)
   5A06 36 99         [10]  223 	ld	(hl), #<(___str_11)
   5A08 23            [ 6]  224 	inc	hl
   5A09 36 5B         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   5A0B 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   5A0D                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   5A0D 69            [ 4]  231 	ld	l, c
   5A0E 60            [ 4]  232 	ld	h, b
   5A0F 36 A5         [10]  233 	ld	(hl), #<(___str_12)
   5A11 23            [ 6]  234 	inc	hl
   5A12 36 5B         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   5A14 3E 17         [ 7]  237 	ld	a, #<(___str_4)
   5A16 12            [ 7]  238 	ld	(de), a
   5A17 13            [ 6]  239 	inc	de
   5A18 3E 5B         [ 7]  240 	ld	a, #>(___str_4)
   5A1A 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   5A1B DD 6E FA      [19]  243 	ld	l,-6 (ix)
   5A1E DD 66 FB      [19]  244 	ld	h,-5 (ix)
   5A21 36 AC         [10]  245 	ld	(hl), #<(___str_13)
   5A23 23            [ 6]  246 	inc	hl
   5A24 36 5B         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   5A26 DD 6E FE      [19]  249 	ld	l,-2 (ix)
   5A29 DD 66 FF      [19]  250 	ld	h,-1 (ix)
   5A2C 36 C3         [10]  251 	ld	(hl), #<(___str_14)
   5A2E 23            [ 6]  252 	inc	hl
   5A2F 36 5B         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5A31 DD 6E FC      [19]  255 	ld	l,-4 (ix)
   5A34 DD 66 FD      [19]  256 	ld	h,-3 (ix)
   5A37 36 DA         [10]  257 	ld	(hl), #<(___str_15)
   5A39 23            [ 6]  258 	inc	hl
   5A3A 36 5B         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5A3C 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5A3E                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5A3E 69            [ 4]  265 	ld	l, c
   5A3F 60            [ 4]  266 	ld	h, b
   5A40 36 E7         [10]  267 	ld	(hl), #<(___str_16)
   5A42 23            [ 6]  268 	inc	hl
   5A43 36 5B         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   5A45 3E 17         [ 7]  271 	ld	a, #<(___str_4)
   5A47 12            [ 7]  272 	ld	(de), a
   5A48 13            [ 6]  273 	inc	de
   5A49 3E 5B         [ 7]  274 	ld	a, #>(___str_4)
   5A4B 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5A4C DD 6E FA      [19]  277 	ld	l,-6 (ix)
   5A4F DD 66 FB      [19]  278 	ld	h,-5 (ix)
   5A52 36 ED         [10]  279 	ld	(hl), #<(___str_17)
   5A54 23            [ 6]  280 	inc	hl
   5A55 36 5B         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   5A57 DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5A5A DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5A5D 36 04         [10]  285 	ld	(hl), #<(___str_18)
   5A5F 23            [ 6]  286 	inc	hl
   5A60 36 5C         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   5A62 DD 6E FC      [19]  289 	ld	l,-4 (ix)
   5A65 DD 66 FD      [19]  290 	ld	h,-3 (ix)
   5A68 36 1C         [10]  291 	ld	(hl), #<(___str_19)
   5A6A 23            [ 6]  292 	inc	hl
   5A6B 36 5C         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5A6D                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5A6D 21 06 01      [10]  297 	ld	hl, #0x0106
   5A70 E5            [11]  298 	push	hl
   5A71 C5            [11]  299 	push	bc
   5A72 CD 2D 46      [17]  300 	call	_drawWindow
   5A75 F1            [10]  301 	pop	af
   5A76 F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   5A77 DD 75 ED      [19]  304 	ld	-19 (ix), l
   5A7A 7D            [ 4]  305 	ld	a, l
   5A7B 3D            [ 4]  306 	dec	a
   5A7C C2 08 5B      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5A7F 3A 73 76      [13]  309 	ld	a,(#_nbTrainList + 0)
   5A82 B7            [ 4]  310 	or	a, a
   5A83 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   5A85 21 07 00      [10]  313 	ld	hl, #0x0007
   5A88 E5            [11]  314 	push	hl
   5A89 CD 21 62      [17]  315 	call	_malloc
   5A8C F1            [10]  316 	pop	af
   5A8D 22 6E 76      [16]  317 	ld	(_trainList), hl
   5A90 18 19         [12]  318 	jr	00108$
   5A92                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   5A92 21 73 76      [10]  321 	ld	hl,#_nbTrainList + 0
   5A95 4E            [ 7]  322 	ld	c, (hl)
   5A96 06 00         [ 7]  323 	ld	b, #0x00
   5A98 03            [ 6]  324 	inc	bc
   5A99 69            [ 4]  325 	ld	l, c
   5A9A 60            [ 4]  326 	ld	h, b
   5A9B 29            [11]  327 	add	hl, hl
   5A9C 09            [11]  328 	add	hl, bc
   5A9D 29            [11]  329 	add	hl, hl
   5A9E 09            [11]  330 	add	hl, bc
   5A9F 4D            [ 4]  331 	ld	c, l
   5AA0 44            [ 4]  332 	ld	b, h
   5AA1 2A 6E 76      [16]  333 	ld	hl, (_trainList)
   5AA4 C5            [11]  334 	push	bc
   5AA5 E5            [11]  335 	push	hl
   5AA6 CD 28 5D      [17]  336 	call	_realloc
   5AA9 F1            [10]  337 	pop	af
   5AAA F1            [10]  338 	pop	af
   5AAB                     339 00108$:
                            340 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   5AAB ED 4B 73 76   [20]  341 	ld	bc, (_nbTrainList)
   5AAF 06 00         [ 7]  342 	ld	b, #0x00
   5AB1 69            [ 4]  343 	ld	l, c
   5AB2 60            [ 4]  344 	ld	h, b
   5AB3 29            [11]  345 	add	hl, hl
   5AB4 09            [11]  346 	add	hl, bc
   5AB5 29            [11]  347 	add	hl, hl
   5AB6 09            [11]  348 	add	hl, bc
   5AB7 4D            [ 4]  349 	ld	c, l
   5AB8 44            [ 4]  350 	ld	b, h
   5AB9 2A 6E 76      [16]  351 	ld	hl, (_trainList)
   5ABC 09            [11]  352 	add	hl, bc
   5ABD DD 7E 04      [19]  353 	ld	a, 4 (ix)
   5AC0 77            [ 7]  354 	ld	(hl), a
                            355 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   5AC1 ED 4B 73 76   [20]  356 	ld	bc, (_nbTrainList)
   5AC5 06 00         [ 7]  357 	ld	b, #0x00
   5AC7 69            [ 4]  358 	ld	l, c
   5AC8 60            [ 4]  359 	ld	h, b
   5AC9 29            [11]  360 	add	hl, hl
   5ACA 09            [11]  361 	add	hl, bc
   5ACB 29            [11]  362 	add	hl, hl
   5ACC 09            [11]  363 	add	hl, bc
   5ACD 4D            [ 4]  364 	ld	c, l
   5ACE 44            [ 4]  365 	ld	b, h
   5ACF 2A 6E 76      [16]  366 	ld	hl, (_trainList)
   5AD2 09            [11]  367 	add	hl, bc
   5AD3 23            [ 6]  368 	inc	hl
   5AD4 36 00         [10]  369 	ld	(hl), #0x00
                            370 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   5AD6 ED 4B 73 76   [20]  371 	ld	bc, (_nbTrainList)
   5ADA 06 00         [ 7]  372 	ld	b, #0x00
   5ADC 69            [ 4]  373 	ld	l, c
   5ADD 60            [ 4]  374 	ld	h, b
   5ADE 29            [11]  375 	add	hl, hl
   5ADF 09            [11]  376 	add	hl, bc
   5AE0 29            [11]  377 	add	hl, hl
   5AE1 09            [11]  378 	add	hl, bc
   5AE2 4D            [ 4]  379 	ld	c, l
   5AE3 44            [ 4]  380 	ld	b, h
   5AE4 2A 6E 76      [16]  381 	ld	hl, (_trainList)
   5AE7 09            [11]  382 	add	hl, bc
   5AE8 23            [ 6]  383 	inc	hl
   5AE9 23            [ 6]  384 	inc	hl
   5AEA 36 00         [10]  385 	ld	(hl), #0x00
                            386 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5AEC ED 4B 73 76   [20]  387 	ld	bc, (_nbTrainList)
   5AF0 06 00         [ 7]  388 	ld	b, #0x00
   5AF2 69            [ 4]  389 	ld	l, c
   5AF3 60            [ 4]  390 	ld	h, b
   5AF4 29            [11]  391 	add	hl, hl
   5AF5 09            [11]  392 	add	hl, bc
   5AF6 29            [11]  393 	add	hl, hl
   5AF7 09            [11]  394 	add	hl, bc
   5AF8 4D            [ 4]  395 	ld	c, l
   5AF9 44            [ 4]  396 	ld	b, h
   5AFA 2A 6E 76      [16]  397 	ld	hl, (_trainList)
   5AFD 09            [11]  398 	add	hl, bc
   5AFE 23            [ 6]  399 	inc	hl
   5AFF 23            [ 6]  400 	inc	hl
   5B00 23            [ 6]  401 	inc	hl
   5B01 36 00         [10]  402 	ld	(hl), #0x00
                            403 ;src/game/train.c:81: CURSOR_MODE = PUTTRAIN;
   5B03 21 72 76      [10]  404 	ld	hl,#_CURSOR_MODE + 0
   5B06 36 01         [10]  405 	ld	(hl), #0x01
   5B08                     406 00110$:
                            407 ;src/game/train.c:84: return returnChoice;
   5B08 DD 6E ED      [19]  408 	ld	l, -19 (ix)
   5B0B DD F9         [10]  409 	ld	sp, ix
   5B0D DD E1         [14]  410 	pop	ix
   5B0F C9            [10]  411 	ret
   5B10                     412 ___str_2:
   5B10 00                  413 	.db 0x00
   5B11                     414 ___str_3:
   5B11 31 33 30 20 42      415 	.ascii "130 B"
   5B16 00                  416 	.db 0x00
   5B17                     417 ___str_4:
   5B17 50 72 6F 70 75 6C   418 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5B28 00                  419 	.db 0x00
   5B29                     420 ___str_5:
   5B29 45 6E 74 72 79 20   421 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5B3F 00                  422 	.db 0x00
   5B40                     423 ___str_6:
   5B40 4D 61 78 69 6D 75   424 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5B56 00                  425 	.db 0x00
   5B57                     426 ___str_7:
   5B57 50 72 69 63 65 3A   427 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5B63 00                  428 	.db 0x00
   5B64                     429 ___str_8:
   5B64 31 34 31 20 54 41   430 	.ascii "141 TA"
   5B6A 00                  431 	.db 0x00
   5B6B                     432 ___str_9:
   5B6B 45 6E 74 72 79 20   433 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5B81 00                  434 	.db 0x00
   5B82                     435 ___str_10:
   5B82 4D 61 78 69 6D 75   436 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5B98 00                  437 	.db 0x00
   5B99                     438 ___str_11:
   5B99 50 72 69 63 65 3A   439 	.ascii "Price: 900$"
        20 39 30 30 24
   5BA4 00                  440 	.db 0x00
   5BA5                     441 ___str_12:
   5BA5 32 34 32 20 43 54   442 	.ascii "242 CT"
   5BAB 00                  443 	.db 0x00
   5BAC                     444 ___str_13:
   5BAC 45 6E 74 72 79 20   445 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5BC2 00                  446 	.db 0x00
   5BC3                     447 ___str_14:
   5BC3 4D 61 78 69 6D 75   448 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5BD9 00                  449 	.db 0x00
   5BDA                     450 ___str_15:
   5BDA 50 72 69 63 65 3A   451 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5BE6 00                  452 	.db 0x00
   5BE7                     453 ___str_16:
   5BE7 31 34 31 20 50      454 	.ascii "141 P"
   5BEC 00                  455 	.db 0x00
   5BED                     456 ___str_17:
   5BED 45 6E 74 72 79 20   457 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5C03 00                  458 	.db 0x00
   5C04                     459 ___str_18:
   5C04 4D 61 78 69 6D 75   460 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5C1B 00                  461 	.db 0x00
   5C1C                     462 ___str_19:
   5C1C 50 72 69 63 65 3A   463 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5C28 00                  464 	.db 0x00
                            465 ;src/game/train.c:87: void buyTrain()
                            466 ;	---------------------------------
                            467 ; Function buyTrain
                            468 ; ---------------------------------
   5C29                     469 _buyTrain::
   5C29 DD E5         [15]  470 	push	ix
   5C2B DD 21 00 00   [14]  471 	ld	ix,#0
   5C2F DD 39         [15]  472 	add	ix,sp
   5C31 21 E8 FF      [10]  473 	ld	hl, #-24
   5C34 39            [11]  474 	add	hl, sp
   5C35 F9            [ 6]  475 	ld	sp, hl
                            476 ;src/game/train.c:89: const char *txtMenuLoco[] = { 
   5C36 21 00 00      [10]  477 	ld	hl, #0x0000
   5C39 39            [11]  478 	add	hl, sp
   5C3A 4D            [ 4]  479 	ld	c,l
   5C3B 44            [ 4]  480 	ld	b,h
   5C3C 36 C4         [10]  481 	ld	(hl), #<(___str_20)
   5C3E 23            [ 6]  482 	inc	hl
   5C3F 36 5C         [10]  483 	ld	(hl), #>(___str_20)
   5C41 69            [ 4]  484 	ld	l, c
   5C42 60            [ 4]  485 	ld	h, b
   5C43 23            [ 6]  486 	inc	hl
   5C44 23            [ 6]  487 	inc	hl
   5C45 11 CA 5C      [10]  488 	ld	de, #___str_21+0
   5C48 73            [ 7]  489 	ld	(hl), e
   5C49 23            [ 6]  490 	inc	hl
   5C4A 72            [ 7]  491 	ld	(hl), d
   5C4B 21 04 00      [10]  492 	ld	hl, #0x0004
   5C4E 09            [11]  493 	add	hl, bc
   5C4F 11 D1 5C      [10]  494 	ld	de, #___str_22+0
   5C52 73            [ 7]  495 	ld	(hl), e
   5C53 23            [ 6]  496 	inc	hl
   5C54 72            [ 7]  497 	ld	(hl), d
   5C55 21 06 00      [10]  498 	ld	hl, #0x0006
   5C58 09            [11]  499 	add	hl, bc
   5C59 11 D8 5C      [10]  500 	ld	de, #___str_23+0
   5C5C 73            [ 7]  501 	ld	(hl), e
   5C5D 23            [ 6]  502 	inc	hl
   5C5E 72            [ 7]  503 	ld	(hl), d
   5C5F 21 08 00      [10]  504 	ld	hl, #0x0008
   5C62 09            [11]  505 	add	hl, bc
   5C63 11 DE 5C      [10]  506 	ld	de, #___str_24+0
   5C66 73            [ 7]  507 	ld	(hl), e
   5C67 23            [ 6]  508 	inc	hl
   5C68 72            [ 7]  509 	ld	(hl), d
   5C69 21 0A 00      [10]  510 	ld	hl, #0x000a
   5C6C 09            [11]  511 	add	hl, bc
   5C6D 11 E7 5C      [10]  512 	ld	de, #___str_25+0
   5C70 73            [ 7]  513 	ld	(hl), e
   5C71 23            [ 6]  514 	inc	hl
   5C72 72            [ 7]  515 	ld	(hl), d
   5C73 21 0C 00      [10]  516 	ld	hl, #0x000c
   5C76 09            [11]  517 	add	hl, bc
   5C77 11 F1 5C      [10]  518 	ld	de, #___str_26+0
   5C7A 73            [ 7]  519 	ld	(hl), e
   5C7B 23            [ 6]  520 	inc	hl
   5C7C 72            [ 7]  521 	ld	(hl), d
   5C7D 21 0E 00      [10]  522 	ld	hl, #0x000e
   5C80 09            [11]  523 	add	hl, bc
   5C81 11 FA 5C      [10]  524 	ld	de, #___str_27+0
   5C84 73            [ 7]  525 	ld	(hl), e
   5C85 23            [ 6]  526 	inc	hl
   5C86 72            [ 7]  527 	ld	(hl), d
   5C87 21 10 00      [10]  528 	ld	hl, #0x0010
   5C8A 09            [11]  529 	add	hl, bc
   5C8B 11 03 5D      [10]  530 	ld	de, #___str_28+0
   5C8E 73            [ 7]  531 	ld	(hl), e
   5C8F 23            [ 6]  532 	inc	hl
   5C90 72            [ 7]  533 	ld	(hl), d
   5C91 21 12 00      [10]  534 	ld	hl, #0x0012
   5C94 09            [11]  535 	add	hl, bc
   5C95 11 0A 5D      [10]  536 	ld	de, #___str_29+0
   5C98 73            [ 7]  537 	ld	(hl), e
   5C99 23            [ 6]  538 	inc	hl
   5C9A 72            [ 7]  539 	ld	(hl), d
   5C9B 21 14 00      [10]  540 	ld	hl, #0x0014
   5C9E 09            [11]  541 	add	hl, bc
   5C9F 11 17 5D      [10]  542 	ld	de, #___str_30+0
   5CA2 73            [ 7]  543 	ld	(hl), e
   5CA3 23            [ 6]  544 	inc	hl
   5CA4 72            [ 7]  545 	ld	(hl), d
   5CA5 21 16 00      [10]  546 	ld	hl, #0x0016
   5CA8 09            [11]  547 	add	hl, bc
   5CA9 11 20 5D      [10]  548 	ld	de, #___str_31+0
   5CAC 73            [ 7]  549 	ld	(hl), e
   5CAD 23            [ 6]  550 	inc	hl
   5CAE 72            [ 7]  551 	ld	(hl), d
                            552 ;src/game/train.c:104: confirmBuyTrain( drawMenu(txtMenuLoco,12) );
   5CAF 3E 0C         [ 7]  553 	ld	a, #0x0c
   5CB1 F5            [11]  554 	push	af
   5CB2 33            [ 6]  555 	inc	sp
   5CB3 C5            [11]  556 	push	bc
   5CB4 CD 2F 45      [17]  557 	call	_drawMenu
   5CB7 F1            [10]  558 	pop	af
   5CB8 33            [ 6]  559 	inc	sp
   5CB9 45            [ 4]  560 	ld	b, l
   5CBA C5            [11]  561 	push	bc
   5CBB 33            [ 6]  562 	inc	sp
   5CBC CD 4B 59      [17]  563 	call	_confirmBuyTrain
   5CBF DD F9         [10]  564 	ld	sp,ix
   5CC1 DD E1         [14]  565 	pop	ix
   5CC3 C9            [10]  566 	ret
   5CC4                     567 ___str_20:
   5CC4 31 33 30 20 42      568 	.ascii "130 B"
   5CC9 00                  569 	.db 0x00
   5CCA                     570 ___str_21:
   5CCA 31 34 31 20 54 41   571 	.ascii "141 TA"
   5CD0 00                  572 	.db 0x00
   5CD1                     573 ___str_22:
   5CD1 32 34 32 20 43 54   574 	.ascii "242 CT"
   5CD7 00                  575 	.db 0x00
   5CD8                     576 ___str_23:
   5CD8 31 34 31 20 50      577 	.ascii "141 P"
   5CDD 00                  578 	.db 0x00
   5CDE                     579 ___str_24:
   5CDE 42 42 20 36 33 30   580 	.ascii "BB 63000"
        30 30
   5CE6 00                  581 	.db 0x00
   5CE7                     582 ___str_25:
   5CE7 52 65 20 34 2F 34   583 	.ascii "Re 4/4 II"
        20 49 49
   5CF0 00                  584 	.db 0x00
   5CF1                     585 ___str_26:
   5CF1 42 42 20 36 37 30   586 	.ascii "BB 67000"
        30 30
   5CF9 00                  587 	.db 0x00
   5CFA                     588 ___str_27:
   5CFA 42 42 20 31 35 30   589 	.ascii "BB 15000"
        30 30
   5D02 00                  590 	.db 0x00
   5D03                     591 ___str_28:
   5D03 52 65 20 34 36 30   592 	.ascii "Re 460"
   5D09 00                  593 	.db 0x00
   5D0A                     594 ___str_29:
   5D0A 44 42 20 43 6C 61   595 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5D16 00                  596 	.db 0x00
   5D17                     597 ___str_30:
   5D17 42 42 20 32 37 30   598 	.ascii "BB 27000"
        30 30
   5D1F 00                  599 	.db 0x00
   5D20                     600 ___str_31:
   5D20 45 53 20 36 34 46   601 	.ascii "ES 64F4"
        34
   5D27 00                  602 	.db 0x00
                            603 	.area _CODE
                            604 	.area _INITIALIZER
                            605 	.area _CABS (ABS)
