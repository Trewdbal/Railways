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
                             18 	.globl _confirmBuyLocomotive
                             19 	.globl _buyLocomotive
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
   580C                      55 _trainManagement::
   580C DD E5         [15]   56 	push	ix
   580E DD 21 00 00   [14]   57 	ld	ix,#0
   5812 DD 39         [15]   58 	add	ix,sp
   5814 F5            [11]   59 	push	af
   5815 F5            [11]   60 	push	af
                             61 ;src/game/train.c:5: const char *txtMenuChoice[] = { 
   5816 21 00 00      [10]   62 	ld	hl, #0x0000
   5819 39            [11]   63 	add	hl, sp
   581A 4D            [ 4]   64 	ld	c,l
   581B 44            [ 4]   65 	ld	b,h
   581C 36 44         [10]   66 	ld	(hl), #<(___str_0)
   581E 23            [ 6]   67 	inc	hl
   581F 36 58         [10]   68 	ld	(hl), #>(___str_0)
   5821 69            [ 4]   69 	ld	l, c
   5822 60            [ 4]   70 	ld	h, b
   5823 23            [ 6]   71 	inc	hl
   5824 23            [ 6]   72 	inc	hl
   5825 11 55 58      [10]   73 	ld	de, #___str_1+0
   5828 73            [ 7]   74 	ld	(hl), e
   5829 23            [ 6]   75 	inc	hl
   582A 72            [ 7]   76 	ld	(hl), d
                             77 ;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
   582B 3E 02         [ 7]   78 	ld	a, #0x02
   582D F5            [11]   79 	push	af
   582E 33            [ 6]   80 	inc	sp
   582F C5            [11]   81 	push	bc
   5830 CD 2F 45      [17]   82 	call	_drawMenu
   5833 F1            [10]   83 	pop	af
   5834 33            [ 6]   84 	inc	sp
                             85 ;src/game/train.c:11: if(menuChoice == 0)
   5835 7D            [ 4]   86 	ld	a, l
   5836 B7            [ 4]   87 	or	a, a
   5837 20 03         [12]   88 	jr	NZ,00102$
                             89 ;src/game/train.c:12: buyLocomotive();
   5839 CD 40 5B      [17]   90 	call	_buyLocomotive
   583C                      91 00102$:
                             92 ;src/game/train.c:14: putM1();
   583C CD 33 41      [17]   93 	call	_putM1
   583F DD F9         [10]   94 	ld	sp, ix
   5841 DD E1         [14]   95 	pop	ix
   5843 C9            [10]   96 	ret
   5844                      97 ___str_0:
   5844 42 75 79 20 61 20    98 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   5854 00                   99 	.db 0x00
   5855                     100 ___str_1:
   5855 42 61 63 6B 20 74   101 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   5862 00                  102 	.db 0x00
                            103 ;src/game/train.c:18: u8 confirmBuyLocomotive(u8 iSelect)
                            104 ;	---------------------------------
                            105 ; Function confirmBuyLocomotive
                            106 ; ---------------------------------
   5863                     107 _confirmBuyLocomotive::
   5863 DD E5         [15]  108 	push	ix
   5865 DD 21 00 00   [14]  109 	ld	ix,#0
   5869 DD 39         [15]  110 	add	ix,sp
   586B 21 ED FF      [10]  111 	ld	hl, #-19
   586E 39            [11]  112 	add	hl, sp
   586F F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/train.c:25: putM2();
   5870 CD 44 41      [17]  115 	call	_putM2
                            116 ;src/game/train.c:27: txtWindowLocomotive[1] = "";	
   5873 21 01 00      [10]  117 	ld	hl, #0x0001
   5876 39            [11]  118 	add	hl, sp
   5877 4D            [ 4]  119 	ld	c,l
   5878 44            [ 4]  120 	ld	b,h
   5879 23            [ 6]  121 	inc	hl
   587A 23            [ 6]  122 	inc	hl
   587B 11 27 5A      [10]  123 	ld	de, #___str_2+0
   587E 73            [ 7]  124 	ld	(hl), e
   587F 23            [ 6]  125 	inc	hl
   5880 72            [ 7]  126 	ld	(hl), d
                            127 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   5881 21 04 00      [10]  128 	ld	hl, #0x0004
   5884 09            [11]  129 	add	hl,bc
   5885 EB            [ 4]  130 	ex	de,hl
                            131 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   5886 21 06 00      [10]  132 	ld	hl, #0x0006
   5889 09            [11]  133 	add	hl,bc
   588A DD 75 FC      [19]  134 	ld	-4 (ix), l
   588D DD 74 FD      [19]  135 	ld	-3 (ix), h
                            136 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   5890 21 08 00      [10]  137 	ld	hl, #0x0008
   5893 09            [11]  138 	add	hl,bc
   5894 DD 75 FE      [19]  139 	ld	-2 (ix), l
   5897 DD 74 FF      [19]  140 	ld	-1 (ix), h
                            141 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   589A 21 0A 00      [10]  142 	ld	hl, #0x000a
   589D 09            [11]  143 	add	hl,bc
   589E DD 75 FA      [19]  144 	ld	-6 (ix), l
   58A1 DD 74 FB      [19]  145 	ld	-5 (ix), h
                            146 ;src/game/train.c:29: switch(iSelect)
   58A4 DD 7E 04      [19]  147 	ld	a, 4 (ix)
   58A7 B7            [ 4]  148 	or	a, a
   58A8 28 18         [12]  149 	jr	Z,00101$
   58AA DD 7E 04      [19]  150 	ld	a, 4 (ix)
   58AD 3D            [ 4]  151 	dec	a
   58AE 28 44         [12]  152 	jr	Z,00102$
   58B0 DD 7E 04      [19]  153 	ld	a, 4 (ix)
   58B3 D6 02         [ 7]  154 	sub	a, #0x02
   58B5 28 6E         [12]  155 	jr	Z,00103$
   58B7 DD 7E 04      [19]  156 	ld	a, 4 (ix)
   58BA D6 03         [ 7]  157 	sub	a, #0x03
   58BC CA 56 59      [10]  158 	jp	Z,00104$
   58BF C3 85 59      [10]  159 	jp	00105$
                            160 ;src/game/train.c:31: case 0:
   58C2                     161 00101$:
                            162 ;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
   58C2 69            [ 4]  163 	ld	l, c
   58C3 60            [ 4]  164 	ld	h, b
   58C4 36 28         [10]  165 	ld	(hl), #<(___str_3)
   58C6 23            [ 6]  166 	inc	hl
   58C7 36 5A         [10]  167 	ld	(hl), #>(___str_3)
                            168 ;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
   58C9 3E 2E         [ 7]  169 	ld	a, #<(___str_4)
   58CB 12            [ 7]  170 	ld	(de), a
   58CC 13            [ 6]  171 	inc	de
   58CD 3E 5A         [ 7]  172 	ld	a, #>(___str_4)
   58CF 12            [ 7]  173 	ld	(de), a
                            174 ;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
   58D0 DD 6E FC      [19]  175 	ld	l,-4 (ix)
   58D3 DD 66 FD      [19]  176 	ld	h,-3 (ix)
   58D6 36 40         [10]  177 	ld	(hl), #<(___str_5)
   58D8 23            [ 6]  178 	inc	hl
   58D9 36 5A         [10]  179 	ld	(hl), #>(___str_5)
                            180 ;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   58DB DD 6E FE      [19]  181 	ld	l,-2 (ix)
   58DE DD 66 FF      [19]  182 	ld	h,-1 (ix)
   58E1 36 57         [10]  183 	ld	(hl), #<(___str_6)
   58E3 23            [ 6]  184 	inc	hl
   58E4 36 5A         [10]  185 	ld	(hl), #>(___str_6)
                            186 ;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
   58E6 DD 6E FA      [19]  187 	ld	l,-6 (ix)
   58E9 DD 66 FB      [19]  188 	ld	h,-5 (ix)
   58EC 36 6E         [10]  189 	ld	(hl), #<(___str_7)
   58EE 23            [ 6]  190 	inc	hl
   58EF 36 5A         [10]  191 	ld	(hl), #>(___str_7)
                            192 ;src/game/train.c:37: break;
   58F1 C3 85 59      [10]  193 	jp	00105$
                            194 ;src/game/train.c:38: case 1:
   58F4                     195 00102$:
                            196 ;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
   58F4 69            [ 4]  197 	ld	l, c
   58F5 60            [ 4]  198 	ld	h, b
   58F6 36 7B         [10]  199 	ld	(hl), #<(___str_8)
   58F8 23            [ 6]  200 	inc	hl
   58F9 36 5A         [10]  201 	ld	(hl), #>(___str_8)
                            202 ;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
   58FB 3E 2E         [ 7]  203 	ld	a, #<(___str_4)
   58FD 12            [ 7]  204 	ld	(de), a
   58FE 13            [ 6]  205 	inc	de
   58FF 3E 5A         [ 7]  206 	ld	a, #>(___str_4)
   5901 12            [ 7]  207 	ld	(de), a
                            208 ;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
   5902 DD 6E FC      [19]  209 	ld	l,-4 (ix)
   5905 DD 66 FD      [19]  210 	ld	h,-3 (ix)
   5908 36 82         [10]  211 	ld	(hl), #<(___str_9)
   590A 23            [ 6]  212 	inc	hl
   590B 36 5A         [10]  213 	ld	(hl), #>(___str_9)
                            214 ;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   590D DD 6E FE      [19]  215 	ld	l,-2 (ix)
   5910 DD 66 FF      [19]  216 	ld	h,-1 (ix)
   5913 36 99         [10]  217 	ld	(hl), #<(___str_10)
   5915 23            [ 6]  218 	inc	hl
   5916 36 5A         [10]  219 	ld	(hl), #>(___str_10)
                            220 ;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
   5918 DD 6E FA      [19]  221 	ld	l,-6 (ix)
   591B DD 66 FB      [19]  222 	ld	h,-5 (ix)
   591E 36 B0         [10]  223 	ld	(hl), #<(___str_11)
   5920 23            [ 6]  224 	inc	hl
   5921 36 5A         [10]  225 	ld	(hl), #>(___str_11)
                            226 ;src/game/train.c:44: break;
   5923 18 60         [12]  227 	jr	00105$
                            228 ;src/game/train.c:45: case 2:
   5925                     229 00103$:
                            230 ;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
   5925 69            [ 4]  231 	ld	l, c
   5926 60            [ 4]  232 	ld	h, b
   5927 36 BC         [10]  233 	ld	(hl), #<(___str_12)
   5929 23            [ 6]  234 	inc	hl
   592A 36 5A         [10]  235 	ld	(hl), #>(___str_12)
                            236 ;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
   592C 3E 2E         [ 7]  237 	ld	a, #<(___str_4)
   592E 12            [ 7]  238 	ld	(de), a
   592F 13            [ 6]  239 	inc	de
   5930 3E 5A         [ 7]  240 	ld	a, #>(___str_4)
   5932 12            [ 7]  241 	ld	(de), a
                            242 ;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
   5933 DD 6E FC      [19]  243 	ld	l,-4 (ix)
   5936 DD 66 FD      [19]  244 	ld	h,-3 (ix)
   5939 36 C3         [10]  245 	ld	(hl), #<(___str_13)
   593B 23            [ 6]  246 	inc	hl
   593C 36 5A         [10]  247 	ld	(hl), #>(___str_13)
                            248 ;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
   593E DD 6E FE      [19]  249 	ld	l,-2 (ix)
   5941 DD 66 FF      [19]  250 	ld	h,-1 (ix)
   5944 36 DA         [10]  251 	ld	(hl), #<(___str_14)
   5946 23            [ 6]  252 	inc	hl
   5947 36 5A         [10]  253 	ld	(hl), #>(___str_14)
                            254 ;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
   5949 DD 6E FA      [19]  255 	ld	l,-6 (ix)
   594C DD 66 FB      [19]  256 	ld	h,-5 (ix)
   594F 36 F1         [10]  257 	ld	(hl), #<(___str_15)
   5951 23            [ 6]  258 	inc	hl
   5952 36 5A         [10]  259 	ld	(hl), #>(___str_15)
                            260 ;src/game/train.c:51: break;
   5954 18 2F         [12]  261 	jr	00105$
                            262 ;src/game/train.c:53: case 3:
   5956                     263 00104$:
                            264 ;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
   5956 69            [ 4]  265 	ld	l, c
   5957 60            [ 4]  266 	ld	h, b
   5958 36 FE         [10]  267 	ld	(hl), #<(___str_16)
   595A 23            [ 6]  268 	inc	hl
   595B 36 5A         [10]  269 	ld	(hl), #>(___str_16)
                            270 ;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
   595D 3E 2E         [ 7]  271 	ld	a, #<(___str_4)
   595F 12            [ 7]  272 	ld	(de), a
   5960 13            [ 6]  273 	inc	de
   5961 3E 5A         [ 7]  274 	ld	a, #>(___str_4)
   5963 12            [ 7]  275 	ld	(de), a
                            276 ;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
   5964 DD 6E FC      [19]  277 	ld	l,-4 (ix)
   5967 DD 66 FD      [19]  278 	ld	h,-3 (ix)
   596A 36 04         [10]  279 	ld	(hl), #<(___str_17)
   596C 23            [ 6]  280 	inc	hl
   596D 36 5B         [10]  281 	ld	(hl), #>(___str_17)
                            282 ;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   596F DD 6E FE      [19]  283 	ld	l,-2 (ix)
   5972 DD 66 FF      [19]  284 	ld	h,-1 (ix)
   5975 36 1B         [10]  285 	ld	(hl), #<(___str_18)
   5977 23            [ 6]  286 	inc	hl
   5978 36 5B         [10]  287 	ld	(hl), #>(___str_18)
                            288 ;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
   597A DD 6E FA      [19]  289 	ld	l,-6 (ix)
   597D DD 66 FB      [19]  290 	ld	h,-5 (ix)
   5980 36 33         [10]  291 	ld	(hl), #<(___str_19)
   5982 23            [ 6]  292 	inc	hl
   5983 36 5B         [10]  293 	ld	(hl), #>(___str_19)
                            294 ;src/game/train.c:60: }
   5985                     295 00105$:
                            296 ;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   5985 21 06 01      [10]  297 	ld	hl, #0x0106
   5988 E5            [11]  298 	push	hl
   5989 C5            [11]  299 	push	bc
   598A CD 2D 46      [17]  300 	call	_drawWindow
   598D F1            [10]  301 	pop	af
   598E F1            [10]  302 	pop	af
                            303 ;src/game/train.c:66: if (returnChoice==1)
   598F DD 75 ED      [19]  304 	ld	-19 (ix), l
   5992 7D            [ 4]  305 	ld	a, l
   5993 3D            [ 4]  306 	dec	a
   5994 C2 1F 5A      [10]  307 	jp	NZ,00110$
                            308 ;src/game/train.c:68: if(nbTrainList==0)
   5997 3A E6 81      [13]  309 	ld	a,(#_nbTrainList + 0)
   599A B7            [ 4]  310 	or	a, a
   599B 20 0D         [12]  311 	jr	NZ,00107$
                            312 ;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
   599D 21 06 00      [10]  313 	ld	hl, #0x0006
   59A0 E5            [11]  314 	push	hl
   59A1 CD E1 61      [17]  315 	call	_malloc
   59A4 F1            [10]  316 	pop	af
   59A5 22 E1 81      [16]  317 	ld	(_trainList), hl
   59A8 18 18         [12]  318 	jr	00108$
   59AA                     319 00107$:
                            320 ;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   59AA 21 E6 81      [10]  321 	ld	hl,#_nbTrainList + 0
   59AD 4E            [ 7]  322 	ld	c, (hl)
   59AE 06 00         [ 7]  323 	ld	b, #0x00
   59B0 03            [ 6]  324 	inc	bc
   59B1 69            [ 4]  325 	ld	l, c
   59B2 60            [ 4]  326 	ld	h, b
   59B3 29            [11]  327 	add	hl, hl
   59B4 09            [11]  328 	add	hl, bc
   59B5 29            [11]  329 	add	hl, hl
   59B6 4D            [ 4]  330 	ld	c, l
   59B7 44            [ 4]  331 	ld	b, h
   59B8 2A E1 81      [16]  332 	ld	hl, (_trainList)
   59BB C5            [11]  333 	push	bc
   59BC E5            [11]  334 	push	hl
   59BD CD 3F 5C      [17]  335 	call	_realloc
   59C0 F1            [10]  336 	pop	af
   59C1 F1            [10]  337 	pop	af
   59C2                     338 00108$:
                            339 ;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
   59C2 ED 4B E6 81   [20]  340 	ld	bc, (_nbTrainList)
   59C6 06 00         [ 7]  341 	ld	b, #0x00
   59C8 69            [ 4]  342 	ld	l, c
   59C9 60            [ 4]  343 	ld	h, b
   59CA 29            [11]  344 	add	hl, hl
   59CB 09            [11]  345 	add	hl, bc
   59CC 29            [11]  346 	add	hl, hl
   59CD 4D            [ 4]  347 	ld	c, l
   59CE 44            [ 4]  348 	ld	b, h
   59CF 2A E1 81      [16]  349 	ld	hl, (_trainList)
   59D2 09            [11]  350 	add	hl, bc
   59D3 DD 7E 04      [19]  351 	ld	a, 4 (ix)
   59D6 77            [ 7]  352 	ld	(hl), a
                            353 ;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
   59D7 ED 4B E6 81   [20]  354 	ld	bc, (_nbTrainList)
   59DB 06 00         [ 7]  355 	ld	b, #0x00
   59DD 69            [ 4]  356 	ld	l, c
   59DE 60            [ 4]  357 	ld	h, b
   59DF 29            [11]  358 	add	hl, hl
   59E0 09            [11]  359 	add	hl, bc
   59E1 29            [11]  360 	add	hl, hl
   59E2 4D            [ 4]  361 	ld	c, l
   59E3 44            [ 4]  362 	ld	b, h
   59E4 2A E1 81      [16]  363 	ld	hl, (_trainList)
   59E7 09            [11]  364 	add	hl, bc
   59E8 23            [ 6]  365 	inc	hl
   59E9 36 00         [10]  366 	ld	(hl), #0x00
                            367 ;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
   59EB ED 4B E6 81   [20]  368 	ld	bc, (_nbTrainList)
   59EF 06 00         [ 7]  369 	ld	b, #0x00
   59F1 69            [ 4]  370 	ld	l, c
   59F2 60            [ 4]  371 	ld	h, b
   59F3 29            [11]  372 	add	hl, hl
   59F4 09            [11]  373 	add	hl, bc
   59F5 29            [11]  374 	add	hl, hl
   59F6 4D            [ 4]  375 	ld	c, l
   59F7 44            [ 4]  376 	ld	b, h
   59F8 2A E1 81      [16]  377 	ld	hl, (_trainList)
   59FB 09            [11]  378 	add	hl, bc
   59FC 23            [ 6]  379 	inc	hl
   59FD 23            [ 6]  380 	inc	hl
   59FE 36 00         [10]  381 	ld	(hl), #0x00
                            382 ;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
   5A00 ED 4B E6 81   [20]  383 	ld	bc, (_nbTrainList)
   5A04 06 00         [ 7]  384 	ld	b, #0x00
   5A06 69            [ 4]  385 	ld	l, c
   5A07 60            [ 4]  386 	ld	h, b
   5A08 29            [11]  387 	add	hl, hl
   5A09 09            [11]  388 	add	hl, bc
   5A0A 29            [11]  389 	add	hl, hl
   5A0B 4D            [ 4]  390 	ld	c, l
   5A0C 44            [ 4]  391 	ld	b, h
   5A0D 2A E1 81      [16]  392 	ld	hl, (_trainList)
   5A10 09            [11]  393 	add	hl, bc
   5A11 23            [ 6]  394 	inc	hl
   5A12 23            [ 6]  395 	inc	hl
   5A13 23            [ 6]  396 	inc	hl
   5A14 36 00         [10]  397 	ld	(hl), #0x00
                            398 ;src/game/train.c:82: nbTrainList++;
   5A16 21 E6 81      [10]  399 	ld	hl, #_nbTrainList+0
   5A19 34            [11]  400 	inc	(hl)
                            401 ;src/game/train.c:83: CURSOR_MODE = PUTTRAIN;
   5A1A 21 E5 81      [10]  402 	ld	hl,#_CURSOR_MODE + 0
   5A1D 36 01         [10]  403 	ld	(hl), #0x01
   5A1F                     404 00110$:
                            405 ;src/game/train.c:86: return returnChoice;
   5A1F DD 6E ED      [19]  406 	ld	l, -19 (ix)
   5A22 DD F9         [10]  407 	ld	sp, ix
   5A24 DD E1         [14]  408 	pop	ix
   5A26 C9            [10]  409 	ret
   5A27                     410 ___str_2:
   5A27 00                  411 	.db 0x00
   5A28                     412 ___str_3:
   5A28 31 33 30 20 42      413 	.ascii "130 B"
   5A2D 00                  414 	.db 0x00
   5A2E                     415 ___str_4:
   5A2E 50 72 6F 70 75 6C   416 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   5A3F 00                  417 	.db 0x00
   5A40                     418 ___str_5:
   5A40 45 6E 74 72 79 20   419 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   5A56 00                  420 	.db 0x00
   5A57                     421 ___str_6:
   5A57 4D 61 78 69 6D 75   422 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   5A6D 00                  423 	.db 0x00
   5A6E                     424 ___str_7:
   5A6E 50 72 69 63 65 3A   425 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   5A7A 00                  426 	.db 0x00
   5A7B                     427 ___str_8:
   5A7B 31 34 31 20 54 41   428 	.ascii "141 TA"
   5A81 00                  429 	.db 0x00
   5A82                     430 ___str_9:
   5A82 45 6E 74 72 79 20   431 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   5A98 00                  432 	.db 0x00
   5A99                     433 ___str_10:
   5A99 4D 61 78 69 6D 75   434 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   5AAF 00                  435 	.db 0x00
   5AB0                     436 ___str_11:
   5AB0 50 72 69 63 65 3A   437 	.ascii "Price: 900$"
        20 39 30 30 24
   5ABB 00                  438 	.db 0x00
   5ABC                     439 ___str_12:
   5ABC 32 34 32 20 43 54   440 	.ascii "242 CT"
   5AC2 00                  441 	.db 0x00
   5AC3                     442 ___str_13:
   5AC3 45 6E 74 72 79 20   443 	.ascii "Entry of service: 1930"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 33 30
   5AD9 00                  444 	.db 0x00
   5ADA                     445 ___str_14:
   5ADA 4D 61 78 69 6D 75   446 	.ascii "Maximum speed: 85 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 35 20
        6B 6D 2F 68
   5AF0 00                  447 	.db 0x00
   5AF1                     448 ___str_15:
   5AF1 50 72 69 63 65 3A   449 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   5AFD 00                  450 	.db 0x00
   5AFE                     451 ___str_16:
   5AFE 31 34 31 20 50      452 	.ascii "141 P"
   5B03 00                  453 	.db 0x00
   5B04                     454 ___str_17:
   5B04 45 6E 74 72 79 20   455 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   5B1A 00                  456 	.db 0x00
   5B1B                     457 ___str_18:
   5B1B 4D 61 78 69 6D 75   458 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   5B32 00                  459 	.db 0x00
   5B33                     460 ___str_19:
   5B33 50 72 69 63 65 3A   461 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   5B3F 00                  462 	.db 0x00
                            463 ;src/game/train.c:89: void buyLocomotive()
                            464 ;	---------------------------------
                            465 ; Function buyLocomotive
                            466 ; ---------------------------------
   5B40                     467 _buyLocomotive::
   5B40 DD E5         [15]  468 	push	ix
   5B42 DD 21 00 00   [14]  469 	ld	ix,#0
   5B46 DD 39         [15]  470 	add	ix,sp
   5B48 21 E8 FF      [10]  471 	ld	hl, #-24
   5B4B 39            [11]  472 	add	hl, sp
   5B4C F9            [ 6]  473 	ld	sp, hl
                            474 ;src/game/train.c:91: const char *txtMenuLoco[] = { 
   5B4D 21 00 00      [10]  475 	ld	hl, #0x0000
   5B50 39            [11]  476 	add	hl, sp
   5B51 4D            [ 4]  477 	ld	c,l
   5B52 44            [ 4]  478 	ld	b,h
   5B53 36 DB         [10]  479 	ld	(hl), #<(___str_20)
   5B55 23            [ 6]  480 	inc	hl
   5B56 36 5B         [10]  481 	ld	(hl), #>(___str_20)
   5B58 69            [ 4]  482 	ld	l, c
   5B59 60            [ 4]  483 	ld	h, b
   5B5A 23            [ 6]  484 	inc	hl
   5B5B 23            [ 6]  485 	inc	hl
   5B5C 11 E1 5B      [10]  486 	ld	de, #___str_21+0
   5B5F 73            [ 7]  487 	ld	(hl), e
   5B60 23            [ 6]  488 	inc	hl
   5B61 72            [ 7]  489 	ld	(hl), d
   5B62 21 04 00      [10]  490 	ld	hl, #0x0004
   5B65 09            [11]  491 	add	hl, bc
   5B66 11 E8 5B      [10]  492 	ld	de, #___str_22+0
   5B69 73            [ 7]  493 	ld	(hl), e
   5B6A 23            [ 6]  494 	inc	hl
   5B6B 72            [ 7]  495 	ld	(hl), d
   5B6C 21 06 00      [10]  496 	ld	hl, #0x0006
   5B6F 09            [11]  497 	add	hl, bc
   5B70 11 EF 5B      [10]  498 	ld	de, #___str_23+0
   5B73 73            [ 7]  499 	ld	(hl), e
   5B74 23            [ 6]  500 	inc	hl
   5B75 72            [ 7]  501 	ld	(hl), d
   5B76 21 08 00      [10]  502 	ld	hl, #0x0008
   5B79 09            [11]  503 	add	hl, bc
   5B7A 11 F5 5B      [10]  504 	ld	de, #___str_24+0
   5B7D 73            [ 7]  505 	ld	(hl), e
   5B7E 23            [ 6]  506 	inc	hl
   5B7F 72            [ 7]  507 	ld	(hl), d
   5B80 21 0A 00      [10]  508 	ld	hl, #0x000a
   5B83 09            [11]  509 	add	hl, bc
   5B84 11 FE 5B      [10]  510 	ld	de, #___str_25+0
   5B87 73            [ 7]  511 	ld	(hl), e
   5B88 23            [ 6]  512 	inc	hl
   5B89 72            [ 7]  513 	ld	(hl), d
   5B8A 21 0C 00      [10]  514 	ld	hl, #0x000c
   5B8D 09            [11]  515 	add	hl, bc
   5B8E 11 08 5C      [10]  516 	ld	de, #___str_26+0
   5B91 73            [ 7]  517 	ld	(hl), e
   5B92 23            [ 6]  518 	inc	hl
   5B93 72            [ 7]  519 	ld	(hl), d
   5B94 21 0E 00      [10]  520 	ld	hl, #0x000e
   5B97 09            [11]  521 	add	hl, bc
   5B98 11 11 5C      [10]  522 	ld	de, #___str_27+0
   5B9B 73            [ 7]  523 	ld	(hl), e
   5B9C 23            [ 6]  524 	inc	hl
   5B9D 72            [ 7]  525 	ld	(hl), d
   5B9E 21 10 00      [10]  526 	ld	hl, #0x0010
   5BA1 09            [11]  527 	add	hl, bc
   5BA2 11 1A 5C      [10]  528 	ld	de, #___str_28+0
   5BA5 73            [ 7]  529 	ld	(hl), e
   5BA6 23            [ 6]  530 	inc	hl
   5BA7 72            [ 7]  531 	ld	(hl), d
   5BA8 21 12 00      [10]  532 	ld	hl, #0x0012
   5BAB 09            [11]  533 	add	hl, bc
   5BAC 11 21 5C      [10]  534 	ld	de, #___str_29+0
   5BAF 73            [ 7]  535 	ld	(hl), e
   5BB0 23            [ 6]  536 	inc	hl
   5BB1 72            [ 7]  537 	ld	(hl), d
   5BB2 21 14 00      [10]  538 	ld	hl, #0x0014
   5BB5 09            [11]  539 	add	hl, bc
   5BB6 11 2E 5C      [10]  540 	ld	de, #___str_30+0
   5BB9 73            [ 7]  541 	ld	(hl), e
   5BBA 23            [ 6]  542 	inc	hl
   5BBB 72            [ 7]  543 	ld	(hl), d
   5BBC 21 16 00      [10]  544 	ld	hl, #0x0016
   5BBF 09            [11]  545 	add	hl, bc
   5BC0 11 37 5C      [10]  546 	ld	de, #___str_31+0
   5BC3 73            [ 7]  547 	ld	(hl), e
   5BC4 23            [ 6]  548 	inc	hl
   5BC5 72            [ 7]  549 	ld	(hl), d
                            550 ;src/game/train.c:106: confirmBuyLocomotive( drawMenu(txtMenuLoco,12) );
   5BC6 3E 0C         [ 7]  551 	ld	a, #0x0c
   5BC8 F5            [11]  552 	push	af
   5BC9 33            [ 6]  553 	inc	sp
   5BCA C5            [11]  554 	push	bc
   5BCB CD 2F 45      [17]  555 	call	_drawMenu
   5BCE F1            [10]  556 	pop	af
   5BCF 33            [ 6]  557 	inc	sp
   5BD0 45            [ 4]  558 	ld	b, l
   5BD1 C5            [11]  559 	push	bc
   5BD2 33            [ 6]  560 	inc	sp
   5BD3 CD 63 58      [17]  561 	call	_confirmBuyLocomotive
   5BD6 DD F9         [10]  562 	ld	sp,ix
   5BD8 DD E1         [14]  563 	pop	ix
   5BDA C9            [10]  564 	ret
   5BDB                     565 ___str_20:
   5BDB 31 33 30 20 42      566 	.ascii "130 B"
   5BE0 00                  567 	.db 0x00
   5BE1                     568 ___str_21:
   5BE1 31 34 31 20 54 41   569 	.ascii "141 TA"
   5BE7 00                  570 	.db 0x00
   5BE8                     571 ___str_22:
   5BE8 32 34 32 20 43 54   572 	.ascii "242 CT"
   5BEE 00                  573 	.db 0x00
   5BEF                     574 ___str_23:
   5BEF 31 34 31 20 50      575 	.ascii "141 P"
   5BF4 00                  576 	.db 0x00
   5BF5                     577 ___str_24:
   5BF5 42 42 20 36 33 30   578 	.ascii "BB 63000"
        30 30
   5BFD 00                  579 	.db 0x00
   5BFE                     580 ___str_25:
   5BFE 52 65 20 34 2F 34   581 	.ascii "Re 4/4 II"
        20 49 49
   5C07 00                  582 	.db 0x00
   5C08                     583 ___str_26:
   5C08 42 42 20 36 37 30   584 	.ascii "BB 67000"
        30 30
   5C10 00                  585 	.db 0x00
   5C11                     586 ___str_27:
   5C11 42 42 20 31 35 30   587 	.ascii "BB 15000"
        30 30
   5C19 00                  588 	.db 0x00
   5C1A                     589 ___str_28:
   5C1A 52 65 20 34 36 30   590 	.ascii "Re 460"
   5C20 00                  591 	.db 0x00
   5C21                     592 ___str_29:
   5C21 44 42 20 43 6C 61   593 	.ascii "DB Class 101"
        73 73 20 31 30 31
   5C2D 00                  594 	.db 0x00
   5C2E                     595 ___str_30:
   5C2E 42 42 20 32 37 30   596 	.ascii "BB 27000"
        30 30
   5C36 00                  597 	.db 0x00
   5C37                     598 ___str_31:
   5C37 45 53 20 36 34 46   599 	.ascii "ES 64F4"
        34
   5C3E 00                  600 	.db 0x00
                            601 	.area _CODE
                            602 	.area _INITIALIZER
                            603 	.area _CABS (ABS)
