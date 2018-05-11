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
   59D3                      55 _trainManagement::
   59D3 DD E5         [15]   56 	push	ix
   59D5 DD 21 00 00   [14]   57 	ld	ix,#0
   59D9 DD 39         [15]   58 	add	ix,sp
   59DB F5            [11]   59 	push	af
   59DC F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   59DD 21 00 00      [10]   62 	ld	hl, #0x0000
   59E0 39            [11]   63 	add	hl, sp
   59E1 4D            [ 4]   64 	ld	c,l
   59E2 44            [ 4]   65 	ld	b,h
   59E3 36 0B         [10]   66 	ld	(hl), #<(___str_0)
   59E5 23            [ 6]   67 	inc	hl
   59E6 36 5A         [10]   68 	ld	(hl), #>(___str_0)
   59E8 69            [ 4]   69 	ld	l, c
   59E9 60            [ 4]   70 	ld	h, b
   59EA 23            [ 6]   71 	inc	hl
   59EB 23            [ 6]   72 	inc	hl
   59EC 11 15 5A      [10]   73 	ld	de, #___str_1+0
   59EF 73            [ 7]   74 	ld	(hl), e
   59F0 23            [ 6]   75 	inc	hl
   59F1 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   59F2 3E 02         [ 7]   78 	ld	a, #0x02
   59F4 F5            [11]   79 	push	af
   59F5 33            [ 6]   80 	inc	sp
   59F6 C5            [11]   81 	push	bc
   59F7 CD 2F 45      [17]   82 	call	_drawMenu
   59FA F1            [10]   83 	pop	af
   59FB 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   59FC 7D            [ 4]   86 	ld	a, l
   59FD B7            [ 4]   87 	or	a, a
   59FE 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyTrain();
   5A00 CD 03 5D      [17]   90 	call	_buyTrain
   5A03                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   5A03 CD 33 41      [17]   93 	call	_putM1
   5A06 DD F9         [10]   94 	ld	sp, ix
   5A08 DD E1         [14]   95 	pop	ix
   5A0A C9            [10]   96 	ret
   5A0B                      97 ___str_0:
   5A0B 4E 65 77 20 74 72    98 	.ascii "New train"
        61 69 6E
   5A14 00                   99 	.db 0x00
   5A15                     100 ___str_1:
   5A15 4D 61 6E 61 67 65   101 	.ascii "Manage existing"
        20 65 78 69 73 74
        69 6E 67
   5A24 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyTrain(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyTrain
                            106 ; ---------------------------------
   5A25                     107 _confirmBuyTrain::
   5A25 DD E5         [15]  108 	push	ix
   5A27 DD 21 00 00   [14]  109 	ld	ix,#0
   5A2B DD 39         [15]  110 	add	ix,sp
   5A2D 21 ED FF      [10]  111 	ld	hl, #-19
   5A30 39            [11]  112 	add	hl, sp
   5A31 F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   5A32 CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   5A35 21 01 00      [10]  117 	ld	hl, #0x0001
   5A38 39            [11]  118 	add	hl, sp
   5A39 4D            [ 4]  119 	ld	c,l
   5A3A 44            [ 4]  120 	ld	b,h
   5A3B 23            [ 6]  121 	inc	hl
   5A3C 23            [ 6]  122 	inc	hl
   5A3D 11 EA 5B      [10]  123 	ld	de, #___str_2+0
   5A40 73            [ 7]  124 	ld	(hl), e
   5A41 23            [ 6]  125 	inc	hl
   5A42 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5A43 21 04 00      [10]  128 	ld	hl, #0x0004
   5A46 09            [11]  129 	add	hl,bc
   5A47 EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5A48 21 06 00      [10]  132 	ld	hl, #0x0006
   5A4B 09            [11]  133 	add	hl,bc
   5A4C DD 75 FA      [19]  134 	ld	-6 (ix), l
   5A4F DD 74 FB      [19]  135 	ld	-5 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5A52 21 08 00      [10]  137 	ld	hl, #0x0008
   5A55 09            [11]  138 	add	hl,bc
   5A56 DD 75 FE      [19]  139 	ld	-2 (ix), l
   5A59 DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5A5C 21 0A 00      [10]  142 	ld	hl, #0x000a
   5A5F 09            [11]  143 	add	hl,bc
   5A60 DD 75 FC      [19]  144 	ld	-4 (ix), l
   5A63 DD 74 FD      [19]  145 	ld	-3 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   5A66 DD 7E 04      [19]  147 	ld	a, 4 (ix)
   5A69 B7            [ 4]  148 	or	a, a
   5A6A 28 18         [12]  149 	jr	Z,00101$
   5A6C DD 7E 04      [19]  150 	ld	a, 4 (ix)
   5A6F 3D            [ 4]  151 	dec	a
   5A70 28 44         [12]  152 	jr	Z,00102$
   5A72 DD 7E 04      [19]  153 	ld	a, 4 (ix)
   5A75 D6 02         [ 7]  154 	sub	a, #0x02
   5A77 28 6E         [12]  155 	jr	Z,00103$
   5A79 DD 7E 04      [19]  156 	ld	a, 4 (ix)
   5A7C D6 03         [ 7]  157 	sub	a, #0x03
   5A7E CA 18 5B      [10]  158 	jp	Z,00104$
   5A81 C3 47 5B      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   5A84                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   5A84 69            [ 4]  163 	ld	l, c
   5A85 60            [ 4]  164 	ld	h, b
   5A86 36 EB         [10]  165 	ld	(hl), #<(___str_3)
   5A88 23            [ 6]  166 	inc	hl
   5A89 36 5B         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5A8B 3E F1         [ 7]  169 	ld	a, #<(___str_4)
   5A8D 12            [ 7]  170 	ld	(de), a
   5A8E 13            [ 6]  171 	inc	de
   5A8F 3E 5B         [ 7]  172 	ld	a, #>(___str_4)
   5A91 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5A92 DD 6E FA      [19]  175 	ld	l,-6 (ix)
   5A95 DD 66 FB      [19]  176 	ld	h,-5 (ix)
   5A98 36 03         [10]  177 	ld	(hl), #<(___str_5)
   5A9A 23            [ 6]  178 	inc	hl
   5A9B 36 5C         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5A9D DD 6E FE      [19]  181 	ld	l,-2 (ix)
   5AA0 DD 66 FF      [19]  182 	ld	h,-1 (ix)
   5AA3 36 1A         [10]  183 	ld	(hl), #<(___str_6)
   5AA5 23            [ 6]  184 	inc	hl
   5AA6 36 5C         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5AA8 DD 6E FC      [19]  187 	ld	l,-4 (ix)
   5AAB DD 66 FD      [19]  188 	ld	h,-3 (ix)
   5AAE 36 31         [10]  189 	ld	(hl), #<(___str_7)
   5AB0 23            [ 6]  190 	inc	hl
   5AB1 36 5C         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   5AB3 C3 47 5B      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   5AB6                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   5AB6 69            [ 4]  197 	ld	l, c
   5AB7 60            [ 4]  198 	ld	h, b
   5AB8 36 3E         [10]  199 	ld	(hl), #<(___str_8)
   5ABA 23            [ 6]  200 	inc	hl
   5ABB 36 5C         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   5ABD 3E F1         [ 7]  203 	ld	a, #<(___str_4)
   5ABF 12            [ 7]  204 	ld	(de), a
   5AC0 13            [ 6]  205 	inc	de
   5AC1 3E 5B         [ 7]  206 	ld	a, #>(___str_4)
   5AC3 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   5AC4 DD 6E FA      [19]  209 	ld	l,-6 (ix)
   5AC7 DD 66 FB      [19]  210 	ld	h,-5 (ix)
   5ACA 36 45         [10]  211 	ld	(hl), #<(___str_9)
   5ACC 23            [ 6]  212 	inc	hl
   5ACD 36 5C         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   5ACF DD 6E FE      [19]  215 	ld	l,-2 (ix)
   5AD2 DD 66 FF      [19]  216 	ld	h,-1 (ix)
   5AD5 36 5C         [10]  217 	ld	(hl), #<(___str_10)
   5AD7 23            [ 6]  218 	inc	hl
   5AD8 36 5C         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   5ADA DD 6E FC      [19]  221 	ld	l,-4 (ix)
   5ADD DD 66 FD      [19]  222 	ld	h,-3 (ix)
   5AE0 36 73         [10]  223 	ld	(hl), #<(___str_11)
   5AE2 23            [ 6]  224 	inc	hl
   5AE3 36 5C         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   5AE5 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   5AE7                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   5AE7 69            [ 4]  231 	ld	l, c
   5AE8 60            [ 4]  232 	ld	h, b
   5AE9 36 7F         [10]  233 	ld	(hl), #<(___str_12)
   5AEB 23            [ 6]  234 	inc	hl
   5AEC 36 5C         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   5AEE 3E F1         [ 7]  237 	ld	a, #<(___str_4)
   5AF0 12            [ 7]  238 	ld	(de), a
   5AF1 13            [ 6]  239 	inc	de
   5AF2 3E 5B         [ 7]  240 	ld	a, #>(___str_4)
   5AF4 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   5AF5 DD 6E FA      [19]  243 	ld	l,-6 (ix)
   5AF8 DD 66 FB      [19]  244 	ld	h,-5 (ix)
   5AFB 36 86         [10]  245 	ld	(hl), #<(___str_13)
   5AFD 23            [ 6]  246 	inc	hl
   5AFE 36 5C         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   5B00 DD 6E FE      [19]  249 	ld	l,-2 (ix)
   5B03 DD 66 FF      [19]  250 	ld	h,-1 (ix)
   5B06 36 9D         [10]  251 	ld	(hl), #<(___str_14)
   5B08 23            [ 6]  252 	inc	hl
   5B09 36 5C         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5B0B DD 6E FC      [19]  255 	ld	l,-4 (ix)
   5B0E DD 66 FD      [19]  256 	ld	h,-3 (ix)
   5B11 36 B4         [10]  257 	ld	(hl), #<(___str_15)
   5B13 23            [ 6]  258 	inc	hl
   5B14 36 5C         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5B16 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5B18                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5B18 69            [ 4]  265 	ld	l, c
   5B19 60            [ 4]  266 	ld	h, b
   5B1A 36 C1         [10]  267 	ld	(hl), #<(___str_16)
   5B1C 23            [ 6]  268 	inc	hl
   5B1D 36 5C         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   5B1F 3E F1         [ 7]  271 	ld	a, #<(___str_4)
   5B21 12            [ 7]  272 	ld	(de), a
   5B22 13            [ 6]  273 	inc	de
   5B23 3E 5B         [ 7]  274 	ld	a, #>(___str_4)
   5B25 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5B26 DD 6E FA      [19]  277 	ld	l,-6 (ix)
   5B29 DD 66 FB      [19]  278 	ld	h,-5 (ix)
   5B2C 36 C7         [10]  279 	ld	(hl), #<(___str_17)
   5B2E 23            [ 6]  280 	inc	hl
   5B2F 36 5C         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   5B31 DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5B34 DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5B37 36 DE         [10]  285 	ld	(hl), #<(___str_18)
   5B39 23            [ 6]  286 	inc	hl
   5B3A 36 5C         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   5B3C DD 6E FC      [19]  289 	ld	l,-4 (ix)
   5B3F DD 66 FD      [19]  290 	ld	h,-3 (ix)
   5B42 36 F6         [10]  291 	ld	(hl), #<(___str_19)
   5B44 23            [ 6]  292 	inc	hl
   5B45 36 5C         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5B47                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5B47 21 06 01      [10]  297 	ld	hl, #0x0106
   5B4A E5            [11]  298 	push	hl
   5B4B C5            [11]  299 	push	bc
   5B4C CD 2D 46      [17]  300 	call	_drawWindow
   5B4F F1            [10]  301 	pop	af
   5B50 F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   5B51 DD 75 ED      [19]  304 	ld	-19 (ix), l
   5B54 7D            [ 4]  305 	ld	a, l
   5B55 3D            [ 4]  306 	dec	a
   5B56 C2 E2 5B      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5B59 3A 12 77      [13]  309 	ld	a,(#_nbTrainList + 0)
   5B5C B7            [ 4]  310 	or	a, a
   5B5D 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   5B5F 21 07 00      [10]  313 	ld	hl, #0x0007
   5B62 E5            [11]  314 	push	hl
   5B63 CD FB 62      [17]  315 	call	_malloc
   5B66 F1            [10]  316 	pop	af
   5B67 22 0D 77      [16]  317 	ld	(_trainList), hl
   5B6A 18 19         [12]  318 	jr	00108$
   5B6C                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   5B6C 21 12 77      [10]  321 	ld	hl,#_nbTrainList + 0
   5B6F 4E            [ 7]  322 	ld	c, (hl)
   5B70 06 00         [ 7]  323 	ld	b, #0x00
   5B72 03            [ 6]  324 	inc	bc
   5B73 69            [ 4]  325 	ld	l, c
   5B74 60            [ 4]  326 	ld	h, b
   5B75 29            [11]  327 	add	hl, hl
   5B76 09            [11]  328 	add	hl, bc
   5B77 29            [11]  329 	add	hl, hl
   5B78 09            [11]  330 	add	hl, bc
   5B79 4D            [ 4]  331 	ld	c, l
   5B7A 44            [ 4]  332 	ld	b, h
   5B7B 2A 0D 77      [16]  333 	ld	hl, (_trainList)
   5B7E C5            [11]  334 	push	bc
   5B7F E5            [11]  335 	push	hl
   5B80 CD 02 5E      [17]  336 	call	_realloc
   5B83 F1            [10]  337 	pop	af
   5B84 F1            [10]  338 	pop	af
   5B85                     339 00108$:
                            340 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   5B85 ED 4B 12 77   [20]  341 	ld	bc, (_nbTrainList)
   5B89 06 00         [ 7]  342 	ld	b, #0x00
   5B8B 69            [ 4]  343 	ld	l, c
   5B8C 60            [ 4]  344 	ld	h, b
   5B8D 29            [11]  345 	add	hl, hl
   5B8E 09            [11]  346 	add	hl, bc
   5B8F 29            [11]  347 	add	hl, hl
   5B90 09            [11]  348 	add	hl, bc
   5B91 4D            [ 4]  349 	ld	c, l
   5B92 44            [ 4]  350 	ld	b, h
   5B93 2A 0D 77      [16]  351 	ld	hl, (_trainList)
   5B96 09            [11]  352 	add	hl, bc
   5B97 DD 7E 04      [19]  353 	ld	a, 4 (ix)
   5B9A 77            [ 7]  354 	ld	(hl), a
                            355 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   5B9B ED 4B 12 77   [20]  356 	ld	bc, (_nbTrainList)
   5B9F 06 00         [ 7]  357 	ld	b, #0x00
   5BA1 69            [ 4]  358 	ld	l, c
   5BA2 60            [ 4]  359 	ld	h, b
   5BA3 29            [11]  360 	add	hl, hl
   5BA4 09            [11]  361 	add	hl, bc
   5BA5 29            [11]  362 	add	hl, hl
   5BA6 09            [11]  363 	add	hl, bc
   5BA7 4D            [ 4]  364 	ld	c, l
   5BA8 44            [ 4]  365 	ld	b, h
   5BA9 2A 0D 77      [16]  366 	ld	hl, (_trainList)
   5BAC 09            [11]  367 	add	hl, bc
   5BAD 23            [ 6]  368 	inc	hl
   5BAE 36 00         [10]  369 	ld	(hl), #0x00
                            370 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   5BB0 ED 4B 12 77   [20]  371 	ld	bc, (_nbTrainList)
   5BB4 06 00         [ 7]  372 	ld	b, #0x00
   5BB6 69            [ 4]  373 	ld	l, c
   5BB7 60            [ 4]  374 	ld	h, b
   5BB8 29            [11]  375 	add	hl, hl
   5BB9 09            [11]  376 	add	hl, bc
   5BBA 29            [11]  377 	add	hl, hl
   5BBB 09            [11]  378 	add	hl, bc
   5BBC 4D            [ 4]  379 	ld	c, l
   5BBD 44            [ 4]  380 	ld	b, h
   5BBE 2A 0D 77      [16]  381 	ld	hl, (_trainList)
   5BC1 09            [11]  382 	add	hl, bc
   5BC2 23            [ 6]  383 	inc	hl
   5BC3 23            [ 6]  384 	inc	hl
   5BC4 36 00         [10]  385 	ld	(hl), #0x00
                            386 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5BC6 ED 4B 12 77   [20]  387 	ld	bc, (_nbTrainList)
   5BCA 06 00         [ 7]  388 	ld	b, #0x00
   5BCC 69            [ 4]  389 	ld	l, c
   5BCD 60            [ 4]  390 	ld	h, b
   5BCE 29            [11]  391 	add	hl, hl
   5BCF 09            [11]  392 	add	hl, bc
   5BD0 29            [11]  393 	add	hl, hl
   5BD1 09            [11]  394 	add	hl, bc
   5BD2 4D            [ 4]  395 	ld	c, l
   5BD3 44            [ 4]  396 	ld	b, h
   5BD4 2A 0D 77      [16]  397 	ld	hl, (_trainList)
   5BD7 09            [11]  398 	add	hl, bc
   5BD8 23            [ 6]  399 	inc	hl
   5BD9 23            [ 6]  400 	inc	hl
   5BDA 23            [ 6]  401 	inc	hl
   5BDB 36 00         [10]  402 	ld	(hl), #0x00
                            403 ;src/game/train.c:81: CURSOR_MODE = PUTTRAIN;
   5BDD 21 11 77      [10]  404 	ld	hl,#_CURSOR_MODE + 0
   5BE0 36 01         [10]  405 	ld	(hl), #0x01
   5BE2                     406 00110$:
                            407 ;src/game/train.c:84: return returnChoice;
   5BE2 DD 6E ED      [19]  408 	ld	l, -19 (ix)
   5BE5 DD F9         [10]  409 	ld	sp, ix
   5BE7 DD E1         [14]  410 	pop	ix
   5BE9 C9            [10]  411 	ret
   5BEA                     412 ___str_2:
   5BEA 00                  413 	.db 0x00
   5BEB                     414 ___str_3:
   5BEB 31 33 30 20 42      415 	.ascii "130 B"
   5BF0 00                  416 	.db 0x00
   5BF1                     417 ___str_4:
   5BF1 50 72 6F 70 75 6C   418 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5C02 00                  419 	.db 0x00
   5C03                     420 ___str_5:
   5C03 45 6E 74 72 79 20   421 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5C19 00                  422 	.db 0x00
   5C1A                     423 ___str_6:
   5C1A 4D 61 78 69 6D 75   424 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5C30 00                  425 	.db 0x00
   5C31                     426 ___str_7:
   5C31 50 72 69 63 65 3A   427 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5C3D 00                  428 	.db 0x00
   5C3E                     429 ___str_8:
   5C3E 31 34 31 20 54 41   430 	.ascii "141 TA"
   5C44 00                  431 	.db 0x00
   5C45                     432 ___str_9:
   5C45 45 6E 74 72 79 20   433 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5C5B 00                  434 	.db 0x00
   5C5C                     435 ___str_10:
   5C5C 4D 61 78 69 6D 75   436 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5C72 00                  437 	.db 0x00
   5C73                     438 ___str_11:
   5C73 50 72 69 63 65 3A   439 	.ascii "Price: 900$"
        20 39 30 30 24
   5C7E 00                  440 	.db 0x00
   5C7F                     441 ___str_12:
   5C7F 32 34 32 20 43 54   442 	.ascii "242 CT"
   5C85 00                  443 	.db 0x00
   5C86                     444 ___str_13:
   5C86 45 6E 74 72 79 20   445 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5C9C 00                  446 	.db 0x00
   5C9D                     447 ___str_14:
   5C9D 4D 61 78 69 6D 75   448 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5CB3 00                  449 	.db 0x00
   5CB4                     450 ___str_15:
   5CB4 50 72 69 63 65 3A   451 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5CC0 00                  452 	.db 0x00
   5CC1                     453 ___str_16:
   5CC1 31 34 31 20 50      454 	.ascii "141 P"
   5CC6 00                  455 	.db 0x00
   5CC7                     456 ___str_17:
   5CC7 45 6E 74 72 79 20   457 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5CDD 00                  458 	.db 0x00
   5CDE                     459 ___str_18:
   5CDE 4D 61 78 69 6D 75   460 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5CF5 00                  461 	.db 0x00
   5CF6                     462 ___str_19:
   5CF6 50 72 69 63 65 3A   463 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5D02 00                  464 	.db 0x00
                            465 ;src/game/train.c:87: void buyTrain()
                            466 ;	---------------------------------
                            467 ; Function buyTrain
                            468 ; ---------------------------------
   5D03                     469 _buyTrain::
   5D03 DD E5         [15]  470 	push	ix
   5D05 DD 21 00 00   [14]  471 	ld	ix,#0
   5D09 DD 39         [15]  472 	add	ix,sp
   5D0B 21 E8 FF      [10]  473 	ld	hl, #-24
   5D0E 39            [11]  474 	add	hl, sp
   5D0F F9            [ 6]  475 	ld	sp, hl
                            476 ;src/game/train.c:89: const char *txtMenuLoco[] = { 
   5D10 21 00 00      [10]  477 	ld	hl, #0x0000
   5D13 39            [11]  478 	add	hl, sp
   5D14 4D            [ 4]  479 	ld	c,l
   5D15 44            [ 4]  480 	ld	b,h
   5D16 36 9E         [10]  481 	ld	(hl), #<(___str_20)
   5D18 23            [ 6]  482 	inc	hl
   5D19 36 5D         [10]  483 	ld	(hl), #>(___str_20)
   5D1B 69            [ 4]  484 	ld	l, c
   5D1C 60            [ 4]  485 	ld	h, b
   5D1D 23            [ 6]  486 	inc	hl
   5D1E 23            [ 6]  487 	inc	hl
   5D1F 11 A4 5D      [10]  488 	ld	de, #___str_21+0
   5D22 73            [ 7]  489 	ld	(hl), e
   5D23 23            [ 6]  490 	inc	hl
   5D24 72            [ 7]  491 	ld	(hl), d
   5D25 21 04 00      [10]  492 	ld	hl, #0x0004
   5D28 09            [11]  493 	add	hl, bc
   5D29 11 AB 5D      [10]  494 	ld	de, #___str_22+0
   5D2C 73            [ 7]  495 	ld	(hl), e
   5D2D 23            [ 6]  496 	inc	hl
   5D2E 72            [ 7]  497 	ld	(hl), d
   5D2F 21 06 00      [10]  498 	ld	hl, #0x0006
   5D32 09            [11]  499 	add	hl, bc
   5D33 11 B2 5D      [10]  500 	ld	de, #___str_23+0
   5D36 73            [ 7]  501 	ld	(hl), e
   5D37 23            [ 6]  502 	inc	hl
   5D38 72            [ 7]  503 	ld	(hl), d
   5D39 21 08 00      [10]  504 	ld	hl, #0x0008
   5D3C 09            [11]  505 	add	hl, bc
   5D3D 11 B8 5D      [10]  506 	ld	de, #___str_24+0
   5D40 73            [ 7]  507 	ld	(hl), e
   5D41 23            [ 6]  508 	inc	hl
   5D42 72            [ 7]  509 	ld	(hl), d
   5D43 21 0A 00      [10]  510 	ld	hl, #0x000a
   5D46 09            [11]  511 	add	hl, bc
   5D47 11 C1 5D      [10]  512 	ld	de, #___str_25+0
   5D4A 73            [ 7]  513 	ld	(hl), e
   5D4B 23            [ 6]  514 	inc	hl
   5D4C 72            [ 7]  515 	ld	(hl), d
   5D4D 21 0C 00      [10]  516 	ld	hl, #0x000c
   5D50 09            [11]  517 	add	hl, bc
   5D51 11 CB 5D      [10]  518 	ld	de, #___str_26+0
   5D54 73            [ 7]  519 	ld	(hl), e
   5D55 23            [ 6]  520 	inc	hl
   5D56 72            [ 7]  521 	ld	(hl), d
   5D57 21 0E 00      [10]  522 	ld	hl, #0x000e
   5D5A 09            [11]  523 	add	hl, bc
   5D5B 11 D4 5D      [10]  524 	ld	de, #___str_27+0
   5D5E 73            [ 7]  525 	ld	(hl), e
   5D5F 23            [ 6]  526 	inc	hl
   5D60 72            [ 7]  527 	ld	(hl), d
   5D61 21 10 00      [10]  528 	ld	hl, #0x0010
   5D64 09            [11]  529 	add	hl, bc
   5D65 11 DD 5D      [10]  530 	ld	de, #___str_28+0
   5D68 73            [ 7]  531 	ld	(hl), e
   5D69 23            [ 6]  532 	inc	hl
   5D6A 72            [ 7]  533 	ld	(hl), d
   5D6B 21 12 00      [10]  534 	ld	hl, #0x0012
   5D6E 09            [11]  535 	add	hl, bc
   5D6F 11 E4 5D      [10]  536 	ld	de, #___str_29+0
   5D72 73            [ 7]  537 	ld	(hl), e
   5D73 23            [ 6]  538 	inc	hl
   5D74 72            [ 7]  539 	ld	(hl), d
   5D75 21 14 00      [10]  540 	ld	hl, #0x0014
   5D78 09            [11]  541 	add	hl, bc
   5D79 11 F1 5D      [10]  542 	ld	de, #___str_30+0
   5D7C 73            [ 7]  543 	ld	(hl), e
   5D7D 23            [ 6]  544 	inc	hl
   5D7E 72            [ 7]  545 	ld	(hl), d
   5D7F 21 16 00      [10]  546 	ld	hl, #0x0016
   5D82 09            [11]  547 	add	hl, bc
   5D83 11 FA 5D      [10]  548 	ld	de, #___str_31+0
   5D86 73            [ 7]  549 	ld	(hl), e
   5D87 23            [ 6]  550 	inc	hl
   5D88 72            [ 7]  551 	ld	(hl), d
                            552 ;src/game/train.c:104: confirmBuyTrain( drawMenu(txtMenuLoco,12) );
   5D89 3E 0C         [ 7]  553 	ld	a, #0x0c
   5D8B F5            [11]  554 	push	af
   5D8C 33            [ 6]  555 	inc	sp
   5D8D C5            [11]  556 	push	bc
   5D8E CD 2F 45      [17]  557 	call	_drawMenu
   5D91 F1            [10]  558 	pop	af
   5D92 33            [ 6]  559 	inc	sp
   5D93 45            [ 4]  560 	ld	b, l
   5D94 C5            [11]  561 	push	bc
   5D95 33            [ 6]  562 	inc	sp
   5D96 CD 25 5A      [17]  563 	call	_confirmBuyTrain
   5D99 DD F9         [10]  564 	ld	sp,ix
   5D9B DD E1         [14]  565 	pop	ix
   5D9D C9            [10]  566 	ret
   5D9E                     567 ___str_20:
   5D9E 31 33 30 20 42      568 	.ascii "130 B"
   5DA3 00                  569 	.db 0x00
   5DA4                     570 ___str_21:
   5DA4 31 34 31 20 54 41   571 	.ascii "141 TA"
   5DAA 00                  572 	.db 0x00
   5DAB                     573 ___str_22:
   5DAB 32 34 32 20 43 54   574 	.ascii "242 CT"
   5DB1 00                  575 	.db 0x00
   5DB2                     576 ___str_23:
   5DB2 31 34 31 20 50      577 	.ascii "141 P"
   5DB7 00                  578 	.db 0x00
   5DB8                     579 ___str_24:
   5DB8 42 42 20 36 33 30   580 	.ascii "BB 63000"
        30 30
   5DC0 00                  581 	.db 0x00
   5DC1                     582 ___str_25:
   5DC1 52 65 20 34 2F 34   583 	.ascii "Re 4/4 II"
        20 49 49
   5DCA 00                  584 	.db 0x00
   5DCB                     585 ___str_26:
   5DCB 42 42 20 36 37 30   586 	.ascii "BB 67000"
        30 30
   5DD3 00                  587 	.db 0x00
   5DD4                     588 ___str_27:
   5DD4 42 42 20 31 35 30   589 	.ascii "BB 15000"
        30 30
   5DDC 00                  590 	.db 0x00
   5DDD                     591 ___str_28:
   5DDD 52 65 20 34 36 30   592 	.ascii "Re 460"
   5DE3 00                  593 	.db 0x00
   5DE4                     594 ___str_29:
   5DE4 44 42 20 43 6C 61   595 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5DF0 00                  596 	.db 0x00
   5DF1                     597 ___str_30:
   5DF1 42 42 20 32 37 30   598 	.ascii "BB 27000"
        30 30
   5DF9 00                  599 	.db 0x00
   5DFA                     600 ___str_31:
   5DFA 45 53 20 36 34 46   601 	.ascii "ES 64F4"
        34
   5E01 00                  602 	.db 0x00
                            603 	.area _CODE
                            604 	.area _INITIALIZER
                            605 	.area _CABS (ABS)
