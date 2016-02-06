                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:14:19 2016
                              5 ;--------------------------------------------------------
                              6 	.module sprites
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _rail_ns_e
                             13 	.globl _rail_ns_w
                             14 	.globl _rail_ew_s
                             15 	.globl _rail_ew_n
                             16 	.globl _rail_ws
                             17 	.globl _rail_wn
                             18 	.globl _rail_es
                             19 	.globl _rail_en
                             20 	.globl _rail_ns
                             21 	.globl _rail_ew
                             22 	.globl _station_large_ew
                             23 	.globl _station_large_ns
                             24 	.globl _station_medium_ew
                             25 	.globl _station_medium_ns
                             26 	.globl _station_small_ew
                             27 	.globl _station_small_ns
                             28 	.globl _livestock
                             29 	.globl _farm2
                             30 	.globl _farm1
                             31 	.globl _water
                             32 	.globl _dwellings3
                             33 	.globl _dwellings2
                             34 	.globl _dwellings1
                             35 	.globl _forest
                             36 	.globl _grass2
                             37 	.globl _grass1
                             38 ;--------------------------------------------------------
                             39 ; special function registers
                             40 ;--------------------------------------------------------
                             41 ;--------------------------------------------------------
                             42 ; ram data
                             43 ;--------------------------------------------------------
                             44 	.area _DATA
                             45 ;--------------------------------------------------------
                             46 ; ram data
                             47 ;--------------------------------------------------------
                             48 	.area _INITIALIZED
                             49 ;--------------------------------------------------------
                             50 ; absolute external ram data
                             51 ;--------------------------------------------------------
                             52 	.area _DABS (ABS)
                             53 ;--------------------------------------------------------
                             54 ; global & static initialisations
                             55 ;--------------------------------------------------------
                             56 	.area _HOME
                             57 	.area _GSINIT
                             58 	.area _GSFINAL
                             59 	.area _GSINIT
                             60 ;--------------------------------------------------------
                             61 ; Home
                             62 ;--------------------------------------------------------
                             63 	.area _HOME
                             64 	.area _HOME
                             65 ;--------------------------------------------------------
                             66 ; code
                             67 ;--------------------------------------------------------
                             68 	.area _CODE
                             69 	.area _CODE
   5C53                      70 _grass1:
   5C53 0F                   71 	.db #0x0F	; 15
   5C54 0F                   72 	.db #0x0F	; 15
   5C55 0F                   73 	.db #0x0F	; 15
   5C56 8F                   74 	.db #0x8F	; 143
   5C57 0F                   75 	.db #0x0F	; 15
   5C58 0F                   76 	.db #0x0F	; 15
   5C59 0F                   77 	.db #0x0F	; 15
   5C5A 0F                   78 	.db #0x0F	; 15
   5C5B 1F                   79 	.db #0x1F	; 31
   5C5C 0F                   80 	.db #0x0F	; 15
   5C5D 2F                   81 	.db #0x2F	; 47
   5C5E 0F                   82 	.db #0x0F	; 15
   5C5F 0F                   83 	.db #0x0F	; 15
   5C60 0F                   84 	.db #0x0F	; 15
   5C61 0F                   85 	.db #0x0F	; 15
   5C62 0F                   86 	.db #0x0F	; 15
   5C63 0F                   87 	.db #0x0F	; 15
   5C64 0F                   88 	.db #0x0F	; 15
   5C65 0F                   89 	.db #0x0F	; 15
   5C66 0F                   90 	.db #0x0F	; 15
   5C67 0F                   91 	.db #0x0F	; 15
   5C68 0F                   92 	.db #0x0F	; 15
   5C69 0F                   93 	.db #0x0F	; 15
   5C6A 0F                   94 	.db #0x0F	; 15
   5C6B 0F                   95 	.db #0x0F	; 15
   5C6C 0F                   96 	.db #0x0F	; 15
   5C6D 0F                   97 	.db #0x0F	; 15
   5C6E 0F                   98 	.db #0x0F	; 15
   5C6F 4F                   99 	.db #0x4F	; 79	'O'
   5C70 0F                  100 	.db #0x0F	; 15
   5C71 0F                  101 	.db #0x0F	; 15
   5C72 8F                  102 	.db #0x8F	; 143
   5C73 0F                  103 	.db #0x0F	; 15
   5C74 4F                  104 	.db #0x4F	; 79	'O'
   5C75 0F                  105 	.db #0x0F	; 15
   5C76 0F                  106 	.db #0x0F	; 15
   5C77 0F                  107 	.db #0x0F	; 15
   5C78 0F                  108 	.db #0x0F	; 15
   5C79 0F                  109 	.db #0x0F	; 15
   5C7A 0F                  110 	.db #0x0F	; 15
   5C7B 0F                  111 	.db #0x0F	; 15
   5C7C 0F                  112 	.db #0x0F	; 15
   5C7D 0F                  113 	.db #0x0F	; 15
   5C7E 0F                  114 	.db #0x0F	; 15
   5C7F 0F                  115 	.db #0x0F	; 15
   5C80 1F                  116 	.db #0x1F	; 31
   5C81 0F                  117 	.db #0x0F	; 15
   5C82 0F                  118 	.db #0x0F	; 15
   5C83 0F                  119 	.db #0x0F	; 15
   5C84 0F                  120 	.db #0x0F	; 15
   5C85 0F                  121 	.db #0x0F	; 15
   5C86 8F                  122 	.db #0x8F	; 143
   5C87 0F                  123 	.db #0x0F	; 15
   5C88 0F                  124 	.db #0x0F	; 15
   5C89 0F                  125 	.db #0x0F	; 15
   5C8A 0F                  126 	.db #0x0F	; 15
   5C8B 0F                  127 	.db #0x0F	; 15
   5C8C 0F                  128 	.db #0x0F	; 15
   5C8D 0F                  129 	.db #0x0F	; 15
   5C8E 0F                  130 	.db #0x0F	; 15
   5C8F 4F                  131 	.db #0x4F	; 79	'O'
   5C90 0F                  132 	.db #0x0F	; 15
   5C91 8F                  133 	.db #0x8F	; 143
   5C92 0F                  134 	.db #0x0F	; 15
   5C93                     135 _grass2:
   5C93 0F                  136 	.db #0x0F	; 15
   5C94 0F                  137 	.db #0x0F	; 15
   5C95 0F                  138 	.db #0x0F	; 15
   5C96 0F                  139 	.db #0x0F	; 15
   5C97 0F                  140 	.db #0x0F	; 15
   5C98 0F                  141 	.db #0x0F	; 15
   5C99 0F                  142 	.db #0x0F	; 15
   5C9A 2F                  143 	.db #0x2F	; 47
   5C9B 0F                  144 	.db #0x0F	; 15
   5C9C 8F                  145 	.db #0x8F	; 143
   5C9D 0F                  146 	.db #0x0F	; 15
   5C9E 0F                  147 	.db #0x0F	; 15
   5C9F 0F                  148 	.db #0x0F	; 15
   5CA0 0F                  149 	.db #0x0F	; 15
   5CA1 0F                  150 	.db #0x0F	; 15
   5CA2 0F                  151 	.db #0x0F	; 15
   5CA3 0F                  152 	.db #0x0F	; 15
   5CA4 0F                  153 	.db #0x0F	; 15
   5CA5 0F                  154 	.db #0x0F	; 15
   5CA6 0F                  155 	.db #0x0F	; 15
   5CA7 4F                  156 	.db #0x4F	; 79	'O'
   5CA8 0F                  157 	.db #0x0F	; 15
   5CA9 0F                  158 	.db #0x0F	; 15
   5CAA 0F                  159 	.db #0x0F	; 15
   5CAB 0F                  160 	.db #0x0F	; 15
   5CAC 0F                  161 	.db #0x0F	; 15
   5CAD 2F                  162 	.db #0x2F	; 47
   5CAE 0F                  163 	.db #0x0F	; 15
   5CAF 0F                  164 	.db #0x0F	; 15
   5CB0 0F                  165 	.db #0x0F	; 15
   5CB1 0F                  166 	.db #0x0F	; 15
   5CB2 0F                  167 	.db #0x0F	; 15
   5CB3 0F                  168 	.db #0x0F	; 15
   5CB4 4F                  169 	.db #0x4F	; 79	'O'
   5CB5 0F                  170 	.db #0x0F	; 15
   5CB6 0F                  171 	.db #0x0F	; 15
   5CB7 0F                  172 	.db #0x0F	; 15
   5CB8 0F                  173 	.db #0x0F	; 15
   5CB9 0F                  174 	.db #0x0F	; 15
   5CBA 0F                  175 	.db #0x0F	; 15
   5CBB 0F                  176 	.db #0x0F	; 15
   5CBC 0F                  177 	.db #0x0F	; 15
   5CBD 0F                  178 	.db #0x0F	; 15
   5CBE 0F                  179 	.db #0x0F	; 15
   5CBF 0F                  180 	.db #0x0F	; 15
   5CC0 0F                  181 	.db #0x0F	; 15
   5CC1 0F                  182 	.db #0x0F	; 15
   5CC2 8F                  183 	.db #0x8F	; 143
   5CC3 0F                  184 	.db #0x0F	; 15
   5CC4 0F                  185 	.db #0x0F	; 15
   5CC5 0F                  186 	.db #0x0F	; 15
   5CC6 0F                  187 	.db #0x0F	; 15
   5CC7 2F                  188 	.db #0x2F	; 47
   5CC8 1F                  189 	.db #0x1F	; 31
   5CC9 0F                  190 	.db #0x0F	; 15
   5CCA 0F                  191 	.db #0x0F	; 15
   5CCB 0F                  192 	.db #0x0F	; 15
   5CCC 0F                  193 	.db #0x0F	; 15
   5CCD 0F                  194 	.db #0x0F	; 15
   5CCE 2F                  195 	.db #0x2F	; 47
   5CCF 0F                  196 	.db #0x0F	; 15
   5CD0 0F                  197 	.db #0x0F	; 15
   5CD1 0F                  198 	.db #0x0F	; 15
   5CD2 0F                  199 	.db #0x0F	; 15
   5CD3                     200 _forest:
   5CD3 0F                  201 	.db #0x0F	; 15
   5CD4 0F                  202 	.db #0x0F	; 15
   5CD5 0E                  203 	.db #0x0E	; 14
   5CD6 03                  204 	.db #0x03	; 3
   5CD7 0E                  205 	.db #0x0E	; 14
   5CD8 03                  206 	.db #0x03	; 3
   5CD9 0E                  207 	.db #0x0E	; 14
   5CDA EF                  208 	.db #0xEF	; 239
   5CDB 0E                  209 	.db #0x0E	; 14
   5CDC EF                  210 	.db #0xEF	; 239
   5CDD 0F                  211 	.db #0x0F	; 15
   5CDE EF                  212 	.db #0xEF	; 239
   5CDF 0E                  213 	.db #0x0E	; 14
   5CE0 FF                  214 	.db #0xFF	; 255
   5CE1 0F                  215 	.db #0x0F	; 15
   5CE2 0F                  216 	.db #0x0F	; 15
   5CE3 07                  217 	.db #0x07	; 7
   5CE4 6F                  218 	.db #0x6F	; 111	'o'
   5CE5 0C                  219 	.db #0x0C	; 12
   5CE6 0F                  220 	.db #0x0F	; 15
   5CE7 CF                  221 	.db #0xCF	; 207
   5CE8 0F                  222 	.db #0x0F	; 15
   5CE9 19                  223 	.db #0x19	; 25
   5CEA 8F                  224 	.db #0x8F	; 143
   5CEB CE                  225 	.db #0xCE	; 206
   5CEC 03                  226 	.db #0x03	; 3
   5CED 3B                  227 	.db #0x3B	; 59
   5CEE 8F                  228 	.db #0x8F	; 143
   5CEF CE                  229 	.db #0xCE	; 206
   5CF0 CF                  230 	.db #0xCF	; 207
   5CF1 3B                  231 	.db #0x3B	; 59
   5CF2 0F                  232 	.db #0x0F	; 15
   5CF3 0E                  233 	.db #0x0E	; 14
   5CF4 EF                  234 	.db #0xEF	; 239
   5CF5 3F                  235 	.db #0x3F	; 63
   5CF6 0F                  236 	.db #0x0F	; 15
   5CF7 0F                  237 	.db #0x0F	; 15
   5CF8 EF                  238 	.db #0xEF	; 239
   5CF9 0F                  239 	.db #0x0F	; 15
   5CFA 0F                  240 	.db #0x0F	; 15
   5CFB 0E                  241 	.db #0x0E	; 14
   5CFC 07                  242 	.db #0x07	; 7
   5CFD 03                  243 	.db #0x03	; 3
   5CFE 0F                  244 	.db #0x0F	; 15
   5CFF 1D                  245 	.db #0x1D	; 29
   5D00 CE                  246 	.db #0xCE	; 206
   5D01 EF                  247 	.db #0xEF	; 239
   5D02 09                  248 	.db #0x09	; 9
   5D03 3B                  249 	.db #0x3B	; 59
   5D04 8F                  250 	.db #0x8F	; 143
   5D05 CE                  251 	.db #0xCE	; 206
   5D06 67                  252 	.db #0x67	; 103	'g'
   5D07 3B                  253 	.db #0x3B	; 59
   5D08 8F                  254 	.db #0x8F	; 143
   5D09 1D                  255 	.db #0x1D	; 29
   5D0A EF                  256 	.db #0xEF	; 239
   5D0B 2F                  257 	.db #0x2F	; 47
   5D0C 0F                  258 	.db #0x0F	; 15
   5D0D 1D                  259 	.db #0x1D	; 29
   5D0E EF                  260 	.db #0xEF	; 239
   5D0F 0F                  261 	.db #0x0F	; 15
   5D10 0F                  262 	.db #0x0F	; 15
   5D11 0F                  263 	.db #0x0F	; 15
   5D12 CF                  264 	.db #0xCF	; 207
   5D13                     265 _dwellings1:
   5D13 0F                  266 	.db #0x0F	; 15
   5D14 0F                  267 	.db #0x0F	; 15
   5D15 0F                  268 	.db #0x0F	; 15
   5D16 0F                  269 	.db #0x0F	; 15
   5D17 08                  270 	.db #0x08	; 8
   5D18 03                  271 	.db #0x03	; 3
   5D19 0C                  272 	.db #0x0C	; 12
   5D1A 07                  273 	.db #0x07	; 7
   5D1B 38                  274 	.db #0x38	; 56	'8'
   5D1C E1                  275 	.db #0xE1	; 225
   5D1D 1C                  276 	.db #0x1C	; 28
   5D1E C3                  277 	.db #0xC3	; 195
   5D1F 3C                  278 	.db #0x3C	; 60
   5D20 E1                  279 	.db #0xE1	; 225
   5D21 1C                  280 	.db #0x1C	; 28
   5D22 C3                  281 	.db #0xC3	; 195
   5D23 0F                  282 	.db #0x0F	; 15
   5D24 0F                  283 	.db #0x0F	; 15
   5D25 1E                  284 	.db #0x1E	; 30
   5D26 C3                  285 	.db #0xC3	; 195
   5D27 0F                  286 	.db #0x0F	; 15
   5D28 0F                  287 	.db #0x0F	; 15
   5D29 0F                  288 	.db #0x0F	; 15
   5D2A 0F                  289 	.db #0x0F	; 15
   5D2B 0F                  290 	.db #0x0F	; 15
   5D2C 0F                  291 	.db #0x0F	; 15
   5D2D 0E                  292 	.db #0x0E	; 14
   5D2E 03                  293 	.db #0x03	; 3
   5D2F 0F                  294 	.db #0x0F	; 15
   5D30 0E                  295 	.db #0x0E	; 14
   5D31 06                  296 	.db #0x06	; 6
   5D32 E1                  297 	.db #0xE1	; 225
   5D33 0F                  298 	.db #0x0F	; 15
   5D34 0E                  299 	.db #0x0E	; 14
   5D35 C2                  300 	.db #0xC2	; 194
   5D36 E1                  301 	.db #0xE1	; 225
   5D37 0F                  302 	.db #0x0F	; 15
   5D38 0E                  303 	.db #0x0E	; 14
   5D39 C2                  304 	.db #0xC2	; 194
   5D3A E1                  305 	.db #0xE1	; 225
   5D3B 0F                  306 	.db #0x0F	; 15
   5D3C 0E                  307 	.db #0x0E	; 14
   5D3D C3                  308 	.db #0xC3	; 195
   5D3E E1                  309 	.db #0xE1	; 225
   5D3F 0F                  310 	.db #0x0F	; 15
   5D40 0E                  311 	.db #0x0E	; 14
   5D41 C3                  312 	.db #0xC3	; 195
   5D42 0F                  313 	.db #0x0F	; 15
   5D43 0F                  314 	.db #0x0F	; 15
   5D44 0F                  315 	.db #0x0F	; 15
   5D45 C3                  316 	.db #0xC3	; 195
   5D46 0F                  317 	.db #0x0F	; 15
   5D47 08                  318 	.db #0x08	; 8
   5D48 07                  319 	.db #0x07	; 7
   5D49 0F                  320 	.db #0x0F	; 15
   5D4A 0F                  321 	.db #0x0F	; 15
   5D4B 38                  322 	.db #0x38	; 56	'8'
   5D4C C3                  323 	.db #0xC3	; 195
   5D4D 0F                  324 	.db #0x0F	; 15
   5D4E 0F                  325 	.db #0x0F	; 15
   5D4F 3C                  326 	.db #0x3C	; 60
   5D50 C3                  327 	.db #0xC3	; 195
   5D51 0F                  328 	.db #0x0F	; 15
   5D52 0F                  329 	.db #0x0F	; 15
   5D53                     330 _dwellings2:
   5D53 0F                  331 	.db #0x0F	; 15
   5D54 0F                  332 	.db #0x0F	; 15
   5D55 0F                  333 	.db #0x0F	; 15
   5D56 0F                  334 	.db #0x0F	; 15
   5D57 0F                  335 	.db #0x0F	; 15
   5D58 01                  336 	.db #0x01	; 1
   5D59 0F                  337 	.db #0x0F	; 15
   5D5A 0F                  338 	.db #0x0F	; 15
   5D5B 0F                  339 	.db #0x0F	; 15
   5D5C 70                  340 	.db #0x70	; 112	'p'
   5D5D 0C                  341 	.db #0x0C	; 12
   5D5E 0F                  342 	.db #0x0F	; 15
   5D5F 09                  343 	.db #0x09	; 9
   5D60 78                  344 	.db #0x78	; 120	'x'
   5D61 1C                  345 	.db #0x1C	; 28
   5D62 87                  346 	.db #0x87	; 135
   5D63 38                  347 	.db #0x38	; 56	'8'
   5D64 0F                  348 	.db #0x0F	; 15
   5D65 1C                  349 	.db #0x1C	; 28
   5D66 87                  350 	.db #0x87	; 135
   5D67 38                  351 	.db #0x38	; 56	'8'
   5D68 0F                  352 	.db #0x0F	; 15
   5D69 1E                  353 	.db #0x1E	; 30
   5D6A 87                  354 	.db #0x87	; 135
   5D6B 3C                  355 	.db #0x3C	; 60
   5D6C 0F                  356 	.db #0x0F	; 15
   5D6D 0F                  357 	.db #0x0F	; 15
   5D6E 0F                  358 	.db #0x0F	; 15
   5D6F 0F                  359 	.db #0x0F	; 15
   5D70 0F                  360 	.db #0x0F	; 15
   5D71 0F                  361 	.db #0x0F	; 15
   5D72 0F                  362 	.db #0x0F	; 15
   5D73 0E                  363 	.db #0x0E	; 14
   5D74 07                  364 	.db #0x07	; 7
   5D75 0F                  365 	.db #0x0F	; 15
   5D76 0F                  366 	.db #0x0F	; 15
   5D77 0E                  367 	.db #0x0E	; 14
   5D78 C3                  368 	.db #0xC3	; 195
   5D79 00                  369 	.db #0x00	; 0
   5D7A 07                  370 	.db #0x07	; 7
   5D7B 0E                  371 	.db #0x0E	; 14
   5D7C C3                  372 	.db #0xC3	; 195
   5D7D 70                  373 	.db #0x70	; 112	'p'
   5D7E C3                  374 	.db #0xC3	; 195
   5D7F 0F                  375 	.db #0x0F	; 15
   5D80 C3                  376 	.db #0xC3	; 195
   5D81 70                  377 	.db #0x70	; 112	'p'
   5D82 C3                  378 	.db #0xC3	; 195
   5D83 03                  379 	.db #0x03	; 3
   5D84 0F                  380 	.db #0x0F	; 15
   5D85 78                  381 	.db #0x78	; 120	'x'
   5D86 C3                  382 	.db #0xC3	; 195
   5D87 61                  383 	.db #0x61	; 97	'a'
   5D88 0F                  384 	.db #0x0F	; 15
   5D89 0F                  385 	.db #0x0F	; 15
   5D8A 0F                  386 	.db #0x0F	; 15
   5D8B 69                  387 	.db #0x69	; 105	'i'
   5D8C 0F                  388 	.db #0x0F	; 15
   5D8D 0F                  389 	.db #0x0F	; 15
   5D8E 0F                  390 	.db #0x0F	; 15
   5D8F 0F                  391 	.db #0x0F	; 15
   5D90 0F                  392 	.db #0x0F	; 15
   5D91 0F                  393 	.db #0x0F	; 15
   5D92 0F                  394 	.db #0x0F	; 15
   5D93                     395 _dwellings3:
   5D93 0F                  396 	.db #0x0F	; 15
   5D94 0F                  397 	.db #0x0F	; 15
   5D95 09                  398 	.db #0x09	; 9
   5D96 09                  399 	.db #0x09	; 9
   5D97 0F                  400 	.db #0x0F	; 15
   5D98 0F                  401 	.db #0x0F	; 15
   5D99 38                  402 	.db #0x38	; 56	'8'
   5D9A 38                  403 	.db #0x38	; 56	'8'
   5D9B 0E                  404 	.db #0x0E	; 14
   5D9C 03                  405 	.db #0x03	; 3
   5D9D 38                  406 	.db #0x38	; 56	'8'
   5D9E 38                  407 	.db #0x38	; 56	'8'
   5D9F 0E                  408 	.db #0x0E	; 14
   5DA0 E1                  409 	.db #0xE1	; 225
   5DA1 3C                  410 	.db #0x3C	; 60
   5DA2 3C                  411 	.db #0x3C	; 60
   5DA3 0E                  412 	.db #0x0E	; 14
   5DA4 E1                  413 	.db #0xE1	; 225
   5DA5 0F                  414 	.db #0x0F	; 15
   5DA6 0F                  415 	.db #0x0F	; 15
   5DA7 0E                  416 	.db #0x0E	; 14
   5DA8 E1                  417 	.db #0xE1	; 225
   5DA9 08                  418 	.db #0x08	; 8
   5DAA 07                  419 	.db #0x07	; 7
   5DAB 0F                  420 	.db #0x0F	; 15
   5DAC E1                  421 	.db #0xE1	; 225
   5DAD 38                  422 	.db #0x38	; 56	'8'
   5DAE C3                  423 	.db #0xC3	; 195
   5DAF 0F                  424 	.db #0x0F	; 15
   5DB0 0F                  425 	.db #0x0F	; 15
   5DB1 3C                  426 	.db #0x3C	; 60
   5DB2 C3                  427 	.db #0xC3	; 195
   5DB3 0C                  428 	.db #0x0C	; 12
   5DB4 0F                  429 	.db #0x0F	; 15
   5DB5 0F                  430 	.db #0x0F	; 15
   5DB6 0F                  431 	.db #0x0F	; 15
   5DB7 1C                  432 	.db #0x1C	; 28
   5DB8 87                  433 	.db #0x87	; 135
   5DB9 0F                  434 	.db #0x0F	; 15
   5DBA 0F                  435 	.db #0x0F	; 15
   5DBB 1E                  436 	.db #0x1E	; 30
   5DBC 87                  437 	.db #0x87	; 135
   5DBD 0C                  438 	.db #0x0C	; 12
   5DBE 07                  439 	.db #0x07	; 7
   5DBF 0F                  440 	.db #0x0F	; 15
   5DC0 0F                  441 	.db #0x0F	; 15
   5DC1 1C                  442 	.db #0x1C	; 28
   5DC2 C3                  443 	.db #0xC3	; 195
   5DC3 0F                  444 	.db #0x0F	; 15
   5DC4 09                  445 	.db #0x09	; 9
   5DC5 1C                  446 	.db #0x1C	; 28
   5DC6 C3                  447 	.db #0xC3	; 195
   5DC7 0F                  448 	.db #0x0F	; 15
   5DC8 38                  449 	.db #0x38	; 56	'8'
   5DC9 1C                  450 	.db #0x1C	; 28
   5DCA C3                  451 	.db #0xC3	; 195
   5DCB 0F                  452 	.db #0x0F	; 15
   5DCC 3C                  453 	.db #0x3C	; 60
   5DCD 1E                  454 	.db #0x1E	; 30
   5DCE C3                  455 	.db #0xC3	; 195
   5DCF 0F                  456 	.db #0x0F	; 15
   5DD0 0F                  457 	.db #0x0F	; 15
   5DD1 0F                  458 	.db #0x0F	; 15
   5DD2 0F                  459 	.db #0x0F	; 15
   5DD3                     460 _water:
   5DD3 5F                  461 	.db #0x5F	; 95
   5DD4 5F                  462 	.db #0x5F	; 95
   5DD5 5F                  463 	.db #0x5F	; 95
   5DD6 5F                  464 	.db #0x5F	; 95
   5DD7 AF                  465 	.db #0xAF	; 175
   5DD8 AF                  466 	.db #0xAF	; 175
   5DD9 AF                  467 	.db #0xAF	; 175
   5DDA AF                  468 	.db #0xAF	; 175
   5DDB 5F                  469 	.db #0x5F	; 95
   5DDC 5F                  470 	.db #0x5F	; 95
   5DDD 5F                  471 	.db #0x5F	; 95
   5DDE 5F                  472 	.db #0x5F	; 95
   5DDF AF                  473 	.db #0xAF	; 175
   5DE0 AF                  474 	.db #0xAF	; 175
   5DE1 AF                  475 	.db #0xAF	; 175
   5DE2 AF                  476 	.db #0xAF	; 175
   5DE3 5F                  477 	.db #0x5F	; 95
   5DE4 5F                  478 	.db #0x5F	; 95
   5DE5 5F                  479 	.db #0x5F	; 95
   5DE6 5F                  480 	.db #0x5F	; 95
   5DE7 AF                  481 	.db #0xAF	; 175
   5DE8 AF                  482 	.db #0xAF	; 175
   5DE9 AF                  483 	.db #0xAF	; 175
   5DEA AF                  484 	.db #0xAF	; 175
   5DEB 5F                  485 	.db #0x5F	; 95
   5DEC 5F                  486 	.db #0x5F	; 95
   5DED 5F                  487 	.db #0x5F	; 95
   5DEE 5F                  488 	.db #0x5F	; 95
   5DEF AF                  489 	.db #0xAF	; 175
   5DF0 AF                  490 	.db #0xAF	; 175
   5DF1 AF                  491 	.db #0xAF	; 175
   5DF2 AF                  492 	.db #0xAF	; 175
   5DF3 5F                  493 	.db #0x5F	; 95
   5DF4 5F                  494 	.db #0x5F	; 95
   5DF5 5F                  495 	.db #0x5F	; 95
   5DF6 5F                  496 	.db #0x5F	; 95
   5DF7 AF                  497 	.db #0xAF	; 175
   5DF8 AF                  498 	.db #0xAF	; 175
   5DF9 AF                  499 	.db #0xAF	; 175
   5DFA AF                  500 	.db #0xAF	; 175
   5DFB 5F                  501 	.db #0x5F	; 95
   5DFC 5F                  502 	.db #0x5F	; 95
   5DFD 5F                  503 	.db #0x5F	; 95
   5DFE 5F                  504 	.db #0x5F	; 95
   5DFF AF                  505 	.db #0xAF	; 175
   5E00 AF                  506 	.db #0xAF	; 175
   5E01 AF                  507 	.db #0xAF	; 175
   5E02 AF                  508 	.db #0xAF	; 175
   5E03 5F                  509 	.db #0x5F	; 95
   5E04 5F                  510 	.db #0x5F	; 95
   5E05 5F                  511 	.db #0x5F	; 95
   5E06 5F                  512 	.db #0x5F	; 95
   5E07 AF                  513 	.db #0xAF	; 175
   5E08 AF                  514 	.db #0xAF	; 175
   5E09 AF                  515 	.db #0xAF	; 175
   5E0A AF                  516 	.db #0xAF	; 175
   5E0B 5F                  517 	.db #0x5F	; 95
   5E0C 5F                  518 	.db #0x5F	; 95
   5E0D 5F                  519 	.db #0x5F	; 95
   5E0E 5F                  520 	.db #0x5F	; 95
   5E0F AF                  521 	.db #0xAF	; 175
   5E10 AF                  522 	.db #0xAF	; 175
   5E11 AF                  523 	.db #0xAF	; 175
   5E12 AF                  524 	.db #0xAF	; 175
   5E13                     525 _farm1:
   5E13 03                  526 	.db #0x03	; 3
   5E14 0F                  527 	.db #0x0F	; 15
   5E15 78                  528 	.db #0x78	; 120	'x'
   5E16 F0                  529 	.db #0xF0	; 240
   5E17 61                  530 	.db #0x61	; 97	'a'
   5E18 01                  531 	.db #0x01	; 1
   5E19 5F                  532 	.db #0x5F	; 95
   5E1A 5F                  533 	.db #0x5F	; 95
   5E1B 61                  534 	.db #0x61	; 97	'a'
   5E1C 70                  535 	.db #0x70	; 112	'p'
   5E1D 78                  536 	.db #0x78	; 120	'x'
   5E1E F0                  537 	.db #0xF0	; 240
   5E1F 69                  538 	.db #0x69	; 105	'i'
   5E20 78                  539 	.db #0x78	; 120	'x'
   5E21 2F                  540 	.db #0x2F	; 47
   5E22 AF                  541 	.db #0xAF	; 175
   5E23 0F                  542 	.db #0x0F	; 15
   5E24 0F                  543 	.db #0x0F	; 15
   5E25 78                  544 	.db #0x78	; 120	'x'
   5E26 F0                  545 	.db #0xF0	; 240
   5E27 7A                  546 	.db #0x7A	; 122	'z'
   5E28 7A                  547 	.db #0x7A	; 122	'z'
   5E29 5F                  548 	.db #0x5F	; 95
   5E2A 5F                  549 	.db #0x5F	; 95
   5E2B 5A                  550 	.db #0x5A	; 90	'Z'
   5E2C DA                  551 	.db #0xDA	; 218
   5E2D 78                  552 	.db #0x78	; 120	'x'
   5E2E F0                  553 	.db #0xF0	; 240
   5E2F 7A                  554 	.db #0x7A	; 122	'z'
   5E30 7A                  555 	.db #0x7A	; 122	'z'
   5E31 0F                  556 	.db #0x0F	; 15
   5E32 0F                  557 	.db #0x0F	; 15
   5E33 5A                  558 	.db #0x5A	; 90	'Z'
   5E34 DA                  559 	.db #0xDA	; 218
   5E35 0F                  560 	.db #0x0F	; 15
   5E36 0F                  561 	.db #0x0F	; 15
   5E37 7A                  562 	.db #0x7A	; 122	'z'
   5E38 7A                  563 	.db #0x7A	; 122	'z'
   5E39 78                  564 	.db #0x78	; 120	'x'
   5E3A F0                  565 	.db #0xF0	; 240
   5E3B 5A                  566 	.db #0x5A	; 90	'Z'
   5E3C DA                  567 	.db #0xDA	; 218
   5E3D 5F                  568 	.db #0x5F	; 95
   5E3E 5F                  569 	.db #0x5F	; 95
   5E3F 7A                  570 	.db #0x7A	; 122	'z'
   5E40 7A                  571 	.db #0x7A	; 122	'z'
   5E41 78                  572 	.db #0x78	; 120	'x'
   5E42 F0                  573 	.db #0xF0	; 240
   5E43 5A                  574 	.db #0x5A	; 90	'Z'
   5E44 DA                  575 	.db #0xDA	; 218
   5E45 2F                  576 	.db #0x2F	; 47
   5E46 AF                  577 	.db #0xAF	; 175
   5E47 7A                  578 	.db #0x7A	; 122	'z'
   5E48 7A                  579 	.db #0x7A	; 122	'z'
   5E49 78                  580 	.db #0x78	; 120	'x'
   5E4A F0                  581 	.db #0xF0	; 240
   5E4B 5A                  582 	.db #0x5A	; 90	'Z'
   5E4C DA                  583 	.db #0xDA	; 218
   5E4D 5F                  584 	.db #0x5F	; 95
   5E4E 5F                  585 	.db #0x5F	; 95
   5E4F 7A                  586 	.db #0x7A	; 122	'z'
   5E50 7A                  587 	.db #0x7A	; 122	'z'
   5E51 78                  588 	.db #0x78	; 120	'x'
   5E52 F0                  589 	.db #0xF0	; 240
   5E53                     590 _farm2:
   5E53 0F                  591 	.db #0x0F	; 15
   5E54 0F                  592 	.db #0x0F	; 15
   5E55 0F                  593 	.db #0x0F	; 15
   5E56 0F                  594 	.db #0x0F	; 15
   5E57 7F                  595 	.db #0x7F	; 127
   5E58 FF                  596 	.db #0xFF	; 255
   5E59 FF                  597 	.db #0xFF	; 255
   5E5A EF                  598 	.db #0xEF	; 239
   5E5B 2D                  599 	.db #0x2D	; 45
   5E5C A5                  600 	.db #0xA5	; 165
   5E5D A5                  601 	.db #0xA5	; 165
   5E5E A5                  602 	.db #0xA5	; 165
   5E5F 7F                  603 	.db #0x7F	; 127
   5E60 FF                  604 	.db #0xFF	; 255
   5E61 FF                  605 	.db #0xFF	; 255
   5E62 EF                  606 	.db #0xEF	; 239
   5E63 5A                  607 	.db #0x5A	; 90	'Z'
   5E64 5A                  608 	.db #0x5A	; 90	'Z'
   5E65 5A                  609 	.db #0x5A	; 90	'Z'
   5E66 4B                  610 	.db #0x4B	; 75	'K'
   5E67 7F                  611 	.db #0x7F	; 127
   5E68 FF                  612 	.db #0xFF	; 255
   5E69 FF                  613 	.db #0xFF	; 255
   5E6A EF                  614 	.db #0xEF	; 239
   5E6B 2D                  615 	.db #0x2D	; 45
   5E6C A5                  616 	.db #0xA5	; 165
   5E6D A5                  617 	.db #0xA5	; 165
   5E6E A5                  618 	.db #0xA5	; 165
   5E6F 7F                  619 	.db #0x7F	; 127
   5E70 FF                  620 	.db #0xFF	; 255
   5E71 FF                  621 	.db #0xFF	; 255
   5E72 EF                  622 	.db #0xEF	; 239
   5E73 5A                  623 	.db #0x5A	; 90	'Z'
   5E74 5A                  624 	.db #0x5A	; 90	'Z'
   5E75 5A                  625 	.db #0x5A	; 90	'Z'
   5E76 4B                  626 	.db #0x4B	; 75	'K'
   5E77 7F                  627 	.db #0x7F	; 127
   5E78 FF                  628 	.db #0xFF	; 255
   5E79 FF                  629 	.db #0xFF	; 255
   5E7A EF                  630 	.db #0xEF	; 239
   5E7B 0F                  631 	.db #0x0F	; 15
   5E7C 0F                  632 	.db #0x0F	; 15
   5E7D 0F                  633 	.db #0x0F	; 15
   5E7E 0F                  634 	.db #0x0F	; 15
   5E7F 0E                  635 	.db #0x0E	; 14
   5E80 07                  636 	.db #0x07	; 7
   5E81 AF                  637 	.db #0xAF	; 175
   5E82 AF                  638 	.db #0xAF	; 175
   5E83 02                  639 	.db #0x02	; 2
   5E84 C3                  640 	.db #0xC3	; 195
   5E85 AF                  641 	.db #0xAF	; 175
   5E86 AF                  642 	.db #0xAF	; 175
   5E87 60                  643 	.db #0x60	; 96
   5E88 C3                  644 	.db #0xC3	; 195
   5E89 AF                  645 	.db #0xAF	; 175
   5E8A AF                  646 	.db #0xAF	; 175
   5E8B 69                  647 	.db #0x69	; 105	'i'
   5E8C C3                  648 	.db #0xC3	; 195
   5E8D AF                  649 	.db #0xAF	; 175
   5E8E AF                  650 	.db #0xAF	; 175
   5E8F 0F                  651 	.db #0x0F	; 15
   5E90 0F                  652 	.db #0x0F	; 15
   5E91 0F                  653 	.db #0x0F	; 15
   5E92 0F                  654 	.db #0x0F	; 15
   5E93                     655 _livestock:
   5E93 03                  656 	.db #0x03	; 3
   5E94 0F                  657 	.db #0x0F	; 15
   5E95 0F                  658 	.db #0x0F	; 15
   5E96 0F                  659 	.db #0x0F	; 15
   5E97 61                  660 	.db #0x61	; 97	'a'
   5E98 F5                  661 	.db #0xF5	; 245
   5E99 F5                  662 	.db #0xF5	; 245
   5E9A E5                  663 	.db #0xE5	; 229
   5E9B 61                  664 	.db #0x61	; 97	'a'
   5E9C 8F                  665 	.db #0x8F	; 143
   5E9D 0F                  666 	.db #0x0F	; 15
   5E9E 2F                  667 	.db #0x2F	; 47
   5E9F 69                  668 	.db #0x69	; 105	'i'
   5EA0 87                  669 	.db #0x87	; 135
   5EA1 0F                  670 	.db #0x0F	; 15
   5EA2 AD                  671 	.db #0xAD	; 173
   5EA3 0F                  672 	.db #0x0F	; 15
   5EA4 9F                  673 	.db #0x9F	; 159
   5EA5 0F                  674 	.db #0x0F	; 15
   5EA6 2F                  675 	.db #0x2F	; 47
   5EA7 7D                  676 	.db #0x7D	; 125
   5EA8 87                  677 	.db #0x87	; 135
   5EA9 0F                  678 	.db #0x0F	; 15
   5EAA 2D                  679 	.db #0x2D	; 45
   5EAB 4B                  680 	.db #0x4B	; 75	'K'
   5EAC 0F                  681 	.db #0x0F	; 15
   5EAD 2F                  682 	.db #0x2F	; 47
   5EAE 2F                  683 	.db #0x2F	; 47
   5EAF 4F                  684 	.db #0x4F	; 79	'O'
   5EB0 0F                  685 	.db #0x0F	; 15
   5EB1 0F                  686 	.db #0x0F	; 15
   5EB2 2D                  687 	.db #0x2D	; 45
   5EB3 5B                  688 	.db #0x5B	; 91
   5EB4 1F                  689 	.db #0x1F	; 31
   5EB5 0F                  690 	.db #0x0F	; 15
   5EB6 2F                  691 	.db #0x2F	; 47
   5EB7 4F                  692 	.db #0x4F	; 79	'O'
   5EB8 0F                  693 	.db #0x0F	; 15
   5EB9 1F                  694 	.db #0x1F	; 31
   5EBA 2D                  695 	.db #0x2D	; 45
   5EBB 4B                  696 	.db #0x4B	; 75	'K'
   5EBC 0F                  697 	.db #0x0F	; 15
   5EBD 0F                  698 	.db #0x0F	; 15
   5EBE 2F                  699 	.db #0x2F	; 47
   5EBF 4F                  700 	.db #0x4F	; 79	'O'
   5EC0 4F                  701 	.db #0x4F	; 79	'O'
   5EC1 0F                  702 	.db #0x0F	; 15
   5EC2 2D                  703 	.db #0x2D	; 45
   5EC3 4B                  704 	.db #0x4B	; 75	'K'
   5EC4 0F                  705 	.db #0x0F	; 15
   5EC5 2F                  706 	.db #0x2F	; 47
   5EC6 2F                  707 	.db #0x2F	; 47
   5EC7 4F                  708 	.db #0x4F	; 79	'O'
   5EC8 0F                  709 	.db #0x0F	; 15
   5EC9 0F                  710 	.db #0x0F	; 15
   5ECA 2D                  711 	.db #0x2D	; 45
   5ECB 7A                  712 	.db #0x7A	; 122	'z'
   5ECC FA                  713 	.db #0xFA	; 250
   5ECD FA                  714 	.db #0xFA	; 250
   5ECE EB                  715 	.db #0xEB	; 235
   5ECF 0F                  716 	.db #0x0F	; 15
   5ED0 0F                  717 	.db #0x0F	; 15
   5ED1 0F                  718 	.db #0x0F	; 15
   5ED2 0F                  719 	.db #0x0F	; 15
   5ED3                     720 _station_small_ns:
   5ED3 0F                  721 	.db #0x0F	; 15
   5ED4 1E                  722 	.db #0x1E	; 30
   5ED5 43                  723 	.db #0x43	; 67	'C'
   5ED6 0F                  724 	.db #0x0F	; 15
   5ED7 0F                  725 	.db #0x0F	; 15
   5ED8 1E                  726 	.db #0x1E	; 30
   5ED9 43                  727 	.db #0x43	; 67	'C'
   5EDA 4F                  728 	.db #0x4F	; 79	'O'
   5EDB 0F                  729 	.db #0x0F	; 15
   5EDC 5E                  730 	.db #0x5E	; 94
   5EDD 43                  731 	.db #0x43	; 67	'C'
   5EDE 0F                  732 	.db #0x0F	; 15
   5EDF 0F                  733 	.db #0x0F	; 15
   5EE0 1E                  734 	.db #0x1E	; 30
   5EE1 43                  735 	.db #0x43	; 67	'C'
   5EE2 0F                  736 	.db #0x0F	; 15
   5EE3 4F                  737 	.db #0x4F	; 79	'O'
   5EE4 1E                  738 	.db #0x1E	; 30
   5EE5 43                  739 	.db #0x43	; 67	'C'
   5EE6 8F                  740 	.db #0x8F	; 143
   5EE7 0F                  741 	.db #0x0F	; 15
   5EE8 1E                  742 	.db #0x1E	; 30
   5EE9 43                  743 	.db #0x43	; 67	'C'
   5EEA 0F                  744 	.db #0x0F	; 15
   5EEB 0F                  745 	.db #0x0F	; 15
   5EEC 1E                  746 	.db #0x1E	; 30
   5EED 43                  747 	.db #0x43	; 67	'C'
   5EEE 0F                  748 	.db #0x0F	; 15
   5EEF 0E                  749 	.db #0x0E	; 14
   5EF0 16                  750 	.db #0x16	; 22
   5EF1 43                  751 	.db #0x43	; 67	'C'
   5EF2 0F                  752 	.db #0x0F	; 15
   5EF3 0E                  753 	.db #0x0E	; 14
   5EF4 D2                  754 	.db #0xD2	; 210
   5EF5 43                  755 	.db #0x43	; 67	'C'
   5EF6 0F                  756 	.db #0x0F	; 15
   5EF7 4F                  757 	.db #0x4F	; 79	'O'
   5EF8 D2                  758 	.db #0xD2	; 210
   5EF9 43                  759 	.db #0x43	; 67	'C'
   5EFA 0F                  760 	.db #0x0F	; 15
   5EFB 0F                  761 	.db #0x0F	; 15
   5EFC 1E                  762 	.db #0x1E	; 30
   5EFD 53                  763 	.db #0x53	; 83	'S'
   5EFE 0F                  764 	.db #0x0F	; 15
   5EFF 0F                  765 	.db #0x0F	; 15
   5F00 1E                  766 	.db #0x1E	; 30
   5F01 43                  767 	.db #0x43	; 67	'C'
   5F02 0F                  768 	.db #0x0F	; 15
   5F03 0F                  769 	.db #0x0F	; 15
   5F04 5E                  770 	.db #0x5E	; 94
   5F05 43                  771 	.db #0x43	; 67	'C'
   5F06 0F                  772 	.db #0x0F	; 15
   5F07 0F                  773 	.db #0x0F	; 15
   5F08 1E                  774 	.db #0x1E	; 30
   5F09 43                  775 	.db #0x43	; 67	'C'
   5F0A 1F                  776 	.db #0x1F	; 31
   5F0B 4F                  777 	.db #0x4F	; 79	'O'
   5F0C 1E                  778 	.db #0x1E	; 30
   5F0D 43                  779 	.db #0x43	; 67	'C'
   5F0E 0F                  780 	.db #0x0F	; 15
   5F0F 0F                  781 	.db #0x0F	; 15
   5F10 1E                  782 	.db #0x1E	; 30
   5F11 43                  783 	.db #0x43	; 67	'C'
   5F12 0F                  784 	.db #0x0F	; 15
   5F13                     785 _station_small_ew:
   5F13 0F                  786 	.db #0x0F	; 15
   5F14 2F                  787 	.db #0x2F	; 47
   5F15 0F                  788 	.db #0x0F	; 15
   5F16 0F                  789 	.db #0x0F	; 15
   5F17 0F                  790 	.db #0x0F	; 15
   5F18 0F                  791 	.db #0x0F	; 15
   5F19 0F                  792 	.db #0x0F	; 15
   5F1A 4F                  793 	.db #0x4F	; 79	'O'
   5F1B 0F                  794 	.db #0x0F	; 15
   5F1C 0F                  795 	.db #0x0F	; 15
   5F1D 0F                  796 	.db #0x0F	; 15
   5F1E 0F                  797 	.db #0x0F	; 15
   5F1F 2F                  798 	.db #0x2F	; 47
   5F20 0C                  799 	.db #0x0C	; 12
   5F21 0F                  800 	.db #0x0F	; 15
   5F22 0F                  801 	.db #0x0F	; 15
   5F23 0F                  802 	.db #0x0F	; 15
   5F24 1C                  803 	.db #0x1C	; 28
   5F25 87                  804 	.db #0x87	; 135
   5F26 8F                  805 	.db #0x8F	; 143
   5F27 0F                  806 	.db #0x0F	; 15
   5F28 1E                  807 	.db #0x1E	; 30
   5F29 87                  808 	.db #0x87	; 135
   5F2A 0F                  809 	.db #0x0F	; 15
   5F2B 0F                  810 	.db #0x0F	; 15
   5F2C 0F                  811 	.db #0x0F	; 15
   5F2D 0F                  812 	.db #0x0F	; 15
   5F2E 0F                  813 	.db #0x0F	; 15
   5F2F F0                  814 	.db #0xF0	; 240
   5F30 F0                  815 	.db #0xF0	; 240
   5F31 F0                  816 	.db #0xF0	; 240
   5F32 F0                  817 	.db #0xF0	; 240
   5F33 00                  818 	.db #0x00	; 0
   5F34 00                  819 	.db #0x00	; 0
   5F35 00                  820 	.db #0x00	; 0
   5F36 00                  821 	.db #0x00	; 0
   5F37 F0                  822 	.db #0xF0	; 240
   5F38 F0                  823 	.db #0xF0	; 240
   5F39 F0                  824 	.db #0xF0	; 240
   5F3A F0                  825 	.db #0xF0	; 240
   5F3B 0F                  826 	.db #0x0F	; 15
   5F3C 0F                  827 	.db #0x0F	; 15
   5F3D 0F                  828 	.db #0x0F	; 15
   5F3E 0F                  829 	.db #0x0F	; 15
   5F3F 0F                  830 	.db #0x0F	; 15
   5F40 8F                  831 	.db #0x8F	; 143
   5F41 0F                  832 	.db #0x0F	; 15
   5F42 8F                  833 	.db #0x8F	; 143
   5F43 0F                  834 	.db #0x0F	; 15
   5F44 0F                  835 	.db #0x0F	; 15
   5F45 0F                  836 	.db #0x0F	; 15
   5F46 0F                  837 	.db #0x0F	; 15
   5F47 0F                  838 	.db #0x0F	; 15
   5F48 0F                  839 	.db #0x0F	; 15
   5F49 8F                  840 	.db #0x8F	; 143
   5F4A 0F                  841 	.db #0x0F	; 15
   5F4B 4F                  842 	.db #0x4F	; 79	'O'
   5F4C 0F                  843 	.db #0x0F	; 15
   5F4D 1F                  844 	.db #0x1F	; 31
   5F4E 0F                  845 	.db #0x0F	; 15
   5F4F 0F                  846 	.db #0x0F	; 15
   5F50 0F                  847 	.db #0x0F	; 15
   5F51 0F                  848 	.db #0x0F	; 15
   5F52 1F                  849 	.db #0x1F	; 31
   5F53                     850 _station_medium_ns:
   5F53 0F                  851 	.db #0x0F	; 15
   5F54 1E                  852 	.db #0x1E	; 30
   5F55 70                  853 	.db #0x70	; 112	'p'
   5F56 0F                  854 	.db #0x0F	; 15
   5F57 2F                  855 	.db #0x2F	; 47
   5F58 1E                  856 	.db #0x1E	; 30
   5F59 50                  857 	.db #0x50	; 80	'P'
   5F5A 0F                  858 	.db #0x0F	; 15
   5F5B 0F                  859 	.db #0x0F	; 15
   5F5C 1E                  860 	.db #0x1E	; 30
   5F5D 50                  861 	.db #0x50	; 80	'P'
   5F5E 2F                  862 	.db #0x2F	; 47
   5F5F 0F                  863 	.db #0x0F	; 15
   5F60 1E                  864 	.db #0x1E	; 30
   5F61 50                  865 	.db #0x50	; 80	'P'
   5F62 0F                  866 	.db #0x0F	; 15
   5F63 0F                  867 	.db #0x0F	; 15
   5F64 1E                  868 	.db #0x1E	; 30
   5F65 50                  869 	.db #0x50	; 80	'P'
   5F66 0F                  870 	.db #0x0F	; 15
   5F67 0E                  871 	.db #0x0E	; 14
   5F68 16                  872 	.db #0x16	; 22
   5F69 50                  873 	.db #0x50	; 80	'P'
   5F6A 0F                  874 	.db #0x0F	; 15
   5F6B 0E                  875 	.db #0x0E	; 14
   5F6C D2                  876 	.db #0xD2	; 210
   5F6D 50                  877 	.db #0x50	; 80	'P'
   5F6E 2F                  878 	.db #0x2F	; 47
   5F6F 0E                  879 	.db #0x0E	; 14
   5F70 D2                  880 	.db #0xD2	; 210
   5F71 50                  881 	.db #0x50	; 80	'P'
   5F72 0F                  882 	.db #0x0F	; 15
   5F73 0E                  883 	.db #0x0E	; 14
   5F74 D2                  884 	.db #0xD2	; 210
   5F75 50                  885 	.db #0x50	; 80	'P'
   5F76 0F                  886 	.db #0x0F	; 15
   5F77 0E                  887 	.db #0x0E	; 14
   5F78 D2                  888 	.db #0xD2	; 210
   5F79 50                  889 	.db #0x50	; 80	'P'
   5F7A 0F                  890 	.db #0x0F	; 15
   5F7B 0F                  891 	.db #0x0F	; 15
   5F7C D2                  892 	.db #0xD2	; 210
   5F7D 50                  893 	.db #0x50	; 80	'P'
   5F7E 1F                  894 	.db #0x1F	; 31
   5F7F 4F                  895 	.db #0x4F	; 79	'O'
   5F80 1E                  896 	.db #0x1E	; 30
   5F81 50                  897 	.db #0x50	; 80	'P'
   5F82 0F                  898 	.db #0x0F	; 15
   5F83 0F                  899 	.db #0x0F	; 15
   5F84 1E                  900 	.db #0x1E	; 30
   5F85 50                  901 	.db #0x50	; 80	'P'
   5F86 0F                  902 	.db #0x0F	; 15
   5F87 0F                  903 	.db #0x0F	; 15
   5F88 1E                  904 	.db #0x1E	; 30
   5F89 50                  905 	.db #0x50	; 80	'P'
   5F8A 0F                  906 	.db #0x0F	; 15
   5F8B 0F                  907 	.db #0x0F	; 15
   5F8C 9E                  908 	.db #0x9E	; 158
   5F8D 21                  909 	.db #0x21	; 33
   5F8E 0F                  910 	.db #0x0F	; 15
   5F8F 0F                  911 	.db #0x0F	; 15
   5F90 1E                  912 	.db #0x1E	; 30
   5F91 43                  913 	.db #0x43	; 67	'C'
   5F92 4F                  914 	.db #0x4F	; 79	'O'
   5F93                     915 _station_medium_ew:
   5F93 0F                  916 	.db #0x0F	; 15
   5F94 0F                  917 	.db #0x0F	; 15
   5F95 0F                  918 	.db #0x0F	; 15
   5F96 0F                  919 	.db #0x0F	; 15
   5F97 0F                  920 	.db #0x0F	; 15
   5F98 2F                  921 	.db #0x2F	; 47
   5F99 0F                  922 	.db #0x0F	; 15
   5F9A 03                  923 	.db #0x03	; 3
   5F9B 0F                  924 	.db #0x0F	; 15
   5F9C 0F                  925 	.db #0x0F	; 15
   5F9D 0E                  926 	.db #0x0E	; 14
   5F9E 67                  927 	.db #0x67	; 103	'g'
   5F9F 4F                  928 	.db #0x4F	; 79	'O'
   5FA0 00                  929 	.db #0x00	; 0
   5FA1 06                  930 	.db #0x06	; 6
   5FA2 EF                  931 	.db #0xEF	; 239
   5FA3 0F                  932 	.db #0x0F	; 15
   5FA4 70                  933 	.db #0x70	; 112	'p'
   5FA5 C3                  934 	.db #0xC3	; 195
   5FA6 CF                  935 	.db #0xCF	; 207
   5FA7 0F                  936 	.db #0x0F	; 15
   5FA8 78                  937 	.db #0x78	; 120	'x'
   5FA9 C3                  938 	.db #0xC3	; 195
   5FAA 0F                  939 	.db #0x0F	; 15
   5FAB 0F                  940 	.db #0x0F	; 15
   5FAC 0F                  941 	.db #0x0F	; 15
   5FAD 0F                  942 	.db #0x0F	; 15
   5FAE 0F                  943 	.db #0x0F	; 15
   5FAF F0                  944 	.db #0xF0	; 240
   5FB0 F0                  945 	.db #0xF0	; 240
   5FB1 F0                  946 	.db #0xF0	; 240
   5FB2 F0                  947 	.db #0xF0	; 240
   5FB3 00                  948 	.db #0x00	; 0
   5FB4 00                  949 	.db #0x00	; 0
   5FB5 00                  950 	.db #0x00	; 0
   5FB6 00                  951 	.db #0x00	; 0
   5FB7 B0                  952 	.db #0xB0	; 176
   5FB8 F0                  953 	.db #0xF0	; 240
   5FB9 F0                  954 	.db #0xF0	; 240
   5FBA F0                  955 	.db #0xF0	; 240
   5FBB 48                  956 	.db #0x48	; 72	'H'
   5FBC 00                  957 	.db #0x00	; 0
   5FBD 00                  958 	.db #0x00	; 0
   5FBE 10                  959 	.db #0x10	; 16
   5FBF 3C                  960 	.db #0x3C	; 60
   5FC0 F0                  961 	.db #0xF0	; 240
   5FC1 F0                  962 	.db #0xF0	; 240
   5FC2 F0                  963 	.db #0xF0	; 240
   5FC3 0F                  964 	.db #0x0F	; 15
   5FC4 4F                  965 	.db #0x4F	; 79	'O'
   5FC5 0F                  966 	.db #0x0F	; 15
   5FC6 0F                  967 	.db #0x0F	; 15
   5FC7 0F                  968 	.db #0x0F	; 15
   5FC8 0F                  969 	.db #0x0F	; 15
   5FC9 0F                  970 	.db #0x0F	; 15
   5FCA 0F                  971 	.db #0x0F	; 15
   5FCB 2F                  972 	.db #0x2F	; 47
   5FCC 0F                  973 	.db #0x0F	; 15
   5FCD 0F                  974 	.db #0x0F	; 15
   5FCE 4F                  975 	.db #0x4F	; 79	'O'
   5FCF 0F                  976 	.db #0x0F	; 15
   5FD0 0F                  977 	.db #0x0F	; 15
   5FD1 0F                  978 	.db #0x0F	; 15
   5FD2 0F                  979 	.db #0x0F	; 15
   5FD3                     980 _station_large_ns:
   5FD3 0F                  981 	.db #0x0F	; 15
   5FD4 1E                  982 	.db #0x1E	; 30
   5FD5 43                  983 	.db #0x43	; 67	'C'
   5FD6 4F                  984 	.db #0x4F	; 79	'O'
   5FD7 0E                  985 	.db #0x0E	; 14
   5FD8 16                  986 	.db #0x16	; 22
   5FD9 21                  987 	.db #0x21	; 33
   5FDA 0F                  988 	.db #0x0F	; 15
   5FDB 0E                  989 	.db #0x0E	; 14
   5FDC D2                  990 	.db #0xD2	; 210
   5FDD 50                  991 	.db #0x50	; 80	'P'
   5FDE 0F                  992 	.db #0x0F	; 15
   5FDF 0E                  993 	.db #0x0E	; 14
   5FE0 D2                  994 	.db #0xD2	; 210
   5FE1 40                  995 	.db #0x40	; 64
   5FE2 87                  996 	.db #0x87	; 135
   5FE3 0E                  997 	.db #0x0E	; 14
   5FE4 D2                  998 	.db #0xD2	; 210
   5FE5 50                  999 	.db #0x50	; 80	'P'
   5FE6 43                 1000 	.db #0x43	; 67	'C'
   5FE7 0C                 1001 	.db #0x0C	; 12
   5FE8 D2                 1002 	.db #0xD2	; 210
   5FE9 50                 1003 	.db #0x50	; 80	'P'
   5FEA 21                 1004 	.db #0x21	; 33
   5FEB 1C                 1005 	.db #0x1C	; 28
   5FEC D2                 1006 	.db #0xD2	; 210
   5FED 50                 1007 	.db #0x50	; 80	'P'
   5FEE 50                 1008 	.db #0x50	; 80	'P'
   5FEF 1C                 1009 	.db #0x1C	; 28
   5FF0 D2                 1010 	.db #0xD2	; 210
   5FF1 50                 1011 	.db #0x50	; 80	'P'
   5FF2 50                 1012 	.db #0x50	; 80	'P'
   5FF3 1C                 1013 	.db #0x1C	; 28
   5FF4 D2                 1014 	.db #0xD2	; 210
   5FF5 50                 1015 	.db #0x50	; 80	'P'
   5FF6 50                 1016 	.db #0x50	; 80	'P'
   5FF7 1C                 1017 	.db #0x1C	; 28
   5FF8 D2                 1018 	.db #0xD2	; 210
   5FF9 50                 1019 	.db #0x50	; 80	'P'
   5FFA 50                 1020 	.db #0x50	; 80	'P'
   5FFB 1C                 1021 	.db #0x1C	; 28
   5FFC D2                 1022 	.db #0xD2	; 210
   5FFD 50                 1023 	.db #0x50	; 80	'P'
   5FFE 50                 1024 	.db #0x50	; 80	'P'
   5FFF 0E                 1025 	.db #0x0E	; 14
   6000 D2                 1026 	.db #0xD2	; 210
   6001 50                 1027 	.db #0x50	; 80	'P'
   6002 50                 1028 	.db #0x50	; 80	'P'
   6003 0E                 1029 	.db #0x0E	; 14
   6004 D2                 1030 	.db #0xD2	; 210
   6005 50                 1031 	.db #0x50	; 80	'P'
   6006 50                 1032 	.db #0x50	; 80	'P'
   6007 4E                 1033 	.db #0x4E	; 78	'N'
   6008 D2                 1034 	.db #0xD2	; 210
   6009 50                 1035 	.db #0x50	; 80	'P'
   600A 50                 1036 	.db #0x50	; 80	'P'
   600B 0F                 1037 	.db #0x0F	; 15
   600C D2                 1038 	.db #0xD2	; 210
   600D 50                 1039 	.db #0x50	; 80	'P'
   600E 50                 1040 	.db #0x50	; 80	'P'
   600F 0F                 1041 	.db #0x0F	; 15
   6010 1E                 1042 	.db #0x1E	; 30
   6011 70                 1043 	.db #0x70	; 112	'p'
   6012 F0                 1044 	.db #0xF0	; 240
   6013                    1045 _station_large_ew:
   6013 0F                 1046 	.db #0x0F	; 15
   6014 0F                 1047 	.db #0x0F	; 15
   6015 0F                 1048 	.db #0x0F	; 15
   6016 0F                 1049 	.db #0x0F	; 15
   6017 0F                 1050 	.db #0x0F	; 15
   6018 0F                 1051 	.db #0x0F	; 15
   6019 0F                 1052 	.db #0x0F	; 15
   601A 0F                 1053 	.db #0x0F	; 15
   601B 0F                 1054 	.db #0x0F	; 15
   601C 08                 1055 	.db #0x08	; 8
   601D 01                 1056 	.db #0x01	; 1
   601E 0F                 1057 	.db #0x0F	; 15
   601F 08                 1058 	.db #0x08	; 8
   6020 30                 1059 	.db #0x30	; 48	'0'
   6021 E0                 1060 	.db #0xE0	; 224
   6022 01                 1061 	.db #0x01	; 1
   6023 38                 1062 	.db #0x38	; 56	'8'
   6024 F0                 1063 	.db #0xF0	; 240
   6025 F0                 1064 	.db #0xF0	; 240
   6026 E1                 1065 	.db #0xE1	; 225
   6027 3C                 1066 	.db #0x3C	; 60
   6028 F0                 1067 	.db #0xF0	; 240
   6029 F0                 1068 	.db #0xF0	; 240
   602A E1                 1069 	.db #0xE1	; 225
   602B 0F                 1070 	.db #0x0F	; 15
   602C 0F                 1071 	.db #0x0F	; 15
   602D 0F                 1072 	.db #0x0F	; 15
   602E 0F                 1073 	.db #0x0F	; 15
   602F F0                 1074 	.db #0xF0	; 240
   6030 F0                 1075 	.db #0xF0	; 240
   6031 F0                 1076 	.db #0xF0	; 240
   6032 F0                 1077 	.db #0xF0	; 240
   6033 00                 1078 	.db #0x00	; 0
   6034 00                 1079 	.db #0x00	; 0
   6035 00                 1080 	.db #0x00	; 0
   6036 00                 1081 	.db #0x00	; 0
   6037 F0                 1082 	.db #0xF0	; 240
   6038 F0                 1083 	.db #0xF0	; 240
   6039 F0                 1084 	.db #0xF0	; 240
   603A D0                 1085 	.db #0xD0	; 208
   603B 80                 1086 	.db #0x80	; 128
   603C 00                 1087 	.db #0x00	; 0
   603D 00                 1088 	.db #0x00	; 0
   603E 21                 1089 	.db #0x21	; 33
   603F F0                 1090 	.db #0xF0	; 240
   6040 F0                 1091 	.db #0xF0	; 240
   6041 F0                 1092 	.db #0xF0	; 240
   6042 43                 1093 	.db #0x43	; 67	'C'
   6043 80                 1094 	.db #0x80	; 128
   6044 00                 1095 	.db #0x00	; 0
   6045 00                 1096 	.db #0x00	; 0
   6046 87                 1097 	.db #0x87	; 135
   6047 F0                 1098 	.db #0xF0	; 240
   6048 F0                 1099 	.db #0xF0	; 240
   6049 D0                 1100 	.db #0xD0	; 208
   604A 0F                 1101 	.db #0x0F	; 15
   604B 80                 1102 	.db #0x80	; 128
   604C 00                 1103 	.db #0x00	; 0
   604D 21                 1104 	.db #0x21	; 33
   604E 0F                 1105 	.db #0x0F	; 15
   604F F0                 1106 	.db #0xF0	; 240
   6050 F0                 1107 	.db #0xF0	; 240
   6051 C3                 1108 	.db #0xC3	; 195
   6052 0F                 1109 	.db #0x0F	; 15
   6053                    1110 _rail_ew:
   6053 0F                 1111 	.db #0x0F	; 15
   6054 0F                 1112 	.db #0x0F	; 15
   6055 0F                 1113 	.db #0x0F	; 15
   6056 0F                 1114 	.db #0x0F	; 15
   6057 2F                 1115 	.db #0x2F	; 47
   6058 0F                 1116 	.db #0x0F	; 15
   6059 2F                 1117 	.db #0x2F	; 47
   605A 2F                 1118 	.db #0x2F	; 47
   605B 0F                 1119 	.db #0x0F	; 15
   605C 0F                 1120 	.db #0x0F	; 15
   605D 0F                 1121 	.db #0x0F	; 15
   605E 0F                 1122 	.db #0x0F	; 15
   605F 0F                 1123 	.db #0x0F	; 15
   6060 0F                 1124 	.db #0x0F	; 15
   6061 0F                 1125 	.db #0x0F	; 15
   6062 0F                 1126 	.db #0x0F	; 15
   6063 0F                 1127 	.db #0x0F	; 15
   6064 2F                 1128 	.db #0x2F	; 47
   6065 0F                 1129 	.db #0x0F	; 15
   6066 0F                 1130 	.db #0x0F	; 15
   6067 4F                 1131 	.db #0x4F	; 79	'O'
   6068 0F                 1132 	.db #0x0F	; 15
   6069 0F                 1133 	.db #0x0F	; 15
   606A 4F                 1134 	.db #0x4F	; 79	'O'
   606B 0F                 1135 	.db #0x0F	; 15
   606C 0F                 1136 	.db #0x0F	; 15
   606D 0F                 1137 	.db #0x0F	; 15
   606E 0F                 1138 	.db #0x0F	; 15
   606F F0                 1139 	.db #0xF0	; 240
   6070 F0                 1140 	.db #0xF0	; 240
   6071 F0                 1141 	.db #0xF0	; 240
   6072 F0                 1142 	.db #0xF0	; 240
   6073 00                 1143 	.db #0x00	; 0
   6074 00                 1144 	.db #0x00	; 0
   6075 00                 1145 	.db #0x00	; 0
   6076 00                 1146 	.db #0x00	; 0
   6077 F0                 1147 	.db #0xF0	; 240
   6078 F0                 1148 	.db #0xF0	; 240
   6079 F0                 1149 	.db #0xF0	; 240
   607A F0                 1150 	.db #0xF0	; 240
   607B 0F                 1151 	.db #0x0F	; 15
   607C 0F                 1152 	.db #0x0F	; 15
   607D 0F                 1153 	.db #0x0F	; 15
   607E 0F                 1154 	.db #0x0F	; 15
   607F 0F                 1155 	.db #0x0F	; 15
   6080 0F                 1156 	.db #0x0F	; 15
   6081 8F                 1157 	.db #0x8F	; 143
   6082 0F                 1158 	.db #0x0F	; 15
   6083 0F                 1159 	.db #0x0F	; 15
   6084 8F                 1160 	.db #0x8F	; 143
   6085 0F                 1161 	.db #0x0F	; 15
   6086 4F                 1162 	.db #0x4F	; 79	'O'
   6087 0F                 1163 	.db #0x0F	; 15
   6088 0F                 1164 	.db #0x0F	; 15
   6089 0F                 1165 	.db #0x0F	; 15
   608A 0F                 1166 	.db #0x0F	; 15
   608B 0F                 1167 	.db #0x0F	; 15
   608C 0F                 1168 	.db #0x0F	; 15
   608D 0F                 1169 	.db #0x0F	; 15
   608E 0F                 1170 	.db #0x0F	; 15
   608F 2F                 1171 	.db #0x2F	; 47
   6090 0F                 1172 	.db #0x0F	; 15
   6091 2F                 1173 	.db #0x2F	; 47
   6092 0F                 1174 	.db #0x0F	; 15
   6093                    1175 _rail_ns:
   6093 0F                 1176 	.db #0x0F	; 15
   6094 1E                 1177 	.db #0x1E	; 30
   6095 43                 1178 	.db #0x43	; 67	'C'
   6096 0F                 1179 	.db #0x0F	; 15
   6097 0F                 1180 	.db #0x0F	; 15
   6098 9E                 1181 	.db #0x9E	; 158
   6099 43                 1182 	.db #0x43	; 67	'C'
   609A 8F                 1183 	.db #0x8F	; 143
   609B 0F                 1184 	.db #0x0F	; 15
   609C 1E                 1185 	.db #0x1E	; 30
   609D 43                 1186 	.db #0x43	; 67	'C'
   609E 0F                 1187 	.db #0x0F	; 15
   609F 0F                 1188 	.db #0x0F	; 15
   60A0 1E                 1189 	.db #0x1E	; 30
   60A1 43                 1190 	.db #0x43	; 67	'C'
   60A2 0F                 1191 	.db #0x0F	; 15
   60A3 0F                 1192 	.db #0x0F	; 15
   60A4 1E                 1193 	.db #0x1E	; 30
   60A5 43                 1194 	.db #0x43	; 67	'C'
   60A6 0F                 1195 	.db #0x0F	; 15
   60A7 0F                 1196 	.db #0x0F	; 15
   60A8 1E                 1197 	.db #0x1E	; 30
   60A9 43                 1198 	.db #0x43	; 67	'C'
   60AA 2F                 1199 	.db #0x2F	; 47
   60AB 0F                 1200 	.db #0x0F	; 15
   60AC 1E                 1201 	.db #0x1E	; 30
   60AD 43                 1202 	.db #0x43	; 67	'C'
   60AE 0F                 1203 	.db #0x0F	; 15
   60AF 2F                 1204 	.db #0x2F	; 47
   60B0 1E                 1205 	.db #0x1E	; 30
   60B1 43                 1206 	.db #0x43	; 67	'C'
   60B2 0F                 1207 	.db #0x0F	; 15
   60B3 0F                 1208 	.db #0x0F	; 15
   60B4 1E                 1209 	.db #0x1E	; 30
   60B5 43                 1210 	.db #0x43	; 67	'C'
   60B6 0F                 1211 	.db #0x0F	; 15
   60B7 0F                 1212 	.db #0x0F	; 15
   60B8 1E                 1213 	.db #0x1E	; 30
   60B9 43                 1214 	.db #0x43	; 67	'C'
   60BA 0F                 1215 	.db #0x0F	; 15
   60BB 0F                 1216 	.db #0x0F	; 15
   60BC 1E                 1217 	.db #0x1E	; 30
   60BD 43                 1218 	.db #0x43	; 67	'C'
   60BE 0F                 1219 	.db #0x0F	; 15
   60BF 0F                 1220 	.db #0x0F	; 15
   60C0 1E                 1221 	.db #0x1E	; 30
   60C1 53                 1222 	.db #0x53	; 83	'S'
   60C2 0F                 1223 	.db #0x0F	; 15
   60C3 0F                 1224 	.db #0x0F	; 15
   60C4 9E                 1225 	.db #0x9E	; 158
   60C5 43                 1226 	.db #0x43	; 67	'C'
   60C6 0F                 1227 	.db #0x0F	; 15
   60C7 4F                 1228 	.db #0x4F	; 79	'O'
   60C8 1E                 1229 	.db #0x1E	; 30
   60C9 43                 1230 	.db #0x43	; 67	'C'
   60CA 0F                 1231 	.db #0x0F	; 15
   60CB 0F                 1232 	.db #0x0F	; 15
   60CC 1E                 1233 	.db #0x1E	; 30
   60CD 43                 1234 	.db #0x43	; 67	'C'
   60CE 4F                 1235 	.db #0x4F	; 79	'O'
   60CF 0F                 1236 	.db #0x0F	; 15
   60D0 1E                 1237 	.db #0x1E	; 30
   60D1 43                 1238 	.db #0x43	; 67	'C'
   60D2 0F                 1239 	.db #0x0F	; 15
   60D3                    1240 _rail_en:
   60D3 0F                 1241 	.db #0x0F	; 15
   60D4 1E                 1242 	.db #0x1E	; 30
   60D5 43                 1243 	.db #0x43	; 67	'C'
   60D6 0F                 1244 	.db #0x0F	; 15
   60D7 2F                 1245 	.db #0x2F	; 47
   60D8 1E                 1246 	.db #0x1E	; 30
   60D9 43                 1247 	.db #0x43	; 67	'C'
   60DA 8F                 1248 	.db #0x8F	; 143
   60DB 0F                 1249 	.db #0x0F	; 15
   60DC 0F                 1250 	.db #0x0F	; 15
   60DD A1                 1251 	.db #0xA1	; 161
   60DE 0F                 1252 	.db #0x0F	; 15
   60DF 0F                 1253 	.db #0x0F	; 15
   60E0 0F                 1254 	.db #0x0F	; 15
   60E1 58                 1255 	.db #0x58	; 88	'X'
   60E2 0F                 1256 	.db #0x0F	; 15
   60E3 0F                 1257 	.db #0x0F	; 15
   60E4 4F                 1258 	.db #0x4F	; 79	'O'
   60E5 2C                 1259 	.db #0x2C	; 44
   60E6 87                 1260 	.db #0x87	; 135
   60E7 0F                 1261 	.db #0x0F	; 15
   60E8 0F                 1262 	.db #0x0F	; 15
   60E9 1E                 1263 	.db #0x1E	; 30
   60EA 43                 1264 	.db #0x43	; 67	'C'
   60EB 0F                 1265 	.db #0x0F	; 15
   60EC 0F                 1266 	.db #0x0F	; 15
   60ED 8F                 1267 	.db #0x8F	; 143
   60EE A1                 1268 	.db #0xA1	; 161
   60EF 0F                 1269 	.db #0x0F	; 15
   60F0 0F                 1270 	.db #0x0F	; 15
   60F1 0F                 1271 	.db #0x0F	; 15
   60F2 58                 1272 	.db #0x58	; 88	'X'
   60F3 2F                 1273 	.db #0x2F	; 47
   60F4 0F                 1274 	.db #0x0F	; 15
   60F5 0F                 1275 	.db #0x0F	; 15
   60F6 2C                 1276 	.db #0x2C	; 44
   60F7 0F                 1277 	.db #0x0F	; 15
   60F8 0F                 1278 	.db #0x0F	; 15
   60F9 0F                 1279 	.db #0x0F	; 15
   60FA 1E                 1280 	.db #0x1E	; 30
   60FB 0F                 1281 	.db #0x0F	; 15
   60FC 0F                 1282 	.db #0x0F	; 15
   60FD 0F                 1283 	.db #0x0F	; 15
   60FE 4F                 1284 	.db #0x4F	; 79	'O'
   60FF 0F                 1285 	.db #0x0F	; 15
   6100 0F                 1286 	.db #0x0F	; 15
   6101 0F                 1287 	.db #0x0F	; 15
   6102 0F                 1288 	.db #0x0F	; 15
   6103 2F                 1289 	.db #0x2F	; 47
   6104 4F                 1290 	.db #0x4F	; 79	'O'
   6105 2F                 1291 	.db #0x2F	; 47
   6106 0F                 1292 	.db #0x0F	; 15
   6107 0F                 1293 	.db #0x0F	; 15
   6108 0F                 1294 	.db #0x0F	; 15
   6109 0F                 1295 	.db #0x0F	; 15
   610A 0F                 1296 	.db #0x0F	; 15
   610B 0F                 1297 	.db #0x0F	; 15
   610C 0F                 1298 	.db #0x0F	; 15
   610D 0F                 1299 	.db #0x0F	; 15
   610E 2F                 1300 	.db #0x2F	; 47
   610F 0F                 1301 	.db #0x0F	; 15
   6110 0F                 1302 	.db #0x0F	; 15
   6111 0F                 1303 	.db #0x0F	; 15
   6112 0F                 1304 	.db #0x0F	; 15
   6113                    1305 _rail_es:
   6113 0F                 1306 	.db #0x0F	; 15
   6114 0F                 1307 	.db #0x0F	; 15
   6115 0F                 1308 	.db #0x0F	; 15
   6116 0F                 1309 	.db #0x0F	; 15
   6117 0F                 1310 	.db #0x0F	; 15
   6118 0F                 1311 	.db #0x0F	; 15
   6119 0F                 1312 	.db #0x0F	; 15
   611A 2F                 1313 	.db #0x2F	; 47
   611B 0F                 1314 	.db #0x0F	; 15
   611C 2F                 1315 	.db #0x2F	; 47
   611D 0F                 1316 	.db #0x0F	; 15
   611E 0F                 1317 	.db #0x0F	; 15
   611F 1F                 1318 	.db #0x1F	; 31
   6120 0F                 1319 	.db #0x0F	; 15
   6121 0F                 1320 	.db #0x0F	; 15
   6122 0F                 1321 	.db #0x0F	; 15
   6123 0F                 1322 	.db #0x0F	; 15
   6124 0F                 1323 	.db #0x0F	; 15
   6125 0F                 1324 	.db #0x0F	; 15
   6126 0F                 1325 	.db #0x0F	; 15
   6127 0F                 1326 	.db #0x0F	; 15
   6128 0F                 1327 	.db #0x0F	; 15
   6129 1F                 1328 	.db #0x1F	; 31
   612A 0F                 1329 	.db #0x0F	; 15
   612B 0F                 1330 	.db #0x0F	; 15
   612C 0F                 1331 	.db #0x0F	; 15
   612D 0F                 1332 	.db #0x0F	; 15
   612E 0F                 1333 	.db #0x0F	; 15
   612F 4F                 1334 	.db #0x4F	; 79	'O'
   6130 0F                 1335 	.db #0x0F	; 15
   6131 0F                 1336 	.db #0x0F	; 15
   6132 3C                 1337 	.db #0x3C	; 60
   6133 0F                 1338 	.db #0x0F	; 15
   6134 4F                 1339 	.db #0x4F	; 79	'O'
   6135 0F                 1340 	.db #0x0F	; 15
   6136 48                 1341 	.db #0x48	; 72	'H'
   6137 0F                 1342 	.db #0x0F	; 15
   6138 0F                 1343 	.db #0x0F	; 15
   6139 4F                 1344 	.db #0x4F	; 79	'O'
   613A B0                 1345 	.db #0xB0	; 176
   613B 0F                 1346 	.db #0x0F	; 15
   613C 0F                 1347 	.db #0x0F	; 15
   613D 1E                 1348 	.db #0x1E	; 30
   613E 43                 1349 	.db #0x43	; 67	'C'
   613F 0F                 1350 	.db #0x0F	; 15
   6140 0F                 1351 	.db #0x0F	; 15
   6141 2C                 1352 	.db #0x2C	; 44
   6142 87                 1353 	.db #0x87	; 135
   6143 0F                 1354 	.db #0x0F	; 15
   6144 0F                 1355 	.db #0x0F	; 15
   6145 58                 1356 	.db #0x58	; 88	'X'
   6146 0F                 1357 	.db #0x0F	; 15
   6147 0F                 1358 	.db #0x0F	; 15
   6148 8F                 1359 	.db #0x8F	; 143
   6149 A1                 1360 	.db #0xA1	; 161
   614A 0F                 1361 	.db #0x0F	; 15
   614B 0F                 1362 	.db #0x0F	; 15
   614C 1E                 1363 	.db #0x1E	; 30
   614D 43                 1364 	.db #0x43	; 67	'C'
   614E 8F                 1365 	.db #0x8F	; 143
   614F 0F                 1366 	.db #0x0F	; 15
   6150 1E                 1367 	.db #0x1E	; 30
   6151 43                 1368 	.db #0x43	; 67	'C'
   6152 0F                 1369 	.db #0x0F	; 15
   6153                    1370 _rail_wn:
   6153 0F                 1371 	.db #0x0F	; 15
   6154 1E                 1372 	.db #0x1E	; 30
   6155 43                 1373 	.db #0x43	; 67	'C'
   6156 0F                 1374 	.db #0x0F	; 15
   6157 0F                 1375 	.db #0x0F	; 15
   6158 1E                 1376 	.db #0x1E	; 30
   6159 53                 1377 	.db #0x53	; 83	'S'
   615A 0F                 1378 	.db #0x0F	; 15
   615B 0F                 1379 	.db #0x0F	; 15
   615C 2C                 1380 	.db #0x2C	; 44
   615D 87                 1381 	.db #0x87	; 135
   615E 0F                 1382 	.db #0x0F	; 15
   615F 2F                 1383 	.db #0x2F	; 47
   6160 58                 1384 	.db #0x58	; 88	'X'
   6161 0F                 1385 	.db #0x0F	; 15
   6162 0F                 1386 	.db #0x0F	; 15
   6163 0F                 1387 	.db #0x0F	; 15
   6164 A1                 1388 	.db #0xA1	; 161
   6165 0F                 1389 	.db #0x0F	; 15
   6166 0F                 1390 	.db #0x0F	; 15
   6167 1E                 1391 	.db #0x1E	; 30
   6168 43                 1392 	.db #0x43	; 67	'C'
   6169 0F                 1393 	.db #0x0F	; 15
   616A 8F                 1394 	.db #0x8F	; 143
   616B 2C                 1395 	.db #0x2C	; 44
   616C 87                 1396 	.db #0x87	; 135
   616D 0F                 1397 	.db #0x0F	; 15
   616E 0F                 1398 	.db #0x0F	; 15
   616F D0                 1399 	.db #0xD0	; 208
   6170 1F                 1400 	.db #0x1F	; 31
   6171 0F                 1401 	.db #0x0F	; 15
   6172 0F                 1402 	.db #0x0F	; 15
   6173 21                 1403 	.db #0x21	; 33
   6174 0F                 1404 	.db #0x0F	; 15
   6175 0F                 1405 	.db #0x0F	; 15
   6176 0F                 1406 	.db #0x0F	; 15
   6177 C3                 1407 	.db #0xC3	; 195
   6178 0F                 1408 	.db #0x0F	; 15
   6179 0F                 1409 	.db #0x0F	; 15
   617A 0F                 1410 	.db #0x0F	; 15
   617B 0F                 1411 	.db #0x0F	; 15
   617C 0F                 1412 	.db #0x0F	; 15
   617D 0F                 1413 	.db #0x0F	; 15
   617E 0F                 1414 	.db #0x0F	; 15
   617F 1F                 1415 	.db #0x1F	; 31
   6180 0F                 1416 	.db #0x0F	; 15
   6181 4F                 1417 	.db #0x4F	; 79	'O'
   6182 4F                 1418 	.db #0x4F	; 79	'O'
   6183 0F                 1419 	.db #0x0F	; 15
   6184 0F                 1420 	.db #0x0F	; 15
   6185 0F                 1421 	.db #0x0F	; 15
   6186 0F                 1422 	.db #0x0F	; 15
   6187 0F                 1423 	.db #0x0F	; 15
   6188 1F                 1424 	.db #0x1F	; 31
   6189 0F                 1425 	.db #0x0F	; 15
   618A 0F                 1426 	.db #0x0F	; 15
   618B 2F                 1427 	.db #0x2F	; 47
   618C 0F                 1428 	.db #0x0F	; 15
   618D 0F                 1429 	.db #0x0F	; 15
   618E 0F                 1430 	.db #0x0F	; 15
   618F 0F                 1431 	.db #0x0F	; 15
   6190 0F                 1432 	.db #0x0F	; 15
   6191 0F                 1433 	.db #0x0F	; 15
   6192 0F                 1434 	.db #0x0F	; 15
   6193                    1435 _rail_ws:
   6193 0F                 1436 	.db #0x0F	; 15
   6194 0F                 1437 	.db #0x0F	; 15
   6195 0F                 1438 	.db #0x0F	; 15
   6196 0F                 1439 	.db #0x0F	; 15
   6197 0F                 1440 	.db #0x0F	; 15
   6198 0F                 1441 	.db #0x0F	; 15
   6199 0F                 1442 	.db #0x0F	; 15
   619A 0F                 1443 	.db #0x0F	; 15
   619B 2F                 1444 	.db #0x2F	; 47
   619C 0F                 1445 	.db #0x0F	; 15
   619D 4F                 1446 	.db #0x4F	; 79	'O'
   619E 2F                 1447 	.db #0x2F	; 47
   619F 0F                 1448 	.db #0x0F	; 15
   61A0 0F                 1449 	.db #0x0F	; 15
   61A1 0F                 1450 	.db #0x0F	; 15
   61A2 0F                 1451 	.db #0x0F	; 15
   61A3 0F                 1452 	.db #0x0F	; 15
   61A4 0F                 1453 	.db #0x0F	; 15
   61A5 0F                 1454 	.db #0x0F	; 15
   61A6 0F                 1455 	.db #0x0F	; 15
   61A7 0F                 1456 	.db #0x0F	; 15
   61A8 0F                 1457 	.db #0x0F	; 15
   61A9 0F                 1458 	.db #0x0F	; 15
   61AA 0F                 1459 	.db #0x0F	; 15
   61AB 0F                 1460 	.db #0x0F	; 15
   61AC 2F                 1461 	.db #0x2F	; 47
   61AD 0F                 1462 	.db #0x0F	; 15
   61AE 0F                 1463 	.db #0x0F	; 15
   61AF C3                 1464 	.db #0xC3	; 195
   61B0 0F                 1465 	.db #0x0F	; 15
   61B1 0F                 1466 	.db #0x0F	; 15
   61B2 0F                 1467 	.db #0x0F	; 15
   61B3 21                 1468 	.db #0x21	; 33
   61B4 0F                 1469 	.db #0x0F	; 15
   61B5 2F                 1470 	.db #0x2F	; 47
   61B6 0F                 1471 	.db #0x0F	; 15
   61B7 D0                 1472 	.db #0xD0	; 208
   61B8 0F                 1473 	.db #0x0F	; 15
   61B9 0F                 1474 	.db #0x0F	; 15
   61BA 0F                 1475 	.db #0x0F	; 15
   61BB 2C                 1476 	.db #0x2C	; 44
   61BC 87                 1477 	.db #0x87	; 135
   61BD 0F                 1478 	.db #0x0F	; 15
   61BE 0F                 1479 	.db #0x0F	; 15
   61BF 1E                 1480 	.db #0x1E	; 30
   61C0 43                 1481 	.db #0x43	; 67	'C'
   61C1 0F                 1482 	.db #0x0F	; 15
   61C2 2F                 1483 	.db #0x2F	; 47
   61C3 4F                 1484 	.db #0x4F	; 79	'O'
   61C4 A1                 1485 	.db #0xA1	; 161
   61C5 0F                 1486 	.db #0x0F	; 15
   61C6 0F                 1487 	.db #0x0F	; 15
   61C7 0F                 1488 	.db #0x0F	; 15
   61C8 58                 1489 	.db #0x58	; 88	'X'
   61C9 4F                 1490 	.db #0x4F	; 79	'O'
   61CA 0F                 1491 	.db #0x0F	; 15
   61CB 0F                 1492 	.db #0x0F	; 15
   61CC 2C                 1493 	.db #0x2C	; 44
   61CD 87                 1494 	.db #0x87	; 135
   61CE 4F                 1495 	.db #0x4F	; 79	'O'
   61CF 0F                 1496 	.db #0x0F	; 15
   61D0 1E                 1497 	.db #0x1E	; 30
   61D1 43                 1498 	.db #0x43	; 67	'C'
   61D2 0F                 1499 	.db #0x0F	; 15
   61D3                    1500 _rail_ew_n:
   61D3 0F                 1501 	.db #0x0F	; 15
   61D4 1E                 1502 	.db #0x1E	; 30
   61D5 43                 1503 	.db #0x43	; 67	'C'
   61D6 0F                 1504 	.db #0x0F	; 15
   61D7 0F                 1505 	.db #0x0F	; 15
   61D8 9E                 1506 	.db #0x9E	; 158
   61D9 43                 1507 	.db #0x43	; 67	'C'
   61DA 0F                 1508 	.db #0x0F	; 15
   61DB 0F                 1509 	.db #0x0F	; 15
   61DC 1E                 1510 	.db #0x1E	; 30
   61DD 53                 1511 	.db #0x53	; 83	'S'
   61DE 0F                 1512 	.db #0x0F	; 15
   61DF 0F                 1513 	.db #0x0F	; 15
   61E0 2C                 1514 	.db #0x2C	; 44
   61E1 87                 1515 	.db #0x87	; 135
   61E2 0F                 1516 	.db #0x0F	; 15
   61E3 4F                 1517 	.db #0x4F	; 79	'O'
   61E4 58                 1518 	.db #0x58	; 88	'X'
   61E5 0F                 1519 	.db #0x0F	; 15
   61E6 0F                 1520 	.db #0x0F	; 15
   61E7 0F                 1521 	.db #0x0F	; 15
   61E8 A1                 1522 	.db #0xA1	; 161
   61E9 0F                 1523 	.db #0x0F	; 15
   61EA 8F                 1524 	.db #0x8F	; 143
   61EB 1E                 1525 	.db #0x1E	; 30
   61EC 43                 1526 	.db #0x43	; 67	'C'
   61ED 0F                 1527 	.db #0x0F	; 15
   61EE 0F                 1528 	.db #0x0F	; 15
   61EF E0                 1529 	.db #0xE0	; 224
   61F0 F0                 1530 	.db #0xF0	; 240
   61F1 F0                 1531 	.db #0xF0	; 240
   61F2 F0                 1532 	.db #0xF0	; 240
   61F3 00                 1533 	.db #0x00	; 0
   61F4 00                 1534 	.db #0x00	; 0
   61F5 00                 1535 	.db #0x00	; 0
   61F6 00                 1536 	.db #0x00	; 0
   61F7 F0                 1537 	.db #0xF0	; 240
   61F8 F0                 1538 	.db #0xF0	; 240
   61F9 F0                 1539 	.db #0xF0	; 240
   61FA F0                 1540 	.db #0xF0	; 240
   61FB 0F                 1541 	.db #0x0F	; 15
   61FC 0F                 1542 	.db #0x0F	; 15
   61FD 0F                 1543 	.db #0x0F	; 15
   61FE 0F                 1544 	.db #0x0F	; 15
   61FF 2F                 1545 	.db #0x2F	; 47
   6200 1F                 1546 	.db #0x1F	; 31
   6201 0F                 1547 	.db #0x0F	; 15
   6202 4F                 1548 	.db #0x4F	; 79	'O'
   6203 0F                 1549 	.db #0x0F	; 15
   6204 0F                 1550 	.db #0x0F	; 15
   6205 0F                 1551 	.db #0x0F	; 15
   6206 0F                 1552 	.db #0x0F	; 15
   6207 0F                 1553 	.db #0x0F	; 15
   6208 0F                 1554 	.db #0x0F	; 15
   6209 0F                 1555 	.db #0x0F	; 15
   620A 0F                 1556 	.db #0x0F	; 15
   620B 0F                 1557 	.db #0x0F	; 15
   620C 8F                 1558 	.db #0x8F	; 143
   620D 4F                 1559 	.db #0x4F	; 79	'O'
   620E 0F                 1560 	.db #0x0F	; 15
   620F 0F                 1561 	.db #0x0F	; 15
   6210 0F                 1562 	.db #0x0F	; 15
   6211 0F                 1563 	.db #0x0F	; 15
   6212 0F                 1564 	.db #0x0F	; 15
   6213                    1565 _rail_ew_s:
   6213 0F                 1566 	.db #0x0F	; 15
   6214 0F                 1567 	.db #0x0F	; 15
   6215 0F                 1568 	.db #0x0F	; 15
   6216 0F                 1569 	.db #0x0F	; 15
   6217 0F                 1570 	.db #0x0F	; 15
   6218 0F                 1571 	.db #0x0F	; 15
   6219 0F                 1572 	.db #0x0F	; 15
   621A 8F                 1573 	.db #0x8F	; 143
   621B 0F                 1574 	.db #0x0F	; 15
   621C 4F                 1575 	.db #0x4F	; 79	'O'
   621D 0F                 1576 	.db #0x0F	; 15
   621E 0F                 1577 	.db #0x0F	; 15
   621F 0F                 1578 	.db #0x0F	; 15
   6220 0F                 1579 	.db #0x0F	; 15
   6221 0F                 1580 	.db #0x0F	; 15
   6222 0F                 1581 	.db #0x0F	; 15
   6223 0F                 1582 	.db #0x0F	; 15
   6224 0F                 1583 	.db #0x0F	; 15
   6225 4F                 1584 	.db #0x4F	; 79	'O'
   6226 0F                 1585 	.db #0x0F	; 15
   6227 4F                 1586 	.db #0x4F	; 79	'O'
   6228 0F                 1587 	.db #0x0F	; 15
   6229 0F                 1588 	.db #0x0F	; 15
   622A 2F                 1589 	.db #0x2F	; 47
   622B 0F                 1590 	.db #0x0F	; 15
   622C 0F                 1591 	.db #0x0F	; 15
   622D 0F                 1592 	.db #0x0F	; 15
   622E 0F                 1593 	.db #0x0F	; 15
   622F F0                 1594 	.db #0xF0	; 240
   6230 F0                 1595 	.db #0xF0	; 240
   6231 F0                 1596 	.db #0xF0	; 240
   6232 F0                 1597 	.db #0xF0	; 240
   6233 00                 1598 	.db #0x00	; 0
   6234 00                 1599 	.db #0x00	; 0
   6235 00                 1600 	.db #0x00	; 0
   6236 00                 1601 	.db #0x00	; 0
   6237 E0                 1602 	.db #0xE0	; 224
   6238 F0                 1603 	.db #0xF0	; 240
   6239 F0                 1604 	.db #0xF0	; 240
   623A F0                 1605 	.db #0xF0	; 240
   623B 1E                 1606 	.db #0x1E	; 30
   623C 43                 1607 	.db #0x43	; 67	'C'
   623D 0F                 1608 	.db #0x0F	; 15
   623E 0F                 1609 	.db #0x0F	; 15
   623F 0F                 1610 	.db #0x0F	; 15
   6240 A1                 1611 	.db #0xA1	; 161
   6241 4F                 1612 	.db #0x4F	; 79	'O'
   6242 0F                 1613 	.db #0x0F	; 15
   6243 0F                 1614 	.db #0x0F	; 15
   6244 58                 1615 	.db #0x58	; 88	'X'
   6245 0F                 1616 	.db #0x0F	; 15
   6246 0F                 1617 	.db #0x0F	; 15
   6247 0F                 1618 	.db #0x0F	; 15
   6248 2C                 1619 	.db #0x2C	; 44
   6249 87                 1620 	.db #0x87	; 135
   624A 8F                 1621 	.db #0x8F	; 143
   624B 4F                 1622 	.db #0x4F	; 79	'O'
   624C 1E                 1623 	.db #0x1E	; 30
   624D 43                 1624 	.db #0x43	; 67	'C'
   624E 0F                 1625 	.db #0x0F	; 15
   624F 0F                 1626 	.db #0x0F	; 15
   6250 1E                 1627 	.db #0x1E	; 30
   6251 43                 1628 	.db #0x43	; 67	'C'
   6252 0F                 1629 	.db #0x0F	; 15
   6253                    1630 _rail_ns_w:
   6253 0F                 1631 	.db #0x0F	; 15
   6254 1E                 1632 	.db #0x1E	; 30
   6255 43                 1633 	.db #0x43	; 67	'C'
   6256 0F                 1634 	.db #0x0F	; 15
   6257 4F                 1635 	.db #0x4F	; 79	'O'
   6258 1E                 1636 	.db #0x1E	; 30
   6259 43                 1637 	.db #0x43	; 67	'C'
   625A 2F                 1638 	.db #0x2F	; 47
   625B 0F                 1639 	.db #0x0F	; 15
   625C 1E                 1640 	.db #0x1E	; 30
   625D 43                 1641 	.db #0x43	; 67	'C'
   625E 0F                 1642 	.db #0x0F	; 15
   625F 0F                 1643 	.db #0x0F	; 15
   6260 1E                 1644 	.db #0x1E	; 30
   6261 43                 1645 	.db #0x43	; 67	'C'
   6262 0F                 1646 	.db #0x0F	; 15
   6263 0F                 1647 	.db #0x0F	; 15
   6264 5E                 1648 	.db #0x5E	; 94
   6265 43                 1649 	.db #0x43	; 67	'C'
   6266 0F                 1650 	.db #0x0F	; 15
   6267 0F                 1651 	.db #0x0F	; 15
   6268 1E                 1652 	.db #0x1E	; 30
   6269 43                 1653 	.db #0x43	; 67	'C'
   626A 0F                 1654 	.db #0x0F	; 15
   626B 0F                 1655 	.db #0x0F	; 15
   626C 1E                 1656 	.db #0x1E	; 30
   626D 43                 1657 	.db #0x43	; 67	'C'
   626E 0F                 1658 	.db #0x0F	; 15
   626F E1                 1659 	.db #0xE1	; 225
   6270 1E                 1660 	.db #0x1E	; 30
   6271 43                 1661 	.db #0x43	; 67	'C'
   6272 4F                 1662 	.db #0x4F	; 79	'O'
   6273 10                 1663 	.db #0x10	; 16
   6274 1E                 1664 	.db #0x1E	; 30
   6275 43                 1665 	.db #0x43	; 67	'C'
   6276 0F                 1666 	.db #0x0F	; 15
   6277 E0                 1667 	.db #0xE0	; 224
   6278 96                 1668 	.db #0x96	; 150
   6279 43                 1669 	.db #0x43	; 67	'C'
   627A 0F                 1670 	.db #0x0F	; 15
   627B 1E                 1671 	.db #0x1E	; 30
   627C 52                 1672 	.db #0x52	; 82	'R'
   627D 43                 1673 	.db #0x43	; 67	'C'
   627E 0F                 1674 	.db #0x0F	; 15
   627F 0F                 1675 	.db #0x0F	; 15
   6280 B0                 1676 	.db #0xB0	; 176
   6281 53                 1677 	.db #0x53	; 83	'S'
   6282 0F                 1678 	.db #0x0F	; 15
   6283 0F                 1679 	.db #0x0F	; 15
   6284 58                 1680 	.db #0x58	; 88	'X'
   6285 43                 1681 	.db #0x43	; 67	'C'
   6286 0F                 1682 	.db #0x0F	; 15
   6287 2F                 1683 	.db #0x2F	; 47
   6288 2C                 1684 	.db #0x2C	; 44
   6289 43                 1685 	.db #0x43	; 67	'C'
   628A 0F                 1686 	.db #0x0F	; 15
   628B 0F                 1687 	.db #0x0F	; 15
   628C 1E                 1688 	.db #0x1E	; 30
   628D 43                 1689 	.db #0x43	; 67	'C'
   628E 2F                 1690 	.db #0x2F	; 47
   628F 0F                 1691 	.db #0x0F	; 15
   6290 1E                 1692 	.db #0x1E	; 30
   6291 43                 1693 	.db #0x43	; 67	'C'
   6292 0F                 1694 	.db #0x0F	; 15
   6293                    1695 _rail_ns_e:
   6293 0F                 1696 	.db #0x0F	; 15
   6294 1E                 1697 	.db #0x1E	; 30
   6295 43                 1698 	.db #0x43	; 67	'C'
   6296 0F                 1699 	.db #0x0F	; 15
   6297 0F                 1700 	.db #0x0F	; 15
   6298 1E                 1701 	.db #0x1E	; 30
   6299 43                 1702 	.db #0x43	; 67	'C'
   629A 2F                 1703 	.db #0x2F	; 47
   629B 0F                 1704 	.db #0x0F	; 15
   629C 9E                 1705 	.db #0x9E	; 158
   629D 43                 1706 	.db #0x43	; 67	'C'
   629E 0F                 1707 	.db #0x0F	; 15
   629F 0F                 1708 	.db #0x0F	; 15
   62A0 1E                 1709 	.db #0x1E	; 30
   62A1 43                 1710 	.db #0x43	; 67	'C'
   62A2 0F                 1711 	.db #0x0F	; 15
   62A3 0F                 1712 	.db #0x0F	; 15
   62A4 1E                 1713 	.db #0x1E	; 30
   62A5 43                 1714 	.db #0x43	; 67	'C'
   62A6 8F                 1715 	.db #0x8F	; 143
   62A7 0F                 1716 	.db #0x0F	; 15
   62A8 1E                 1717 	.db #0x1E	; 30
   62A9 43                 1718 	.db #0x43	; 67	'C'
   62AA 0F                 1719 	.db #0x0F	; 15
   62AB 0F                 1720 	.db #0x0F	; 15
   62AC 5E                 1721 	.db #0x5E	; 94
   62AD 43                 1722 	.db #0x43	; 67	'C'
   62AE 0F                 1723 	.db #0x0F	; 15
   62AF 4F                 1724 	.db #0x4F	; 79	'O'
   62B0 1E                 1725 	.db #0x1E	; 30
   62B1 43                 1726 	.db #0x43	; 67	'C'
   62B2 3C                 1727 	.db #0x3C	; 60
   62B3 0F                 1728 	.db #0x0F	; 15
   62B4 1E                 1729 	.db #0x1E	; 30
   62B5 43                 1730 	.db #0x43	; 67	'C'
   62B6 48                 1731 	.db #0x48	; 72	'H'
   62B7 0F                 1732 	.db #0x0F	; 15
   62B8 1E                 1733 	.db #0x1E	; 30
   62B9 43                 1734 	.db #0x43	; 67	'C'
   62BA B0                 1735 	.db #0xB0	; 176
   62BB 0F                 1736 	.db #0x0F	; 15
   62BC 1E                 1737 	.db #0x1E	; 30
   62BD 52                 1738 	.db #0x52	; 82	'R'
   62BE 43                 1739 	.db #0x43	; 67	'C'
   62BF 0F                 1740 	.db #0x0F	; 15
   62C0 5E                 1741 	.db #0x5E	; 94
   62C1 60                 1742 	.db #0x60	; 96
   62C2 87                 1743 	.db #0x87	; 135
   62C3 0F                 1744 	.db #0x0F	; 15
   62C4 1E                 1745 	.db #0x1E	; 30
   62C5 50                 1746 	.db #0x50	; 80	'P'
   62C6 0F                 1747 	.db #0x0F	; 15
   62C7 0F                 1748 	.db #0x0F	; 15
   62C8 1E                 1749 	.db #0x1E	; 30
   62C9 21                 1750 	.db #0x21	; 33
   62CA 0F                 1751 	.db #0x0F	; 15
   62CB 2F                 1752 	.db #0x2F	; 47
   62CC 1E                 1753 	.db #0x1E	; 30
   62CD 43                 1754 	.db #0x43	; 67	'C'
   62CE 8F                 1755 	.db #0x8F	; 143
   62CF 0F                 1756 	.db #0x0F	; 15
   62D0 1E                 1757 	.db #0x1E	; 30
   62D1 43                 1758 	.db #0x43	; 67	'C'
   62D2 0F                 1759 	.db #0x0F	; 15
                           1760 	.area _INITIALIZER
                           1761 	.area _CABS (ABS)
