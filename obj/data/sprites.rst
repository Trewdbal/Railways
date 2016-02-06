                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 18:55:51 2016
                              5 ;--------------------------------------------------------
                              6 	.module sprites
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _BB63000
                             13 	.globl _l141P
                             14 	.globl _lock
                             15 	.globl _rail_ns_e
                             16 	.globl _rail_ns_w
                             17 	.globl _rail_ew_s
                             18 	.globl _rail_ew_n
                             19 	.globl _rail_ws
                             20 	.globl _rail_wn
                             21 	.globl _rail_es
                             22 	.globl _rail_en
                             23 	.globl _rail_ns
                             24 	.globl _rail_ew
                             25 	.globl _station_large_ew
                             26 	.globl _station_large_ns
                             27 	.globl _station_medium_ew
                             28 	.globl _station_medium_ns
                             29 	.globl _station_small_ew
                             30 	.globl _station_small_ns
                             31 	.globl _livestock
                             32 	.globl _farm2
                             33 	.globl _farm1
                             34 	.globl _water
                             35 	.globl _dwellings3
                             36 	.globl _dwellings2
                             37 	.globl _dwellings1
                             38 	.globl _forest
                             39 	.globl _grass2
                             40 	.globl _grass1
                             41 ;--------------------------------------------------------
                             42 ; special function registers
                             43 ;--------------------------------------------------------
                             44 ;--------------------------------------------------------
                             45 ; ram data
                             46 ;--------------------------------------------------------
                             47 	.area _DATA
                             48 ;--------------------------------------------------------
                             49 ; ram data
                             50 ;--------------------------------------------------------
                             51 	.area _INITIALIZED
                             52 ;--------------------------------------------------------
                             53 ; absolute external ram data
                             54 ;--------------------------------------------------------
                             55 	.area _DABS (ABS)
                             56 ;--------------------------------------------------------
                             57 ; global & static initialisations
                             58 ;--------------------------------------------------------
                             59 	.area _HOME
                             60 	.area _GSINIT
                             61 	.area _GSFINAL
                             62 	.area _GSINIT
                             63 ;--------------------------------------------------------
                             64 ; Home
                             65 ;--------------------------------------------------------
                             66 	.area _HOME
                             67 	.area _HOME
                             68 ;--------------------------------------------------------
                             69 ; code
                             70 ;--------------------------------------------------------
                             71 	.area _CODE
                             72 	.area _CODE
   5B2D                      73 _grass1:
   5B2D 0F                   74 	.db #0x0F	; 15
   5B2E 0F                   75 	.db #0x0F	; 15
   5B2F 0F                   76 	.db #0x0F	; 15
   5B30 8F                   77 	.db #0x8F	; 143
   5B31 0F                   78 	.db #0x0F	; 15
   5B32 0F                   79 	.db #0x0F	; 15
   5B33 0F                   80 	.db #0x0F	; 15
   5B34 0F                   81 	.db #0x0F	; 15
   5B35 1F                   82 	.db #0x1F	; 31
   5B36 0F                   83 	.db #0x0F	; 15
   5B37 2F                   84 	.db #0x2F	; 47
   5B38 0F                   85 	.db #0x0F	; 15
   5B39 0F                   86 	.db #0x0F	; 15
   5B3A 0F                   87 	.db #0x0F	; 15
   5B3B 0F                   88 	.db #0x0F	; 15
   5B3C 0F                   89 	.db #0x0F	; 15
   5B3D 0F                   90 	.db #0x0F	; 15
   5B3E 0F                   91 	.db #0x0F	; 15
   5B3F 0F                   92 	.db #0x0F	; 15
   5B40 0F                   93 	.db #0x0F	; 15
   5B41 0F                   94 	.db #0x0F	; 15
   5B42 0F                   95 	.db #0x0F	; 15
   5B43 0F                   96 	.db #0x0F	; 15
   5B44 0F                   97 	.db #0x0F	; 15
   5B45 0F                   98 	.db #0x0F	; 15
   5B46 0F                   99 	.db #0x0F	; 15
   5B47 0F                  100 	.db #0x0F	; 15
   5B48 0F                  101 	.db #0x0F	; 15
   5B49 4F                  102 	.db #0x4F	; 79	'O'
   5B4A 0F                  103 	.db #0x0F	; 15
   5B4B 0F                  104 	.db #0x0F	; 15
   5B4C 8F                  105 	.db #0x8F	; 143
   5B4D 0F                  106 	.db #0x0F	; 15
   5B4E 4F                  107 	.db #0x4F	; 79	'O'
   5B4F 0F                  108 	.db #0x0F	; 15
   5B50 0F                  109 	.db #0x0F	; 15
   5B51 0F                  110 	.db #0x0F	; 15
   5B52 0F                  111 	.db #0x0F	; 15
   5B53 0F                  112 	.db #0x0F	; 15
   5B54 0F                  113 	.db #0x0F	; 15
   5B55 0F                  114 	.db #0x0F	; 15
   5B56 0F                  115 	.db #0x0F	; 15
   5B57 0F                  116 	.db #0x0F	; 15
   5B58 0F                  117 	.db #0x0F	; 15
   5B59 0F                  118 	.db #0x0F	; 15
   5B5A 1F                  119 	.db #0x1F	; 31
   5B5B 0F                  120 	.db #0x0F	; 15
   5B5C 0F                  121 	.db #0x0F	; 15
   5B5D 0F                  122 	.db #0x0F	; 15
   5B5E 0F                  123 	.db #0x0F	; 15
   5B5F 0F                  124 	.db #0x0F	; 15
   5B60 8F                  125 	.db #0x8F	; 143
   5B61 0F                  126 	.db #0x0F	; 15
   5B62 0F                  127 	.db #0x0F	; 15
   5B63 0F                  128 	.db #0x0F	; 15
   5B64 0F                  129 	.db #0x0F	; 15
   5B65 0F                  130 	.db #0x0F	; 15
   5B66 0F                  131 	.db #0x0F	; 15
   5B67 0F                  132 	.db #0x0F	; 15
   5B68 0F                  133 	.db #0x0F	; 15
   5B69 4F                  134 	.db #0x4F	; 79	'O'
   5B6A 0F                  135 	.db #0x0F	; 15
   5B6B 8F                  136 	.db #0x8F	; 143
   5B6C 0F                  137 	.db #0x0F	; 15
   5B6D                     138 _grass2:
   5B6D 0F                  139 	.db #0x0F	; 15
   5B6E 0F                  140 	.db #0x0F	; 15
   5B6F 0F                  141 	.db #0x0F	; 15
   5B70 0F                  142 	.db #0x0F	; 15
   5B71 0F                  143 	.db #0x0F	; 15
   5B72 0F                  144 	.db #0x0F	; 15
   5B73 0F                  145 	.db #0x0F	; 15
   5B74 2F                  146 	.db #0x2F	; 47
   5B75 0F                  147 	.db #0x0F	; 15
   5B76 8F                  148 	.db #0x8F	; 143
   5B77 0F                  149 	.db #0x0F	; 15
   5B78 0F                  150 	.db #0x0F	; 15
   5B79 0F                  151 	.db #0x0F	; 15
   5B7A 0F                  152 	.db #0x0F	; 15
   5B7B 0F                  153 	.db #0x0F	; 15
   5B7C 0F                  154 	.db #0x0F	; 15
   5B7D 0F                  155 	.db #0x0F	; 15
   5B7E 0F                  156 	.db #0x0F	; 15
   5B7F 0F                  157 	.db #0x0F	; 15
   5B80 0F                  158 	.db #0x0F	; 15
   5B81 4F                  159 	.db #0x4F	; 79	'O'
   5B82 0F                  160 	.db #0x0F	; 15
   5B83 0F                  161 	.db #0x0F	; 15
   5B84 0F                  162 	.db #0x0F	; 15
   5B85 0F                  163 	.db #0x0F	; 15
   5B86 0F                  164 	.db #0x0F	; 15
   5B87 2F                  165 	.db #0x2F	; 47
   5B88 0F                  166 	.db #0x0F	; 15
   5B89 0F                  167 	.db #0x0F	; 15
   5B8A 0F                  168 	.db #0x0F	; 15
   5B8B 0F                  169 	.db #0x0F	; 15
   5B8C 0F                  170 	.db #0x0F	; 15
   5B8D 0F                  171 	.db #0x0F	; 15
   5B8E 4F                  172 	.db #0x4F	; 79	'O'
   5B8F 0F                  173 	.db #0x0F	; 15
   5B90 0F                  174 	.db #0x0F	; 15
   5B91 0F                  175 	.db #0x0F	; 15
   5B92 0F                  176 	.db #0x0F	; 15
   5B93 0F                  177 	.db #0x0F	; 15
   5B94 0F                  178 	.db #0x0F	; 15
   5B95 0F                  179 	.db #0x0F	; 15
   5B96 0F                  180 	.db #0x0F	; 15
   5B97 0F                  181 	.db #0x0F	; 15
   5B98 0F                  182 	.db #0x0F	; 15
   5B99 0F                  183 	.db #0x0F	; 15
   5B9A 0F                  184 	.db #0x0F	; 15
   5B9B 0F                  185 	.db #0x0F	; 15
   5B9C 8F                  186 	.db #0x8F	; 143
   5B9D 0F                  187 	.db #0x0F	; 15
   5B9E 0F                  188 	.db #0x0F	; 15
   5B9F 0F                  189 	.db #0x0F	; 15
   5BA0 0F                  190 	.db #0x0F	; 15
   5BA1 2F                  191 	.db #0x2F	; 47
   5BA2 1F                  192 	.db #0x1F	; 31
   5BA3 0F                  193 	.db #0x0F	; 15
   5BA4 0F                  194 	.db #0x0F	; 15
   5BA5 0F                  195 	.db #0x0F	; 15
   5BA6 0F                  196 	.db #0x0F	; 15
   5BA7 0F                  197 	.db #0x0F	; 15
   5BA8 2F                  198 	.db #0x2F	; 47
   5BA9 0F                  199 	.db #0x0F	; 15
   5BAA 0F                  200 	.db #0x0F	; 15
   5BAB 0F                  201 	.db #0x0F	; 15
   5BAC 0F                  202 	.db #0x0F	; 15
   5BAD                     203 _forest:
   5BAD 0F                  204 	.db #0x0F	; 15
   5BAE 0F                  205 	.db #0x0F	; 15
   5BAF 0E                  206 	.db #0x0E	; 14
   5BB0 03                  207 	.db #0x03	; 3
   5BB1 0E                  208 	.db #0x0E	; 14
   5BB2 03                  209 	.db #0x03	; 3
   5BB3 0E                  210 	.db #0x0E	; 14
   5BB4 EF                  211 	.db #0xEF	; 239
   5BB5 0E                  212 	.db #0x0E	; 14
   5BB6 EF                  213 	.db #0xEF	; 239
   5BB7 0F                  214 	.db #0x0F	; 15
   5BB8 EF                  215 	.db #0xEF	; 239
   5BB9 0E                  216 	.db #0x0E	; 14
   5BBA FF                  217 	.db #0xFF	; 255
   5BBB 0F                  218 	.db #0x0F	; 15
   5BBC 0F                  219 	.db #0x0F	; 15
   5BBD 07                  220 	.db #0x07	; 7
   5BBE 6F                  221 	.db #0x6F	; 111	'o'
   5BBF 0C                  222 	.db #0x0C	; 12
   5BC0 0F                  223 	.db #0x0F	; 15
   5BC1 CF                  224 	.db #0xCF	; 207
   5BC2 0F                  225 	.db #0x0F	; 15
   5BC3 19                  226 	.db #0x19	; 25
   5BC4 8F                  227 	.db #0x8F	; 143
   5BC5 CE                  228 	.db #0xCE	; 206
   5BC6 03                  229 	.db #0x03	; 3
   5BC7 3B                  230 	.db #0x3B	; 59
   5BC8 8F                  231 	.db #0x8F	; 143
   5BC9 CE                  232 	.db #0xCE	; 206
   5BCA CF                  233 	.db #0xCF	; 207
   5BCB 3B                  234 	.db #0x3B	; 59
   5BCC 0F                  235 	.db #0x0F	; 15
   5BCD 0E                  236 	.db #0x0E	; 14
   5BCE EF                  237 	.db #0xEF	; 239
   5BCF 3F                  238 	.db #0x3F	; 63
   5BD0 0F                  239 	.db #0x0F	; 15
   5BD1 0F                  240 	.db #0x0F	; 15
   5BD2 EF                  241 	.db #0xEF	; 239
   5BD3 0F                  242 	.db #0x0F	; 15
   5BD4 0F                  243 	.db #0x0F	; 15
   5BD5 0E                  244 	.db #0x0E	; 14
   5BD6 07                  245 	.db #0x07	; 7
   5BD7 03                  246 	.db #0x03	; 3
   5BD8 0F                  247 	.db #0x0F	; 15
   5BD9 1D                  248 	.db #0x1D	; 29
   5BDA CE                  249 	.db #0xCE	; 206
   5BDB EF                  250 	.db #0xEF	; 239
   5BDC 09                  251 	.db #0x09	; 9
   5BDD 3B                  252 	.db #0x3B	; 59
   5BDE 8F                  253 	.db #0x8F	; 143
   5BDF CE                  254 	.db #0xCE	; 206
   5BE0 67                  255 	.db #0x67	; 103	'g'
   5BE1 3B                  256 	.db #0x3B	; 59
   5BE2 8F                  257 	.db #0x8F	; 143
   5BE3 1D                  258 	.db #0x1D	; 29
   5BE4 EF                  259 	.db #0xEF	; 239
   5BE5 2F                  260 	.db #0x2F	; 47
   5BE6 0F                  261 	.db #0x0F	; 15
   5BE7 1D                  262 	.db #0x1D	; 29
   5BE8 EF                  263 	.db #0xEF	; 239
   5BE9 0F                  264 	.db #0x0F	; 15
   5BEA 0F                  265 	.db #0x0F	; 15
   5BEB 0F                  266 	.db #0x0F	; 15
   5BEC CF                  267 	.db #0xCF	; 207
   5BED                     268 _dwellings1:
   5BED 0F                  269 	.db #0x0F	; 15
   5BEE 0F                  270 	.db #0x0F	; 15
   5BEF 0F                  271 	.db #0x0F	; 15
   5BF0 0F                  272 	.db #0x0F	; 15
   5BF1 08                  273 	.db #0x08	; 8
   5BF2 03                  274 	.db #0x03	; 3
   5BF3 0C                  275 	.db #0x0C	; 12
   5BF4 07                  276 	.db #0x07	; 7
   5BF5 38                  277 	.db #0x38	; 56	'8'
   5BF6 E1                  278 	.db #0xE1	; 225
   5BF7 1C                  279 	.db #0x1C	; 28
   5BF8 C3                  280 	.db #0xC3	; 195
   5BF9 3C                  281 	.db #0x3C	; 60
   5BFA E1                  282 	.db #0xE1	; 225
   5BFB 1C                  283 	.db #0x1C	; 28
   5BFC C3                  284 	.db #0xC3	; 195
   5BFD 0F                  285 	.db #0x0F	; 15
   5BFE 0F                  286 	.db #0x0F	; 15
   5BFF 1E                  287 	.db #0x1E	; 30
   5C00 C3                  288 	.db #0xC3	; 195
   5C01 0F                  289 	.db #0x0F	; 15
   5C02 0F                  290 	.db #0x0F	; 15
   5C03 0F                  291 	.db #0x0F	; 15
   5C04 0F                  292 	.db #0x0F	; 15
   5C05 0F                  293 	.db #0x0F	; 15
   5C06 0F                  294 	.db #0x0F	; 15
   5C07 0E                  295 	.db #0x0E	; 14
   5C08 03                  296 	.db #0x03	; 3
   5C09 0F                  297 	.db #0x0F	; 15
   5C0A 0E                  298 	.db #0x0E	; 14
   5C0B 06                  299 	.db #0x06	; 6
   5C0C E1                  300 	.db #0xE1	; 225
   5C0D 0F                  301 	.db #0x0F	; 15
   5C0E 0E                  302 	.db #0x0E	; 14
   5C0F C2                  303 	.db #0xC2	; 194
   5C10 E1                  304 	.db #0xE1	; 225
   5C11 0F                  305 	.db #0x0F	; 15
   5C12 0E                  306 	.db #0x0E	; 14
   5C13 C2                  307 	.db #0xC2	; 194
   5C14 E1                  308 	.db #0xE1	; 225
   5C15 0F                  309 	.db #0x0F	; 15
   5C16 0E                  310 	.db #0x0E	; 14
   5C17 C3                  311 	.db #0xC3	; 195
   5C18 E1                  312 	.db #0xE1	; 225
   5C19 0F                  313 	.db #0x0F	; 15
   5C1A 0E                  314 	.db #0x0E	; 14
   5C1B C3                  315 	.db #0xC3	; 195
   5C1C 0F                  316 	.db #0x0F	; 15
   5C1D 0F                  317 	.db #0x0F	; 15
   5C1E 0F                  318 	.db #0x0F	; 15
   5C1F C3                  319 	.db #0xC3	; 195
   5C20 0F                  320 	.db #0x0F	; 15
   5C21 08                  321 	.db #0x08	; 8
   5C22 07                  322 	.db #0x07	; 7
   5C23 0F                  323 	.db #0x0F	; 15
   5C24 0F                  324 	.db #0x0F	; 15
   5C25 38                  325 	.db #0x38	; 56	'8'
   5C26 C3                  326 	.db #0xC3	; 195
   5C27 0F                  327 	.db #0x0F	; 15
   5C28 0F                  328 	.db #0x0F	; 15
   5C29 3C                  329 	.db #0x3C	; 60
   5C2A C3                  330 	.db #0xC3	; 195
   5C2B 0F                  331 	.db #0x0F	; 15
   5C2C 0F                  332 	.db #0x0F	; 15
   5C2D                     333 _dwellings2:
   5C2D 0F                  334 	.db #0x0F	; 15
   5C2E 0F                  335 	.db #0x0F	; 15
   5C2F 0F                  336 	.db #0x0F	; 15
   5C30 0F                  337 	.db #0x0F	; 15
   5C31 0F                  338 	.db #0x0F	; 15
   5C32 01                  339 	.db #0x01	; 1
   5C33 0F                  340 	.db #0x0F	; 15
   5C34 0F                  341 	.db #0x0F	; 15
   5C35 0F                  342 	.db #0x0F	; 15
   5C36 70                  343 	.db #0x70	; 112	'p'
   5C37 0C                  344 	.db #0x0C	; 12
   5C38 0F                  345 	.db #0x0F	; 15
   5C39 09                  346 	.db #0x09	; 9
   5C3A 78                  347 	.db #0x78	; 120	'x'
   5C3B 1C                  348 	.db #0x1C	; 28
   5C3C 87                  349 	.db #0x87	; 135
   5C3D 38                  350 	.db #0x38	; 56	'8'
   5C3E 0F                  351 	.db #0x0F	; 15
   5C3F 1C                  352 	.db #0x1C	; 28
   5C40 87                  353 	.db #0x87	; 135
   5C41 38                  354 	.db #0x38	; 56	'8'
   5C42 0F                  355 	.db #0x0F	; 15
   5C43 1E                  356 	.db #0x1E	; 30
   5C44 87                  357 	.db #0x87	; 135
   5C45 3C                  358 	.db #0x3C	; 60
   5C46 0F                  359 	.db #0x0F	; 15
   5C47 0F                  360 	.db #0x0F	; 15
   5C48 0F                  361 	.db #0x0F	; 15
   5C49 0F                  362 	.db #0x0F	; 15
   5C4A 0F                  363 	.db #0x0F	; 15
   5C4B 0F                  364 	.db #0x0F	; 15
   5C4C 0F                  365 	.db #0x0F	; 15
   5C4D 0E                  366 	.db #0x0E	; 14
   5C4E 07                  367 	.db #0x07	; 7
   5C4F 0F                  368 	.db #0x0F	; 15
   5C50 0F                  369 	.db #0x0F	; 15
   5C51 0E                  370 	.db #0x0E	; 14
   5C52 C3                  371 	.db #0xC3	; 195
   5C53 00                  372 	.db #0x00	; 0
   5C54 07                  373 	.db #0x07	; 7
   5C55 0E                  374 	.db #0x0E	; 14
   5C56 C3                  375 	.db #0xC3	; 195
   5C57 70                  376 	.db #0x70	; 112	'p'
   5C58 C3                  377 	.db #0xC3	; 195
   5C59 0F                  378 	.db #0x0F	; 15
   5C5A C3                  379 	.db #0xC3	; 195
   5C5B 70                  380 	.db #0x70	; 112	'p'
   5C5C C3                  381 	.db #0xC3	; 195
   5C5D 03                  382 	.db #0x03	; 3
   5C5E 0F                  383 	.db #0x0F	; 15
   5C5F 78                  384 	.db #0x78	; 120	'x'
   5C60 C3                  385 	.db #0xC3	; 195
   5C61 61                  386 	.db #0x61	; 97	'a'
   5C62 0F                  387 	.db #0x0F	; 15
   5C63 0F                  388 	.db #0x0F	; 15
   5C64 0F                  389 	.db #0x0F	; 15
   5C65 69                  390 	.db #0x69	; 105	'i'
   5C66 0F                  391 	.db #0x0F	; 15
   5C67 0F                  392 	.db #0x0F	; 15
   5C68 0F                  393 	.db #0x0F	; 15
   5C69 0F                  394 	.db #0x0F	; 15
   5C6A 0F                  395 	.db #0x0F	; 15
   5C6B 0F                  396 	.db #0x0F	; 15
   5C6C 0F                  397 	.db #0x0F	; 15
   5C6D                     398 _dwellings3:
   5C6D 0F                  399 	.db #0x0F	; 15
   5C6E 0F                  400 	.db #0x0F	; 15
   5C6F 09                  401 	.db #0x09	; 9
   5C70 09                  402 	.db #0x09	; 9
   5C71 0F                  403 	.db #0x0F	; 15
   5C72 0F                  404 	.db #0x0F	; 15
   5C73 38                  405 	.db #0x38	; 56	'8'
   5C74 38                  406 	.db #0x38	; 56	'8'
   5C75 0E                  407 	.db #0x0E	; 14
   5C76 03                  408 	.db #0x03	; 3
   5C77 38                  409 	.db #0x38	; 56	'8'
   5C78 38                  410 	.db #0x38	; 56	'8'
   5C79 0E                  411 	.db #0x0E	; 14
   5C7A E1                  412 	.db #0xE1	; 225
   5C7B 3C                  413 	.db #0x3C	; 60
   5C7C 3C                  414 	.db #0x3C	; 60
   5C7D 0E                  415 	.db #0x0E	; 14
   5C7E E1                  416 	.db #0xE1	; 225
   5C7F 0F                  417 	.db #0x0F	; 15
   5C80 0F                  418 	.db #0x0F	; 15
   5C81 0E                  419 	.db #0x0E	; 14
   5C82 E1                  420 	.db #0xE1	; 225
   5C83 08                  421 	.db #0x08	; 8
   5C84 07                  422 	.db #0x07	; 7
   5C85 0F                  423 	.db #0x0F	; 15
   5C86 E1                  424 	.db #0xE1	; 225
   5C87 38                  425 	.db #0x38	; 56	'8'
   5C88 C3                  426 	.db #0xC3	; 195
   5C89 0F                  427 	.db #0x0F	; 15
   5C8A 0F                  428 	.db #0x0F	; 15
   5C8B 3C                  429 	.db #0x3C	; 60
   5C8C C3                  430 	.db #0xC3	; 195
   5C8D 0C                  431 	.db #0x0C	; 12
   5C8E 0F                  432 	.db #0x0F	; 15
   5C8F 0F                  433 	.db #0x0F	; 15
   5C90 0F                  434 	.db #0x0F	; 15
   5C91 1C                  435 	.db #0x1C	; 28
   5C92 87                  436 	.db #0x87	; 135
   5C93 0F                  437 	.db #0x0F	; 15
   5C94 0F                  438 	.db #0x0F	; 15
   5C95 1E                  439 	.db #0x1E	; 30
   5C96 87                  440 	.db #0x87	; 135
   5C97 0C                  441 	.db #0x0C	; 12
   5C98 07                  442 	.db #0x07	; 7
   5C99 0F                  443 	.db #0x0F	; 15
   5C9A 0F                  444 	.db #0x0F	; 15
   5C9B 1C                  445 	.db #0x1C	; 28
   5C9C C3                  446 	.db #0xC3	; 195
   5C9D 0F                  447 	.db #0x0F	; 15
   5C9E 09                  448 	.db #0x09	; 9
   5C9F 1C                  449 	.db #0x1C	; 28
   5CA0 C3                  450 	.db #0xC3	; 195
   5CA1 0F                  451 	.db #0x0F	; 15
   5CA2 38                  452 	.db #0x38	; 56	'8'
   5CA3 1C                  453 	.db #0x1C	; 28
   5CA4 C3                  454 	.db #0xC3	; 195
   5CA5 0F                  455 	.db #0x0F	; 15
   5CA6 3C                  456 	.db #0x3C	; 60
   5CA7 1E                  457 	.db #0x1E	; 30
   5CA8 C3                  458 	.db #0xC3	; 195
   5CA9 0F                  459 	.db #0x0F	; 15
   5CAA 0F                  460 	.db #0x0F	; 15
   5CAB 0F                  461 	.db #0x0F	; 15
   5CAC 0F                  462 	.db #0x0F	; 15
   5CAD                     463 _water:
   5CAD 5F                  464 	.db #0x5F	; 95
   5CAE 5F                  465 	.db #0x5F	; 95
   5CAF 5F                  466 	.db #0x5F	; 95
   5CB0 5F                  467 	.db #0x5F	; 95
   5CB1 AF                  468 	.db #0xAF	; 175
   5CB2 AF                  469 	.db #0xAF	; 175
   5CB3 AF                  470 	.db #0xAF	; 175
   5CB4 AF                  471 	.db #0xAF	; 175
   5CB5 5F                  472 	.db #0x5F	; 95
   5CB6 5F                  473 	.db #0x5F	; 95
   5CB7 5F                  474 	.db #0x5F	; 95
   5CB8 5F                  475 	.db #0x5F	; 95
   5CB9 AF                  476 	.db #0xAF	; 175
   5CBA AF                  477 	.db #0xAF	; 175
   5CBB AF                  478 	.db #0xAF	; 175
   5CBC AF                  479 	.db #0xAF	; 175
   5CBD 5F                  480 	.db #0x5F	; 95
   5CBE 5F                  481 	.db #0x5F	; 95
   5CBF 5F                  482 	.db #0x5F	; 95
   5CC0 5F                  483 	.db #0x5F	; 95
   5CC1 AF                  484 	.db #0xAF	; 175
   5CC2 AF                  485 	.db #0xAF	; 175
   5CC3 AF                  486 	.db #0xAF	; 175
   5CC4 AF                  487 	.db #0xAF	; 175
   5CC5 5F                  488 	.db #0x5F	; 95
   5CC6 5F                  489 	.db #0x5F	; 95
   5CC7 5F                  490 	.db #0x5F	; 95
   5CC8 5F                  491 	.db #0x5F	; 95
   5CC9 AF                  492 	.db #0xAF	; 175
   5CCA AF                  493 	.db #0xAF	; 175
   5CCB AF                  494 	.db #0xAF	; 175
   5CCC AF                  495 	.db #0xAF	; 175
   5CCD 5F                  496 	.db #0x5F	; 95
   5CCE 5F                  497 	.db #0x5F	; 95
   5CCF 5F                  498 	.db #0x5F	; 95
   5CD0 5F                  499 	.db #0x5F	; 95
   5CD1 AF                  500 	.db #0xAF	; 175
   5CD2 AF                  501 	.db #0xAF	; 175
   5CD3 AF                  502 	.db #0xAF	; 175
   5CD4 AF                  503 	.db #0xAF	; 175
   5CD5 5F                  504 	.db #0x5F	; 95
   5CD6 5F                  505 	.db #0x5F	; 95
   5CD7 5F                  506 	.db #0x5F	; 95
   5CD8 5F                  507 	.db #0x5F	; 95
   5CD9 AF                  508 	.db #0xAF	; 175
   5CDA AF                  509 	.db #0xAF	; 175
   5CDB AF                  510 	.db #0xAF	; 175
   5CDC AF                  511 	.db #0xAF	; 175
   5CDD 5F                  512 	.db #0x5F	; 95
   5CDE 5F                  513 	.db #0x5F	; 95
   5CDF 5F                  514 	.db #0x5F	; 95
   5CE0 5F                  515 	.db #0x5F	; 95
   5CE1 AF                  516 	.db #0xAF	; 175
   5CE2 AF                  517 	.db #0xAF	; 175
   5CE3 AF                  518 	.db #0xAF	; 175
   5CE4 AF                  519 	.db #0xAF	; 175
   5CE5 5F                  520 	.db #0x5F	; 95
   5CE6 5F                  521 	.db #0x5F	; 95
   5CE7 5F                  522 	.db #0x5F	; 95
   5CE8 5F                  523 	.db #0x5F	; 95
   5CE9 AF                  524 	.db #0xAF	; 175
   5CEA AF                  525 	.db #0xAF	; 175
   5CEB AF                  526 	.db #0xAF	; 175
   5CEC AF                  527 	.db #0xAF	; 175
   5CED                     528 _farm1:
   5CED 03                  529 	.db #0x03	; 3
   5CEE 0F                  530 	.db #0x0F	; 15
   5CEF 78                  531 	.db #0x78	; 120	'x'
   5CF0 F0                  532 	.db #0xF0	; 240
   5CF1 61                  533 	.db #0x61	; 97	'a'
   5CF2 01                  534 	.db #0x01	; 1
   5CF3 5F                  535 	.db #0x5F	; 95
   5CF4 5F                  536 	.db #0x5F	; 95
   5CF5 61                  537 	.db #0x61	; 97	'a'
   5CF6 70                  538 	.db #0x70	; 112	'p'
   5CF7 78                  539 	.db #0x78	; 120	'x'
   5CF8 F0                  540 	.db #0xF0	; 240
   5CF9 69                  541 	.db #0x69	; 105	'i'
   5CFA 78                  542 	.db #0x78	; 120	'x'
   5CFB 2F                  543 	.db #0x2F	; 47
   5CFC AF                  544 	.db #0xAF	; 175
   5CFD 0F                  545 	.db #0x0F	; 15
   5CFE 0F                  546 	.db #0x0F	; 15
   5CFF 78                  547 	.db #0x78	; 120	'x'
   5D00 F0                  548 	.db #0xF0	; 240
   5D01 7A                  549 	.db #0x7A	; 122	'z'
   5D02 7A                  550 	.db #0x7A	; 122	'z'
   5D03 5F                  551 	.db #0x5F	; 95
   5D04 5F                  552 	.db #0x5F	; 95
   5D05 5A                  553 	.db #0x5A	; 90	'Z'
   5D06 DA                  554 	.db #0xDA	; 218
   5D07 78                  555 	.db #0x78	; 120	'x'
   5D08 F0                  556 	.db #0xF0	; 240
   5D09 7A                  557 	.db #0x7A	; 122	'z'
   5D0A 7A                  558 	.db #0x7A	; 122	'z'
   5D0B 0F                  559 	.db #0x0F	; 15
   5D0C 0F                  560 	.db #0x0F	; 15
   5D0D 5A                  561 	.db #0x5A	; 90	'Z'
   5D0E DA                  562 	.db #0xDA	; 218
   5D0F 0F                  563 	.db #0x0F	; 15
   5D10 0F                  564 	.db #0x0F	; 15
   5D11 7A                  565 	.db #0x7A	; 122	'z'
   5D12 7A                  566 	.db #0x7A	; 122	'z'
   5D13 78                  567 	.db #0x78	; 120	'x'
   5D14 F0                  568 	.db #0xF0	; 240
   5D15 5A                  569 	.db #0x5A	; 90	'Z'
   5D16 DA                  570 	.db #0xDA	; 218
   5D17 5F                  571 	.db #0x5F	; 95
   5D18 5F                  572 	.db #0x5F	; 95
   5D19 7A                  573 	.db #0x7A	; 122	'z'
   5D1A 7A                  574 	.db #0x7A	; 122	'z'
   5D1B 78                  575 	.db #0x78	; 120	'x'
   5D1C F0                  576 	.db #0xF0	; 240
   5D1D 5A                  577 	.db #0x5A	; 90	'Z'
   5D1E DA                  578 	.db #0xDA	; 218
   5D1F 2F                  579 	.db #0x2F	; 47
   5D20 AF                  580 	.db #0xAF	; 175
   5D21 7A                  581 	.db #0x7A	; 122	'z'
   5D22 7A                  582 	.db #0x7A	; 122	'z'
   5D23 78                  583 	.db #0x78	; 120	'x'
   5D24 F0                  584 	.db #0xF0	; 240
   5D25 5A                  585 	.db #0x5A	; 90	'Z'
   5D26 DA                  586 	.db #0xDA	; 218
   5D27 5F                  587 	.db #0x5F	; 95
   5D28 5F                  588 	.db #0x5F	; 95
   5D29 7A                  589 	.db #0x7A	; 122	'z'
   5D2A 7A                  590 	.db #0x7A	; 122	'z'
   5D2B 78                  591 	.db #0x78	; 120	'x'
   5D2C F0                  592 	.db #0xF0	; 240
   5D2D                     593 _farm2:
   5D2D 0F                  594 	.db #0x0F	; 15
   5D2E 0F                  595 	.db #0x0F	; 15
   5D2F 0F                  596 	.db #0x0F	; 15
   5D30 0F                  597 	.db #0x0F	; 15
   5D31 7F                  598 	.db #0x7F	; 127
   5D32 FF                  599 	.db #0xFF	; 255
   5D33 FF                  600 	.db #0xFF	; 255
   5D34 EF                  601 	.db #0xEF	; 239
   5D35 2D                  602 	.db #0x2D	; 45
   5D36 A5                  603 	.db #0xA5	; 165
   5D37 A5                  604 	.db #0xA5	; 165
   5D38 A5                  605 	.db #0xA5	; 165
   5D39 7F                  606 	.db #0x7F	; 127
   5D3A FF                  607 	.db #0xFF	; 255
   5D3B FF                  608 	.db #0xFF	; 255
   5D3C EF                  609 	.db #0xEF	; 239
   5D3D 5A                  610 	.db #0x5A	; 90	'Z'
   5D3E 5A                  611 	.db #0x5A	; 90	'Z'
   5D3F 5A                  612 	.db #0x5A	; 90	'Z'
   5D40 4B                  613 	.db #0x4B	; 75	'K'
   5D41 7F                  614 	.db #0x7F	; 127
   5D42 FF                  615 	.db #0xFF	; 255
   5D43 FF                  616 	.db #0xFF	; 255
   5D44 EF                  617 	.db #0xEF	; 239
   5D45 2D                  618 	.db #0x2D	; 45
   5D46 A5                  619 	.db #0xA5	; 165
   5D47 A5                  620 	.db #0xA5	; 165
   5D48 A5                  621 	.db #0xA5	; 165
   5D49 7F                  622 	.db #0x7F	; 127
   5D4A FF                  623 	.db #0xFF	; 255
   5D4B FF                  624 	.db #0xFF	; 255
   5D4C EF                  625 	.db #0xEF	; 239
   5D4D 5A                  626 	.db #0x5A	; 90	'Z'
   5D4E 5A                  627 	.db #0x5A	; 90	'Z'
   5D4F 5A                  628 	.db #0x5A	; 90	'Z'
   5D50 4B                  629 	.db #0x4B	; 75	'K'
   5D51 7F                  630 	.db #0x7F	; 127
   5D52 FF                  631 	.db #0xFF	; 255
   5D53 FF                  632 	.db #0xFF	; 255
   5D54 EF                  633 	.db #0xEF	; 239
   5D55 0F                  634 	.db #0x0F	; 15
   5D56 0F                  635 	.db #0x0F	; 15
   5D57 0F                  636 	.db #0x0F	; 15
   5D58 0F                  637 	.db #0x0F	; 15
   5D59 0E                  638 	.db #0x0E	; 14
   5D5A 07                  639 	.db #0x07	; 7
   5D5B AF                  640 	.db #0xAF	; 175
   5D5C AF                  641 	.db #0xAF	; 175
   5D5D 02                  642 	.db #0x02	; 2
   5D5E C3                  643 	.db #0xC3	; 195
   5D5F AF                  644 	.db #0xAF	; 175
   5D60 AF                  645 	.db #0xAF	; 175
   5D61 60                  646 	.db #0x60	; 96
   5D62 C3                  647 	.db #0xC3	; 195
   5D63 AF                  648 	.db #0xAF	; 175
   5D64 AF                  649 	.db #0xAF	; 175
   5D65 69                  650 	.db #0x69	; 105	'i'
   5D66 C3                  651 	.db #0xC3	; 195
   5D67 AF                  652 	.db #0xAF	; 175
   5D68 AF                  653 	.db #0xAF	; 175
   5D69 0F                  654 	.db #0x0F	; 15
   5D6A 0F                  655 	.db #0x0F	; 15
   5D6B 0F                  656 	.db #0x0F	; 15
   5D6C 0F                  657 	.db #0x0F	; 15
   5D6D                     658 _livestock:
   5D6D 03                  659 	.db #0x03	; 3
   5D6E 0F                  660 	.db #0x0F	; 15
   5D6F 0F                  661 	.db #0x0F	; 15
   5D70 0F                  662 	.db #0x0F	; 15
   5D71 61                  663 	.db #0x61	; 97	'a'
   5D72 F5                  664 	.db #0xF5	; 245
   5D73 F5                  665 	.db #0xF5	; 245
   5D74 E5                  666 	.db #0xE5	; 229
   5D75 61                  667 	.db #0x61	; 97	'a'
   5D76 8F                  668 	.db #0x8F	; 143
   5D77 0F                  669 	.db #0x0F	; 15
   5D78 2F                  670 	.db #0x2F	; 47
   5D79 69                  671 	.db #0x69	; 105	'i'
   5D7A 87                  672 	.db #0x87	; 135
   5D7B 0F                  673 	.db #0x0F	; 15
   5D7C AD                  674 	.db #0xAD	; 173
   5D7D 0F                  675 	.db #0x0F	; 15
   5D7E 9F                  676 	.db #0x9F	; 159
   5D7F 0F                  677 	.db #0x0F	; 15
   5D80 2F                  678 	.db #0x2F	; 47
   5D81 7D                  679 	.db #0x7D	; 125
   5D82 87                  680 	.db #0x87	; 135
   5D83 0F                  681 	.db #0x0F	; 15
   5D84 2D                  682 	.db #0x2D	; 45
   5D85 4B                  683 	.db #0x4B	; 75	'K'
   5D86 0F                  684 	.db #0x0F	; 15
   5D87 2F                  685 	.db #0x2F	; 47
   5D88 2F                  686 	.db #0x2F	; 47
   5D89 4F                  687 	.db #0x4F	; 79	'O'
   5D8A 0F                  688 	.db #0x0F	; 15
   5D8B 0F                  689 	.db #0x0F	; 15
   5D8C 2D                  690 	.db #0x2D	; 45
   5D8D 5B                  691 	.db #0x5B	; 91
   5D8E 1F                  692 	.db #0x1F	; 31
   5D8F 0F                  693 	.db #0x0F	; 15
   5D90 2F                  694 	.db #0x2F	; 47
   5D91 4F                  695 	.db #0x4F	; 79	'O'
   5D92 0F                  696 	.db #0x0F	; 15
   5D93 1F                  697 	.db #0x1F	; 31
   5D94 2D                  698 	.db #0x2D	; 45
   5D95 4B                  699 	.db #0x4B	; 75	'K'
   5D96 0F                  700 	.db #0x0F	; 15
   5D97 0F                  701 	.db #0x0F	; 15
   5D98 2F                  702 	.db #0x2F	; 47
   5D99 4F                  703 	.db #0x4F	; 79	'O'
   5D9A 4F                  704 	.db #0x4F	; 79	'O'
   5D9B 0F                  705 	.db #0x0F	; 15
   5D9C 2D                  706 	.db #0x2D	; 45
   5D9D 4B                  707 	.db #0x4B	; 75	'K'
   5D9E 0F                  708 	.db #0x0F	; 15
   5D9F 2F                  709 	.db #0x2F	; 47
   5DA0 2F                  710 	.db #0x2F	; 47
   5DA1 4F                  711 	.db #0x4F	; 79	'O'
   5DA2 0F                  712 	.db #0x0F	; 15
   5DA3 0F                  713 	.db #0x0F	; 15
   5DA4 2D                  714 	.db #0x2D	; 45
   5DA5 7A                  715 	.db #0x7A	; 122	'z'
   5DA6 FA                  716 	.db #0xFA	; 250
   5DA7 FA                  717 	.db #0xFA	; 250
   5DA8 EB                  718 	.db #0xEB	; 235
   5DA9 0F                  719 	.db #0x0F	; 15
   5DAA 0F                  720 	.db #0x0F	; 15
   5DAB 0F                  721 	.db #0x0F	; 15
   5DAC 0F                  722 	.db #0x0F	; 15
   5DAD                     723 _station_small_ns:
   5DAD 0F                  724 	.db #0x0F	; 15
   5DAE 1E                  725 	.db #0x1E	; 30
   5DAF 43                  726 	.db #0x43	; 67	'C'
   5DB0 0F                  727 	.db #0x0F	; 15
   5DB1 0F                  728 	.db #0x0F	; 15
   5DB2 1E                  729 	.db #0x1E	; 30
   5DB3 43                  730 	.db #0x43	; 67	'C'
   5DB4 4F                  731 	.db #0x4F	; 79	'O'
   5DB5 0F                  732 	.db #0x0F	; 15
   5DB6 5E                  733 	.db #0x5E	; 94
   5DB7 43                  734 	.db #0x43	; 67	'C'
   5DB8 0F                  735 	.db #0x0F	; 15
   5DB9 0F                  736 	.db #0x0F	; 15
   5DBA 1E                  737 	.db #0x1E	; 30
   5DBB 43                  738 	.db #0x43	; 67	'C'
   5DBC 0F                  739 	.db #0x0F	; 15
   5DBD 4F                  740 	.db #0x4F	; 79	'O'
   5DBE 1E                  741 	.db #0x1E	; 30
   5DBF 43                  742 	.db #0x43	; 67	'C'
   5DC0 8F                  743 	.db #0x8F	; 143
   5DC1 0F                  744 	.db #0x0F	; 15
   5DC2 1E                  745 	.db #0x1E	; 30
   5DC3 43                  746 	.db #0x43	; 67	'C'
   5DC4 0F                  747 	.db #0x0F	; 15
   5DC5 0F                  748 	.db #0x0F	; 15
   5DC6 1E                  749 	.db #0x1E	; 30
   5DC7 43                  750 	.db #0x43	; 67	'C'
   5DC8 0F                  751 	.db #0x0F	; 15
   5DC9 0E                  752 	.db #0x0E	; 14
   5DCA 16                  753 	.db #0x16	; 22
   5DCB 43                  754 	.db #0x43	; 67	'C'
   5DCC 0F                  755 	.db #0x0F	; 15
   5DCD 0E                  756 	.db #0x0E	; 14
   5DCE D2                  757 	.db #0xD2	; 210
   5DCF 43                  758 	.db #0x43	; 67	'C'
   5DD0 0F                  759 	.db #0x0F	; 15
   5DD1 4F                  760 	.db #0x4F	; 79	'O'
   5DD2 D2                  761 	.db #0xD2	; 210
   5DD3 43                  762 	.db #0x43	; 67	'C'
   5DD4 0F                  763 	.db #0x0F	; 15
   5DD5 0F                  764 	.db #0x0F	; 15
   5DD6 1E                  765 	.db #0x1E	; 30
   5DD7 53                  766 	.db #0x53	; 83	'S'
   5DD8 0F                  767 	.db #0x0F	; 15
   5DD9 0F                  768 	.db #0x0F	; 15
   5DDA 1E                  769 	.db #0x1E	; 30
   5DDB 43                  770 	.db #0x43	; 67	'C'
   5DDC 0F                  771 	.db #0x0F	; 15
   5DDD 0F                  772 	.db #0x0F	; 15
   5DDE 5E                  773 	.db #0x5E	; 94
   5DDF 43                  774 	.db #0x43	; 67	'C'
   5DE0 0F                  775 	.db #0x0F	; 15
   5DE1 0F                  776 	.db #0x0F	; 15
   5DE2 1E                  777 	.db #0x1E	; 30
   5DE3 43                  778 	.db #0x43	; 67	'C'
   5DE4 1F                  779 	.db #0x1F	; 31
   5DE5 4F                  780 	.db #0x4F	; 79	'O'
   5DE6 1E                  781 	.db #0x1E	; 30
   5DE7 43                  782 	.db #0x43	; 67	'C'
   5DE8 0F                  783 	.db #0x0F	; 15
   5DE9 0F                  784 	.db #0x0F	; 15
   5DEA 1E                  785 	.db #0x1E	; 30
   5DEB 43                  786 	.db #0x43	; 67	'C'
   5DEC 0F                  787 	.db #0x0F	; 15
   5DED                     788 _station_small_ew:
   5DED 0F                  789 	.db #0x0F	; 15
   5DEE 2F                  790 	.db #0x2F	; 47
   5DEF 0F                  791 	.db #0x0F	; 15
   5DF0 0F                  792 	.db #0x0F	; 15
   5DF1 0F                  793 	.db #0x0F	; 15
   5DF2 0F                  794 	.db #0x0F	; 15
   5DF3 0F                  795 	.db #0x0F	; 15
   5DF4 4F                  796 	.db #0x4F	; 79	'O'
   5DF5 0F                  797 	.db #0x0F	; 15
   5DF6 0F                  798 	.db #0x0F	; 15
   5DF7 0F                  799 	.db #0x0F	; 15
   5DF8 0F                  800 	.db #0x0F	; 15
   5DF9 2F                  801 	.db #0x2F	; 47
   5DFA 0C                  802 	.db #0x0C	; 12
   5DFB 0F                  803 	.db #0x0F	; 15
   5DFC 0F                  804 	.db #0x0F	; 15
   5DFD 0F                  805 	.db #0x0F	; 15
   5DFE 1C                  806 	.db #0x1C	; 28
   5DFF 87                  807 	.db #0x87	; 135
   5E00 8F                  808 	.db #0x8F	; 143
   5E01 0F                  809 	.db #0x0F	; 15
   5E02 1E                  810 	.db #0x1E	; 30
   5E03 87                  811 	.db #0x87	; 135
   5E04 0F                  812 	.db #0x0F	; 15
   5E05 0F                  813 	.db #0x0F	; 15
   5E06 0F                  814 	.db #0x0F	; 15
   5E07 0F                  815 	.db #0x0F	; 15
   5E08 0F                  816 	.db #0x0F	; 15
   5E09 F0                  817 	.db #0xF0	; 240
   5E0A F0                  818 	.db #0xF0	; 240
   5E0B F0                  819 	.db #0xF0	; 240
   5E0C F0                  820 	.db #0xF0	; 240
   5E0D 00                  821 	.db #0x00	; 0
   5E0E 00                  822 	.db #0x00	; 0
   5E0F 00                  823 	.db #0x00	; 0
   5E10 00                  824 	.db #0x00	; 0
   5E11 F0                  825 	.db #0xF0	; 240
   5E12 F0                  826 	.db #0xF0	; 240
   5E13 F0                  827 	.db #0xF0	; 240
   5E14 F0                  828 	.db #0xF0	; 240
   5E15 0F                  829 	.db #0x0F	; 15
   5E16 0F                  830 	.db #0x0F	; 15
   5E17 0F                  831 	.db #0x0F	; 15
   5E18 0F                  832 	.db #0x0F	; 15
   5E19 0F                  833 	.db #0x0F	; 15
   5E1A 8F                  834 	.db #0x8F	; 143
   5E1B 0F                  835 	.db #0x0F	; 15
   5E1C 8F                  836 	.db #0x8F	; 143
   5E1D 0F                  837 	.db #0x0F	; 15
   5E1E 0F                  838 	.db #0x0F	; 15
   5E1F 0F                  839 	.db #0x0F	; 15
   5E20 0F                  840 	.db #0x0F	; 15
   5E21 0F                  841 	.db #0x0F	; 15
   5E22 0F                  842 	.db #0x0F	; 15
   5E23 8F                  843 	.db #0x8F	; 143
   5E24 0F                  844 	.db #0x0F	; 15
   5E25 4F                  845 	.db #0x4F	; 79	'O'
   5E26 0F                  846 	.db #0x0F	; 15
   5E27 1F                  847 	.db #0x1F	; 31
   5E28 0F                  848 	.db #0x0F	; 15
   5E29 0F                  849 	.db #0x0F	; 15
   5E2A 0F                  850 	.db #0x0F	; 15
   5E2B 0F                  851 	.db #0x0F	; 15
   5E2C 1F                  852 	.db #0x1F	; 31
   5E2D                     853 _station_medium_ns:
   5E2D 0F                  854 	.db #0x0F	; 15
   5E2E 1E                  855 	.db #0x1E	; 30
   5E2F 70                  856 	.db #0x70	; 112	'p'
   5E30 0F                  857 	.db #0x0F	; 15
   5E31 2F                  858 	.db #0x2F	; 47
   5E32 1E                  859 	.db #0x1E	; 30
   5E33 50                  860 	.db #0x50	; 80	'P'
   5E34 0F                  861 	.db #0x0F	; 15
   5E35 0F                  862 	.db #0x0F	; 15
   5E36 1E                  863 	.db #0x1E	; 30
   5E37 50                  864 	.db #0x50	; 80	'P'
   5E38 2F                  865 	.db #0x2F	; 47
   5E39 0F                  866 	.db #0x0F	; 15
   5E3A 1E                  867 	.db #0x1E	; 30
   5E3B 50                  868 	.db #0x50	; 80	'P'
   5E3C 0F                  869 	.db #0x0F	; 15
   5E3D 0F                  870 	.db #0x0F	; 15
   5E3E 1E                  871 	.db #0x1E	; 30
   5E3F 50                  872 	.db #0x50	; 80	'P'
   5E40 0F                  873 	.db #0x0F	; 15
   5E41 0E                  874 	.db #0x0E	; 14
   5E42 16                  875 	.db #0x16	; 22
   5E43 50                  876 	.db #0x50	; 80	'P'
   5E44 0F                  877 	.db #0x0F	; 15
   5E45 0E                  878 	.db #0x0E	; 14
   5E46 D2                  879 	.db #0xD2	; 210
   5E47 50                  880 	.db #0x50	; 80	'P'
   5E48 2F                  881 	.db #0x2F	; 47
   5E49 0E                  882 	.db #0x0E	; 14
   5E4A D2                  883 	.db #0xD2	; 210
   5E4B 50                  884 	.db #0x50	; 80	'P'
   5E4C 0F                  885 	.db #0x0F	; 15
   5E4D 0E                  886 	.db #0x0E	; 14
   5E4E D2                  887 	.db #0xD2	; 210
   5E4F 50                  888 	.db #0x50	; 80	'P'
   5E50 0F                  889 	.db #0x0F	; 15
   5E51 0E                  890 	.db #0x0E	; 14
   5E52 D2                  891 	.db #0xD2	; 210
   5E53 50                  892 	.db #0x50	; 80	'P'
   5E54 0F                  893 	.db #0x0F	; 15
   5E55 0F                  894 	.db #0x0F	; 15
   5E56 D2                  895 	.db #0xD2	; 210
   5E57 50                  896 	.db #0x50	; 80	'P'
   5E58 1F                  897 	.db #0x1F	; 31
   5E59 4F                  898 	.db #0x4F	; 79	'O'
   5E5A 1E                  899 	.db #0x1E	; 30
   5E5B 50                  900 	.db #0x50	; 80	'P'
   5E5C 0F                  901 	.db #0x0F	; 15
   5E5D 0F                  902 	.db #0x0F	; 15
   5E5E 1E                  903 	.db #0x1E	; 30
   5E5F 50                  904 	.db #0x50	; 80	'P'
   5E60 0F                  905 	.db #0x0F	; 15
   5E61 0F                  906 	.db #0x0F	; 15
   5E62 1E                  907 	.db #0x1E	; 30
   5E63 50                  908 	.db #0x50	; 80	'P'
   5E64 0F                  909 	.db #0x0F	; 15
   5E65 0F                  910 	.db #0x0F	; 15
   5E66 9E                  911 	.db #0x9E	; 158
   5E67 21                  912 	.db #0x21	; 33
   5E68 0F                  913 	.db #0x0F	; 15
   5E69 0F                  914 	.db #0x0F	; 15
   5E6A 1E                  915 	.db #0x1E	; 30
   5E6B 43                  916 	.db #0x43	; 67	'C'
   5E6C 4F                  917 	.db #0x4F	; 79	'O'
   5E6D                     918 _station_medium_ew:
   5E6D 0F                  919 	.db #0x0F	; 15
   5E6E 0F                  920 	.db #0x0F	; 15
   5E6F 0F                  921 	.db #0x0F	; 15
   5E70 0F                  922 	.db #0x0F	; 15
   5E71 0F                  923 	.db #0x0F	; 15
   5E72 2F                  924 	.db #0x2F	; 47
   5E73 0F                  925 	.db #0x0F	; 15
   5E74 03                  926 	.db #0x03	; 3
   5E75 0F                  927 	.db #0x0F	; 15
   5E76 0F                  928 	.db #0x0F	; 15
   5E77 0E                  929 	.db #0x0E	; 14
   5E78 67                  930 	.db #0x67	; 103	'g'
   5E79 4F                  931 	.db #0x4F	; 79	'O'
   5E7A 00                  932 	.db #0x00	; 0
   5E7B 06                  933 	.db #0x06	; 6
   5E7C EF                  934 	.db #0xEF	; 239
   5E7D 0F                  935 	.db #0x0F	; 15
   5E7E 70                  936 	.db #0x70	; 112	'p'
   5E7F C3                  937 	.db #0xC3	; 195
   5E80 CF                  938 	.db #0xCF	; 207
   5E81 0F                  939 	.db #0x0F	; 15
   5E82 78                  940 	.db #0x78	; 120	'x'
   5E83 C3                  941 	.db #0xC3	; 195
   5E84 0F                  942 	.db #0x0F	; 15
   5E85 0F                  943 	.db #0x0F	; 15
   5E86 0F                  944 	.db #0x0F	; 15
   5E87 0F                  945 	.db #0x0F	; 15
   5E88 0F                  946 	.db #0x0F	; 15
   5E89 F0                  947 	.db #0xF0	; 240
   5E8A F0                  948 	.db #0xF0	; 240
   5E8B F0                  949 	.db #0xF0	; 240
   5E8C F0                  950 	.db #0xF0	; 240
   5E8D 00                  951 	.db #0x00	; 0
   5E8E 00                  952 	.db #0x00	; 0
   5E8F 00                  953 	.db #0x00	; 0
   5E90 00                  954 	.db #0x00	; 0
   5E91 B0                  955 	.db #0xB0	; 176
   5E92 F0                  956 	.db #0xF0	; 240
   5E93 F0                  957 	.db #0xF0	; 240
   5E94 F0                  958 	.db #0xF0	; 240
   5E95 48                  959 	.db #0x48	; 72	'H'
   5E96 00                  960 	.db #0x00	; 0
   5E97 00                  961 	.db #0x00	; 0
   5E98 10                  962 	.db #0x10	; 16
   5E99 3C                  963 	.db #0x3C	; 60
   5E9A F0                  964 	.db #0xF0	; 240
   5E9B F0                  965 	.db #0xF0	; 240
   5E9C F0                  966 	.db #0xF0	; 240
   5E9D 0F                  967 	.db #0x0F	; 15
   5E9E 4F                  968 	.db #0x4F	; 79	'O'
   5E9F 0F                  969 	.db #0x0F	; 15
   5EA0 0F                  970 	.db #0x0F	; 15
   5EA1 0F                  971 	.db #0x0F	; 15
   5EA2 0F                  972 	.db #0x0F	; 15
   5EA3 0F                  973 	.db #0x0F	; 15
   5EA4 0F                  974 	.db #0x0F	; 15
   5EA5 2F                  975 	.db #0x2F	; 47
   5EA6 0F                  976 	.db #0x0F	; 15
   5EA7 0F                  977 	.db #0x0F	; 15
   5EA8 4F                  978 	.db #0x4F	; 79	'O'
   5EA9 0F                  979 	.db #0x0F	; 15
   5EAA 0F                  980 	.db #0x0F	; 15
   5EAB 0F                  981 	.db #0x0F	; 15
   5EAC 0F                  982 	.db #0x0F	; 15
   5EAD                     983 _station_large_ns:
   5EAD 0F                  984 	.db #0x0F	; 15
   5EAE 1E                  985 	.db #0x1E	; 30
   5EAF 43                  986 	.db #0x43	; 67	'C'
   5EB0 4F                  987 	.db #0x4F	; 79	'O'
   5EB1 0E                  988 	.db #0x0E	; 14
   5EB2 16                  989 	.db #0x16	; 22
   5EB3 21                  990 	.db #0x21	; 33
   5EB4 0F                  991 	.db #0x0F	; 15
   5EB5 0E                  992 	.db #0x0E	; 14
   5EB6 D2                  993 	.db #0xD2	; 210
   5EB7 50                  994 	.db #0x50	; 80	'P'
   5EB8 0F                  995 	.db #0x0F	; 15
   5EB9 0E                  996 	.db #0x0E	; 14
   5EBA D2                  997 	.db #0xD2	; 210
   5EBB 40                  998 	.db #0x40	; 64
   5EBC 87                  999 	.db #0x87	; 135
   5EBD 0E                 1000 	.db #0x0E	; 14
   5EBE D2                 1001 	.db #0xD2	; 210
   5EBF 50                 1002 	.db #0x50	; 80	'P'
   5EC0 43                 1003 	.db #0x43	; 67	'C'
   5EC1 0C                 1004 	.db #0x0C	; 12
   5EC2 D2                 1005 	.db #0xD2	; 210
   5EC3 50                 1006 	.db #0x50	; 80	'P'
   5EC4 21                 1007 	.db #0x21	; 33
   5EC5 1C                 1008 	.db #0x1C	; 28
   5EC6 D2                 1009 	.db #0xD2	; 210
   5EC7 50                 1010 	.db #0x50	; 80	'P'
   5EC8 50                 1011 	.db #0x50	; 80	'P'
   5EC9 1C                 1012 	.db #0x1C	; 28
   5ECA D2                 1013 	.db #0xD2	; 210
   5ECB 50                 1014 	.db #0x50	; 80	'P'
   5ECC 50                 1015 	.db #0x50	; 80	'P'
   5ECD 1C                 1016 	.db #0x1C	; 28
   5ECE D2                 1017 	.db #0xD2	; 210
   5ECF 50                 1018 	.db #0x50	; 80	'P'
   5ED0 50                 1019 	.db #0x50	; 80	'P'
   5ED1 1C                 1020 	.db #0x1C	; 28
   5ED2 D2                 1021 	.db #0xD2	; 210
   5ED3 50                 1022 	.db #0x50	; 80	'P'
   5ED4 50                 1023 	.db #0x50	; 80	'P'
   5ED5 1C                 1024 	.db #0x1C	; 28
   5ED6 D2                 1025 	.db #0xD2	; 210
   5ED7 50                 1026 	.db #0x50	; 80	'P'
   5ED8 50                 1027 	.db #0x50	; 80	'P'
   5ED9 0E                 1028 	.db #0x0E	; 14
   5EDA D2                 1029 	.db #0xD2	; 210
   5EDB 50                 1030 	.db #0x50	; 80	'P'
   5EDC 50                 1031 	.db #0x50	; 80	'P'
   5EDD 0E                 1032 	.db #0x0E	; 14
   5EDE D2                 1033 	.db #0xD2	; 210
   5EDF 50                 1034 	.db #0x50	; 80	'P'
   5EE0 50                 1035 	.db #0x50	; 80	'P'
   5EE1 4E                 1036 	.db #0x4E	; 78	'N'
   5EE2 D2                 1037 	.db #0xD2	; 210
   5EE3 50                 1038 	.db #0x50	; 80	'P'
   5EE4 50                 1039 	.db #0x50	; 80	'P'
   5EE5 0F                 1040 	.db #0x0F	; 15
   5EE6 D2                 1041 	.db #0xD2	; 210
   5EE7 50                 1042 	.db #0x50	; 80	'P'
   5EE8 50                 1043 	.db #0x50	; 80	'P'
   5EE9 0F                 1044 	.db #0x0F	; 15
   5EEA 1E                 1045 	.db #0x1E	; 30
   5EEB 70                 1046 	.db #0x70	; 112	'p'
   5EEC F0                 1047 	.db #0xF0	; 240
   5EED                    1048 _station_large_ew:
   5EED 0F                 1049 	.db #0x0F	; 15
   5EEE 0F                 1050 	.db #0x0F	; 15
   5EEF 0F                 1051 	.db #0x0F	; 15
   5EF0 0F                 1052 	.db #0x0F	; 15
   5EF1 0F                 1053 	.db #0x0F	; 15
   5EF2 0F                 1054 	.db #0x0F	; 15
   5EF3 0F                 1055 	.db #0x0F	; 15
   5EF4 0F                 1056 	.db #0x0F	; 15
   5EF5 0F                 1057 	.db #0x0F	; 15
   5EF6 08                 1058 	.db #0x08	; 8
   5EF7 01                 1059 	.db #0x01	; 1
   5EF8 0F                 1060 	.db #0x0F	; 15
   5EF9 08                 1061 	.db #0x08	; 8
   5EFA 30                 1062 	.db #0x30	; 48	'0'
   5EFB E0                 1063 	.db #0xE0	; 224
   5EFC 01                 1064 	.db #0x01	; 1
   5EFD 38                 1065 	.db #0x38	; 56	'8'
   5EFE F0                 1066 	.db #0xF0	; 240
   5EFF F0                 1067 	.db #0xF0	; 240
   5F00 E1                 1068 	.db #0xE1	; 225
   5F01 3C                 1069 	.db #0x3C	; 60
   5F02 F0                 1070 	.db #0xF0	; 240
   5F03 F0                 1071 	.db #0xF0	; 240
   5F04 E1                 1072 	.db #0xE1	; 225
   5F05 0F                 1073 	.db #0x0F	; 15
   5F06 0F                 1074 	.db #0x0F	; 15
   5F07 0F                 1075 	.db #0x0F	; 15
   5F08 0F                 1076 	.db #0x0F	; 15
   5F09 F0                 1077 	.db #0xF0	; 240
   5F0A F0                 1078 	.db #0xF0	; 240
   5F0B F0                 1079 	.db #0xF0	; 240
   5F0C F0                 1080 	.db #0xF0	; 240
   5F0D 00                 1081 	.db #0x00	; 0
   5F0E 00                 1082 	.db #0x00	; 0
   5F0F 00                 1083 	.db #0x00	; 0
   5F10 00                 1084 	.db #0x00	; 0
   5F11 F0                 1085 	.db #0xF0	; 240
   5F12 F0                 1086 	.db #0xF0	; 240
   5F13 F0                 1087 	.db #0xF0	; 240
   5F14 D0                 1088 	.db #0xD0	; 208
   5F15 80                 1089 	.db #0x80	; 128
   5F16 00                 1090 	.db #0x00	; 0
   5F17 00                 1091 	.db #0x00	; 0
   5F18 21                 1092 	.db #0x21	; 33
   5F19 F0                 1093 	.db #0xF0	; 240
   5F1A F0                 1094 	.db #0xF0	; 240
   5F1B F0                 1095 	.db #0xF0	; 240
   5F1C 43                 1096 	.db #0x43	; 67	'C'
   5F1D 80                 1097 	.db #0x80	; 128
   5F1E 00                 1098 	.db #0x00	; 0
   5F1F 00                 1099 	.db #0x00	; 0
   5F20 87                 1100 	.db #0x87	; 135
   5F21 F0                 1101 	.db #0xF0	; 240
   5F22 F0                 1102 	.db #0xF0	; 240
   5F23 D0                 1103 	.db #0xD0	; 208
   5F24 0F                 1104 	.db #0x0F	; 15
   5F25 80                 1105 	.db #0x80	; 128
   5F26 00                 1106 	.db #0x00	; 0
   5F27 21                 1107 	.db #0x21	; 33
   5F28 0F                 1108 	.db #0x0F	; 15
   5F29 F0                 1109 	.db #0xF0	; 240
   5F2A F0                 1110 	.db #0xF0	; 240
   5F2B C3                 1111 	.db #0xC3	; 195
   5F2C 0F                 1112 	.db #0x0F	; 15
   5F2D                    1113 _rail_ew:
   5F2D 0F                 1114 	.db #0x0F	; 15
   5F2E 0F                 1115 	.db #0x0F	; 15
   5F2F 0F                 1116 	.db #0x0F	; 15
   5F30 0F                 1117 	.db #0x0F	; 15
   5F31 2F                 1118 	.db #0x2F	; 47
   5F32 0F                 1119 	.db #0x0F	; 15
   5F33 2F                 1120 	.db #0x2F	; 47
   5F34 2F                 1121 	.db #0x2F	; 47
   5F35 0F                 1122 	.db #0x0F	; 15
   5F36 0F                 1123 	.db #0x0F	; 15
   5F37 0F                 1124 	.db #0x0F	; 15
   5F38 0F                 1125 	.db #0x0F	; 15
   5F39 0F                 1126 	.db #0x0F	; 15
   5F3A 0F                 1127 	.db #0x0F	; 15
   5F3B 0F                 1128 	.db #0x0F	; 15
   5F3C 0F                 1129 	.db #0x0F	; 15
   5F3D 0F                 1130 	.db #0x0F	; 15
   5F3E 2F                 1131 	.db #0x2F	; 47
   5F3F 0F                 1132 	.db #0x0F	; 15
   5F40 0F                 1133 	.db #0x0F	; 15
   5F41 4F                 1134 	.db #0x4F	; 79	'O'
   5F42 0F                 1135 	.db #0x0F	; 15
   5F43 0F                 1136 	.db #0x0F	; 15
   5F44 4F                 1137 	.db #0x4F	; 79	'O'
   5F45 0F                 1138 	.db #0x0F	; 15
   5F46 0F                 1139 	.db #0x0F	; 15
   5F47 0F                 1140 	.db #0x0F	; 15
   5F48 0F                 1141 	.db #0x0F	; 15
   5F49 F0                 1142 	.db #0xF0	; 240
   5F4A F0                 1143 	.db #0xF0	; 240
   5F4B F0                 1144 	.db #0xF0	; 240
   5F4C F0                 1145 	.db #0xF0	; 240
   5F4D 00                 1146 	.db #0x00	; 0
   5F4E 00                 1147 	.db #0x00	; 0
   5F4F 00                 1148 	.db #0x00	; 0
   5F50 00                 1149 	.db #0x00	; 0
   5F51 F0                 1150 	.db #0xF0	; 240
   5F52 F0                 1151 	.db #0xF0	; 240
   5F53 F0                 1152 	.db #0xF0	; 240
   5F54 F0                 1153 	.db #0xF0	; 240
   5F55 0F                 1154 	.db #0x0F	; 15
   5F56 0F                 1155 	.db #0x0F	; 15
   5F57 0F                 1156 	.db #0x0F	; 15
   5F58 0F                 1157 	.db #0x0F	; 15
   5F59 0F                 1158 	.db #0x0F	; 15
   5F5A 0F                 1159 	.db #0x0F	; 15
   5F5B 8F                 1160 	.db #0x8F	; 143
   5F5C 0F                 1161 	.db #0x0F	; 15
   5F5D 0F                 1162 	.db #0x0F	; 15
   5F5E 8F                 1163 	.db #0x8F	; 143
   5F5F 0F                 1164 	.db #0x0F	; 15
   5F60 4F                 1165 	.db #0x4F	; 79	'O'
   5F61 0F                 1166 	.db #0x0F	; 15
   5F62 0F                 1167 	.db #0x0F	; 15
   5F63 0F                 1168 	.db #0x0F	; 15
   5F64 0F                 1169 	.db #0x0F	; 15
   5F65 0F                 1170 	.db #0x0F	; 15
   5F66 0F                 1171 	.db #0x0F	; 15
   5F67 0F                 1172 	.db #0x0F	; 15
   5F68 0F                 1173 	.db #0x0F	; 15
   5F69 2F                 1174 	.db #0x2F	; 47
   5F6A 0F                 1175 	.db #0x0F	; 15
   5F6B 2F                 1176 	.db #0x2F	; 47
   5F6C 0F                 1177 	.db #0x0F	; 15
   5F6D                    1178 _rail_ns:
   5F6D 0F                 1179 	.db #0x0F	; 15
   5F6E 1E                 1180 	.db #0x1E	; 30
   5F6F 43                 1181 	.db #0x43	; 67	'C'
   5F70 0F                 1182 	.db #0x0F	; 15
   5F71 0F                 1183 	.db #0x0F	; 15
   5F72 9E                 1184 	.db #0x9E	; 158
   5F73 43                 1185 	.db #0x43	; 67	'C'
   5F74 8F                 1186 	.db #0x8F	; 143
   5F75 0F                 1187 	.db #0x0F	; 15
   5F76 1E                 1188 	.db #0x1E	; 30
   5F77 43                 1189 	.db #0x43	; 67	'C'
   5F78 0F                 1190 	.db #0x0F	; 15
   5F79 0F                 1191 	.db #0x0F	; 15
   5F7A 1E                 1192 	.db #0x1E	; 30
   5F7B 43                 1193 	.db #0x43	; 67	'C'
   5F7C 0F                 1194 	.db #0x0F	; 15
   5F7D 0F                 1195 	.db #0x0F	; 15
   5F7E 1E                 1196 	.db #0x1E	; 30
   5F7F 43                 1197 	.db #0x43	; 67	'C'
   5F80 0F                 1198 	.db #0x0F	; 15
   5F81 0F                 1199 	.db #0x0F	; 15
   5F82 1E                 1200 	.db #0x1E	; 30
   5F83 43                 1201 	.db #0x43	; 67	'C'
   5F84 2F                 1202 	.db #0x2F	; 47
   5F85 0F                 1203 	.db #0x0F	; 15
   5F86 1E                 1204 	.db #0x1E	; 30
   5F87 43                 1205 	.db #0x43	; 67	'C'
   5F88 0F                 1206 	.db #0x0F	; 15
   5F89 2F                 1207 	.db #0x2F	; 47
   5F8A 1E                 1208 	.db #0x1E	; 30
   5F8B 43                 1209 	.db #0x43	; 67	'C'
   5F8C 0F                 1210 	.db #0x0F	; 15
   5F8D 0F                 1211 	.db #0x0F	; 15
   5F8E 1E                 1212 	.db #0x1E	; 30
   5F8F 43                 1213 	.db #0x43	; 67	'C'
   5F90 0F                 1214 	.db #0x0F	; 15
   5F91 0F                 1215 	.db #0x0F	; 15
   5F92 1E                 1216 	.db #0x1E	; 30
   5F93 43                 1217 	.db #0x43	; 67	'C'
   5F94 0F                 1218 	.db #0x0F	; 15
   5F95 0F                 1219 	.db #0x0F	; 15
   5F96 1E                 1220 	.db #0x1E	; 30
   5F97 43                 1221 	.db #0x43	; 67	'C'
   5F98 0F                 1222 	.db #0x0F	; 15
   5F99 0F                 1223 	.db #0x0F	; 15
   5F9A 1E                 1224 	.db #0x1E	; 30
   5F9B 53                 1225 	.db #0x53	; 83	'S'
   5F9C 0F                 1226 	.db #0x0F	; 15
   5F9D 0F                 1227 	.db #0x0F	; 15
   5F9E 9E                 1228 	.db #0x9E	; 158
   5F9F 43                 1229 	.db #0x43	; 67	'C'
   5FA0 0F                 1230 	.db #0x0F	; 15
   5FA1 4F                 1231 	.db #0x4F	; 79	'O'
   5FA2 1E                 1232 	.db #0x1E	; 30
   5FA3 43                 1233 	.db #0x43	; 67	'C'
   5FA4 0F                 1234 	.db #0x0F	; 15
   5FA5 0F                 1235 	.db #0x0F	; 15
   5FA6 1E                 1236 	.db #0x1E	; 30
   5FA7 43                 1237 	.db #0x43	; 67	'C'
   5FA8 4F                 1238 	.db #0x4F	; 79	'O'
   5FA9 0F                 1239 	.db #0x0F	; 15
   5FAA 1E                 1240 	.db #0x1E	; 30
   5FAB 43                 1241 	.db #0x43	; 67	'C'
   5FAC 0F                 1242 	.db #0x0F	; 15
   5FAD                    1243 _rail_en:
   5FAD 0F                 1244 	.db #0x0F	; 15
   5FAE 1E                 1245 	.db #0x1E	; 30
   5FAF 43                 1246 	.db #0x43	; 67	'C'
   5FB0 0F                 1247 	.db #0x0F	; 15
   5FB1 2F                 1248 	.db #0x2F	; 47
   5FB2 1E                 1249 	.db #0x1E	; 30
   5FB3 43                 1250 	.db #0x43	; 67	'C'
   5FB4 8F                 1251 	.db #0x8F	; 143
   5FB5 0F                 1252 	.db #0x0F	; 15
   5FB6 0F                 1253 	.db #0x0F	; 15
   5FB7 A1                 1254 	.db #0xA1	; 161
   5FB8 0F                 1255 	.db #0x0F	; 15
   5FB9 0F                 1256 	.db #0x0F	; 15
   5FBA 0F                 1257 	.db #0x0F	; 15
   5FBB 58                 1258 	.db #0x58	; 88	'X'
   5FBC 0F                 1259 	.db #0x0F	; 15
   5FBD 0F                 1260 	.db #0x0F	; 15
   5FBE 4F                 1261 	.db #0x4F	; 79	'O'
   5FBF 2C                 1262 	.db #0x2C	; 44
   5FC0 87                 1263 	.db #0x87	; 135
   5FC1 0F                 1264 	.db #0x0F	; 15
   5FC2 0F                 1265 	.db #0x0F	; 15
   5FC3 1E                 1266 	.db #0x1E	; 30
   5FC4 43                 1267 	.db #0x43	; 67	'C'
   5FC5 0F                 1268 	.db #0x0F	; 15
   5FC6 0F                 1269 	.db #0x0F	; 15
   5FC7 8F                 1270 	.db #0x8F	; 143
   5FC8 A1                 1271 	.db #0xA1	; 161
   5FC9 0F                 1272 	.db #0x0F	; 15
   5FCA 0F                 1273 	.db #0x0F	; 15
   5FCB 0F                 1274 	.db #0x0F	; 15
   5FCC 58                 1275 	.db #0x58	; 88	'X'
   5FCD 2F                 1276 	.db #0x2F	; 47
   5FCE 0F                 1277 	.db #0x0F	; 15
   5FCF 0F                 1278 	.db #0x0F	; 15
   5FD0 2C                 1279 	.db #0x2C	; 44
   5FD1 0F                 1280 	.db #0x0F	; 15
   5FD2 0F                 1281 	.db #0x0F	; 15
   5FD3 0F                 1282 	.db #0x0F	; 15
   5FD4 1E                 1283 	.db #0x1E	; 30
   5FD5 0F                 1284 	.db #0x0F	; 15
   5FD6 0F                 1285 	.db #0x0F	; 15
   5FD7 0F                 1286 	.db #0x0F	; 15
   5FD8 4F                 1287 	.db #0x4F	; 79	'O'
   5FD9 0F                 1288 	.db #0x0F	; 15
   5FDA 0F                 1289 	.db #0x0F	; 15
   5FDB 0F                 1290 	.db #0x0F	; 15
   5FDC 0F                 1291 	.db #0x0F	; 15
   5FDD 2F                 1292 	.db #0x2F	; 47
   5FDE 4F                 1293 	.db #0x4F	; 79	'O'
   5FDF 2F                 1294 	.db #0x2F	; 47
   5FE0 0F                 1295 	.db #0x0F	; 15
   5FE1 0F                 1296 	.db #0x0F	; 15
   5FE2 0F                 1297 	.db #0x0F	; 15
   5FE3 0F                 1298 	.db #0x0F	; 15
   5FE4 0F                 1299 	.db #0x0F	; 15
   5FE5 0F                 1300 	.db #0x0F	; 15
   5FE6 0F                 1301 	.db #0x0F	; 15
   5FE7 0F                 1302 	.db #0x0F	; 15
   5FE8 2F                 1303 	.db #0x2F	; 47
   5FE9 0F                 1304 	.db #0x0F	; 15
   5FEA 0F                 1305 	.db #0x0F	; 15
   5FEB 0F                 1306 	.db #0x0F	; 15
   5FEC 0F                 1307 	.db #0x0F	; 15
   5FED                    1308 _rail_es:
   5FED 0F                 1309 	.db #0x0F	; 15
   5FEE 0F                 1310 	.db #0x0F	; 15
   5FEF 0F                 1311 	.db #0x0F	; 15
   5FF0 0F                 1312 	.db #0x0F	; 15
   5FF1 0F                 1313 	.db #0x0F	; 15
   5FF2 0F                 1314 	.db #0x0F	; 15
   5FF3 0F                 1315 	.db #0x0F	; 15
   5FF4 2F                 1316 	.db #0x2F	; 47
   5FF5 0F                 1317 	.db #0x0F	; 15
   5FF6 2F                 1318 	.db #0x2F	; 47
   5FF7 0F                 1319 	.db #0x0F	; 15
   5FF8 0F                 1320 	.db #0x0F	; 15
   5FF9 1F                 1321 	.db #0x1F	; 31
   5FFA 0F                 1322 	.db #0x0F	; 15
   5FFB 0F                 1323 	.db #0x0F	; 15
   5FFC 0F                 1324 	.db #0x0F	; 15
   5FFD 0F                 1325 	.db #0x0F	; 15
   5FFE 0F                 1326 	.db #0x0F	; 15
   5FFF 0F                 1327 	.db #0x0F	; 15
   6000 0F                 1328 	.db #0x0F	; 15
   6001 0F                 1329 	.db #0x0F	; 15
   6002 0F                 1330 	.db #0x0F	; 15
   6003 1F                 1331 	.db #0x1F	; 31
   6004 0F                 1332 	.db #0x0F	; 15
   6005 0F                 1333 	.db #0x0F	; 15
   6006 0F                 1334 	.db #0x0F	; 15
   6007 0F                 1335 	.db #0x0F	; 15
   6008 0F                 1336 	.db #0x0F	; 15
   6009 4F                 1337 	.db #0x4F	; 79	'O'
   600A 0F                 1338 	.db #0x0F	; 15
   600B 0F                 1339 	.db #0x0F	; 15
   600C 3C                 1340 	.db #0x3C	; 60
   600D 0F                 1341 	.db #0x0F	; 15
   600E 4F                 1342 	.db #0x4F	; 79	'O'
   600F 0F                 1343 	.db #0x0F	; 15
   6010 48                 1344 	.db #0x48	; 72	'H'
   6011 0F                 1345 	.db #0x0F	; 15
   6012 0F                 1346 	.db #0x0F	; 15
   6013 4F                 1347 	.db #0x4F	; 79	'O'
   6014 B0                 1348 	.db #0xB0	; 176
   6015 0F                 1349 	.db #0x0F	; 15
   6016 0F                 1350 	.db #0x0F	; 15
   6017 1E                 1351 	.db #0x1E	; 30
   6018 43                 1352 	.db #0x43	; 67	'C'
   6019 0F                 1353 	.db #0x0F	; 15
   601A 0F                 1354 	.db #0x0F	; 15
   601B 2C                 1355 	.db #0x2C	; 44
   601C 87                 1356 	.db #0x87	; 135
   601D 0F                 1357 	.db #0x0F	; 15
   601E 0F                 1358 	.db #0x0F	; 15
   601F 58                 1359 	.db #0x58	; 88	'X'
   6020 0F                 1360 	.db #0x0F	; 15
   6021 0F                 1361 	.db #0x0F	; 15
   6022 8F                 1362 	.db #0x8F	; 143
   6023 A1                 1363 	.db #0xA1	; 161
   6024 0F                 1364 	.db #0x0F	; 15
   6025 0F                 1365 	.db #0x0F	; 15
   6026 1E                 1366 	.db #0x1E	; 30
   6027 43                 1367 	.db #0x43	; 67	'C'
   6028 8F                 1368 	.db #0x8F	; 143
   6029 0F                 1369 	.db #0x0F	; 15
   602A 1E                 1370 	.db #0x1E	; 30
   602B 43                 1371 	.db #0x43	; 67	'C'
   602C 0F                 1372 	.db #0x0F	; 15
   602D                    1373 _rail_wn:
   602D 0F                 1374 	.db #0x0F	; 15
   602E 1E                 1375 	.db #0x1E	; 30
   602F 43                 1376 	.db #0x43	; 67	'C'
   6030 0F                 1377 	.db #0x0F	; 15
   6031 0F                 1378 	.db #0x0F	; 15
   6032 1E                 1379 	.db #0x1E	; 30
   6033 53                 1380 	.db #0x53	; 83	'S'
   6034 0F                 1381 	.db #0x0F	; 15
   6035 0F                 1382 	.db #0x0F	; 15
   6036 2C                 1383 	.db #0x2C	; 44
   6037 87                 1384 	.db #0x87	; 135
   6038 0F                 1385 	.db #0x0F	; 15
   6039 2F                 1386 	.db #0x2F	; 47
   603A 58                 1387 	.db #0x58	; 88	'X'
   603B 0F                 1388 	.db #0x0F	; 15
   603C 0F                 1389 	.db #0x0F	; 15
   603D 0F                 1390 	.db #0x0F	; 15
   603E A1                 1391 	.db #0xA1	; 161
   603F 0F                 1392 	.db #0x0F	; 15
   6040 0F                 1393 	.db #0x0F	; 15
   6041 1E                 1394 	.db #0x1E	; 30
   6042 43                 1395 	.db #0x43	; 67	'C'
   6043 0F                 1396 	.db #0x0F	; 15
   6044 8F                 1397 	.db #0x8F	; 143
   6045 2C                 1398 	.db #0x2C	; 44
   6046 87                 1399 	.db #0x87	; 135
   6047 0F                 1400 	.db #0x0F	; 15
   6048 0F                 1401 	.db #0x0F	; 15
   6049 D0                 1402 	.db #0xD0	; 208
   604A 1F                 1403 	.db #0x1F	; 31
   604B 0F                 1404 	.db #0x0F	; 15
   604C 0F                 1405 	.db #0x0F	; 15
   604D 21                 1406 	.db #0x21	; 33
   604E 0F                 1407 	.db #0x0F	; 15
   604F 0F                 1408 	.db #0x0F	; 15
   6050 0F                 1409 	.db #0x0F	; 15
   6051 C3                 1410 	.db #0xC3	; 195
   6052 0F                 1411 	.db #0x0F	; 15
   6053 0F                 1412 	.db #0x0F	; 15
   6054 0F                 1413 	.db #0x0F	; 15
   6055 0F                 1414 	.db #0x0F	; 15
   6056 0F                 1415 	.db #0x0F	; 15
   6057 0F                 1416 	.db #0x0F	; 15
   6058 0F                 1417 	.db #0x0F	; 15
   6059 1F                 1418 	.db #0x1F	; 31
   605A 0F                 1419 	.db #0x0F	; 15
   605B 4F                 1420 	.db #0x4F	; 79	'O'
   605C 4F                 1421 	.db #0x4F	; 79	'O'
   605D 0F                 1422 	.db #0x0F	; 15
   605E 0F                 1423 	.db #0x0F	; 15
   605F 0F                 1424 	.db #0x0F	; 15
   6060 0F                 1425 	.db #0x0F	; 15
   6061 0F                 1426 	.db #0x0F	; 15
   6062 1F                 1427 	.db #0x1F	; 31
   6063 0F                 1428 	.db #0x0F	; 15
   6064 0F                 1429 	.db #0x0F	; 15
   6065 2F                 1430 	.db #0x2F	; 47
   6066 0F                 1431 	.db #0x0F	; 15
   6067 0F                 1432 	.db #0x0F	; 15
   6068 0F                 1433 	.db #0x0F	; 15
   6069 0F                 1434 	.db #0x0F	; 15
   606A 0F                 1435 	.db #0x0F	; 15
   606B 0F                 1436 	.db #0x0F	; 15
   606C 0F                 1437 	.db #0x0F	; 15
   606D                    1438 _rail_ws:
   606D 0F                 1439 	.db #0x0F	; 15
   606E 0F                 1440 	.db #0x0F	; 15
   606F 0F                 1441 	.db #0x0F	; 15
   6070 0F                 1442 	.db #0x0F	; 15
   6071 0F                 1443 	.db #0x0F	; 15
   6072 0F                 1444 	.db #0x0F	; 15
   6073 0F                 1445 	.db #0x0F	; 15
   6074 0F                 1446 	.db #0x0F	; 15
   6075 2F                 1447 	.db #0x2F	; 47
   6076 0F                 1448 	.db #0x0F	; 15
   6077 4F                 1449 	.db #0x4F	; 79	'O'
   6078 2F                 1450 	.db #0x2F	; 47
   6079 0F                 1451 	.db #0x0F	; 15
   607A 0F                 1452 	.db #0x0F	; 15
   607B 0F                 1453 	.db #0x0F	; 15
   607C 0F                 1454 	.db #0x0F	; 15
   607D 0F                 1455 	.db #0x0F	; 15
   607E 0F                 1456 	.db #0x0F	; 15
   607F 0F                 1457 	.db #0x0F	; 15
   6080 0F                 1458 	.db #0x0F	; 15
   6081 0F                 1459 	.db #0x0F	; 15
   6082 0F                 1460 	.db #0x0F	; 15
   6083 0F                 1461 	.db #0x0F	; 15
   6084 0F                 1462 	.db #0x0F	; 15
   6085 0F                 1463 	.db #0x0F	; 15
   6086 2F                 1464 	.db #0x2F	; 47
   6087 0F                 1465 	.db #0x0F	; 15
   6088 0F                 1466 	.db #0x0F	; 15
   6089 C3                 1467 	.db #0xC3	; 195
   608A 0F                 1468 	.db #0x0F	; 15
   608B 0F                 1469 	.db #0x0F	; 15
   608C 0F                 1470 	.db #0x0F	; 15
   608D 21                 1471 	.db #0x21	; 33
   608E 0F                 1472 	.db #0x0F	; 15
   608F 2F                 1473 	.db #0x2F	; 47
   6090 0F                 1474 	.db #0x0F	; 15
   6091 D0                 1475 	.db #0xD0	; 208
   6092 0F                 1476 	.db #0x0F	; 15
   6093 0F                 1477 	.db #0x0F	; 15
   6094 0F                 1478 	.db #0x0F	; 15
   6095 2C                 1479 	.db #0x2C	; 44
   6096 87                 1480 	.db #0x87	; 135
   6097 0F                 1481 	.db #0x0F	; 15
   6098 0F                 1482 	.db #0x0F	; 15
   6099 1E                 1483 	.db #0x1E	; 30
   609A 43                 1484 	.db #0x43	; 67	'C'
   609B 0F                 1485 	.db #0x0F	; 15
   609C 2F                 1486 	.db #0x2F	; 47
   609D 4F                 1487 	.db #0x4F	; 79	'O'
   609E A1                 1488 	.db #0xA1	; 161
   609F 0F                 1489 	.db #0x0F	; 15
   60A0 0F                 1490 	.db #0x0F	; 15
   60A1 0F                 1491 	.db #0x0F	; 15
   60A2 58                 1492 	.db #0x58	; 88	'X'
   60A3 4F                 1493 	.db #0x4F	; 79	'O'
   60A4 0F                 1494 	.db #0x0F	; 15
   60A5 0F                 1495 	.db #0x0F	; 15
   60A6 2C                 1496 	.db #0x2C	; 44
   60A7 87                 1497 	.db #0x87	; 135
   60A8 4F                 1498 	.db #0x4F	; 79	'O'
   60A9 0F                 1499 	.db #0x0F	; 15
   60AA 1E                 1500 	.db #0x1E	; 30
   60AB 43                 1501 	.db #0x43	; 67	'C'
   60AC 0F                 1502 	.db #0x0F	; 15
   60AD                    1503 _rail_ew_n:
   60AD 0F                 1504 	.db #0x0F	; 15
   60AE 1E                 1505 	.db #0x1E	; 30
   60AF 43                 1506 	.db #0x43	; 67	'C'
   60B0 0F                 1507 	.db #0x0F	; 15
   60B1 0F                 1508 	.db #0x0F	; 15
   60B2 9E                 1509 	.db #0x9E	; 158
   60B3 43                 1510 	.db #0x43	; 67	'C'
   60B4 0F                 1511 	.db #0x0F	; 15
   60B5 0F                 1512 	.db #0x0F	; 15
   60B6 1E                 1513 	.db #0x1E	; 30
   60B7 53                 1514 	.db #0x53	; 83	'S'
   60B8 0F                 1515 	.db #0x0F	; 15
   60B9 0F                 1516 	.db #0x0F	; 15
   60BA 2C                 1517 	.db #0x2C	; 44
   60BB 87                 1518 	.db #0x87	; 135
   60BC 0F                 1519 	.db #0x0F	; 15
   60BD 4F                 1520 	.db #0x4F	; 79	'O'
   60BE 58                 1521 	.db #0x58	; 88	'X'
   60BF 0F                 1522 	.db #0x0F	; 15
   60C0 0F                 1523 	.db #0x0F	; 15
   60C1 0F                 1524 	.db #0x0F	; 15
   60C2 A1                 1525 	.db #0xA1	; 161
   60C3 0F                 1526 	.db #0x0F	; 15
   60C4 8F                 1527 	.db #0x8F	; 143
   60C5 1E                 1528 	.db #0x1E	; 30
   60C6 43                 1529 	.db #0x43	; 67	'C'
   60C7 0F                 1530 	.db #0x0F	; 15
   60C8 0F                 1531 	.db #0x0F	; 15
   60C9 E0                 1532 	.db #0xE0	; 224
   60CA F0                 1533 	.db #0xF0	; 240
   60CB F0                 1534 	.db #0xF0	; 240
   60CC F0                 1535 	.db #0xF0	; 240
   60CD 00                 1536 	.db #0x00	; 0
   60CE 00                 1537 	.db #0x00	; 0
   60CF 00                 1538 	.db #0x00	; 0
   60D0 00                 1539 	.db #0x00	; 0
   60D1 F0                 1540 	.db #0xF0	; 240
   60D2 F0                 1541 	.db #0xF0	; 240
   60D3 F0                 1542 	.db #0xF0	; 240
   60D4 F0                 1543 	.db #0xF0	; 240
   60D5 0F                 1544 	.db #0x0F	; 15
   60D6 0F                 1545 	.db #0x0F	; 15
   60D7 0F                 1546 	.db #0x0F	; 15
   60D8 0F                 1547 	.db #0x0F	; 15
   60D9 2F                 1548 	.db #0x2F	; 47
   60DA 1F                 1549 	.db #0x1F	; 31
   60DB 0F                 1550 	.db #0x0F	; 15
   60DC 4F                 1551 	.db #0x4F	; 79	'O'
   60DD 0F                 1552 	.db #0x0F	; 15
   60DE 0F                 1553 	.db #0x0F	; 15
   60DF 0F                 1554 	.db #0x0F	; 15
   60E0 0F                 1555 	.db #0x0F	; 15
   60E1 0F                 1556 	.db #0x0F	; 15
   60E2 0F                 1557 	.db #0x0F	; 15
   60E3 0F                 1558 	.db #0x0F	; 15
   60E4 0F                 1559 	.db #0x0F	; 15
   60E5 0F                 1560 	.db #0x0F	; 15
   60E6 8F                 1561 	.db #0x8F	; 143
   60E7 4F                 1562 	.db #0x4F	; 79	'O'
   60E8 0F                 1563 	.db #0x0F	; 15
   60E9 0F                 1564 	.db #0x0F	; 15
   60EA 0F                 1565 	.db #0x0F	; 15
   60EB 0F                 1566 	.db #0x0F	; 15
   60EC 0F                 1567 	.db #0x0F	; 15
   60ED                    1568 _rail_ew_s:
   60ED 0F                 1569 	.db #0x0F	; 15
   60EE 0F                 1570 	.db #0x0F	; 15
   60EF 0F                 1571 	.db #0x0F	; 15
   60F0 0F                 1572 	.db #0x0F	; 15
   60F1 0F                 1573 	.db #0x0F	; 15
   60F2 0F                 1574 	.db #0x0F	; 15
   60F3 0F                 1575 	.db #0x0F	; 15
   60F4 8F                 1576 	.db #0x8F	; 143
   60F5 0F                 1577 	.db #0x0F	; 15
   60F6 4F                 1578 	.db #0x4F	; 79	'O'
   60F7 0F                 1579 	.db #0x0F	; 15
   60F8 0F                 1580 	.db #0x0F	; 15
   60F9 0F                 1581 	.db #0x0F	; 15
   60FA 0F                 1582 	.db #0x0F	; 15
   60FB 0F                 1583 	.db #0x0F	; 15
   60FC 0F                 1584 	.db #0x0F	; 15
   60FD 0F                 1585 	.db #0x0F	; 15
   60FE 0F                 1586 	.db #0x0F	; 15
   60FF 4F                 1587 	.db #0x4F	; 79	'O'
   6100 0F                 1588 	.db #0x0F	; 15
   6101 4F                 1589 	.db #0x4F	; 79	'O'
   6102 0F                 1590 	.db #0x0F	; 15
   6103 0F                 1591 	.db #0x0F	; 15
   6104 2F                 1592 	.db #0x2F	; 47
   6105 0F                 1593 	.db #0x0F	; 15
   6106 0F                 1594 	.db #0x0F	; 15
   6107 0F                 1595 	.db #0x0F	; 15
   6108 0F                 1596 	.db #0x0F	; 15
   6109 F0                 1597 	.db #0xF0	; 240
   610A F0                 1598 	.db #0xF0	; 240
   610B F0                 1599 	.db #0xF0	; 240
   610C F0                 1600 	.db #0xF0	; 240
   610D 00                 1601 	.db #0x00	; 0
   610E 00                 1602 	.db #0x00	; 0
   610F 00                 1603 	.db #0x00	; 0
   6110 00                 1604 	.db #0x00	; 0
   6111 E0                 1605 	.db #0xE0	; 224
   6112 F0                 1606 	.db #0xF0	; 240
   6113 F0                 1607 	.db #0xF0	; 240
   6114 F0                 1608 	.db #0xF0	; 240
   6115 1E                 1609 	.db #0x1E	; 30
   6116 43                 1610 	.db #0x43	; 67	'C'
   6117 0F                 1611 	.db #0x0F	; 15
   6118 0F                 1612 	.db #0x0F	; 15
   6119 0F                 1613 	.db #0x0F	; 15
   611A A1                 1614 	.db #0xA1	; 161
   611B 4F                 1615 	.db #0x4F	; 79	'O'
   611C 0F                 1616 	.db #0x0F	; 15
   611D 0F                 1617 	.db #0x0F	; 15
   611E 58                 1618 	.db #0x58	; 88	'X'
   611F 0F                 1619 	.db #0x0F	; 15
   6120 0F                 1620 	.db #0x0F	; 15
   6121 0F                 1621 	.db #0x0F	; 15
   6122 2C                 1622 	.db #0x2C	; 44
   6123 87                 1623 	.db #0x87	; 135
   6124 8F                 1624 	.db #0x8F	; 143
   6125 4F                 1625 	.db #0x4F	; 79	'O'
   6126 1E                 1626 	.db #0x1E	; 30
   6127 43                 1627 	.db #0x43	; 67	'C'
   6128 0F                 1628 	.db #0x0F	; 15
   6129 0F                 1629 	.db #0x0F	; 15
   612A 1E                 1630 	.db #0x1E	; 30
   612B 43                 1631 	.db #0x43	; 67	'C'
   612C 0F                 1632 	.db #0x0F	; 15
   612D                    1633 _rail_ns_w:
   612D 0F                 1634 	.db #0x0F	; 15
   612E 1E                 1635 	.db #0x1E	; 30
   612F 43                 1636 	.db #0x43	; 67	'C'
   6130 0F                 1637 	.db #0x0F	; 15
   6131 4F                 1638 	.db #0x4F	; 79	'O'
   6132 1E                 1639 	.db #0x1E	; 30
   6133 43                 1640 	.db #0x43	; 67	'C'
   6134 2F                 1641 	.db #0x2F	; 47
   6135 0F                 1642 	.db #0x0F	; 15
   6136 1E                 1643 	.db #0x1E	; 30
   6137 43                 1644 	.db #0x43	; 67	'C'
   6138 0F                 1645 	.db #0x0F	; 15
   6139 0F                 1646 	.db #0x0F	; 15
   613A 1E                 1647 	.db #0x1E	; 30
   613B 43                 1648 	.db #0x43	; 67	'C'
   613C 0F                 1649 	.db #0x0F	; 15
   613D 0F                 1650 	.db #0x0F	; 15
   613E 5E                 1651 	.db #0x5E	; 94
   613F 43                 1652 	.db #0x43	; 67	'C'
   6140 0F                 1653 	.db #0x0F	; 15
   6141 0F                 1654 	.db #0x0F	; 15
   6142 1E                 1655 	.db #0x1E	; 30
   6143 43                 1656 	.db #0x43	; 67	'C'
   6144 0F                 1657 	.db #0x0F	; 15
   6145 0F                 1658 	.db #0x0F	; 15
   6146 1E                 1659 	.db #0x1E	; 30
   6147 43                 1660 	.db #0x43	; 67	'C'
   6148 0F                 1661 	.db #0x0F	; 15
   6149 E1                 1662 	.db #0xE1	; 225
   614A 1E                 1663 	.db #0x1E	; 30
   614B 43                 1664 	.db #0x43	; 67	'C'
   614C 4F                 1665 	.db #0x4F	; 79	'O'
   614D 10                 1666 	.db #0x10	; 16
   614E 1E                 1667 	.db #0x1E	; 30
   614F 43                 1668 	.db #0x43	; 67	'C'
   6150 0F                 1669 	.db #0x0F	; 15
   6151 E0                 1670 	.db #0xE0	; 224
   6152 96                 1671 	.db #0x96	; 150
   6153 43                 1672 	.db #0x43	; 67	'C'
   6154 0F                 1673 	.db #0x0F	; 15
   6155 1E                 1674 	.db #0x1E	; 30
   6156 52                 1675 	.db #0x52	; 82	'R'
   6157 43                 1676 	.db #0x43	; 67	'C'
   6158 0F                 1677 	.db #0x0F	; 15
   6159 0F                 1678 	.db #0x0F	; 15
   615A B0                 1679 	.db #0xB0	; 176
   615B 53                 1680 	.db #0x53	; 83	'S'
   615C 0F                 1681 	.db #0x0F	; 15
   615D 0F                 1682 	.db #0x0F	; 15
   615E 58                 1683 	.db #0x58	; 88	'X'
   615F 43                 1684 	.db #0x43	; 67	'C'
   6160 0F                 1685 	.db #0x0F	; 15
   6161 2F                 1686 	.db #0x2F	; 47
   6162 2C                 1687 	.db #0x2C	; 44
   6163 43                 1688 	.db #0x43	; 67	'C'
   6164 0F                 1689 	.db #0x0F	; 15
   6165 0F                 1690 	.db #0x0F	; 15
   6166 1E                 1691 	.db #0x1E	; 30
   6167 43                 1692 	.db #0x43	; 67	'C'
   6168 2F                 1693 	.db #0x2F	; 47
   6169 0F                 1694 	.db #0x0F	; 15
   616A 1E                 1695 	.db #0x1E	; 30
   616B 43                 1696 	.db #0x43	; 67	'C'
   616C 0F                 1697 	.db #0x0F	; 15
   616D                    1698 _rail_ns_e:
   616D 0F                 1699 	.db #0x0F	; 15
   616E 1E                 1700 	.db #0x1E	; 30
   616F 43                 1701 	.db #0x43	; 67	'C'
   6170 0F                 1702 	.db #0x0F	; 15
   6171 0F                 1703 	.db #0x0F	; 15
   6172 1E                 1704 	.db #0x1E	; 30
   6173 43                 1705 	.db #0x43	; 67	'C'
   6174 2F                 1706 	.db #0x2F	; 47
   6175 0F                 1707 	.db #0x0F	; 15
   6176 9E                 1708 	.db #0x9E	; 158
   6177 43                 1709 	.db #0x43	; 67	'C'
   6178 0F                 1710 	.db #0x0F	; 15
   6179 0F                 1711 	.db #0x0F	; 15
   617A 1E                 1712 	.db #0x1E	; 30
   617B 43                 1713 	.db #0x43	; 67	'C'
   617C 0F                 1714 	.db #0x0F	; 15
   617D 0F                 1715 	.db #0x0F	; 15
   617E 1E                 1716 	.db #0x1E	; 30
   617F 43                 1717 	.db #0x43	; 67	'C'
   6180 8F                 1718 	.db #0x8F	; 143
   6181 0F                 1719 	.db #0x0F	; 15
   6182 1E                 1720 	.db #0x1E	; 30
   6183 43                 1721 	.db #0x43	; 67	'C'
   6184 0F                 1722 	.db #0x0F	; 15
   6185 0F                 1723 	.db #0x0F	; 15
   6186 5E                 1724 	.db #0x5E	; 94
   6187 43                 1725 	.db #0x43	; 67	'C'
   6188 0F                 1726 	.db #0x0F	; 15
   6189 4F                 1727 	.db #0x4F	; 79	'O'
   618A 1E                 1728 	.db #0x1E	; 30
   618B 43                 1729 	.db #0x43	; 67	'C'
   618C 3C                 1730 	.db #0x3C	; 60
   618D 0F                 1731 	.db #0x0F	; 15
   618E 1E                 1732 	.db #0x1E	; 30
   618F 43                 1733 	.db #0x43	; 67	'C'
   6190 48                 1734 	.db #0x48	; 72	'H'
   6191 0F                 1735 	.db #0x0F	; 15
   6192 1E                 1736 	.db #0x1E	; 30
   6193 43                 1737 	.db #0x43	; 67	'C'
   6194 B0                 1738 	.db #0xB0	; 176
   6195 0F                 1739 	.db #0x0F	; 15
   6196 1E                 1740 	.db #0x1E	; 30
   6197 52                 1741 	.db #0x52	; 82	'R'
   6198 43                 1742 	.db #0x43	; 67	'C'
   6199 0F                 1743 	.db #0x0F	; 15
   619A 5E                 1744 	.db #0x5E	; 94
   619B 60                 1745 	.db #0x60	; 96
   619C 87                 1746 	.db #0x87	; 135
   619D 0F                 1747 	.db #0x0F	; 15
   619E 1E                 1748 	.db #0x1E	; 30
   619F 50                 1749 	.db #0x50	; 80	'P'
   61A0 0F                 1750 	.db #0x0F	; 15
   61A1 0F                 1751 	.db #0x0F	; 15
   61A2 1E                 1752 	.db #0x1E	; 30
   61A3 21                 1753 	.db #0x21	; 33
   61A4 0F                 1754 	.db #0x0F	; 15
   61A5 2F                 1755 	.db #0x2F	; 47
   61A6 1E                 1756 	.db #0x1E	; 30
   61A7 43                 1757 	.db #0x43	; 67	'C'
   61A8 8F                 1758 	.db #0x8F	; 143
   61A9 0F                 1759 	.db #0x0F	; 15
   61AA 1E                 1760 	.db #0x1E	; 30
   61AB 43                 1761 	.db #0x43	; 67	'C'
   61AC 0F                 1762 	.db #0x0F	; 15
   61AD                    1763 _lock:
   61AD 00                 1764 	.db #0x00	; 0
   61AE 00                 1765 	.db #0x00	; 0
   61AF 00                 1766 	.db #0x00	; 0
   61B0 00                 1767 	.db #0x00	; 0
   61B1 00                 1768 	.db #0x00	; 0
   61B2 00                 1769 	.db #0x00	; 0
   61B3 00                 1770 	.db #0x00	; 0
   61B4 00                 1771 	.db #0x00	; 0
   61B5 00                 1772 	.db #0x00	; 0
   61B6 00                 1773 	.db #0x00	; 0
   61B7 00                 1774 	.db #0x00	; 0
   61B8 00                 1775 	.db #0x00	; 0
   61B9 00                 1776 	.db #0x00	; 0
   61BA 00                 1777 	.db #0x00	; 0
   61BB 00                 1778 	.db #0x00	; 0
   61BC 00                 1779 	.db #0x00	; 0
   61BD 00                 1780 	.db #0x00	; 0
   61BE 00                 1781 	.db #0x00	; 0
   61BF 00                 1782 	.db #0x00	; 0
   61C0 00                 1783 	.db #0x00	; 0
   61C1 00                 1784 	.db #0x00	; 0
   61C2 00                 1785 	.db #0x00	; 0
   61C3 00                 1786 	.db #0x00	; 0
   61C4 00                 1787 	.db #0x00	; 0
   61C5 00                 1788 	.db #0x00	; 0
   61C6 00                 1789 	.db #0x00	; 0
   61C7 00                 1790 	.db #0x00	; 0
   61C8 00                 1791 	.db #0x00	; 0
   61C9 00                 1792 	.db #0x00	; 0
   61CA 00                 1793 	.db #0x00	; 0
   61CB 04                 1794 	.db #0x04	; 4
   61CC 00                 1795 	.db #0x00	; 0
   61CD 00                 1796 	.db #0x00	; 0
   61CE 00                 1797 	.db #0x00	; 0
   61CF 00                 1798 	.db #0x00	; 0
   61D0 00                 1799 	.db #0x00	; 0
   61D1 00                 1800 	.db #0x00	; 0
   61D2 00                 1801 	.db #0x00	; 0
   61D3 00                 1802 	.db #0x00	; 0
   61D4 00                 1803 	.db #0x00	; 0
   61D5 00                 1804 	.db #0x00	; 0
   61D6 00                 1805 	.db #0x00	; 0
   61D7 00                 1806 	.db #0x00	; 0
   61D8 00                 1807 	.db #0x00	; 0
   61D9 00                 1808 	.db #0x00	; 0
   61DA 00                 1809 	.db #0x00	; 0
   61DB 00                 1810 	.db #0x00	; 0
   61DC 00                 1811 	.db #0x00	; 0
   61DD 00                 1812 	.db #0x00	; 0
   61DE 00                 1813 	.db #0x00	; 0
   61DF 08                 1814 	.db #0x08	; 8
   61E0 08                 1815 	.db #0x08	; 8
   61E1 00                 1816 	.db #0x00	; 0
   61E2 00                 1817 	.db #0x00	; 0
   61E3 00                 1818 	.db #0x00	; 0
   61E4 00                 1819 	.db #0x00	; 0
   61E5 00                 1820 	.db #0x00	; 0
   61E6 00                 1821 	.db #0x00	; 0
   61E7 00                 1822 	.db #0x00	; 0
   61E8 00                 1823 	.db #0x00	; 0
   61E9 00                 1824 	.db #0x00	; 0
   61EA 00                 1825 	.db #0x00	; 0
   61EB 00                 1826 	.db #0x00	; 0
   61EC 00                 1827 	.db #0x00	; 0
   61ED 00                 1828 	.db #0x00	; 0
   61EE 00                 1829 	.db #0x00	; 0
   61EF 00                 1830 	.db #0x00	; 0
   61F0 00                 1831 	.db #0x00	; 0
   61F1 00                 1832 	.db #0x00	; 0
   61F2 00                 1833 	.db #0x00	; 0
   61F3 08                 1834 	.db #0x08	; 8
   61F4 08                 1835 	.db #0x08	; 8
   61F5 00                 1836 	.db #0x00	; 0
   61F6 00                 1837 	.db #0x00	; 0
   61F7 00                 1838 	.db #0x00	; 0
   61F8 00                 1839 	.db #0x00	; 0
   61F9 00                 1840 	.db #0x00	; 0
   61FA 00                 1841 	.db #0x00	; 0
   61FB 00                 1842 	.db #0x00	; 0
   61FC 00                 1843 	.db #0x00	; 0
   61FD 00                 1844 	.db #0x00	; 0
   61FE 00                 1845 	.db #0x00	; 0
   61FF 00                 1846 	.db #0x00	; 0
   6200 00                 1847 	.db #0x00	; 0
   6201 00                 1848 	.db #0x00	; 0
   6202 00                 1849 	.db #0x00	; 0
   6203 00                 1850 	.db #0x00	; 0
   6204 00                 1851 	.db #0x00	; 0
   6205 00                 1852 	.db #0x00	; 0
   6206 04                 1853 	.db #0x04	; 4
   6207 00                 1854 	.db #0x00	; 0
   6208 04                 1855 	.db #0x04	; 4
   6209 00                 1856 	.db #0x00	; 0
   620A 00                 1857 	.db #0x00	; 0
   620B 00                 1858 	.db #0x00	; 0
   620C 00                 1859 	.db #0x00	; 0
   620D 00                 1860 	.db #0x00	; 0
   620E 00                 1861 	.db #0x00	; 0
   620F 00                 1862 	.db #0x00	; 0
   6210 00                 1863 	.db #0x00	; 0
   6211 00                 1864 	.db #0x00	; 0
   6212 00                 1865 	.db #0x00	; 0
   6213 00                 1866 	.db #0x00	; 0
   6214 00                 1867 	.db #0x00	; 0
   6215 00                 1868 	.db #0x00	; 0
   6216 00                 1869 	.db #0x00	; 0
   6217 00                 1870 	.db #0x00	; 0
   6218 00                 1871 	.db #0x00	; 0
   6219 00                 1872 	.db #0x00	; 0
   621A 04                 1873 	.db #0x04	; 4
   621B 00                 1874 	.db #0x00	; 0
   621C 04                 1875 	.db #0x04	; 4
   621D 00                 1876 	.db #0x00	; 0
   621E 00                 1877 	.db #0x00	; 0
   621F 00                 1878 	.db #0x00	; 0
   6220 00                 1879 	.db #0x00	; 0
   6221 00                 1880 	.db #0x00	; 0
   6222 00                 1881 	.db #0x00	; 0
   6223 00                 1882 	.db #0x00	; 0
   6224 00                 1883 	.db #0x00	; 0
   6225 00                 1884 	.db #0x00	; 0
   6226 00                 1885 	.db #0x00	; 0
   6227 00                 1886 	.db #0x00	; 0
   6228 00                 1887 	.db #0x00	; 0
   6229 00                 1888 	.db #0x00	; 0
   622A 00                 1889 	.db #0x00	; 0
   622B 00                 1890 	.db #0x00	; 0
   622C 00                 1891 	.db #0x00	; 0
   622D 00                 1892 	.db #0x00	; 0
   622E 04                 1893 	.db #0x04	; 4
   622F 00                 1894 	.db #0x00	; 0
   6230 04                 1895 	.db #0x04	; 4
   6231 00                 1896 	.db #0x00	; 0
   6232 00                 1897 	.db #0x00	; 0
   6233 00                 1898 	.db #0x00	; 0
   6234 00                 1899 	.db #0x00	; 0
   6235 00                 1900 	.db #0x00	; 0
   6236 00                 1901 	.db #0x00	; 0
   6237 00                 1902 	.db #0x00	; 0
   6238 00                 1903 	.db #0x00	; 0
   6239 00                 1904 	.db #0x00	; 0
   623A 00                 1905 	.db #0x00	; 0
   623B 00                 1906 	.db #0x00	; 0
   623C 00                 1907 	.db #0x00	; 0
   623D 00                 1908 	.db #0x00	; 0
   623E 00                 1909 	.db #0x00	; 0
   623F 00                 1910 	.db #0x00	; 0
   6240 00                 1911 	.db #0x00	; 0
   6241 00                 1912 	.db #0x00	; 0
   6242 04                 1913 	.db #0x04	; 4
   6243 00                 1914 	.db #0x00	; 0
   6244 04                 1915 	.db #0x04	; 4
   6245 00                 1916 	.db #0x00	; 0
   6246 00                 1917 	.db #0x00	; 0
   6247 00                 1918 	.db #0x00	; 0
   6248 00                 1919 	.db #0x00	; 0
   6249 00                 1920 	.db #0x00	; 0
   624A 00                 1921 	.db #0x00	; 0
   624B 00                 1922 	.db #0x00	; 0
   624C 00                 1923 	.db #0x00	; 0
   624D 00                 1924 	.db #0x00	; 0
   624E 00                 1925 	.db #0x00	; 0
   624F 00                 1926 	.db #0x00	; 0
   6250 00                 1927 	.db #0x00	; 0
   6251 00                 1928 	.db #0x00	; 0
   6252 00                 1929 	.db #0x00	; 0
   6253 00                 1930 	.db #0x00	; 0
   6254 00                 1931 	.db #0x00	; 0
   6255 00                 1932 	.db #0x00	; 0
   6256 30                 1933 	.db #0x30	; 48	'0'
   6257 30                 1934 	.db #0x30	; 48	'0'
   6258 30                 1935 	.db #0x30	; 48	'0'
   6259 20                 1936 	.db #0x20	; 32
   625A 00                 1937 	.db #0x00	; 0
   625B 00                 1938 	.db #0x00	; 0
   625C 00                 1939 	.db #0x00	; 0
   625D 00                 1940 	.db #0x00	; 0
   625E 00                 1941 	.db #0x00	; 0
   625F 00                 1942 	.db #0x00	; 0
   6260 00                 1943 	.db #0x00	; 0
   6261 00                 1944 	.db #0x00	; 0
   6262 00                 1945 	.db #0x00	; 0
   6263 00                 1946 	.db #0x00	; 0
   6264 00                 1947 	.db #0x00	; 0
   6265 00                 1948 	.db #0x00	; 0
   6266 00                 1949 	.db #0x00	; 0
   6267 00                 1950 	.db #0x00	; 0
   6268 00                 1951 	.db #0x00	; 0
   6269 00                 1952 	.db #0x00	; 0
   626A 30                 1953 	.db #0x30	; 48	'0'
   626B 30                 1954 	.db #0x30	; 48	'0'
   626C 30                 1955 	.db #0x30	; 48	'0'
   626D 20                 1956 	.db #0x20	; 32
   626E 00                 1957 	.db #0x00	; 0
   626F 00                 1958 	.db #0x00	; 0
   6270 00                 1959 	.db #0x00	; 0
   6271 00                 1960 	.db #0x00	; 0
   6272 00                 1961 	.db #0x00	; 0
   6273 00                 1962 	.db #0x00	; 0
   6274 00                 1963 	.db #0x00	; 0
   6275 00                 1964 	.db #0x00	; 0
   6276 00                 1965 	.db #0x00	; 0
   6277 00                 1966 	.db #0x00	; 0
   6278 00                 1967 	.db #0x00	; 0
   6279 00                 1968 	.db #0x00	; 0
   627A 00                 1969 	.db #0x00	; 0
   627B 00                 1970 	.db #0x00	; 0
   627C 00                 1971 	.db #0x00	; 0
   627D 00                 1972 	.db #0x00	; 0
   627E FF                 1973 	.db #0xFF	; 255
   627F FF                 1974 	.db #0xFF	; 255
   6280 FF                 1975 	.db #0xFF	; 255
   6281 AA                 1976 	.db #0xAA	; 170
   6282 00                 1977 	.db #0x00	; 0
   6283 00                 1978 	.db #0x00	; 0
   6284 00                 1979 	.db #0x00	; 0
   6285 00                 1980 	.db #0x00	; 0
   6286 00                 1981 	.db #0x00	; 0
   6287 00                 1982 	.db #0x00	; 0
   6288 00                 1983 	.db #0x00	; 0
   6289 00                 1984 	.db #0x00	; 0
   628A 00                 1985 	.db #0x00	; 0
   628B 00                 1986 	.db #0x00	; 0
   628C 00                 1987 	.db #0x00	; 0
   628D 00                 1988 	.db #0x00	; 0
   628E 00                 1989 	.db #0x00	; 0
   628F 00                 1990 	.db #0x00	; 0
   6290 00                 1991 	.db #0x00	; 0
   6291 00                 1992 	.db #0x00	; 0
   6292 FF                 1993 	.db #0xFF	; 255
   6293 FF                 1994 	.db #0xFF	; 255
   6294 FF                 1995 	.db #0xFF	; 255
   6295 AA                 1996 	.db #0xAA	; 170
   6296 00                 1997 	.db #0x00	; 0
   6297 00                 1998 	.db #0x00	; 0
   6298 00                 1999 	.db #0x00	; 0
   6299 00                 2000 	.db #0x00	; 0
   629A 00                 2001 	.db #0x00	; 0
   629B 00                 2002 	.db #0x00	; 0
   629C 00                 2003 	.db #0x00	; 0
   629D 00                 2004 	.db #0x00	; 0
   629E 00                 2005 	.db #0x00	; 0
   629F 00                 2006 	.db #0x00	; 0
   62A0 00                 2007 	.db #0x00	; 0
   62A1 00                 2008 	.db #0x00	; 0
   62A2 00                 2009 	.db #0x00	; 0
   62A3 00                 2010 	.db #0x00	; 0
   62A4 00                 2011 	.db #0x00	; 0
   62A5 00                 2012 	.db #0x00	; 0
   62A6 FF                 2013 	.db #0xFF	; 255
   62A7 AA                 2014 	.db #0xAA	; 170
   62A8 FF                 2015 	.db #0xFF	; 255
   62A9 AA                 2016 	.db #0xAA	; 170
   62AA 00                 2017 	.db #0x00	; 0
   62AB 00                 2018 	.db #0x00	; 0
   62AC 00                 2019 	.db #0x00	; 0
   62AD 00                 2020 	.db #0x00	; 0
   62AE 00                 2021 	.db #0x00	; 0
   62AF 00                 2022 	.db #0x00	; 0
   62B0 00                 2023 	.db #0x00	; 0
   62B1 00                 2024 	.db #0x00	; 0
   62B2 00                 2025 	.db #0x00	; 0
   62B3 00                 2026 	.db #0x00	; 0
   62B4 00                 2027 	.db #0x00	; 0
   62B5 00                 2028 	.db #0x00	; 0
   62B6 00                 2029 	.db #0x00	; 0
   62B7 00                 2030 	.db #0x00	; 0
   62B8 00                 2031 	.db #0x00	; 0
   62B9 00                 2032 	.db #0x00	; 0
   62BA FF                 2033 	.db #0xFF	; 255
   62BB AA                 2034 	.db #0xAA	; 170
   62BC FF                 2035 	.db #0xFF	; 255
   62BD AA                 2036 	.db #0xAA	; 170
   62BE 00                 2037 	.db #0x00	; 0
   62BF 00                 2038 	.db #0x00	; 0
   62C0 00                 2039 	.db #0x00	; 0
   62C1 00                 2040 	.db #0x00	; 0
   62C2 00                 2041 	.db #0x00	; 0
   62C3 00                 2042 	.db #0x00	; 0
   62C4 00                 2043 	.db #0x00	; 0
   62C5 00                 2044 	.db #0x00	; 0
   62C6 00                 2045 	.db #0x00	; 0
   62C7 00                 2046 	.db #0x00	; 0
   62C8 00                 2047 	.db #0x00	; 0
   62C9 00                 2048 	.db #0x00	; 0
   62CA 00                 2049 	.db #0x00	; 0
   62CB 00                 2050 	.db #0x00	; 0
   62CC 00                 2051 	.db #0x00	; 0
   62CD 00                 2052 	.db #0x00	; 0
   62CE FF                 2053 	.db #0xFF	; 255
   62CF AA                 2054 	.db #0xAA	; 170
   62D0 FF                 2055 	.db #0xFF	; 255
   62D1 AA                 2056 	.db #0xAA	; 170
   62D2 00                 2057 	.db #0x00	; 0
   62D3 00                 2058 	.db #0x00	; 0
   62D4 00                 2059 	.db #0x00	; 0
   62D5 00                 2060 	.db #0x00	; 0
   62D6 00                 2061 	.db #0x00	; 0
   62D7 00                 2062 	.db #0x00	; 0
   62D8 00                 2063 	.db #0x00	; 0
   62D9 00                 2064 	.db #0x00	; 0
   62DA 00                 2065 	.db #0x00	; 0
   62DB 00                 2066 	.db #0x00	; 0
   62DC 00                 2067 	.db #0x00	; 0
   62DD 00                 2068 	.db #0x00	; 0
   62DE 00                 2069 	.db #0x00	; 0
   62DF 00                 2070 	.db #0x00	; 0
   62E0 00                 2071 	.db #0x00	; 0
   62E1 00                 2072 	.db #0x00	; 0
   62E2 FF                 2073 	.db #0xFF	; 255
   62E3 AA                 2074 	.db #0xAA	; 170
   62E4 FF                 2075 	.db #0xFF	; 255
   62E5 AA                 2076 	.db #0xAA	; 170
   62E6 00                 2077 	.db #0x00	; 0
   62E7 00                 2078 	.db #0x00	; 0
   62E8 00                 2079 	.db #0x00	; 0
   62E9 00                 2080 	.db #0x00	; 0
   62EA 00                 2081 	.db #0x00	; 0
   62EB 00                 2082 	.db #0x00	; 0
   62EC 00                 2083 	.db #0x00	; 0
   62ED 00                 2084 	.db #0x00	; 0
   62EE 00                 2085 	.db #0x00	; 0
   62EF 00                 2086 	.db #0x00	; 0
   62F0 00                 2087 	.db #0x00	; 0
   62F1 00                 2088 	.db #0x00	; 0
   62F2 00                 2089 	.db #0x00	; 0
   62F3 00                 2090 	.db #0x00	; 0
   62F4 00                 2091 	.db #0x00	; 0
   62F5 00                 2092 	.db #0x00	; 0
   62F6 FF                 2093 	.db #0xFF	; 255
   62F7 FF                 2094 	.db #0xFF	; 255
   62F8 FF                 2095 	.db #0xFF	; 255
   62F9 AA                 2096 	.db #0xAA	; 170
   62FA 00                 2097 	.db #0x00	; 0
   62FB 00                 2098 	.db #0x00	; 0
   62FC 00                 2099 	.db #0x00	; 0
   62FD 00                 2100 	.db #0x00	; 0
   62FE 00                 2101 	.db #0x00	; 0
   62FF 00                 2102 	.db #0x00	; 0
   6300 00                 2103 	.db #0x00	; 0
   6301 00                 2104 	.db #0x00	; 0
   6302 00                 2105 	.db #0x00	; 0
   6303 00                 2106 	.db #0x00	; 0
   6304 00                 2107 	.db #0x00	; 0
   6305 00                 2108 	.db #0x00	; 0
   6306 00                 2109 	.db #0x00	; 0
   6307 00                 2110 	.db #0x00	; 0
   6308 00                 2111 	.db #0x00	; 0
   6309 00                 2112 	.db #0x00	; 0
   630A 30                 2113 	.db #0x30	; 48	'0'
   630B 30                 2114 	.db #0x30	; 48	'0'
   630C 30                 2115 	.db #0x30	; 48	'0'
   630D 20                 2116 	.db #0x20	; 32
   630E 00                 2117 	.db #0x00	; 0
   630F 00                 2118 	.db #0x00	; 0
   6310 00                 2119 	.db #0x00	; 0
   6311 00                 2120 	.db #0x00	; 0
   6312 00                 2121 	.db #0x00	; 0
   6313 00                 2122 	.db #0x00	; 0
   6314 00                 2123 	.db #0x00	; 0
   6315 00                 2124 	.db #0x00	; 0
   6316 00                 2125 	.db #0x00	; 0
   6317 00                 2126 	.db #0x00	; 0
   6318 00                 2127 	.db #0x00	; 0
   6319 00                 2128 	.db #0x00	; 0
   631A 00                 2129 	.db #0x00	; 0
   631B 00                 2130 	.db #0x00	; 0
   631C 00                 2131 	.db #0x00	; 0
   631D 00                 2132 	.db #0x00	; 0
   631E 00                 2133 	.db #0x00	; 0
   631F 00                 2134 	.db #0x00	; 0
   6320 00                 2135 	.db #0x00	; 0
   6321 00                 2136 	.db #0x00	; 0
   6322 00                 2137 	.db #0x00	; 0
   6323 00                 2138 	.db #0x00	; 0
   6324 00                 2139 	.db #0x00	; 0
   6325 00                 2140 	.db #0x00	; 0
   6326 00                 2141 	.db #0x00	; 0
   6327 00                 2142 	.db #0x00	; 0
   6328 00                 2143 	.db #0x00	; 0
   6329 00                 2144 	.db #0x00	; 0
   632A 00                 2145 	.db #0x00	; 0
   632B 00                 2146 	.db #0x00	; 0
   632C 00                 2147 	.db #0x00	; 0
   632D 00                 2148 	.db #0x00	; 0
   632E 00                 2149 	.db #0x00	; 0
   632F 00                 2150 	.db #0x00	; 0
   6330 00                 2151 	.db #0x00	; 0
   6331 00                 2152 	.db #0x00	; 0
   6332 00                 2153 	.db #0x00	; 0
   6333 00                 2154 	.db #0x00	; 0
   6334 00                 2155 	.db #0x00	; 0
   6335 00                 2156 	.db #0x00	; 0
   6336 00                 2157 	.db #0x00	; 0
   6337 00                 2158 	.db #0x00	; 0
   6338 00                 2159 	.db #0x00	; 0
   6339 00                 2160 	.db #0x00	; 0
   633A 00                 2161 	.db #0x00	; 0
   633B 00                 2162 	.db #0x00	; 0
   633C 00                 2163 	.db #0x00	; 0
   633D                    2164 _l141P:
   633D 00                 2165 	.db #0x00	; 0
   633E 00                 2166 	.db #0x00	; 0
   633F 00                 2167 	.db #0x00	; 0
   6340 00                 2168 	.db #0x00	; 0
   6341 00                 2169 	.db #0x00	; 0
   6342 00                 2170 	.db #0x00	; 0
   6343 00                 2171 	.db #0x00	; 0
   6344 00                 2172 	.db #0x00	; 0
   6345 00                 2173 	.db #0x00	; 0
   6346 00                 2174 	.db #0x00	; 0
   6347 00                 2175 	.db #0x00	; 0
   6348 00                 2176 	.db #0x00	; 0
   6349 00                 2177 	.db #0x00	; 0
   634A 00                 2178 	.db #0x00	; 0
   634B 00                 2179 	.db #0x00	; 0
   634C 00                 2180 	.db #0x00	; 0
   634D 00                 2181 	.db #0x00	; 0
   634E 00                 2182 	.db #0x00	; 0
   634F 00                 2183 	.db #0x00	; 0
   6350 00                 2184 	.db #0x00	; 0
   6351 00                 2185 	.db #0x00	; 0
   6352 00                 2186 	.db #0x00	; 0
   6353 00                 2187 	.db #0x00	; 0
   6354 00                 2188 	.db #0x00	; 0
   6355 00                 2189 	.db #0x00	; 0
   6356 00                 2190 	.db #0x00	; 0
   6357 00                 2191 	.db #0x00	; 0
   6358 00                 2192 	.db #0x00	; 0
   6359 00                 2193 	.db #0x00	; 0
   635A 00                 2194 	.db #0x00	; 0
   635B 00                 2195 	.db #0x00	; 0
   635C 00                 2196 	.db #0x00	; 0
   635D 00                 2197 	.db #0x00	; 0
   635E 00                 2198 	.db #0x00	; 0
   635F 00                 2199 	.db #0x00	; 0
   6360 00                 2200 	.db #0x00	; 0
   6361 00                 2201 	.db #0x00	; 0
   6362 00                 2202 	.db #0x00	; 0
   6363 00                 2203 	.db #0x00	; 0
   6364 00                 2204 	.db #0x00	; 0
   6365 00                 2205 	.db #0x00	; 0
   6366 00                 2206 	.db #0x00	; 0
   6367 00                 2207 	.db #0x00	; 0
   6368 00                 2208 	.db #0x00	; 0
   6369 00                 2209 	.db #0x00	; 0
   636A 00                 2210 	.db #0x00	; 0
   636B 00                 2211 	.db #0x00	; 0
   636C 00                 2212 	.db #0x00	; 0
   636D 00                 2213 	.db #0x00	; 0
   636E 00                 2214 	.db #0x00	; 0
   636F 00                 2215 	.db #0x00	; 0
   6370 00                 2216 	.db #0x00	; 0
   6371 00                 2217 	.db #0x00	; 0
   6372 00                 2218 	.db #0x00	; 0
   6373 00                 2219 	.db #0x00	; 0
   6374 00                 2220 	.db #0x00	; 0
   6375 00                 2221 	.db #0x00	; 0
   6376 00                 2222 	.db #0x00	; 0
   6377 0C                 2223 	.db #0x0C	; 12
   6378 00                 2224 	.db #0x00	; 0
   6379 00                 2225 	.db #0x00	; 0
   637A 00                 2226 	.db #0x00	; 0
   637B 00                 2227 	.db #0x00	; 0
   637C 0C                 2228 	.db #0x0C	; 12
   637D 0C                 2229 	.db #0x0C	; 12
   637E 0C                 2230 	.db #0x0C	; 12
   637F 08                 2231 	.db #0x08	; 8
   6380 54                 2232 	.db #0x54	; 84	'T'
   6381 FC                 2233 	.db #0xFC	; 252
   6382 FC                 2234 	.db #0xFC	; 252
   6383 FC                 2235 	.db #0xFC	; 252
   6384 00                 2236 	.db #0x00	; 0
   6385 04                 2237 	.db #0x04	; 4
   6386 00                 2238 	.db #0x00	; 0
   6387 56                 2239 	.db #0x56	; 86	'V'
   6388 A9                 2240 	.db #0xA9	; 169
   6389 04                 2241 	.db #0x04	; 4
   638A 0C                 2242 	.db #0x0C	; 12
   638B 0C                 2243 	.db #0x0C	; 12
   638C 00                 2244 	.db #0x00	; 0
   638D 00                 2245 	.db #0x00	; 0
   638E 00                 2246 	.db #0x00	; 0
   638F 00                 2247 	.db #0x00	; 0
   6390 0C                 2248 	.db #0x0C	; 12
   6391 0C                 2249 	.db #0x0C	; 12
   6392 0C                 2250 	.db #0x0C	; 12
   6393 0C                 2251 	.db #0x0C	; 12
   6394 00                 2252 	.db #0x00	; 0
   6395 FC                 2253 	.db #0xFC	; 252
   6396 FC                 2254 	.db #0xFC	; 252
   6397 FC                 2255 	.db #0xFC	; 252
   6398 FC                 2256 	.db #0xFC	; 252
   6399 FC                 2257 	.db #0xFC	; 252
   639A FC                 2258 	.db #0xFC	; 252
   639B A9                 2259 	.db #0xA9	; 169
   639C FC                 2260 	.db #0xFC	; 252
   639D FC                 2261 	.db #0xFC	; 252
   639E AC                 2262 	.db #0xAC	; 172
   639F 0C                 2263 	.db #0x0C	; 12
   63A0 08                 2264 	.db #0x08	; 8
   63A1 00                 2265 	.db #0x00	; 0
   63A2 FC                 2266 	.db #0xFC	; 252
   63A3 FC                 2267 	.db #0xFC	; 252
   63A4 FC                 2268 	.db #0xFC	; 252
   63A5 FC                 2269 	.db #0xFC	; 252
   63A6 FC                 2270 	.db #0xFC	; 252
   63A7 FC                 2271 	.db #0xFC	; 252
   63A8 A8                 2272 	.db #0xA8	; 168
   63A9 54                 2273 	.db #0x54	; 84	'T'
   63AA C0                 2274 	.db #0xC0	; 192
   63AB FC                 2275 	.db #0xFC	; 252
   63AC FC                 2276 	.db #0xFC	; 252
   63AD FC                 2277 	.db #0xFC	; 252
   63AE FC                 2278 	.db #0xFC	; 252
   63AF FC                 2279 	.db #0xFC	; 252
   63B0 FC                 2280 	.db #0xFC	; 252
   63B1 FC                 2281 	.db #0xFC	; 252
   63B2 AC                 2282 	.db #0xAC	; 172
   63B3 0C                 2283 	.db #0x0C	; 12
   63B4 0C                 2284 	.db #0x0C	; 12
   63B5 54                 2285 	.db #0x54	; 84	'T'
   63B6 FC                 2286 	.db #0xFC	; 252
   63B7 FC                 2287 	.db #0xFC	; 252
   63B8 FC                 2288 	.db #0xFC	; 252
   63B9 FC                 2289 	.db #0xFC	; 252
   63BA FC                 2290 	.db #0xFC	; 252
   63BB FC                 2291 	.db #0xFC	; 252
   63BC FC                 2292 	.db #0xFC	; 252
   63BD 54                 2293 	.db #0x54	; 84	'T'
   63BE C0                 2294 	.db #0xC0	; 192
   63BF FC                 2295 	.db #0xFC	; 252
   63C0 FC                 2296 	.db #0xFC	; 252
   63C1 FC                 2297 	.db #0xFC	; 252
   63C2 FC                 2298 	.db #0xFC	; 252
   63C3 A9                 2299 	.db #0xA9	; 169
   63C4 FC                 2300 	.db #0xFC	; 252
   63C5 FC                 2301 	.db #0xFC	; 252
   63C6 FC                 2302 	.db #0xFC	; 252
   63C7 0C                 2303 	.db #0x0C	; 12
   63C8 0C                 2304 	.db #0x0C	; 12
   63C9 54                 2305 	.db #0x54	; 84	'T'
   63CA FC                 2306 	.db #0xFC	; 252
   63CB FC                 2307 	.db #0xFC	; 252
   63CC FC                 2308 	.db #0xFC	; 252
   63CD FC                 2309 	.db #0xFC	; 252
   63CE FC                 2310 	.db #0xFC	; 252
   63CF FC                 2311 	.db #0xFC	; 252
   63D0 FC                 2312 	.db #0xFC	; 252
   63D1 54                 2313 	.db #0x54	; 84	'T'
   63D2 C0                 2314 	.db #0xC0	; 192
   63D3 FC                 2315 	.db #0xFC	; 252
   63D4 FC                 2316 	.db #0xFC	; 252
   63D5 FC                 2317 	.db #0xFC	; 252
   63D6 FC                 2318 	.db #0xFC	; 252
   63D7 FC                 2319 	.db #0xFC	; 252
   63D8 FC                 2320 	.db #0xFC	; 252
   63D9 FC                 2321 	.db #0xFC	; 252
   63DA FC                 2322 	.db #0xFC	; 252
   63DB 0C                 2323 	.db #0x0C	; 12
   63DC 0C                 2324 	.db #0x0C	; 12
   63DD 54                 2325 	.db #0x54	; 84	'T'
   63DE FC                 2326 	.db #0xFC	; 252
   63DF FC                 2327 	.db #0xFC	; 252
   63E0 FC                 2328 	.db #0xFC	; 252
   63E1 FC                 2329 	.db #0xFC	; 252
   63E2 FC                 2330 	.db #0xFC	; 252
   63E3 FC                 2331 	.db #0xFC	; 252
   63E4 FC                 2332 	.db #0xFC	; 252
   63E5 54                 2333 	.db #0x54	; 84	'T'
   63E6 FC                 2334 	.db #0xFC	; 252
   63E7 A9                 2335 	.db #0xA9	; 169
   63E8 03                 2336 	.db #0x03	; 3
   63E9 03                 2337 	.db #0x03	; 3
   63EA 03                 2338 	.db #0x03	; 3
   63EB 03                 2339 	.db #0x03	; 3
   63EC 03                 2340 	.db #0x03	; 3
   63ED 03                 2341 	.db #0x03	; 3
   63EE 03                 2342 	.db #0x03	; 3
   63EF 0C                 2343 	.db #0x0C	; 12
   63F0 0C                 2344 	.db #0x0C	; 12
   63F1 54                 2345 	.db #0x54	; 84	'T'
   63F2 FC                 2346 	.db #0xFC	; 252
   63F3 FC                 2347 	.db #0xFC	; 252
   63F4 FC                 2348 	.db #0xFC	; 252
   63F5 FC                 2349 	.db #0xFC	; 252
   63F6 FC                 2350 	.db #0xFC	; 252
   63F7 FC                 2351 	.db #0xFC	; 252
   63F8 FC                 2352 	.db #0xFC	; 252
   63F9 54                 2353 	.db #0x54	; 84	'T'
   63FA FC                 2354 	.db #0xFC	; 252
   63FB FC                 2355 	.db #0xFC	; 252
   63FC FC                 2356 	.db #0xFC	; 252
   63FD FC                 2357 	.db #0xFC	; 252
   63FE FC                 2358 	.db #0xFC	; 252
   63FF FC                 2359 	.db #0xFC	; 252
   6400 FC                 2360 	.db #0xFC	; 252
   6401 FC                 2361 	.db #0xFC	; 252
   6402 FC                 2362 	.db #0xFC	; 252
   6403 0C                 2363 	.db #0x0C	; 12
   6404 0C                 2364 	.db #0x0C	; 12
   6405 54                 2365 	.db #0x54	; 84	'T'
   6406 FC                 2366 	.db #0xFC	; 252
   6407 FC                 2367 	.db #0xFC	; 252
   6408 FC                 2368 	.db #0xFC	; 252
   6409 FC                 2369 	.db #0xFC	; 252
   640A FC                 2370 	.db #0xFC	; 252
   640B FC                 2371 	.db #0xFC	; 252
   640C F4                 2372 	.db #0xF4	; 244
   640D 54                 2373 	.db #0x54	; 84	'T'
   640E F4                 2374 	.db #0xF4	; 244
   640F FC                 2375 	.db #0xFC	; 252
   6410 FC                 2376 	.db #0xFC	; 252
   6411 FC                 2377 	.db #0xFC	; 252
   6412 FC                 2378 	.db #0xFC	; 252
   6413 A9                 2379 	.db #0xA9	; 169
   6414 FC                 2380 	.db #0xFC	; 252
   6415 FC                 2381 	.db #0xFC	; 252
   6416 FC                 2382 	.db #0xFC	; 252
   6417 0C                 2383 	.db #0x0C	; 12
   6418 0C                 2384 	.db #0x0C	; 12
   6419 54                 2385 	.db #0x54	; 84	'T'
   641A FC                 2386 	.db #0xFC	; 252
   641B FC                 2387 	.db #0xFC	; 252
   641C FC                 2388 	.db #0xFC	; 252
   641D FC                 2389 	.db #0xFC	; 252
   641E FC                 2390 	.db #0xFC	; 252
   641F FC                 2391 	.db #0xFC	; 252
   6420 FC                 2392 	.db #0xFC	; 252
   6421 54                 2393 	.db #0x54	; 84	'T'
   6422 FC                 2394 	.db #0xFC	; 252
   6423 F8                 2395 	.db #0xF8	; 248
   6424 F0                 2396 	.db #0xF0	; 240
   6425 F0                 2397 	.db #0xF0	; 240
   6426 F0                 2398 	.db #0xF0	; 240
   6427 F0                 2399 	.db #0xF0	; 240
   6428 F0                 2400 	.db #0xF0	; 240
   6429 F0                 2401 	.db #0xF0	; 240
   642A F0                 2402 	.db #0xF0	; 240
   642B A4                 2403 	.db #0xA4	; 164
   642C 0C                 2404 	.db #0x0C	; 12
   642D 50                 2405 	.db #0x50	; 80	'P'
   642E F0                 2406 	.db #0xF0	; 240
   642F F0                 2407 	.db #0xF0	; 240
   6430 F0                 2408 	.db #0xF0	; 240
   6431 F0                 2409 	.db #0xF0	; 240
   6432 F0                 2410 	.db #0xF0	; 240
   6433 F0                 2411 	.db #0xF0	; 240
   6434 F0                 2412 	.db #0xF0	; 240
   6435 50                 2413 	.db #0x50	; 80	'P'
   6436 F0                 2414 	.db #0xF0	; 240
   6437 A4                 2415 	.db #0xA4	; 164
   6438 0C                 2416 	.db #0x0C	; 12
   6439 0C                 2417 	.db #0x0C	; 12
   643A 0C                 2418 	.db #0x0C	; 12
   643B 0C                 2419 	.db #0x0C	; 12
   643C 0C                 2420 	.db #0x0C	; 12
   643D 0C                 2421 	.db #0x0C	; 12
   643E 5C                 2422 	.db #0x5C	; 92
   643F FC                 2423 	.db #0xFC	; 252
   6440 0C                 2424 	.db #0x0C	; 12
   6441 54                 2425 	.db #0x54	; 84	'T'
   6442 FC                 2426 	.db #0xFC	; 252
   6443 FC                 2427 	.db #0xFC	; 252
   6444 FC                 2428 	.db #0xFC	; 252
   6445 FC                 2429 	.db #0xFC	; 252
   6446 FC                 2430 	.db #0xFC	; 252
   6447 FC                 2431 	.db #0xFC	; 252
   6448 FC                 2432 	.db #0xFC	; 252
   6449 54                 2433 	.db #0x54	; 84	'T'
   644A 0C                 2434 	.db #0x0C	; 12
   644B 08                 2435 	.db #0x08	; 8
   644C 04                 2436 	.db #0x04	; 4
   644D 08                 2437 	.db #0x08	; 8
   644E 04                 2438 	.db #0x04	; 4
   644F 08                 2439 	.db #0x08	; 8
   6450 04                 2440 	.db #0x04	; 4
   6451 08                 2441 	.db #0x08	; 8
   6452 54                 2442 	.db #0x54	; 84	'T'
   6453 FC                 2443 	.db #0xFC	; 252
   6454 A4                 2444 	.db #0xA4	; 164
   6455 54                 2445 	.db #0x54	; 84	'T'
   6456 08                 2446 	.db #0x08	; 8
   6457 04                 2447 	.db #0x04	; 4
   6458 00                 2448 	.db #0x00	; 0
   6459 00                 2449 	.db #0x00	; 0
   645A 08                 2450 	.db #0x08	; 8
   645B 04                 2451 	.db #0x04	; 4
   645C FC                 2452 	.db #0xFC	; 252
   645D 54                 2453 	.db #0x54	; 84	'T'
   645E 08                 2454 	.db #0x08	; 8
   645F 04                 2455 	.db #0x04	; 4
   6460 08                 2456 	.db #0x08	; 8
   6461 04                 2457 	.db #0x04	; 4
   6462 08                 2458 	.db #0x08	; 8
   6463 04                 2459 	.db #0x04	; 4
   6464 08                 2460 	.db #0x08	; 8
   6465 04                 2461 	.db #0x04	; 4
   6466 5C                 2462 	.db #0x5C	; 92
   6467 FC                 2463 	.db #0xFC	; 252
   6468 50                 2464 	.db #0x50	; 80	'P'
   6469 04                 2465 	.db #0x04	; 4
   646A 0C                 2466 	.db #0x0C	; 12
   646B 0C                 2467 	.db #0x0C	; 12
   646C 08                 2468 	.db #0x08	; 8
   646D 04                 2469 	.db #0x04	; 4
   646E 0C                 2470 	.db #0x0C	; 12
   646F 0C                 2471 	.db #0x0C	; 12
   6470 5C                 2472 	.db #0x5C	; 92
   6471 54                 2473 	.db #0x54	; 84	'T'
   6472 04                 2474 	.db #0x04	; 4
   6473 0C                 2475 	.db #0x0C	; 12
   6474 0C                 2476 	.db #0x0C	; 12
   6475 0C                 2477 	.db #0x0C	; 12
   6476 0C                 2478 	.db #0x0C	; 12
   6477 0C                 2479 	.db #0x0C	; 12
   6478 48                 2480 	.db #0x48	; 72	'H'
   6479 C0                 2481 	.db #0xC0	; 192
   647A C0                 2482 	.db #0xC0	; 192
   647B A8                 2483 	.db #0xA8	; 168
   647C 08                 2484 	.db #0x08	; 8
   647D 04                 2485 	.db #0x04	; 4
   647E 0C                 2486 	.db #0x0C	; 12
   647F 0C                 2487 	.db #0x0C	; 12
   6480 0C                 2488 	.db #0x0C	; 12
   6481 0C                 2489 	.db #0x0C	; 12
   6482 0C                 2490 	.db #0x0C	; 12
   6483 0C                 2491 	.db #0x0C	; 12
   6484 5C                 2492 	.db #0x5C	; 92
   6485 08                 2493 	.db #0x08	; 8
   6486 08                 2494 	.db #0x08	; 8
   6487 0C                 2495 	.db #0x0C	; 12
   6488 C0                 2496 	.db #0xC0	; 192
   6489 C0                 2497 	.db #0xC0	; 192
   648A C0                 2498 	.db #0xC0	; 192
   648B C0                 2499 	.db #0xC0	; 192
   648C C0                 2500 	.db #0xC0	; 192
   648D 84                 2501 	.db #0x84	; 132
   648E 0C                 2502 	.db #0x0C	; 12
   648F AC                 2503 	.db #0xAC	; 172
   6490 0C                 2504 	.db #0x0C	; 12
   6491 04                 2505 	.db #0x04	; 4
   6492 0C                 2506 	.db #0x0C	; 12
   6493 0C                 2507 	.db #0x0C	; 12
   6494 08                 2508 	.db #0x08	; 8
   6495 04                 2509 	.db #0x04	; 4
   6496 0C                 2510 	.db #0x0C	; 12
   6497 0C                 2511 	.db #0x0C	; 12
   6498 5C                 2512 	.db #0x5C	; 92
   6499 04                 2513 	.db #0x04	; 4
   649A 0C                 2514 	.db #0x0C	; 12
   649B 0C                 2515 	.db #0x0C	; 12
   649C 0C                 2516 	.db #0x0C	; 12
   649D 0C                 2517 	.db #0x0C	; 12
   649E 0C                 2518 	.db #0x0C	; 12
   649F 0C                 2519 	.db #0x0C	; 12
   64A0 0C                 2520 	.db #0x0C	; 12
   64A1 0C                 2521 	.db #0x0C	; 12
   64A2 08                 2522 	.db #0x08	; 8
   64A3 04                 2523 	.db #0x04	; 4
   64A4 0C                 2524 	.db #0x0C	; 12
   64A5 00                 2525 	.db #0x00	; 0
   64A6 08                 2526 	.db #0x08	; 8
   64A7 04                 2527 	.db #0x04	; 4
   64A8 00                 2528 	.db #0x00	; 0
   64A9 00                 2529 	.db #0x00	; 0
   64AA 08                 2530 	.db #0x08	; 8
   64AB 04                 2531 	.db #0x04	; 4
   64AC 00                 2532 	.db #0x00	; 0
   64AD 00                 2533 	.db #0x00	; 0
   64AE 08                 2534 	.db #0x08	; 8
   64AF 04                 2535 	.db #0x04	; 4
   64B0 08                 2536 	.db #0x08	; 8
   64B1 04                 2537 	.db #0x04	; 4
   64B2 08                 2538 	.db #0x08	; 8
   64B3 04                 2539 	.db #0x04	; 4
   64B4 08                 2540 	.db #0x08	; 8
   64B5 04                 2541 	.db #0x04	; 4
   64B6 08                 2542 	.db #0x08	; 8
   64B7 00                 2543 	.db #0x00	; 0
   64B8 08                 2544 	.db #0x08	; 8
   64B9 00                 2545 	.db #0x00	; 0
   64BA 00                 2546 	.db #0x00	; 0
   64BB 00                 2547 	.db #0x00	; 0
   64BC 00                 2548 	.db #0x00	; 0
   64BD 00                 2549 	.db #0x00	; 0
   64BE 00                 2550 	.db #0x00	; 0
   64BF 00                 2551 	.db #0x00	; 0
   64C0 00                 2552 	.db #0x00	; 0
   64C1 00                 2553 	.db #0x00	; 0
   64C2 00                 2554 	.db #0x00	; 0
   64C3 00                 2555 	.db #0x00	; 0
   64C4 00                 2556 	.db #0x00	; 0
   64C5 00                 2557 	.db #0x00	; 0
   64C6 00                 2558 	.db #0x00	; 0
   64C7 00                 2559 	.db #0x00	; 0
   64C8 00                 2560 	.db #0x00	; 0
   64C9 00                 2561 	.db #0x00	; 0
   64CA 00                 2562 	.db #0x00	; 0
   64CB 00                 2563 	.db #0x00	; 0
   64CC 00                 2564 	.db #0x00	; 0
   64CD                    2565 _BB63000:
   64CD 00                 2566 	.db #0x00	; 0
   64CE 00                 2567 	.db #0x00	; 0
   64CF 00                 2568 	.db #0x00	; 0
   64D0 00                 2569 	.db #0x00	; 0
   64D1 00                 2570 	.db #0x00	; 0
   64D2 00                 2571 	.db #0x00	; 0
   64D3 00                 2572 	.db #0x00	; 0
   64D4 00                 2573 	.db #0x00	; 0
   64D5 00                 2574 	.db #0x00	; 0
   64D6 00                 2575 	.db #0x00	; 0
   64D7 00                 2576 	.db #0x00	; 0
   64D8 00                 2577 	.db #0x00	; 0
   64D9 00                 2578 	.db #0x00	; 0
   64DA CC                 2579 	.db #0xCC	; 204
   64DB CC                 2580 	.db #0xCC	; 204
   64DC 88                 2581 	.db #0x88	; 136
   64DD 00                 2582 	.db #0x00	; 0
   64DE 00                 2583 	.db #0x00	; 0
   64DF 00                 2584 	.db #0x00	; 0
   64E0 00                 2585 	.db #0x00	; 0
   64E1 00                 2586 	.db #0x00	; 0
   64E2 00                 2587 	.db #0x00	; 0
   64E3 00                 2588 	.db #0x00	; 0
   64E4 00                 2589 	.db #0x00	; 0
   64E5 00                 2590 	.db #0x00	; 0
   64E6 00                 2591 	.db #0x00	; 0
   64E7 00                 2592 	.db #0x00	; 0
   64E8 00                 2593 	.db #0x00	; 0
   64E9 00                 2594 	.db #0x00	; 0
   64EA 00                 2595 	.db #0x00	; 0
   64EB 00                 2596 	.db #0x00	; 0
   64EC 00                 2597 	.db #0x00	; 0
   64ED 44                 2598 	.db #0x44	; 68	'D'
   64EE CC                 2599 	.db #0xCC	; 204
   64EF CC                 2600 	.db #0xCC	; 204
   64F0 CC                 2601 	.db #0xCC	; 204
   64F1 00                 2602 	.db #0x00	; 0
   64F2 00                 2603 	.db #0x00	; 0
   64F3 00                 2604 	.db #0x00	; 0
   64F4 00                 2605 	.db #0x00	; 0
   64F5 00                 2606 	.db #0x00	; 0
   64F6 00                 2607 	.db #0x00	; 0
   64F7 00                 2608 	.db #0x00	; 0
   64F8 00                 2609 	.db #0x00	; 0
   64F9 00                 2610 	.db #0x00	; 0
   64FA 00                 2611 	.db #0x00	; 0
   64FB 00                 2612 	.db #0x00	; 0
   64FC 00                 2613 	.db #0x00	; 0
   64FD 00                 2614 	.db #0x00	; 0
   64FE 00                 2615 	.db #0x00	; 0
   64FF 00                 2616 	.db #0x00	; 0
   6500 00                 2617 	.db #0x00	; 0
   6501 00                 2618 	.db #0x00	; 0
   6502 89                 2619 	.db #0x89	; 137
   6503 03                 2620 	.db #0x03	; 3
   6504 88                 2621 	.db #0x88	; 136
   6505 00                 2622 	.db #0x00	; 0
   6506 00                 2623 	.db #0x00	; 0
   6507 00                 2624 	.db #0x00	; 0
   6508 00                 2625 	.db #0x00	; 0
   6509 00                 2626 	.db #0x00	; 0
   650A 00                 2627 	.db #0x00	; 0
   650B 00                 2628 	.db #0x00	; 0
   650C 00                 2629 	.db #0x00	; 0
   650D 00                 2630 	.db #0x00	; 0
   650E 00                 2631 	.db #0x00	; 0
   650F 00                 2632 	.db #0x00	; 0
   6510 00                 2633 	.db #0x00	; 0
   6511 00                 2634 	.db #0x00	; 0
   6512 00                 2635 	.db #0x00	; 0
   6513 00                 2636 	.db #0x00	; 0
   6514 00                 2637 	.db #0x00	; 0
   6515 00                 2638 	.db #0x00	; 0
   6516 89                 2639 	.db #0x89	; 137
   6517 03                 2640 	.db #0x03	; 3
   6518 88                 2641 	.db #0x88	; 136
   6519 00                 2642 	.db #0x00	; 0
   651A 00                 2643 	.db #0x00	; 0
   651B 00                 2644 	.db #0x00	; 0
   651C 00                 2645 	.db #0x00	; 0
   651D 00                 2646 	.db #0x00	; 0
   651E 00                 2647 	.db #0x00	; 0
   651F 00                 2648 	.db #0x00	; 0
   6520 00                 2649 	.db #0x00	; 0
   6521 00                 2650 	.db #0x00	; 0
   6522 00                 2651 	.db #0x00	; 0
   6523 00                 2652 	.db #0x00	; 0
   6524 00                 2653 	.db #0x00	; 0
   6525 00                 2654 	.db #0x00	; 0
   6526 00                 2655 	.db #0x00	; 0
   6527 00                 2656 	.db #0x00	; 0
   6528 00                 2657 	.db #0x00	; 0
   6529 00                 2658 	.db #0x00	; 0
   652A 89                 2659 	.db #0x89	; 137
   652B 03                 2660 	.db #0x03	; 3
   652C 88                 2661 	.db #0x88	; 136
   652D 00                 2662 	.db #0x00	; 0
   652E 00                 2663 	.db #0x00	; 0
   652F 00                 2664 	.db #0x00	; 0
   6530 00                 2665 	.db #0x00	; 0
   6531 00                 2666 	.db #0x00	; 0
   6532 00                 2667 	.db #0x00	; 0
   6533 00                 2668 	.db #0x00	; 0
   6534 44                 2669 	.db #0x44	; 68	'D'
   6535 CC                 2670 	.db #0xCC	; 204
   6536 CC                 2671 	.db #0xCC	; 204
   6537 CC                 2672 	.db #0xCC	; 204
   6538 CC                 2673 	.db #0xCC	; 204
   6539 CC                 2674 	.db #0xCC	; 204
   653A CC                 2675 	.db #0xCC	; 204
   653B CC                 2676 	.db #0xCC	; 204
   653C CC                 2677 	.db #0xCC	; 204
   653D CC                 2678 	.db #0xCC	; 204
   653E CC                 2679 	.db #0xCC	; 204
   653F CC                 2680 	.db #0xCC	; 204
   6540 CC                 2681 	.db #0xCC	; 204
   6541 CC                 2682 	.db #0xCC	; 204
   6542 00                 2683 	.db #0x00	; 0
   6543 00                 2684 	.db #0x00	; 0
   6544 00                 2685 	.db #0x00	; 0
   6545 00                 2686 	.db #0x00	; 0
   6546 00                 2687 	.db #0x00	; 0
   6547 00                 2688 	.db #0x00	; 0
   6548 30                 2689 	.db #0x30	; 48	'0'
   6549 30                 2690 	.db #0x30	; 48	'0'
   654A 30                 2691 	.db #0x30	; 48	'0'
   654B 30                 2692 	.db #0x30	; 48	'0'
   654C 30                 2693 	.db #0x30	; 48	'0'
   654D 30                 2694 	.db #0x30	; 48	'0'
   654E 30                 2695 	.db #0x30	; 48	'0'
   654F 30                 2696 	.db #0x30	; 48	'0'
   6550 30                 2697 	.db #0x30	; 48	'0'
   6551 30                 2698 	.db #0x30	; 48	'0'
   6552 18                 2699 	.db #0x18	; 24
   6553 30                 2700 	.db #0x30	; 48	'0'
   6554 24                 2701 	.db #0x24	; 36
   6555 30                 2702 	.db #0x30	; 48	'0'
   6556 20                 2703 	.db #0x20	; 32
   6557 00                 2704 	.db #0x00	; 0
   6558 00                 2705 	.db #0x00	; 0
   6559 00                 2706 	.db #0x00	; 0
   655A 00                 2707 	.db #0x00	; 0
   655B 00                 2708 	.db #0x00	; 0
   655C 0C                 2709 	.db #0x0C	; 12
   655D 0C                 2710 	.db #0x0C	; 12
   655E 0C                 2711 	.db #0x0C	; 12
   655F 0C                 2712 	.db #0x0C	; 12
   6560 0C                 2713 	.db #0x0C	; 12
   6561 0C                 2714 	.db #0x0C	; 12
   6562 0C                 2715 	.db #0x0C	; 12
   6563 0C                 2716 	.db #0x0C	; 12
   6564 0C                 2717 	.db #0x0C	; 12
   6565 0C                 2718 	.db #0x0C	; 12
   6566 18                 2719 	.db #0x18	; 24
   6567 30                 2720 	.db #0x30	; 48	'0'
   6568 24                 2721 	.db #0x24	; 36
   6569 0C                 2722 	.db #0x0C	; 12
   656A 08                 2723 	.db #0x08	; 8
   656B 00                 2724 	.db #0x00	; 0
   656C 00                 2725 	.db #0x00	; 0
   656D 00                 2726 	.db #0x00	; 0
   656E 00                 2727 	.db #0x00	; 0
   656F 08                 2728 	.db #0x08	; 8
   6570 30                 2729 	.db #0x30	; 48	'0'
   6571 4C                 2730 	.db #0x4C	; 76	'L'
   6572 30                 2731 	.db #0x30	; 48	'0'
   6573 24                 2732 	.db #0x24	; 36
   6574 30                 2733 	.db #0x30	; 48	'0'
   6575 24                 2734 	.db #0x24	; 36
   6576 30                 2735 	.db #0x30	; 48	'0'
   6577 24                 2736 	.db #0x24	; 36
   6578 98                 2737 	.db #0x98	; 152
   6579 98                 2738 	.db #0x98	; 152
   657A 18                 2739 	.db #0x18	; 24
   657B 30                 2740 	.db #0x30	; 48	'0'
   657C 24                 2741 	.db #0x24	; 36
   657D 30                 2742 	.db #0x30	; 48	'0'
   657E 20                 2743 	.db #0x20	; 32
   657F 08                 2744 	.db #0x08	; 8
   6580 00                 2745 	.db #0x00	; 0
   6581 00                 2746 	.db #0x00	; 0
   6582 00                 2747 	.db #0x00	; 0
   6583 08                 2748 	.db #0x08	; 8
   6584 30                 2749 	.db #0x30	; 48	'0'
   6585 4C                 2750 	.db #0x4C	; 76	'L'
   6586 30                 2751 	.db #0x30	; 48	'0'
   6587 24                 2752 	.db #0x24	; 36
   6588 30                 2753 	.db #0x30	; 48	'0'
   6589 24                 2754 	.db #0x24	; 36
   658A 30                 2755 	.db #0x30	; 48	'0'
   658B 24                 2756 	.db #0x24	; 36
   658C 98                 2757 	.db #0x98	; 152
   658D 98                 2758 	.db #0x98	; 152
   658E 18                 2759 	.db #0x18	; 24
   658F 30                 2760 	.db #0x30	; 48	'0'
   6590 24                 2761 	.db #0x24	; 36
   6591 30                 2762 	.db #0x30	; 48	'0'
   6592 20                 2763 	.db #0x20	; 32
   6593 08                 2764 	.db #0x08	; 8
   6594 00                 2765 	.db #0x00	; 0
   6595 00                 2766 	.db #0x00	; 0
   6596 00                 2767 	.db #0x00	; 0
   6597 08                 2768 	.db #0x08	; 8
   6598 0C                 2769 	.db #0x0C	; 12
   6599 0C                 2770 	.db #0x0C	; 12
   659A 0C                 2771 	.db #0x0C	; 12
   659B 0C                 2772 	.db #0x0C	; 12
   659C 0C                 2773 	.db #0x0C	; 12
   659D 0C                 2774 	.db #0x0C	; 12
   659E 0C                 2775 	.db #0x0C	; 12
   659F 0C                 2776 	.db #0x0C	; 12
   65A0 0C                 2777 	.db #0x0C	; 12
   65A1 0C                 2778 	.db #0x0C	; 12
   65A2 18                 2779 	.db #0x18	; 24
   65A3 30                 2780 	.db #0x30	; 48	'0'
   65A4 24                 2781 	.db #0x24	; 36
   65A5 0C                 2782 	.db #0x0C	; 12
   65A6 08                 2783 	.db #0x08	; 8
   65A7 08                 2784 	.db #0x08	; 8
   65A8 00                 2785 	.db #0x00	; 0
   65A9 00                 2786 	.db #0x00	; 0
   65AA 00                 2787 	.db #0x00	; 0
   65AB 08                 2788 	.db #0x08	; 8
   65AC 30                 2789 	.db #0x30	; 48	'0'
   65AD 18                 2790 	.db #0x18	; 24
   65AE 30                 2791 	.db #0x30	; 48	'0'
   65AF 8C                 2792 	.db #0x8C	; 140
   65B0 CC                 2793 	.db #0xCC	; 204
   65B1 8C                 2794 	.db #0x8C	; 140
   65B2 CC                 2795 	.db #0xCC	; 204
   65B3 24                 2796 	.db #0x24	; 36
   65B4 30                 2797 	.db #0x30	; 48	'0'
   65B5 30                 2798 	.db #0x30	; 48	'0'
   65B6 18                 2799 	.db #0x18	; 24
   65B7 30                 2800 	.db #0x30	; 48	'0'
   65B8 24                 2801 	.db #0x24	; 36
   65B9 98                 2802 	.db #0x98	; 152
   65BA 88                 2803 	.db #0x88	; 136
   65BB 08                 2804 	.db #0x08	; 8
   65BC 00                 2805 	.db #0x00	; 0
   65BD 00                 2806 	.db #0x00	; 0
   65BE 00                 2807 	.db #0x00	; 0
   65BF 0C                 2808 	.db #0x0C	; 12
   65C0 0C                 2809 	.db #0x0C	; 12
   65C1 0C                 2810 	.db #0x0C	; 12
   65C2 0C                 2811 	.db #0x0C	; 12
   65C3 0C                 2812 	.db #0x0C	; 12
   65C4 0C                 2813 	.db #0x0C	; 12
   65C5 0C                 2814 	.db #0x0C	; 12
   65C6 0C                 2815 	.db #0x0C	; 12
   65C7 0C                 2816 	.db #0x0C	; 12
   65C8 0C                 2817 	.db #0x0C	; 12
   65C9 0C                 2818 	.db #0x0C	; 12
   65CA 18                 2819 	.db #0x18	; 24
   65CB 30                 2820 	.db #0x30	; 48	'0'
   65CC 24                 2821 	.db #0x24	; 36
   65CD 0C                 2822 	.db #0x0C	; 12
   65CE 0C                 2823 	.db #0x0C	; 12
   65CF 08                 2824 	.db #0x08	; 8
   65D0 00                 2825 	.db #0x00	; 0
   65D1 00                 2826 	.db #0x00	; 0
   65D2 00                 2827 	.db #0x00	; 0
   65D3 48                 2828 	.db #0x48	; 72	'H'
   65D4 C0                 2829 	.db #0xC0	; 192
   65D5 C0                 2830 	.db #0xC0	; 192
   65D6 C0                 2831 	.db #0xC0	; 192
   65D7 C0                 2832 	.db #0xC0	; 192
   65D8 C0                 2833 	.db #0xC0	; 192
   65D9 C0                 2834 	.db #0xC0	; 192
   65DA C0                 2835 	.db #0xC0	; 192
   65DB C0                 2836 	.db #0xC0	; 192
   65DC C0                 2837 	.db #0xC0	; 192
   65DD C0                 2838 	.db #0xC0	; 192
   65DE C0                 2839 	.db #0xC0	; 192
   65DF C0                 2840 	.db #0xC0	; 192
   65E0 C0                 2841 	.db #0xC0	; 192
   65E1 C0                 2842 	.db #0xC0	; 192
   65E2 C0                 2843 	.db #0xC0	; 192
   65E3 08                 2844 	.db #0x08	; 8
   65E4 00                 2845 	.db #0x00	; 0
   65E5 00                 2846 	.db #0x00	; 0
   65E6 00                 2847 	.db #0x00	; 0
   65E7 04                 2848 	.db #0x04	; 4
   65E8 0C                 2849 	.db #0x0C	; 12
   65E9 0C                 2850 	.db #0x0C	; 12
   65EA 0C                 2851 	.db #0x0C	; 12
   65EB 0C                 2852 	.db #0x0C	; 12
   65EC 0C                 2853 	.db #0x0C	; 12
   65ED 0C                 2854 	.db #0x0C	; 12
   65EE 0C                 2855 	.db #0x0C	; 12
   65EF 0C                 2856 	.db #0x0C	; 12
   65F0 0C                 2857 	.db #0x0C	; 12
   65F1 0C                 2858 	.db #0x0C	; 12
   65F2 0C                 2859 	.db #0x0C	; 12
   65F3 0C                 2860 	.db #0x0C	; 12
   65F4 0C                 2861 	.db #0x0C	; 12
   65F5 0C                 2862 	.db #0x0C	; 12
   65F6 0C                 2863 	.db #0x0C	; 12
   65F7 00                 2864 	.db #0x00	; 0
   65F8 00                 2865 	.db #0x00	; 0
   65F9 00                 2866 	.db #0x00	; 0
   65FA 00                 2867 	.db #0x00	; 0
   65FB 04                 2868 	.db #0x04	; 4
   65FC 00                 2869 	.db #0x00	; 0
   65FD 04                 2870 	.db #0x04	; 4
   65FE 0C                 2871 	.db #0x0C	; 12
   65FF 0C                 2872 	.db #0x0C	; 12
   6600 08                 2873 	.db #0x08	; 8
   6601 00                 2874 	.db #0x00	; 0
   6602 00                 2875 	.db #0x00	; 0
   6603 00                 2876 	.db #0x00	; 0
   6604 00                 2877 	.db #0x00	; 0
   6605 00                 2878 	.db #0x00	; 0
   6606 0C                 2879 	.db #0x0C	; 12
   6607 0C                 2880 	.db #0x0C	; 12
   6608 0C                 2881 	.db #0x0C	; 12
   6609 00                 2882 	.db #0x00	; 0
   660A 04                 2883 	.db #0x04	; 4
   660B 00                 2884 	.db #0x00	; 0
   660C 00                 2885 	.db #0x00	; 0
   660D 00                 2886 	.db #0x00	; 0
   660E 00                 2887 	.db #0x00	; 0
   660F 0C                 2888 	.db #0x0C	; 12
   6610 00                 2889 	.db #0x00	; 0
   6611 0C                 2890 	.db #0x0C	; 12
   6612 0C                 2891 	.db #0x0C	; 12
   6613 0C                 2892 	.db #0x0C	; 12
   6614 0C                 2893 	.db #0x0C	; 12
   6615 00                 2894 	.db #0x00	; 0
   6616 00                 2895 	.db #0x00	; 0
   6617 00                 2896 	.db #0x00	; 0
   6618 00                 2897 	.db #0x00	; 0
   6619 04                 2898 	.db #0x04	; 4
   661A 0C                 2899 	.db #0x0C	; 12
   661B 0C                 2900 	.db #0x0C	; 12
   661C 0C                 2901 	.db #0x0C	; 12
   661D 08                 2902 	.db #0x08	; 8
   661E 04                 2903 	.db #0x04	; 4
   661F 08                 2904 	.db #0x08	; 8
   6620 00                 2905 	.db #0x00	; 0
   6621 00                 2906 	.db #0x00	; 0
   6622 00                 2907 	.db #0x00	; 0
   6623 0C                 2908 	.db #0x0C	; 12
   6624 04                 2909 	.db #0x04	; 4
   6625 0C                 2910 	.db #0x0C	; 12
   6626 0C                 2911 	.db #0x0C	; 12
   6627 0C                 2912 	.db #0x0C	; 12
   6628 0C                 2913 	.db #0x0C	; 12
   6629 08                 2914 	.db #0x08	; 8
   662A 00                 2915 	.db #0x00	; 0
   662B 00                 2916 	.db #0x00	; 0
   662C 00                 2917 	.db #0x00	; 0
   662D 0C                 2918 	.db #0x0C	; 12
   662E 0C                 2919 	.db #0x0C	; 12
   662F 0C                 2920 	.db #0x0C	; 12
   6630 0C                 2921 	.db #0x0C	; 12
   6631 0C                 2922 	.db #0x0C	; 12
   6632 04                 2923 	.db #0x04	; 4
   6633 08                 2924 	.db #0x08	; 8
   6634 00                 2925 	.db #0x00	; 0
   6635 00                 2926 	.db #0x00	; 0
   6636 00                 2927 	.db #0x00	; 0
   6637 00                 2928 	.db #0x00	; 0
   6638 04                 2929 	.db #0x04	; 4
   6639 0C                 2930 	.db #0x0C	; 12
   663A 0C                 2931 	.db #0x0C	; 12
   663B 0C                 2932 	.db #0x0C	; 12
   663C 0C                 2933 	.db #0x0C	; 12
   663D 08                 2934 	.db #0x08	; 8
   663E 00                 2935 	.db #0x00	; 0
   663F 00                 2936 	.db #0x00	; 0
   6640 00                 2937 	.db #0x00	; 0
   6641 0C                 2938 	.db #0x0C	; 12
   6642 0C                 2939 	.db #0x0C	; 12
   6643 0C                 2940 	.db #0x0C	; 12
   6644 0C                 2941 	.db #0x0C	; 12
   6645 0C                 2942 	.db #0x0C	; 12
   6646 00                 2943 	.db #0x00	; 0
   6647 00                 2944 	.db #0x00	; 0
   6648 00                 2945 	.db #0x00	; 0
   6649 00                 2946 	.db #0x00	; 0
   664A 00                 2947 	.db #0x00	; 0
   664B 00                 2948 	.db #0x00	; 0
   664C 00                 2949 	.db #0x00	; 0
   664D 0C                 2950 	.db #0x0C	; 12
   664E 00                 2951 	.db #0x00	; 0
   664F 00                 2952 	.db #0x00	; 0
   6650 0C                 2953 	.db #0x0C	; 12
   6651 00                 2954 	.db #0x00	; 0
   6652 00                 2955 	.db #0x00	; 0
   6653 00                 2956 	.db #0x00	; 0
   6654 00                 2957 	.db #0x00	; 0
   6655 04                 2958 	.db #0x04	; 4
   6656 08                 2959 	.db #0x08	; 8
   6657 00                 2960 	.db #0x00	; 0
   6658 04                 2961 	.db #0x04	; 4
   6659 08                 2962 	.db #0x08	; 8
   665A 00                 2963 	.db #0x00	; 0
   665B 00                 2964 	.db #0x00	; 0
   665C 00                 2965 	.db #0x00	; 0
                           2966 	.area _INITIALIZER
                           2967 	.area _CABS (ABS)
