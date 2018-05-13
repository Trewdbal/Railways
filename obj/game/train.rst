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
   5A4E                      55 _trainManagement::
   5A4E DD E5         [15]   56 	push	ix
   5A50 DD 21 00 00   [14]   57 	ld	ix,#0
   5A54 DD 39         [15]   58 	add	ix,sp
   5A56 F5            [11]   59 	push	af
   5A57 F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   5A58 21 00 00      [10]   62 	ld	hl, #0x0000
   5A5B 39            [11]   63 	add	hl, sp
   5A5C 4D            [ 4]   64 	ld	c,l
   5A5D 44            [ 4]   65 	ld	b,h
   5A5E 36 86         [10]   66 	ld	(hl), #<(___str_0)
   5A60 23            [ 6]   67 	inc	hl
   5A61 36 5A         [10]   68 	ld	(hl), #>(___str_0)
   5A63 69            [ 4]   69 	ld	l, c
   5A64 60            [ 4]   70 	ld	h, b
   5A65 23            [ 6]   71 	inc	hl
   5A66 23            [ 6]   72 	inc	hl
   5A67 11 90 5A      [10]   73 	ld	de, #___str_1+0
   5A6A 73            [ 7]   74 	ld	(hl), e
   5A6B 23            [ 6]   75 	inc	hl
   5A6C 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   5A6D 3E 02         [ 7]   78 	ld	a, #0x02
   5A6F F5            [11]   79 	push	af
   5A70 33            [ 6]   80 	inc	sp
   5A71 C5            [11]   81 	push	bc
   5A72 CD 2F 45      [17]   82 	call	_drawMenu
   5A75 F1            [10]   83 	pop	af
   5A76 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   5A77 7D            [ 4]   86 	ld	a, l
   5A78 B7            [ 4]   87 	or	a, a
   5A79 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyTrain();
   5A7B CD 7E 5D      [17]   90 	call	_buyTrain
   5A7E                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   5A7E CD 33 41      [17]   93 	call	_putM1
   5A81 DD F9         [10]   94 	ld	sp, ix
   5A83 DD E1         [14]   95 	pop	ix
   5A85 C9            [10]   96 	ret
   5A86                      97 ___str_0:
   5A86 4E 65 77 20 74 72    98 	.ascii "New train"
        61 69 6E
   5A8F 00                   99 	.db 0x00
   5A90                     100 ___str_1:
   5A90 4D 61 6E 61 67 65   101 	.ascii "Manage existing"
        20 65 78 69 73 74
        69 6E 67
   5A9F 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyTrain(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyTrain
                            106 ; ---------------------------------
   5AA0                     107 _confirmBuyTrain::
   5AA0 DD E5         [15]  108 	push	ix
   5AA2 DD 21 00 00   [14]  109 	ld	ix,#0
   5AA6 DD 39         [15]  110 	add	ix,sp
   5AA8 21 ED FF      [10]  111 	ld	hl, #-19
   5AAB 39            [11]  112 	add	hl, sp
   5AAC F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   5AAD CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   5AB0 21 01 00      [10]  117 	ld	hl, #0x0001
   5AB3 39            [11]  118 	add	hl, sp
   5AB4 4D            [ 4]  119 	ld	c,l
   5AB5 44            [ 4]  120 	ld	b,h
   5AB6 23            [ 6]  121 	inc	hl
   5AB7 23            [ 6]  122 	inc	hl
   5AB8 11 65 5C      [10]  123 	ld	de, #___str_2+0
   5ABB 73            [ 7]  124 	ld	(hl), e
   5ABC 23            [ 6]  125 	inc	hl
   5ABD 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5ABE 21 04 00      [10]  128 	ld	hl, #0x0004
   5AC1 09            [11]  129 	add	hl,bc
   5AC2 EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5AC3 21 06 00      [10]  132 	ld	hl, #0x0006
   5AC6 09            [11]  133 	add	hl,bc
   5AC7 DD 75 FA      [19]  134 	ld	-6 (ix), l
   5ACA DD 74 FB      [19]  135 	ld	-5 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5ACD 21 08 00      [10]  137 	ld	hl, #0x0008
   5AD0 09            [11]  138 	add	hl,bc
   5AD1 DD 75 FE      [19]  139 	ld	-2 (ix), l
   5AD4 DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5AD7 21 0A 00      [10]  142 	ld	hl, #0x000a
   5ADA 09            [11]  143 	add	hl,bc
   5ADB DD 75 FC      [19]  144 	ld	-4 (ix), l
   5ADE DD 74 FD      [19]  145 	ld	-3 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   5AE1 DD 7E 04      [19]  147 	ld	a, 4 (ix)
   5AE4 B7            [ 4]  148 	or	a, a
   5AE5 28 18         [12]  149 	jr	Z,00101$
   5AE7 DD 7E 04      [19]  150 	ld	a, 4 (ix)
   5AEA 3D            [ 4]  151 	dec	a
   5AEB 28 44         [12]  152 	jr	Z,00102$
   5AED DD 7E 04      [19]  153 	ld	a, 4 (ix)
   5AF0 D6 02         [ 7]  154 	sub	a, #0x02
   5AF2 28 6E         [12]  155 	jr	Z,00103$
   5AF4 DD 7E 04      [19]  156 	ld	a, 4 (ix)
   5AF7 D6 03         [ 7]  157 	sub	a, #0x03
   5AF9 CA 93 5B      [10]  158 	jp	Z,00104$
   5AFC C3 C2 5B      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   5AFF                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   5AFF 69            [ 4]  163 	ld	l, c
   5B00 60            [ 4]  164 	ld	h, b
   5B01 36 66         [10]  165 	ld	(hl), #<(___str_3)
   5B03 23            [ 6]  166 	inc	hl
   5B04 36 5C         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5B06 3E 6C         [ 7]  169 	ld	a, #<(___str_4)
   5B08 12            [ 7]  170 	ld	(de), a
   5B09 13            [ 6]  171 	inc	de
   5B0A 3E 5C         [ 7]  172 	ld	a, #>(___str_4)
   5B0C 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5B0D DD 6E FA      [19]  175 	ld	l,-6 (ix)
   5B10 DD 66 FB      [19]  176 	ld	h,-5 (ix)
   5B13 36 7E         [10]  177 	ld	(hl), #<(___str_5)
   5B15 23            [ 6]  178 	inc	hl
   5B16 36 5C         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5B18 DD 6E FE      [19]  181 	ld	l,-2 (ix)
   5B1B DD 66 FF      [19]  182 	ld	h,-1 (ix)
   5B1E 36 95         [10]  183 	ld	(hl), #<(___str_6)
   5B20 23            [ 6]  184 	inc	hl
   5B21 36 5C         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   5B23 DD 6E FC      [19]  187 	ld	l,-4 (ix)
   5B26 DD 66 FD      [19]  188 	ld	h,-3 (ix)
   5B29 36 AC         [10]  189 	ld	(hl), #<(___str_7)
   5B2B 23            [ 6]  190 	inc	hl
   5B2C 36 5C         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   5B2E C3 C2 5B      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   5B31                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   5B31 69            [ 4]  197 	ld	l, c
   5B32 60            [ 4]  198 	ld	h, b
   5B33 36 B9         [10]  199 	ld	(hl), #<(___str_8)
   5B35 23            [ 6]  200 	inc	hl
   5B36 36 5C         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   5B38 3E 6C         [ 7]  203 	ld	a, #<(___str_4)
   5B3A 12            [ 7]  204 	ld	(de), a
   5B3B 13            [ 6]  205 	inc	de
   5B3C 3E 5C         [ 7]  206 	ld	a, #>(___str_4)
   5B3E 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   5B3F DD 6E FA      [19]  209 	ld	l,-6 (ix)
   5B42 DD 66 FB      [19]  210 	ld	h,-5 (ix)
   5B45 36 C0         [10]  211 	ld	(hl), #<(___str_9)
   5B47 23            [ 6]  212 	inc	hl
   5B48 36 5C         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   5B4A DD 6E FE      [19]  215 	ld	l,-2 (ix)
   5B4D DD 66 FF      [19]  216 	ld	h,-1 (ix)
   5B50 36 D7         [10]  217 	ld	(hl), #<(___str_10)
   5B52 23            [ 6]  218 	inc	hl
   5B53 36 5C         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   5B55 DD 6E FC      [19]  221 	ld	l,-4 (ix)
   5B58 DD 66 FD      [19]  222 	ld	h,-3 (ix)
   5B5B 36 EE         [10]  223 	ld	(hl), #<(___str_11)
   5B5D 23            [ 6]  224 	inc	hl
   5B5E 36 5C         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   5B60 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   5B62                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   5B62 69            [ 4]  231 	ld	l, c
   5B63 60            [ 4]  232 	ld	h, b
   5B64 36 FA         [10]  233 	ld	(hl), #<(___str_12)
   5B66 23            [ 6]  234 	inc	hl
   5B67 36 5C         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   5B69 3E 6C         [ 7]  237 	ld	a, #<(___str_4)
   5B6B 12            [ 7]  238 	ld	(de), a
   5B6C 13            [ 6]  239 	inc	de
   5B6D 3E 5C         [ 7]  240 	ld	a, #>(___str_4)
   5B6F 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   5B70 DD 6E FA      [19]  243 	ld	l,-6 (ix)
   5B73 DD 66 FB      [19]  244 	ld	h,-5 (ix)
   5B76 36 01         [10]  245 	ld	(hl), #<(___str_13)
   5B78 23            [ 6]  246 	inc	hl
   5B79 36 5D         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   5B7B DD 6E FE      [19]  249 	ld	l,-2 (ix)
   5B7E DD 66 FF      [19]  250 	ld	h,-1 (ix)
   5B81 36 18         [10]  251 	ld	(hl), #<(___str_14)
   5B83 23            [ 6]  252 	inc	hl
   5B84 36 5D         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5B86 DD 6E FC      [19]  255 	ld	l,-4 (ix)
   5B89 DD 66 FD      [19]  256 	ld	h,-3 (ix)
   5B8C 36 2F         [10]  257 	ld	(hl), #<(___str_15)
   5B8E 23            [ 6]  258 	inc	hl
   5B8F 36 5D         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5B91 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5B93                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5B93 69            [ 4]  265 	ld	l, c
   5B94 60            [ 4]  266 	ld	h, b
   5B95 36 3C         [10]  267 	ld	(hl), #<(___str_16)
   5B97 23            [ 6]  268 	inc	hl
   5B98 36 5D         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   5B9A 3E 6C         [ 7]  271 	ld	a, #<(___str_4)
   5B9C 12            [ 7]  272 	ld	(de), a
   5B9D 13            [ 6]  273 	inc	de
   5B9E 3E 5C         [ 7]  274 	ld	a, #>(___str_4)
   5BA0 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5BA1 DD 6E FA      [19]  277 	ld	l,-6 (ix)
   5BA4 DD 66 FB      [19]  278 	ld	h,-5 (ix)
   5BA7 36 42         [10]  279 	ld	(hl), #<(___str_17)
   5BA9 23            [ 6]  280 	inc	hl
   5BAA 36 5D         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   5BAC DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5BAF DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5BB2 36 59         [10]  285 	ld	(hl), #<(___str_18)
   5BB4 23            [ 6]  286 	inc	hl
   5BB5 36 5D         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   5BB7 DD 6E FC      [19]  289 	ld	l,-4 (ix)
   5BBA DD 66 FD      [19]  290 	ld	h,-3 (ix)
   5BBD 36 71         [10]  291 	ld	(hl), #<(___str_19)
   5BBF 23            [ 6]  292 	inc	hl
   5BC0 36 5D         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5BC2                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5BC2 21 06 01      [10]  297 	ld	hl, #0x0106
   5BC5 E5            [11]  298 	push	hl
   5BC6 C5            [11]  299 	push	bc
   5BC7 CD 2D 46      [17]  300 	call	_drawWindow
   5BCA F1            [10]  301 	pop	af
   5BCB F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   5BCC DD 75 ED      [19]  304 	ld	-19 (ix), l
   5BCF 7D            [ 4]  305 	ld	a, l
   5BD0 3D            [ 4]  306 	dec	a
   5BD1 C2 5D 5C      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5BD4 3A 8D 77      [13]  309 	ld	a,(#_nbTrainList + 0)
   5BD7 B7            [ 4]  310 	or	a, a
   5BD8 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   5BDA 21 07 00      [10]  313 	ld	hl, #0x0007
   5BDD E5            [11]  314 	push	hl
   5BDE CD 76 63      [17]  315 	call	_malloc
   5BE1 F1            [10]  316 	pop	af
   5BE2 22 88 77      [16]  317 	ld	(_trainList), hl
   5BE5 18 19         [12]  318 	jr	00108$
   5BE7                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   5BE7 21 8D 77      [10]  321 	ld	hl,#_nbTrainList + 0
   5BEA 4E            [ 7]  322 	ld	c, (hl)
   5BEB 06 00         [ 7]  323 	ld	b, #0x00
   5BED 03            [ 6]  324 	inc	bc
   5BEE 69            [ 4]  325 	ld	l, c
   5BEF 60            [ 4]  326 	ld	h, b
   5BF0 29            [11]  327 	add	hl, hl
   5BF1 09            [11]  328 	add	hl, bc
   5BF2 29            [11]  329 	add	hl, hl
   5BF3 09            [11]  330 	add	hl, bc
   5BF4 4D            [ 4]  331 	ld	c, l
   5BF5 44            [ 4]  332 	ld	b, h
   5BF6 2A 88 77      [16]  333 	ld	hl, (_trainList)
   5BF9 C5            [11]  334 	push	bc
   5BFA E5            [11]  335 	push	hl
   5BFB CD 7D 5E      [17]  336 	call	_realloc
   5BFE F1            [10]  337 	pop	af
   5BFF F1            [10]  338 	pop	af
   5C00                     339 00108$:
                            340 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   5C00 ED 4B 8D 77   [20]  341 	ld	bc, (_nbTrainList)
   5C04 06 00         [ 7]  342 	ld	b, #0x00
   5C06 69            [ 4]  343 	ld	l, c
   5C07 60            [ 4]  344 	ld	h, b
   5C08 29            [11]  345 	add	hl, hl
   5C09 09            [11]  346 	add	hl, bc
   5C0A 29            [11]  347 	add	hl, hl
   5C0B 09            [11]  348 	add	hl, bc
   5C0C 4D            [ 4]  349 	ld	c, l
   5C0D 44            [ 4]  350 	ld	b, h
   5C0E 2A 88 77      [16]  351 	ld	hl, (_trainList)
   5C11 09            [11]  352 	add	hl, bc
   5C12 DD 7E 04      [19]  353 	ld	a, 4 (ix)
   5C15 77            [ 7]  354 	ld	(hl), a
                            355 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   5C16 ED 4B 8D 77   [20]  356 	ld	bc, (_nbTrainList)
   5C1A 06 00         [ 7]  357 	ld	b, #0x00
   5C1C 69            [ 4]  358 	ld	l, c
   5C1D 60            [ 4]  359 	ld	h, b
   5C1E 29            [11]  360 	add	hl, hl
   5C1F 09            [11]  361 	add	hl, bc
   5C20 29            [11]  362 	add	hl, hl
   5C21 09            [11]  363 	add	hl, bc
   5C22 4D            [ 4]  364 	ld	c, l
   5C23 44            [ 4]  365 	ld	b, h
   5C24 2A 88 77      [16]  366 	ld	hl, (_trainList)
   5C27 09            [11]  367 	add	hl, bc
   5C28 23            [ 6]  368 	inc	hl
   5C29 36 00         [10]  369 	ld	(hl), #0x00
                            370 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   5C2B ED 4B 8D 77   [20]  371 	ld	bc, (_nbTrainList)
   5C2F 06 00         [ 7]  372 	ld	b, #0x00
   5C31 69            [ 4]  373 	ld	l, c
   5C32 60            [ 4]  374 	ld	h, b
   5C33 29            [11]  375 	add	hl, hl
   5C34 09            [11]  376 	add	hl, bc
   5C35 29            [11]  377 	add	hl, hl
   5C36 09            [11]  378 	add	hl, bc
   5C37 4D            [ 4]  379 	ld	c, l
   5C38 44            [ 4]  380 	ld	b, h
   5C39 2A 88 77      [16]  381 	ld	hl, (_trainList)
   5C3C 09            [11]  382 	add	hl, bc
   5C3D 23            [ 6]  383 	inc	hl
   5C3E 23            [ 6]  384 	inc	hl
   5C3F 36 00         [10]  385 	ld	(hl), #0x00
                            386 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5C41 ED 4B 8D 77   [20]  387 	ld	bc, (_nbTrainList)
   5C45 06 00         [ 7]  388 	ld	b, #0x00
   5C47 69            [ 4]  389 	ld	l, c
   5C48 60            [ 4]  390 	ld	h, b
   5C49 29            [11]  391 	add	hl, hl
   5C4A 09            [11]  392 	add	hl, bc
   5C4B 29            [11]  393 	add	hl, hl
   5C4C 09            [11]  394 	add	hl, bc
   5C4D 4D            [ 4]  395 	ld	c, l
   5C4E 44            [ 4]  396 	ld	b, h
   5C4F 2A 88 77      [16]  397 	ld	hl, (_trainList)
   5C52 09            [11]  398 	add	hl, bc
   5C53 23            [ 6]  399 	inc	hl
   5C54 23            [ 6]  400 	inc	hl
   5C55 23            [ 6]  401 	inc	hl
   5C56 36 00         [10]  402 	ld	(hl), #0x00
                            403 ;src/game/train.c:81: CURSOR_MODE = PUTTRAIN;
   5C58 21 8C 77      [10]  404 	ld	hl,#_CURSOR_MODE + 0
   5C5B 36 01         [10]  405 	ld	(hl), #0x01
   5C5D                     406 00110$:
                            407 ;src/game/train.c:84: return returnChoice;
   5C5D DD 6E ED      [19]  408 	ld	l, -19 (ix)
   5C60 DD F9         [10]  409 	ld	sp, ix
   5C62 DD E1         [14]  410 	pop	ix
   5C64 C9            [10]  411 	ret
   5C65                     412 ___str_2:
   5C65 00                  413 	.db 0x00
   5C66                     414 ___str_3:
   5C66 31 33 30 20 42      415 	.ascii "130 B"
   5C6B 00                  416 	.db 0x00
   5C6C                     417 ___str_4:
   5C6C 50 72 6F 70 75 6C   418 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5C7D 00                  419 	.db 0x00
   5C7E                     420 ___str_5:
   5C7E 45 6E 74 72 79 20   421 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5C94 00                  422 	.db 0x00
   5C95                     423 ___str_6:
   5C95 4D 61 78 69 6D 75   424 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5CAB 00                  425 	.db 0x00
   5CAC                     426 ___str_7:
   5CAC 50 72 69 63 65 3A   427 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5CB8 00                  428 	.db 0x00
   5CB9                     429 ___str_8:
   5CB9 31 34 31 20 54 41   430 	.ascii "141 TA"
   5CBF 00                  431 	.db 0x00
   5CC0                     432 ___str_9:
   5CC0 45 6E 74 72 79 20   433 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5CD6 00                  434 	.db 0x00
   5CD7                     435 ___str_10:
   5CD7 4D 61 78 69 6D 75   436 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5CED 00                  437 	.db 0x00
   5CEE                     438 ___str_11:
   5CEE 50 72 69 63 65 3A   439 	.ascii "Price: 900$"
        20 39 30 30 24
   5CF9 00                  440 	.db 0x00
   5CFA                     441 ___str_12:
   5CFA 32 34 32 20 43 54   442 	.ascii "242 CT"
   5D00 00                  443 	.db 0x00
   5D01                     444 ___str_13:
   5D01 45 6E 74 72 79 20   445 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5D17 00                  446 	.db 0x00
   5D18                     447 ___str_14:
   5D18 4D 61 78 69 6D 75   448 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5D2E 00                  449 	.db 0x00
   5D2F                     450 ___str_15:
   5D2F 50 72 69 63 65 3A   451 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5D3B 00                  452 	.db 0x00
   5D3C                     453 ___str_16:
   5D3C 31 34 31 20 50      454 	.ascii "141 P"
   5D41 00                  455 	.db 0x00
   5D42                     456 ___str_17:
   5D42 45 6E 74 72 79 20   457 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5D58 00                  458 	.db 0x00
   5D59                     459 ___str_18:
   5D59 4D 61 78 69 6D 75   460 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5D70 00                  461 	.db 0x00
   5D71                     462 ___str_19:
   5D71 50 72 69 63 65 3A   463 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5D7D 00                  464 	.db 0x00
                            465 ;src/game/train.c:87: void buyTrain()
                            466 ;	---------------------------------
                            467 ; Function buyTrain
                            468 ; ---------------------------------
   5D7E                     469 _buyTrain::
   5D7E DD E5         [15]  470 	push	ix
   5D80 DD 21 00 00   [14]  471 	ld	ix,#0
   5D84 DD 39         [15]  472 	add	ix,sp
   5D86 21 E8 FF      [10]  473 	ld	hl, #-24
   5D89 39            [11]  474 	add	hl, sp
   5D8A F9            [ 6]  475 	ld	sp, hl
                            476 ;src/game/train.c:89: const char *txtMenuLoco[] = { 
   5D8B 21 00 00      [10]  477 	ld	hl, #0x0000
   5D8E 39            [11]  478 	add	hl, sp
   5D8F 4D            [ 4]  479 	ld	c,l
   5D90 44            [ 4]  480 	ld	b,h
   5D91 36 19         [10]  481 	ld	(hl), #<(___str_20)
   5D93 23            [ 6]  482 	inc	hl
   5D94 36 5E         [10]  483 	ld	(hl), #>(___str_20)
   5D96 69            [ 4]  484 	ld	l, c
   5D97 60            [ 4]  485 	ld	h, b
   5D98 23            [ 6]  486 	inc	hl
   5D99 23            [ 6]  487 	inc	hl
   5D9A 11 1F 5E      [10]  488 	ld	de, #___str_21+0
   5D9D 73            [ 7]  489 	ld	(hl), e
   5D9E 23            [ 6]  490 	inc	hl
   5D9F 72            [ 7]  491 	ld	(hl), d
   5DA0 21 04 00      [10]  492 	ld	hl, #0x0004
   5DA3 09            [11]  493 	add	hl, bc
   5DA4 11 26 5E      [10]  494 	ld	de, #___str_22+0
   5DA7 73            [ 7]  495 	ld	(hl), e
   5DA8 23            [ 6]  496 	inc	hl
   5DA9 72            [ 7]  497 	ld	(hl), d
   5DAA 21 06 00      [10]  498 	ld	hl, #0x0006
   5DAD 09            [11]  499 	add	hl, bc
   5DAE 11 2D 5E      [10]  500 	ld	de, #___str_23+0
   5DB1 73            [ 7]  501 	ld	(hl), e
   5DB2 23            [ 6]  502 	inc	hl
   5DB3 72            [ 7]  503 	ld	(hl), d
   5DB4 21 08 00      [10]  504 	ld	hl, #0x0008
   5DB7 09            [11]  505 	add	hl, bc
   5DB8 11 33 5E      [10]  506 	ld	de, #___str_24+0
   5DBB 73            [ 7]  507 	ld	(hl), e
   5DBC 23            [ 6]  508 	inc	hl
   5DBD 72            [ 7]  509 	ld	(hl), d
   5DBE 21 0A 00      [10]  510 	ld	hl, #0x000a
   5DC1 09            [11]  511 	add	hl, bc
   5DC2 11 3C 5E      [10]  512 	ld	de, #___str_25+0
   5DC5 73            [ 7]  513 	ld	(hl), e
   5DC6 23            [ 6]  514 	inc	hl
   5DC7 72            [ 7]  515 	ld	(hl), d
   5DC8 21 0C 00      [10]  516 	ld	hl, #0x000c
   5DCB 09            [11]  517 	add	hl, bc
   5DCC 11 46 5E      [10]  518 	ld	de, #___str_26+0
   5DCF 73            [ 7]  519 	ld	(hl), e
   5DD0 23            [ 6]  520 	inc	hl
   5DD1 72            [ 7]  521 	ld	(hl), d
   5DD2 21 0E 00      [10]  522 	ld	hl, #0x000e
   5DD5 09            [11]  523 	add	hl, bc
   5DD6 11 4F 5E      [10]  524 	ld	de, #___str_27+0
   5DD9 73            [ 7]  525 	ld	(hl), e
   5DDA 23            [ 6]  526 	inc	hl
   5DDB 72            [ 7]  527 	ld	(hl), d
   5DDC 21 10 00      [10]  528 	ld	hl, #0x0010
   5DDF 09            [11]  529 	add	hl, bc
   5DE0 11 58 5E      [10]  530 	ld	de, #___str_28+0
   5DE3 73            [ 7]  531 	ld	(hl), e
   5DE4 23            [ 6]  532 	inc	hl
   5DE5 72            [ 7]  533 	ld	(hl), d
   5DE6 21 12 00      [10]  534 	ld	hl, #0x0012
   5DE9 09            [11]  535 	add	hl, bc
   5DEA 11 5F 5E      [10]  536 	ld	de, #___str_29+0
   5DED 73            [ 7]  537 	ld	(hl), e
   5DEE 23            [ 6]  538 	inc	hl
   5DEF 72            [ 7]  539 	ld	(hl), d
   5DF0 21 14 00      [10]  540 	ld	hl, #0x0014
   5DF3 09            [11]  541 	add	hl, bc
   5DF4 11 6C 5E      [10]  542 	ld	de, #___str_30+0
   5DF7 73            [ 7]  543 	ld	(hl), e
   5DF8 23            [ 6]  544 	inc	hl
   5DF9 72            [ 7]  545 	ld	(hl), d
   5DFA 21 16 00      [10]  546 	ld	hl, #0x0016
   5DFD 09            [11]  547 	add	hl, bc
   5DFE 11 75 5E      [10]  548 	ld	de, #___str_31+0
   5E01 73            [ 7]  549 	ld	(hl), e
   5E02 23            [ 6]  550 	inc	hl
   5E03 72            [ 7]  551 	ld	(hl), d
                            552 ;src/game/train.c:104: confirmBuyTrain( drawMenu(txtMenuLoco,12) );
   5E04 3E 0C         [ 7]  553 	ld	a, #0x0c
   5E06 F5            [11]  554 	push	af
   5E07 33            [ 6]  555 	inc	sp
   5E08 C5            [11]  556 	push	bc
   5E09 CD 2F 45      [17]  557 	call	_drawMenu
   5E0C F1            [10]  558 	pop	af
   5E0D 33            [ 6]  559 	inc	sp
   5E0E 45            [ 4]  560 	ld	b, l
   5E0F C5            [11]  561 	push	bc
   5E10 33            [ 6]  562 	inc	sp
   5E11 CD A0 5A      [17]  563 	call	_confirmBuyTrain
   5E14 DD F9         [10]  564 	ld	sp,ix
   5E16 DD E1         [14]  565 	pop	ix
   5E18 C9            [10]  566 	ret
   5E19                     567 ___str_20:
   5E19 31 33 30 20 42      568 	.ascii "130 B"
   5E1E 00                  569 	.db 0x00
   5E1F                     570 ___str_21:
   5E1F 31 34 31 20 54 41   571 	.ascii "141 TA"
   5E25 00                  572 	.db 0x00
   5E26                     573 ___str_22:
   5E26 32 34 32 20 43 54   574 	.ascii "242 CT"
   5E2C 00                  575 	.db 0x00
   5E2D                     576 ___str_23:
   5E2D 31 34 31 20 50      577 	.ascii "141 P"
   5E32 00                  578 	.db 0x00
   5E33                     579 ___str_24:
   5E33 42 42 20 36 33 30   580 	.ascii "BB 63000"
        30 30
   5E3B 00                  581 	.db 0x00
   5E3C                     582 ___str_25:
   5E3C 52 65 20 34 2F 34   583 	.ascii "Re 4/4 II"
        20 49 49
   5E45 00                  584 	.db 0x00
   5E46                     585 ___str_26:
   5E46 42 42 20 36 37 30   586 	.ascii "BB 67000"
        30 30
   5E4E 00                  587 	.db 0x00
   5E4F                     588 ___str_27:
   5E4F 42 42 20 31 35 30   589 	.ascii "BB 15000"
        30 30
   5E57 00                  590 	.db 0x00
   5E58                     591 ___str_28:
   5E58 52 65 20 34 36 30   592 	.ascii "Re 460"
   5E5E 00                  593 	.db 0x00
   5E5F                     594 ___str_29:
   5E5F 44 42 20 43 6C 61   595 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5E6B 00                  596 	.db 0x00
   5E6C                     597 ___str_30:
   5E6C 42 42 20 32 37 30   598 	.ascii "BB 27000"
        30 30
   5E74 00                  599 	.db 0x00
   5E75                     600 ___str_31:
   5E75 45 53 20 36 34 46   601 	.ascii "ES 64F4"
        34
   5E7C 00                  602 	.db 0x00
                            603 	.area _CODE
                            604 	.area _INITIALIZER
                            605 	.area _CABS (ABS)
