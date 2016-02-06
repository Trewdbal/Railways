                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 21:45:30 2016
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
   5CDD                      73 _grass1:
   5CDD 0F                   74 	.db #0x0F	; 15
   5CDE 0F                   75 	.db #0x0F	; 15
   5CDF 0F                   76 	.db #0x0F	; 15
   5CE0 8F                   77 	.db #0x8F	; 143
   5CE1 0F                   78 	.db #0x0F	; 15
   5CE2 0F                   79 	.db #0x0F	; 15
   5CE3 0F                   80 	.db #0x0F	; 15
   5CE4 0F                   81 	.db #0x0F	; 15
   5CE5 1F                   82 	.db #0x1F	; 31
   5CE6 0F                   83 	.db #0x0F	; 15
   5CE7 2F                   84 	.db #0x2F	; 47
   5CE8 0F                   85 	.db #0x0F	; 15
   5CE9 0F                   86 	.db #0x0F	; 15
   5CEA 0F                   87 	.db #0x0F	; 15
   5CEB 0F                   88 	.db #0x0F	; 15
   5CEC 0F                   89 	.db #0x0F	; 15
   5CED 0F                   90 	.db #0x0F	; 15
   5CEE 0F                   91 	.db #0x0F	; 15
   5CEF 0F                   92 	.db #0x0F	; 15
   5CF0 0F                   93 	.db #0x0F	; 15
   5CF1 0F                   94 	.db #0x0F	; 15
   5CF2 0F                   95 	.db #0x0F	; 15
   5CF3 0F                   96 	.db #0x0F	; 15
   5CF4 0F                   97 	.db #0x0F	; 15
   5CF5 0F                   98 	.db #0x0F	; 15
   5CF6 0F                   99 	.db #0x0F	; 15
   5CF7 0F                  100 	.db #0x0F	; 15
   5CF8 0F                  101 	.db #0x0F	; 15
   5CF9 4F                  102 	.db #0x4F	; 79	'O'
   5CFA 0F                  103 	.db #0x0F	; 15
   5CFB 0F                  104 	.db #0x0F	; 15
   5CFC 8F                  105 	.db #0x8F	; 143
   5CFD 0F                  106 	.db #0x0F	; 15
   5CFE 4F                  107 	.db #0x4F	; 79	'O'
   5CFF 0F                  108 	.db #0x0F	; 15
   5D00 0F                  109 	.db #0x0F	; 15
   5D01 0F                  110 	.db #0x0F	; 15
   5D02 0F                  111 	.db #0x0F	; 15
   5D03 0F                  112 	.db #0x0F	; 15
   5D04 0F                  113 	.db #0x0F	; 15
   5D05 0F                  114 	.db #0x0F	; 15
   5D06 0F                  115 	.db #0x0F	; 15
   5D07 0F                  116 	.db #0x0F	; 15
   5D08 0F                  117 	.db #0x0F	; 15
   5D09 0F                  118 	.db #0x0F	; 15
   5D0A 1F                  119 	.db #0x1F	; 31
   5D0B 0F                  120 	.db #0x0F	; 15
   5D0C 0F                  121 	.db #0x0F	; 15
   5D0D 0F                  122 	.db #0x0F	; 15
   5D0E 0F                  123 	.db #0x0F	; 15
   5D0F 0F                  124 	.db #0x0F	; 15
   5D10 8F                  125 	.db #0x8F	; 143
   5D11 0F                  126 	.db #0x0F	; 15
   5D12 0F                  127 	.db #0x0F	; 15
   5D13 0F                  128 	.db #0x0F	; 15
   5D14 0F                  129 	.db #0x0F	; 15
   5D15 0F                  130 	.db #0x0F	; 15
   5D16 0F                  131 	.db #0x0F	; 15
   5D17 0F                  132 	.db #0x0F	; 15
   5D18 0F                  133 	.db #0x0F	; 15
   5D19 4F                  134 	.db #0x4F	; 79	'O'
   5D1A 0F                  135 	.db #0x0F	; 15
   5D1B 8F                  136 	.db #0x8F	; 143
   5D1C 0F                  137 	.db #0x0F	; 15
   5D1D                     138 _grass2:
   5D1D 0F                  139 	.db #0x0F	; 15
   5D1E 0F                  140 	.db #0x0F	; 15
   5D1F 0F                  141 	.db #0x0F	; 15
   5D20 0F                  142 	.db #0x0F	; 15
   5D21 0F                  143 	.db #0x0F	; 15
   5D22 0F                  144 	.db #0x0F	; 15
   5D23 0F                  145 	.db #0x0F	; 15
   5D24 2F                  146 	.db #0x2F	; 47
   5D25 0F                  147 	.db #0x0F	; 15
   5D26 8F                  148 	.db #0x8F	; 143
   5D27 0F                  149 	.db #0x0F	; 15
   5D28 0F                  150 	.db #0x0F	; 15
   5D29 0F                  151 	.db #0x0F	; 15
   5D2A 0F                  152 	.db #0x0F	; 15
   5D2B 0F                  153 	.db #0x0F	; 15
   5D2C 0F                  154 	.db #0x0F	; 15
   5D2D 0F                  155 	.db #0x0F	; 15
   5D2E 0F                  156 	.db #0x0F	; 15
   5D2F 0F                  157 	.db #0x0F	; 15
   5D30 0F                  158 	.db #0x0F	; 15
   5D31 4F                  159 	.db #0x4F	; 79	'O'
   5D32 0F                  160 	.db #0x0F	; 15
   5D33 0F                  161 	.db #0x0F	; 15
   5D34 0F                  162 	.db #0x0F	; 15
   5D35 0F                  163 	.db #0x0F	; 15
   5D36 0F                  164 	.db #0x0F	; 15
   5D37 2F                  165 	.db #0x2F	; 47
   5D38 0F                  166 	.db #0x0F	; 15
   5D39 0F                  167 	.db #0x0F	; 15
   5D3A 0F                  168 	.db #0x0F	; 15
   5D3B 0F                  169 	.db #0x0F	; 15
   5D3C 0F                  170 	.db #0x0F	; 15
   5D3D 0F                  171 	.db #0x0F	; 15
   5D3E 4F                  172 	.db #0x4F	; 79	'O'
   5D3F 0F                  173 	.db #0x0F	; 15
   5D40 0F                  174 	.db #0x0F	; 15
   5D41 0F                  175 	.db #0x0F	; 15
   5D42 0F                  176 	.db #0x0F	; 15
   5D43 0F                  177 	.db #0x0F	; 15
   5D44 0F                  178 	.db #0x0F	; 15
   5D45 0F                  179 	.db #0x0F	; 15
   5D46 0F                  180 	.db #0x0F	; 15
   5D47 0F                  181 	.db #0x0F	; 15
   5D48 0F                  182 	.db #0x0F	; 15
   5D49 0F                  183 	.db #0x0F	; 15
   5D4A 0F                  184 	.db #0x0F	; 15
   5D4B 0F                  185 	.db #0x0F	; 15
   5D4C 8F                  186 	.db #0x8F	; 143
   5D4D 0F                  187 	.db #0x0F	; 15
   5D4E 0F                  188 	.db #0x0F	; 15
   5D4F 0F                  189 	.db #0x0F	; 15
   5D50 0F                  190 	.db #0x0F	; 15
   5D51 2F                  191 	.db #0x2F	; 47
   5D52 1F                  192 	.db #0x1F	; 31
   5D53 0F                  193 	.db #0x0F	; 15
   5D54 0F                  194 	.db #0x0F	; 15
   5D55 0F                  195 	.db #0x0F	; 15
   5D56 0F                  196 	.db #0x0F	; 15
   5D57 0F                  197 	.db #0x0F	; 15
   5D58 2F                  198 	.db #0x2F	; 47
   5D59 0F                  199 	.db #0x0F	; 15
   5D5A 0F                  200 	.db #0x0F	; 15
   5D5B 0F                  201 	.db #0x0F	; 15
   5D5C 0F                  202 	.db #0x0F	; 15
   5D5D                     203 _forest:
   5D5D 0F                  204 	.db #0x0F	; 15
   5D5E 0F                  205 	.db #0x0F	; 15
   5D5F 0E                  206 	.db #0x0E	; 14
   5D60 03                  207 	.db #0x03	; 3
   5D61 0E                  208 	.db #0x0E	; 14
   5D62 03                  209 	.db #0x03	; 3
   5D63 0E                  210 	.db #0x0E	; 14
   5D64 EF                  211 	.db #0xEF	; 239
   5D65 0E                  212 	.db #0x0E	; 14
   5D66 EF                  213 	.db #0xEF	; 239
   5D67 0F                  214 	.db #0x0F	; 15
   5D68 EF                  215 	.db #0xEF	; 239
   5D69 0E                  216 	.db #0x0E	; 14
   5D6A FF                  217 	.db #0xFF	; 255
   5D6B 0F                  218 	.db #0x0F	; 15
   5D6C 0F                  219 	.db #0x0F	; 15
   5D6D 07                  220 	.db #0x07	; 7
   5D6E 6F                  221 	.db #0x6F	; 111	'o'
   5D6F 0C                  222 	.db #0x0C	; 12
   5D70 0F                  223 	.db #0x0F	; 15
   5D71 CF                  224 	.db #0xCF	; 207
   5D72 0F                  225 	.db #0x0F	; 15
   5D73 19                  226 	.db #0x19	; 25
   5D74 8F                  227 	.db #0x8F	; 143
   5D75 CE                  228 	.db #0xCE	; 206
   5D76 03                  229 	.db #0x03	; 3
   5D77 3B                  230 	.db #0x3B	; 59
   5D78 8F                  231 	.db #0x8F	; 143
   5D79 CE                  232 	.db #0xCE	; 206
   5D7A CF                  233 	.db #0xCF	; 207
   5D7B 3B                  234 	.db #0x3B	; 59
   5D7C 0F                  235 	.db #0x0F	; 15
   5D7D 0E                  236 	.db #0x0E	; 14
   5D7E EF                  237 	.db #0xEF	; 239
   5D7F 3F                  238 	.db #0x3F	; 63
   5D80 0F                  239 	.db #0x0F	; 15
   5D81 0F                  240 	.db #0x0F	; 15
   5D82 EF                  241 	.db #0xEF	; 239
   5D83 0F                  242 	.db #0x0F	; 15
   5D84 0F                  243 	.db #0x0F	; 15
   5D85 0E                  244 	.db #0x0E	; 14
   5D86 07                  245 	.db #0x07	; 7
   5D87 03                  246 	.db #0x03	; 3
   5D88 0F                  247 	.db #0x0F	; 15
   5D89 1D                  248 	.db #0x1D	; 29
   5D8A CE                  249 	.db #0xCE	; 206
   5D8B EF                  250 	.db #0xEF	; 239
   5D8C 09                  251 	.db #0x09	; 9
   5D8D 3B                  252 	.db #0x3B	; 59
   5D8E 8F                  253 	.db #0x8F	; 143
   5D8F CE                  254 	.db #0xCE	; 206
   5D90 67                  255 	.db #0x67	; 103	'g'
   5D91 3B                  256 	.db #0x3B	; 59
   5D92 8F                  257 	.db #0x8F	; 143
   5D93 1D                  258 	.db #0x1D	; 29
   5D94 EF                  259 	.db #0xEF	; 239
   5D95 2F                  260 	.db #0x2F	; 47
   5D96 0F                  261 	.db #0x0F	; 15
   5D97 1D                  262 	.db #0x1D	; 29
   5D98 EF                  263 	.db #0xEF	; 239
   5D99 0F                  264 	.db #0x0F	; 15
   5D9A 0F                  265 	.db #0x0F	; 15
   5D9B 0F                  266 	.db #0x0F	; 15
   5D9C CF                  267 	.db #0xCF	; 207
   5D9D                     268 _dwellings1:
   5D9D 0F                  269 	.db #0x0F	; 15
   5D9E 0F                  270 	.db #0x0F	; 15
   5D9F 0F                  271 	.db #0x0F	; 15
   5DA0 0F                  272 	.db #0x0F	; 15
   5DA1 08                  273 	.db #0x08	; 8
   5DA2 03                  274 	.db #0x03	; 3
   5DA3 0C                  275 	.db #0x0C	; 12
   5DA4 07                  276 	.db #0x07	; 7
   5DA5 38                  277 	.db #0x38	; 56	'8'
   5DA6 E1                  278 	.db #0xE1	; 225
   5DA7 1C                  279 	.db #0x1C	; 28
   5DA8 C3                  280 	.db #0xC3	; 195
   5DA9 3C                  281 	.db #0x3C	; 60
   5DAA E1                  282 	.db #0xE1	; 225
   5DAB 1C                  283 	.db #0x1C	; 28
   5DAC C3                  284 	.db #0xC3	; 195
   5DAD 0F                  285 	.db #0x0F	; 15
   5DAE 0F                  286 	.db #0x0F	; 15
   5DAF 1E                  287 	.db #0x1E	; 30
   5DB0 C3                  288 	.db #0xC3	; 195
   5DB1 0F                  289 	.db #0x0F	; 15
   5DB2 0F                  290 	.db #0x0F	; 15
   5DB3 0F                  291 	.db #0x0F	; 15
   5DB4 0F                  292 	.db #0x0F	; 15
   5DB5 0F                  293 	.db #0x0F	; 15
   5DB6 0F                  294 	.db #0x0F	; 15
   5DB7 0E                  295 	.db #0x0E	; 14
   5DB8 03                  296 	.db #0x03	; 3
   5DB9 0F                  297 	.db #0x0F	; 15
   5DBA 0E                  298 	.db #0x0E	; 14
   5DBB 06                  299 	.db #0x06	; 6
   5DBC E1                  300 	.db #0xE1	; 225
   5DBD 0F                  301 	.db #0x0F	; 15
   5DBE 0E                  302 	.db #0x0E	; 14
   5DBF C2                  303 	.db #0xC2	; 194
   5DC0 E1                  304 	.db #0xE1	; 225
   5DC1 0F                  305 	.db #0x0F	; 15
   5DC2 0E                  306 	.db #0x0E	; 14
   5DC3 C2                  307 	.db #0xC2	; 194
   5DC4 E1                  308 	.db #0xE1	; 225
   5DC5 0F                  309 	.db #0x0F	; 15
   5DC6 0E                  310 	.db #0x0E	; 14
   5DC7 C3                  311 	.db #0xC3	; 195
   5DC8 E1                  312 	.db #0xE1	; 225
   5DC9 0F                  313 	.db #0x0F	; 15
   5DCA 0E                  314 	.db #0x0E	; 14
   5DCB C3                  315 	.db #0xC3	; 195
   5DCC 0F                  316 	.db #0x0F	; 15
   5DCD 0F                  317 	.db #0x0F	; 15
   5DCE 0F                  318 	.db #0x0F	; 15
   5DCF C3                  319 	.db #0xC3	; 195
   5DD0 0F                  320 	.db #0x0F	; 15
   5DD1 08                  321 	.db #0x08	; 8
   5DD2 07                  322 	.db #0x07	; 7
   5DD3 0F                  323 	.db #0x0F	; 15
   5DD4 0F                  324 	.db #0x0F	; 15
   5DD5 38                  325 	.db #0x38	; 56	'8'
   5DD6 C3                  326 	.db #0xC3	; 195
   5DD7 0F                  327 	.db #0x0F	; 15
   5DD8 0F                  328 	.db #0x0F	; 15
   5DD9 3C                  329 	.db #0x3C	; 60
   5DDA C3                  330 	.db #0xC3	; 195
   5DDB 0F                  331 	.db #0x0F	; 15
   5DDC 0F                  332 	.db #0x0F	; 15
   5DDD                     333 _dwellings2:
   5DDD 0F                  334 	.db #0x0F	; 15
   5DDE 0F                  335 	.db #0x0F	; 15
   5DDF 0F                  336 	.db #0x0F	; 15
   5DE0 0F                  337 	.db #0x0F	; 15
   5DE1 0F                  338 	.db #0x0F	; 15
   5DE2 01                  339 	.db #0x01	; 1
   5DE3 0F                  340 	.db #0x0F	; 15
   5DE4 0F                  341 	.db #0x0F	; 15
   5DE5 0F                  342 	.db #0x0F	; 15
   5DE6 70                  343 	.db #0x70	; 112	'p'
   5DE7 0C                  344 	.db #0x0C	; 12
   5DE8 0F                  345 	.db #0x0F	; 15
   5DE9 09                  346 	.db #0x09	; 9
   5DEA 78                  347 	.db #0x78	; 120	'x'
   5DEB 1C                  348 	.db #0x1C	; 28
   5DEC 87                  349 	.db #0x87	; 135
   5DED 38                  350 	.db #0x38	; 56	'8'
   5DEE 0F                  351 	.db #0x0F	; 15
   5DEF 1C                  352 	.db #0x1C	; 28
   5DF0 87                  353 	.db #0x87	; 135
   5DF1 38                  354 	.db #0x38	; 56	'8'
   5DF2 0F                  355 	.db #0x0F	; 15
   5DF3 1E                  356 	.db #0x1E	; 30
   5DF4 87                  357 	.db #0x87	; 135
   5DF5 3C                  358 	.db #0x3C	; 60
   5DF6 0F                  359 	.db #0x0F	; 15
   5DF7 0F                  360 	.db #0x0F	; 15
   5DF8 0F                  361 	.db #0x0F	; 15
   5DF9 0F                  362 	.db #0x0F	; 15
   5DFA 0F                  363 	.db #0x0F	; 15
   5DFB 0F                  364 	.db #0x0F	; 15
   5DFC 0F                  365 	.db #0x0F	; 15
   5DFD 0E                  366 	.db #0x0E	; 14
   5DFE 07                  367 	.db #0x07	; 7
   5DFF 0F                  368 	.db #0x0F	; 15
   5E00 0F                  369 	.db #0x0F	; 15
   5E01 0E                  370 	.db #0x0E	; 14
   5E02 C3                  371 	.db #0xC3	; 195
   5E03 00                  372 	.db #0x00	; 0
   5E04 07                  373 	.db #0x07	; 7
   5E05 0E                  374 	.db #0x0E	; 14
   5E06 C3                  375 	.db #0xC3	; 195
   5E07 70                  376 	.db #0x70	; 112	'p'
   5E08 C3                  377 	.db #0xC3	; 195
   5E09 0F                  378 	.db #0x0F	; 15
   5E0A C3                  379 	.db #0xC3	; 195
   5E0B 70                  380 	.db #0x70	; 112	'p'
   5E0C C3                  381 	.db #0xC3	; 195
   5E0D 03                  382 	.db #0x03	; 3
   5E0E 0F                  383 	.db #0x0F	; 15
   5E0F 78                  384 	.db #0x78	; 120	'x'
   5E10 C3                  385 	.db #0xC3	; 195
   5E11 61                  386 	.db #0x61	; 97	'a'
   5E12 0F                  387 	.db #0x0F	; 15
   5E13 0F                  388 	.db #0x0F	; 15
   5E14 0F                  389 	.db #0x0F	; 15
   5E15 69                  390 	.db #0x69	; 105	'i'
   5E16 0F                  391 	.db #0x0F	; 15
   5E17 0F                  392 	.db #0x0F	; 15
   5E18 0F                  393 	.db #0x0F	; 15
   5E19 0F                  394 	.db #0x0F	; 15
   5E1A 0F                  395 	.db #0x0F	; 15
   5E1B 0F                  396 	.db #0x0F	; 15
   5E1C 0F                  397 	.db #0x0F	; 15
   5E1D                     398 _dwellings3:
   5E1D 0F                  399 	.db #0x0F	; 15
   5E1E 0F                  400 	.db #0x0F	; 15
   5E1F 09                  401 	.db #0x09	; 9
   5E20 09                  402 	.db #0x09	; 9
   5E21 0F                  403 	.db #0x0F	; 15
   5E22 0F                  404 	.db #0x0F	; 15
   5E23 38                  405 	.db #0x38	; 56	'8'
   5E24 38                  406 	.db #0x38	; 56	'8'
   5E25 0E                  407 	.db #0x0E	; 14
   5E26 03                  408 	.db #0x03	; 3
   5E27 38                  409 	.db #0x38	; 56	'8'
   5E28 38                  410 	.db #0x38	; 56	'8'
   5E29 0E                  411 	.db #0x0E	; 14
   5E2A E1                  412 	.db #0xE1	; 225
   5E2B 3C                  413 	.db #0x3C	; 60
   5E2C 3C                  414 	.db #0x3C	; 60
   5E2D 0E                  415 	.db #0x0E	; 14
   5E2E E1                  416 	.db #0xE1	; 225
   5E2F 0F                  417 	.db #0x0F	; 15
   5E30 0F                  418 	.db #0x0F	; 15
   5E31 0E                  419 	.db #0x0E	; 14
   5E32 E1                  420 	.db #0xE1	; 225
   5E33 08                  421 	.db #0x08	; 8
   5E34 07                  422 	.db #0x07	; 7
   5E35 0F                  423 	.db #0x0F	; 15
   5E36 E1                  424 	.db #0xE1	; 225
   5E37 38                  425 	.db #0x38	; 56	'8'
   5E38 C3                  426 	.db #0xC3	; 195
   5E39 0F                  427 	.db #0x0F	; 15
   5E3A 0F                  428 	.db #0x0F	; 15
   5E3B 3C                  429 	.db #0x3C	; 60
   5E3C C3                  430 	.db #0xC3	; 195
   5E3D 0C                  431 	.db #0x0C	; 12
   5E3E 0F                  432 	.db #0x0F	; 15
   5E3F 0F                  433 	.db #0x0F	; 15
   5E40 0F                  434 	.db #0x0F	; 15
   5E41 1C                  435 	.db #0x1C	; 28
   5E42 87                  436 	.db #0x87	; 135
   5E43 0F                  437 	.db #0x0F	; 15
   5E44 0F                  438 	.db #0x0F	; 15
   5E45 1E                  439 	.db #0x1E	; 30
   5E46 87                  440 	.db #0x87	; 135
   5E47 0C                  441 	.db #0x0C	; 12
   5E48 07                  442 	.db #0x07	; 7
   5E49 0F                  443 	.db #0x0F	; 15
   5E4A 0F                  444 	.db #0x0F	; 15
   5E4B 1C                  445 	.db #0x1C	; 28
   5E4C C3                  446 	.db #0xC3	; 195
   5E4D 0F                  447 	.db #0x0F	; 15
   5E4E 09                  448 	.db #0x09	; 9
   5E4F 1C                  449 	.db #0x1C	; 28
   5E50 C3                  450 	.db #0xC3	; 195
   5E51 0F                  451 	.db #0x0F	; 15
   5E52 38                  452 	.db #0x38	; 56	'8'
   5E53 1C                  453 	.db #0x1C	; 28
   5E54 C3                  454 	.db #0xC3	; 195
   5E55 0F                  455 	.db #0x0F	; 15
   5E56 3C                  456 	.db #0x3C	; 60
   5E57 1E                  457 	.db #0x1E	; 30
   5E58 C3                  458 	.db #0xC3	; 195
   5E59 0F                  459 	.db #0x0F	; 15
   5E5A 0F                  460 	.db #0x0F	; 15
   5E5B 0F                  461 	.db #0x0F	; 15
   5E5C 0F                  462 	.db #0x0F	; 15
   5E5D                     463 _water:
   5E5D 5F                  464 	.db #0x5F	; 95
   5E5E 5F                  465 	.db #0x5F	; 95
   5E5F 5F                  466 	.db #0x5F	; 95
   5E60 5F                  467 	.db #0x5F	; 95
   5E61 AF                  468 	.db #0xAF	; 175
   5E62 AF                  469 	.db #0xAF	; 175
   5E63 AF                  470 	.db #0xAF	; 175
   5E64 AF                  471 	.db #0xAF	; 175
   5E65 5F                  472 	.db #0x5F	; 95
   5E66 5F                  473 	.db #0x5F	; 95
   5E67 5F                  474 	.db #0x5F	; 95
   5E68 5F                  475 	.db #0x5F	; 95
   5E69 AF                  476 	.db #0xAF	; 175
   5E6A AF                  477 	.db #0xAF	; 175
   5E6B AF                  478 	.db #0xAF	; 175
   5E6C AF                  479 	.db #0xAF	; 175
   5E6D 5F                  480 	.db #0x5F	; 95
   5E6E 5F                  481 	.db #0x5F	; 95
   5E6F 5F                  482 	.db #0x5F	; 95
   5E70 5F                  483 	.db #0x5F	; 95
   5E71 AF                  484 	.db #0xAF	; 175
   5E72 AF                  485 	.db #0xAF	; 175
   5E73 AF                  486 	.db #0xAF	; 175
   5E74 AF                  487 	.db #0xAF	; 175
   5E75 5F                  488 	.db #0x5F	; 95
   5E76 5F                  489 	.db #0x5F	; 95
   5E77 5F                  490 	.db #0x5F	; 95
   5E78 5F                  491 	.db #0x5F	; 95
   5E79 AF                  492 	.db #0xAF	; 175
   5E7A AF                  493 	.db #0xAF	; 175
   5E7B AF                  494 	.db #0xAF	; 175
   5E7C AF                  495 	.db #0xAF	; 175
   5E7D 5F                  496 	.db #0x5F	; 95
   5E7E 5F                  497 	.db #0x5F	; 95
   5E7F 5F                  498 	.db #0x5F	; 95
   5E80 5F                  499 	.db #0x5F	; 95
   5E81 AF                  500 	.db #0xAF	; 175
   5E82 AF                  501 	.db #0xAF	; 175
   5E83 AF                  502 	.db #0xAF	; 175
   5E84 AF                  503 	.db #0xAF	; 175
   5E85 5F                  504 	.db #0x5F	; 95
   5E86 5F                  505 	.db #0x5F	; 95
   5E87 5F                  506 	.db #0x5F	; 95
   5E88 5F                  507 	.db #0x5F	; 95
   5E89 AF                  508 	.db #0xAF	; 175
   5E8A AF                  509 	.db #0xAF	; 175
   5E8B AF                  510 	.db #0xAF	; 175
   5E8C AF                  511 	.db #0xAF	; 175
   5E8D 5F                  512 	.db #0x5F	; 95
   5E8E 5F                  513 	.db #0x5F	; 95
   5E8F 5F                  514 	.db #0x5F	; 95
   5E90 5F                  515 	.db #0x5F	; 95
   5E91 AF                  516 	.db #0xAF	; 175
   5E92 AF                  517 	.db #0xAF	; 175
   5E93 AF                  518 	.db #0xAF	; 175
   5E94 AF                  519 	.db #0xAF	; 175
   5E95 5F                  520 	.db #0x5F	; 95
   5E96 5F                  521 	.db #0x5F	; 95
   5E97 5F                  522 	.db #0x5F	; 95
   5E98 5F                  523 	.db #0x5F	; 95
   5E99 AF                  524 	.db #0xAF	; 175
   5E9A AF                  525 	.db #0xAF	; 175
   5E9B AF                  526 	.db #0xAF	; 175
   5E9C AF                  527 	.db #0xAF	; 175
   5E9D                     528 _farm1:
   5E9D 03                  529 	.db #0x03	; 3
   5E9E 0F                  530 	.db #0x0F	; 15
   5E9F 78                  531 	.db #0x78	; 120	'x'
   5EA0 F0                  532 	.db #0xF0	; 240
   5EA1 61                  533 	.db #0x61	; 97	'a'
   5EA2 01                  534 	.db #0x01	; 1
   5EA3 5F                  535 	.db #0x5F	; 95
   5EA4 5F                  536 	.db #0x5F	; 95
   5EA5 61                  537 	.db #0x61	; 97	'a'
   5EA6 70                  538 	.db #0x70	; 112	'p'
   5EA7 78                  539 	.db #0x78	; 120	'x'
   5EA8 F0                  540 	.db #0xF0	; 240
   5EA9 69                  541 	.db #0x69	; 105	'i'
   5EAA 78                  542 	.db #0x78	; 120	'x'
   5EAB 2F                  543 	.db #0x2F	; 47
   5EAC AF                  544 	.db #0xAF	; 175
   5EAD 0F                  545 	.db #0x0F	; 15
   5EAE 0F                  546 	.db #0x0F	; 15
   5EAF 78                  547 	.db #0x78	; 120	'x'
   5EB0 F0                  548 	.db #0xF0	; 240
   5EB1 7A                  549 	.db #0x7A	; 122	'z'
   5EB2 7A                  550 	.db #0x7A	; 122	'z'
   5EB3 5F                  551 	.db #0x5F	; 95
   5EB4 5F                  552 	.db #0x5F	; 95
   5EB5 5A                  553 	.db #0x5A	; 90	'Z'
   5EB6 DA                  554 	.db #0xDA	; 218
   5EB7 78                  555 	.db #0x78	; 120	'x'
   5EB8 F0                  556 	.db #0xF0	; 240
   5EB9 7A                  557 	.db #0x7A	; 122	'z'
   5EBA 7A                  558 	.db #0x7A	; 122	'z'
   5EBB 0F                  559 	.db #0x0F	; 15
   5EBC 0F                  560 	.db #0x0F	; 15
   5EBD 5A                  561 	.db #0x5A	; 90	'Z'
   5EBE DA                  562 	.db #0xDA	; 218
   5EBF 0F                  563 	.db #0x0F	; 15
   5EC0 0F                  564 	.db #0x0F	; 15
   5EC1 7A                  565 	.db #0x7A	; 122	'z'
   5EC2 7A                  566 	.db #0x7A	; 122	'z'
   5EC3 78                  567 	.db #0x78	; 120	'x'
   5EC4 F0                  568 	.db #0xF0	; 240
   5EC5 5A                  569 	.db #0x5A	; 90	'Z'
   5EC6 DA                  570 	.db #0xDA	; 218
   5EC7 5F                  571 	.db #0x5F	; 95
   5EC8 5F                  572 	.db #0x5F	; 95
   5EC9 7A                  573 	.db #0x7A	; 122	'z'
   5ECA 7A                  574 	.db #0x7A	; 122	'z'
   5ECB 78                  575 	.db #0x78	; 120	'x'
   5ECC F0                  576 	.db #0xF0	; 240
   5ECD 5A                  577 	.db #0x5A	; 90	'Z'
   5ECE DA                  578 	.db #0xDA	; 218
   5ECF 2F                  579 	.db #0x2F	; 47
   5ED0 AF                  580 	.db #0xAF	; 175
   5ED1 7A                  581 	.db #0x7A	; 122	'z'
   5ED2 7A                  582 	.db #0x7A	; 122	'z'
   5ED3 78                  583 	.db #0x78	; 120	'x'
   5ED4 F0                  584 	.db #0xF0	; 240
   5ED5 5A                  585 	.db #0x5A	; 90	'Z'
   5ED6 DA                  586 	.db #0xDA	; 218
   5ED7 5F                  587 	.db #0x5F	; 95
   5ED8 5F                  588 	.db #0x5F	; 95
   5ED9 7A                  589 	.db #0x7A	; 122	'z'
   5EDA 7A                  590 	.db #0x7A	; 122	'z'
   5EDB 78                  591 	.db #0x78	; 120	'x'
   5EDC F0                  592 	.db #0xF0	; 240
   5EDD                     593 _farm2:
   5EDD 0F                  594 	.db #0x0F	; 15
   5EDE 0F                  595 	.db #0x0F	; 15
   5EDF 0F                  596 	.db #0x0F	; 15
   5EE0 0F                  597 	.db #0x0F	; 15
   5EE1 7F                  598 	.db #0x7F	; 127
   5EE2 FF                  599 	.db #0xFF	; 255
   5EE3 FF                  600 	.db #0xFF	; 255
   5EE4 EF                  601 	.db #0xEF	; 239
   5EE5 2D                  602 	.db #0x2D	; 45
   5EE6 A5                  603 	.db #0xA5	; 165
   5EE7 A5                  604 	.db #0xA5	; 165
   5EE8 A5                  605 	.db #0xA5	; 165
   5EE9 7F                  606 	.db #0x7F	; 127
   5EEA FF                  607 	.db #0xFF	; 255
   5EEB FF                  608 	.db #0xFF	; 255
   5EEC EF                  609 	.db #0xEF	; 239
   5EED 5A                  610 	.db #0x5A	; 90	'Z'
   5EEE 5A                  611 	.db #0x5A	; 90	'Z'
   5EEF 5A                  612 	.db #0x5A	; 90	'Z'
   5EF0 4B                  613 	.db #0x4B	; 75	'K'
   5EF1 7F                  614 	.db #0x7F	; 127
   5EF2 FF                  615 	.db #0xFF	; 255
   5EF3 FF                  616 	.db #0xFF	; 255
   5EF4 EF                  617 	.db #0xEF	; 239
   5EF5 2D                  618 	.db #0x2D	; 45
   5EF6 A5                  619 	.db #0xA5	; 165
   5EF7 A5                  620 	.db #0xA5	; 165
   5EF8 A5                  621 	.db #0xA5	; 165
   5EF9 7F                  622 	.db #0x7F	; 127
   5EFA FF                  623 	.db #0xFF	; 255
   5EFB FF                  624 	.db #0xFF	; 255
   5EFC EF                  625 	.db #0xEF	; 239
   5EFD 5A                  626 	.db #0x5A	; 90	'Z'
   5EFE 5A                  627 	.db #0x5A	; 90	'Z'
   5EFF 5A                  628 	.db #0x5A	; 90	'Z'
   5F00 4B                  629 	.db #0x4B	; 75	'K'
   5F01 7F                  630 	.db #0x7F	; 127
   5F02 FF                  631 	.db #0xFF	; 255
   5F03 FF                  632 	.db #0xFF	; 255
   5F04 EF                  633 	.db #0xEF	; 239
   5F05 0F                  634 	.db #0x0F	; 15
   5F06 0F                  635 	.db #0x0F	; 15
   5F07 0F                  636 	.db #0x0F	; 15
   5F08 0F                  637 	.db #0x0F	; 15
   5F09 0E                  638 	.db #0x0E	; 14
   5F0A 07                  639 	.db #0x07	; 7
   5F0B AF                  640 	.db #0xAF	; 175
   5F0C AF                  641 	.db #0xAF	; 175
   5F0D 02                  642 	.db #0x02	; 2
   5F0E C3                  643 	.db #0xC3	; 195
   5F0F AF                  644 	.db #0xAF	; 175
   5F10 AF                  645 	.db #0xAF	; 175
   5F11 60                  646 	.db #0x60	; 96
   5F12 C3                  647 	.db #0xC3	; 195
   5F13 AF                  648 	.db #0xAF	; 175
   5F14 AF                  649 	.db #0xAF	; 175
   5F15 69                  650 	.db #0x69	; 105	'i'
   5F16 C3                  651 	.db #0xC3	; 195
   5F17 AF                  652 	.db #0xAF	; 175
   5F18 AF                  653 	.db #0xAF	; 175
   5F19 0F                  654 	.db #0x0F	; 15
   5F1A 0F                  655 	.db #0x0F	; 15
   5F1B 0F                  656 	.db #0x0F	; 15
   5F1C 0F                  657 	.db #0x0F	; 15
   5F1D                     658 _livestock:
   5F1D 03                  659 	.db #0x03	; 3
   5F1E 0F                  660 	.db #0x0F	; 15
   5F1F 0F                  661 	.db #0x0F	; 15
   5F20 0F                  662 	.db #0x0F	; 15
   5F21 61                  663 	.db #0x61	; 97	'a'
   5F22 F5                  664 	.db #0xF5	; 245
   5F23 F5                  665 	.db #0xF5	; 245
   5F24 E5                  666 	.db #0xE5	; 229
   5F25 61                  667 	.db #0x61	; 97	'a'
   5F26 8F                  668 	.db #0x8F	; 143
   5F27 0F                  669 	.db #0x0F	; 15
   5F28 2F                  670 	.db #0x2F	; 47
   5F29 69                  671 	.db #0x69	; 105	'i'
   5F2A 87                  672 	.db #0x87	; 135
   5F2B 0F                  673 	.db #0x0F	; 15
   5F2C AD                  674 	.db #0xAD	; 173
   5F2D 0F                  675 	.db #0x0F	; 15
   5F2E 9F                  676 	.db #0x9F	; 159
   5F2F 0F                  677 	.db #0x0F	; 15
   5F30 2F                  678 	.db #0x2F	; 47
   5F31 7D                  679 	.db #0x7D	; 125
   5F32 87                  680 	.db #0x87	; 135
   5F33 0F                  681 	.db #0x0F	; 15
   5F34 2D                  682 	.db #0x2D	; 45
   5F35 4B                  683 	.db #0x4B	; 75	'K'
   5F36 0F                  684 	.db #0x0F	; 15
   5F37 2F                  685 	.db #0x2F	; 47
   5F38 2F                  686 	.db #0x2F	; 47
   5F39 4F                  687 	.db #0x4F	; 79	'O'
   5F3A 0F                  688 	.db #0x0F	; 15
   5F3B 0F                  689 	.db #0x0F	; 15
   5F3C 2D                  690 	.db #0x2D	; 45
   5F3D 5B                  691 	.db #0x5B	; 91
   5F3E 1F                  692 	.db #0x1F	; 31
   5F3F 0F                  693 	.db #0x0F	; 15
   5F40 2F                  694 	.db #0x2F	; 47
   5F41 4F                  695 	.db #0x4F	; 79	'O'
   5F42 0F                  696 	.db #0x0F	; 15
   5F43 1F                  697 	.db #0x1F	; 31
   5F44 2D                  698 	.db #0x2D	; 45
   5F45 4B                  699 	.db #0x4B	; 75	'K'
   5F46 0F                  700 	.db #0x0F	; 15
   5F47 0F                  701 	.db #0x0F	; 15
   5F48 2F                  702 	.db #0x2F	; 47
   5F49 4F                  703 	.db #0x4F	; 79	'O'
   5F4A 4F                  704 	.db #0x4F	; 79	'O'
   5F4B 0F                  705 	.db #0x0F	; 15
   5F4C 2D                  706 	.db #0x2D	; 45
   5F4D 4B                  707 	.db #0x4B	; 75	'K'
   5F4E 0F                  708 	.db #0x0F	; 15
   5F4F 2F                  709 	.db #0x2F	; 47
   5F50 2F                  710 	.db #0x2F	; 47
   5F51 4F                  711 	.db #0x4F	; 79	'O'
   5F52 0F                  712 	.db #0x0F	; 15
   5F53 0F                  713 	.db #0x0F	; 15
   5F54 2D                  714 	.db #0x2D	; 45
   5F55 7A                  715 	.db #0x7A	; 122	'z'
   5F56 FA                  716 	.db #0xFA	; 250
   5F57 FA                  717 	.db #0xFA	; 250
   5F58 EB                  718 	.db #0xEB	; 235
   5F59 0F                  719 	.db #0x0F	; 15
   5F5A 0F                  720 	.db #0x0F	; 15
   5F5B 0F                  721 	.db #0x0F	; 15
   5F5C 0F                  722 	.db #0x0F	; 15
   5F5D                     723 _station_small_ns:
   5F5D 0F                  724 	.db #0x0F	; 15
   5F5E 1E                  725 	.db #0x1E	; 30
   5F5F 43                  726 	.db #0x43	; 67	'C'
   5F60 0F                  727 	.db #0x0F	; 15
   5F61 0F                  728 	.db #0x0F	; 15
   5F62 1E                  729 	.db #0x1E	; 30
   5F63 43                  730 	.db #0x43	; 67	'C'
   5F64 4F                  731 	.db #0x4F	; 79	'O'
   5F65 0F                  732 	.db #0x0F	; 15
   5F66 5E                  733 	.db #0x5E	; 94
   5F67 43                  734 	.db #0x43	; 67	'C'
   5F68 0F                  735 	.db #0x0F	; 15
   5F69 0F                  736 	.db #0x0F	; 15
   5F6A 1E                  737 	.db #0x1E	; 30
   5F6B 43                  738 	.db #0x43	; 67	'C'
   5F6C 0F                  739 	.db #0x0F	; 15
   5F6D 4F                  740 	.db #0x4F	; 79	'O'
   5F6E 1E                  741 	.db #0x1E	; 30
   5F6F 43                  742 	.db #0x43	; 67	'C'
   5F70 8F                  743 	.db #0x8F	; 143
   5F71 0F                  744 	.db #0x0F	; 15
   5F72 1E                  745 	.db #0x1E	; 30
   5F73 43                  746 	.db #0x43	; 67	'C'
   5F74 0F                  747 	.db #0x0F	; 15
   5F75 0F                  748 	.db #0x0F	; 15
   5F76 1E                  749 	.db #0x1E	; 30
   5F77 43                  750 	.db #0x43	; 67	'C'
   5F78 0F                  751 	.db #0x0F	; 15
   5F79 0E                  752 	.db #0x0E	; 14
   5F7A 16                  753 	.db #0x16	; 22
   5F7B 43                  754 	.db #0x43	; 67	'C'
   5F7C 0F                  755 	.db #0x0F	; 15
   5F7D 0E                  756 	.db #0x0E	; 14
   5F7E D2                  757 	.db #0xD2	; 210
   5F7F 43                  758 	.db #0x43	; 67	'C'
   5F80 0F                  759 	.db #0x0F	; 15
   5F81 4F                  760 	.db #0x4F	; 79	'O'
   5F82 D2                  761 	.db #0xD2	; 210
   5F83 43                  762 	.db #0x43	; 67	'C'
   5F84 0F                  763 	.db #0x0F	; 15
   5F85 0F                  764 	.db #0x0F	; 15
   5F86 1E                  765 	.db #0x1E	; 30
   5F87 53                  766 	.db #0x53	; 83	'S'
   5F88 0F                  767 	.db #0x0F	; 15
   5F89 0F                  768 	.db #0x0F	; 15
   5F8A 1E                  769 	.db #0x1E	; 30
   5F8B 43                  770 	.db #0x43	; 67	'C'
   5F8C 0F                  771 	.db #0x0F	; 15
   5F8D 0F                  772 	.db #0x0F	; 15
   5F8E 5E                  773 	.db #0x5E	; 94
   5F8F 43                  774 	.db #0x43	; 67	'C'
   5F90 0F                  775 	.db #0x0F	; 15
   5F91 0F                  776 	.db #0x0F	; 15
   5F92 1E                  777 	.db #0x1E	; 30
   5F93 43                  778 	.db #0x43	; 67	'C'
   5F94 1F                  779 	.db #0x1F	; 31
   5F95 4F                  780 	.db #0x4F	; 79	'O'
   5F96 1E                  781 	.db #0x1E	; 30
   5F97 43                  782 	.db #0x43	; 67	'C'
   5F98 0F                  783 	.db #0x0F	; 15
   5F99 0F                  784 	.db #0x0F	; 15
   5F9A 1E                  785 	.db #0x1E	; 30
   5F9B 43                  786 	.db #0x43	; 67	'C'
   5F9C 0F                  787 	.db #0x0F	; 15
   5F9D                     788 _station_small_ew:
   5F9D 0F                  789 	.db #0x0F	; 15
   5F9E 2F                  790 	.db #0x2F	; 47
   5F9F 0F                  791 	.db #0x0F	; 15
   5FA0 0F                  792 	.db #0x0F	; 15
   5FA1 0F                  793 	.db #0x0F	; 15
   5FA2 0F                  794 	.db #0x0F	; 15
   5FA3 0F                  795 	.db #0x0F	; 15
   5FA4 4F                  796 	.db #0x4F	; 79	'O'
   5FA5 0F                  797 	.db #0x0F	; 15
   5FA6 0F                  798 	.db #0x0F	; 15
   5FA7 0F                  799 	.db #0x0F	; 15
   5FA8 0F                  800 	.db #0x0F	; 15
   5FA9 2F                  801 	.db #0x2F	; 47
   5FAA 0C                  802 	.db #0x0C	; 12
   5FAB 0F                  803 	.db #0x0F	; 15
   5FAC 0F                  804 	.db #0x0F	; 15
   5FAD 0F                  805 	.db #0x0F	; 15
   5FAE 1C                  806 	.db #0x1C	; 28
   5FAF 87                  807 	.db #0x87	; 135
   5FB0 8F                  808 	.db #0x8F	; 143
   5FB1 0F                  809 	.db #0x0F	; 15
   5FB2 1E                  810 	.db #0x1E	; 30
   5FB3 87                  811 	.db #0x87	; 135
   5FB4 0F                  812 	.db #0x0F	; 15
   5FB5 0F                  813 	.db #0x0F	; 15
   5FB6 0F                  814 	.db #0x0F	; 15
   5FB7 0F                  815 	.db #0x0F	; 15
   5FB8 0F                  816 	.db #0x0F	; 15
   5FB9 F0                  817 	.db #0xF0	; 240
   5FBA F0                  818 	.db #0xF0	; 240
   5FBB F0                  819 	.db #0xF0	; 240
   5FBC F0                  820 	.db #0xF0	; 240
   5FBD 00                  821 	.db #0x00	; 0
   5FBE 00                  822 	.db #0x00	; 0
   5FBF 00                  823 	.db #0x00	; 0
   5FC0 00                  824 	.db #0x00	; 0
   5FC1 F0                  825 	.db #0xF0	; 240
   5FC2 F0                  826 	.db #0xF0	; 240
   5FC3 F0                  827 	.db #0xF0	; 240
   5FC4 F0                  828 	.db #0xF0	; 240
   5FC5 0F                  829 	.db #0x0F	; 15
   5FC6 0F                  830 	.db #0x0F	; 15
   5FC7 0F                  831 	.db #0x0F	; 15
   5FC8 0F                  832 	.db #0x0F	; 15
   5FC9 0F                  833 	.db #0x0F	; 15
   5FCA 8F                  834 	.db #0x8F	; 143
   5FCB 0F                  835 	.db #0x0F	; 15
   5FCC 8F                  836 	.db #0x8F	; 143
   5FCD 0F                  837 	.db #0x0F	; 15
   5FCE 0F                  838 	.db #0x0F	; 15
   5FCF 0F                  839 	.db #0x0F	; 15
   5FD0 0F                  840 	.db #0x0F	; 15
   5FD1 0F                  841 	.db #0x0F	; 15
   5FD2 0F                  842 	.db #0x0F	; 15
   5FD3 8F                  843 	.db #0x8F	; 143
   5FD4 0F                  844 	.db #0x0F	; 15
   5FD5 4F                  845 	.db #0x4F	; 79	'O'
   5FD6 0F                  846 	.db #0x0F	; 15
   5FD7 1F                  847 	.db #0x1F	; 31
   5FD8 0F                  848 	.db #0x0F	; 15
   5FD9 0F                  849 	.db #0x0F	; 15
   5FDA 0F                  850 	.db #0x0F	; 15
   5FDB 0F                  851 	.db #0x0F	; 15
   5FDC 1F                  852 	.db #0x1F	; 31
   5FDD                     853 _station_medium_ns:
   5FDD 0F                  854 	.db #0x0F	; 15
   5FDE 1E                  855 	.db #0x1E	; 30
   5FDF 70                  856 	.db #0x70	; 112	'p'
   5FE0 0F                  857 	.db #0x0F	; 15
   5FE1 2F                  858 	.db #0x2F	; 47
   5FE2 1E                  859 	.db #0x1E	; 30
   5FE3 50                  860 	.db #0x50	; 80	'P'
   5FE4 0F                  861 	.db #0x0F	; 15
   5FE5 0F                  862 	.db #0x0F	; 15
   5FE6 1E                  863 	.db #0x1E	; 30
   5FE7 50                  864 	.db #0x50	; 80	'P'
   5FE8 2F                  865 	.db #0x2F	; 47
   5FE9 0F                  866 	.db #0x0F	; 15
   5FEA 1E                  867 	.db #0x1E	; 30
   5FEB 50                  868 	.db #0x50	; 80	'P'
   5FEC 0F                  869 	.db #0x0F	; 15
   5FED 0F                  870 	.db #0x0F	; 15
   5FEE 1E                  871 	.db #0x1E	; 30
   5FEF 50                  872 	.db #0x50	; 80	'P'
   5FF0 0F                  873 	.db #0x0F	; 15
   5FF1 0E                  874 	.db #0x0E	; 14
   5FF2 16                  875 	.db #0x16	; 22
   5FF3 50                  876 	.db #0x50	; 80	'P'
   5FF4 0F                  877 	.db #0x0F	; 15
   5FF5 0E                  878 	.db #0x0E	; 14
   5FF6 D2                  879 	.db #0xD2	; 210
   5FF7 50                  880 	.db #0x50	; 80	'P'
   5FF8 2F                  881 	.db #0x2F	; 47
   5FF9 0E                  882 	.db #0x0E	; 14
   5FFA D2                  883 	.db #0xD2	; 210
   5FFB 50                  884 	.db #0x50	; 80	'P'
   5FFC 0F                  885 	.db #0x0F	; 15
   5FFD 0E                  886 	.db #0x0E	; 14
   5FFE D2                  887 	.db #0xD2	; 210
   5FFF 50                  888 	.db #0x50	; 80	'P'
   6000 0F                  889 	.db #0x0F	; 15
   6001 0E                  890 	.db #0x0E	; 14
   6002 D2                  891 	.db #0xD2	; 210
   6003 50                  892 	.db #0x50	; 80	'P'
   6004 0F                  893 	.db #0x0F	; 15
   6005 0F                  894 	.db #0x0F	; 15
   6006 D2                  895 	.db #0xD2	; 210
   6007 50                  896 	.db #0x50	; 80	'P'
   6008 1F                  897 	.db #0x1F	; 31
   6009 4F                  898 	.db #0x4F	; 79	'O'
   600A 1E                  899 	.db #0x1E	; 30
   600B 50                  900 	.db #0x50	; 80	'P'
   600C 0F                  901 	.db #0x0F	; 15
   600D 0F                  902 	.db #0x0F	; 15
   600E 1E                  903 	.db #0x1E	; 30
   600F 50                  904 	.db #0x50	; 80	'P'
   6010 0F                  905 	.db #0x0F	; 15
   6011 0F                  906 	.db #0x0F	; 15
   6012 1E                  907 	.db #0x1E	; 30
   6013 50                  908 	.db #0x50	; 80	'P'
   6014 0F                  909 	.db #0x0F	; 15
   6015 0F                  910 	.db #0x0F	; 15
   6016 9E                  911 	.db #0x9E	; 158
   6017 21                  912 	.db #0x21	; 33
   6018 0F                  913 	.db #0x0F	; 15
   6019 0F                  914 	.db #0x0F	; 15
   601A 1E                  915 	.db #0x1E	; 30
   601B 43                  916 	.db #0x43	; 67	'C'
   601C 4F                  917 	.db #0x4F	; 79	'O'
   601D                     918 _station_medium_ew:
   601D 0F                  919 	.db #0x0F	; 15
   601E 0F                  920 	.db #0x0F	; 15
   601F 0F                  921 	.db #0x0F	; 15
   6020 0F                  922 	.db #0x0F	; 15
   6021 0F                  923 	.db #0x0F	; 15
   6022 2F                  924 	.db #0x2F	; 47
   6023 0F                  925 	.db #0x0F	; 15
   6024 03                  926 	.db #0x03	; 3
   6025 0F                  927 	.db #0x0F	; 15
   6026 0F                  928 	.db #0x0F	; 15
   6027 0E                  929 	.db #0x0E	; 14
   6028 67                  930 	.db #0x67	; 103	'g'
   6029 4F                  931 	.db #0x4F	; 79	'O'
   602A 00                  932 	.db #0x00	; 0
   602B 06                  933 	.db #0x06	; 6
   602C EF                  934 	.db #0xEF	; 239
   602D 0F                  935 	.db #0x0F	; 15
   602E 70                  936 	.db #0x70	; 112	'p'
   602F C3                  937 	.db #0xC3	; 195
   6030 CF                  938 	.db #0xCF	; 207
   6031 0F                  939 	.db #0x0F	; 15
   6032 78                  940 	.db #0x78	; 120	'x'
   6033 C3                  941 	.db #0xC3	; 195
   6034 0F                  942 	.db #0x0F	; 15
   6035 0F                  943 	.db #0x0F	; 15
   6036 0F                  944 	.db #0x0F	; 15
   6037 0F                  945 	.db #0x0F	; 15
   6038 0F                  946 	.db #0x0F	; 15
   6039 F0                  947 	.db #0xF0	; 240
   603A F0                  948 	.db #0xF0	; 240
   603B F0                  949 	.db #0xF0	; 240
   603C F0                  950 	.db #0xF0	; 240
   603D 00                  951 	.db #0x00	; 0
   603E 00                  952 	.db #0x00	; 0
   603F 00                  953 	.db #0x00	; 0
   6040 00                  954 	.db #0x00	; 0
   6041 B0                  955 	.db #0xB0	; 176
   6042 F0                  956 	.db #0xF0	; 240
   6043 F0                  957 	.db #0xF0	; 240
   6044 F0                  958 	.db #0xF0	; 240
   6045 48                  959 	.db #0x48	; 72	'H'
   6046 00                  960 	.db #0x00	; 0
   6047 00                  961 	.db #0x00	; 0
   6048 10                  962 	.db #0x10	; 16
   6049 3C                  963 	.db #0x3C	; 60
   604A F0                  964 	.db #0xF0	; 240
   604B F0                  965 	.db #0xF0	; 240
   604C F0                  966 	.db #0xF0	; 240
   604D 0F                  967 	.db #0x0F	; 15
   604E 4F                  968 	.db #0x4F	; 79	'O'
   604F 0F                  969 	.db #0x0F	; 15
   6050 0F                  970 	.db #0x0F	; 15
   6051 0F                  971 	.db #0x0F	; 15
   6052 0F                  972 	.db #0x0F	; 15
   6053 0F                  973 	.db #0x0F	; 15
   6054 0F                  974 	.db #0x0F	; 15
   6055 2F                  975 	.db #0x2F	; 47
   6056 0F                  976 	.db #0x0F	; 15
   6057 0F                  977 	.db #0x0F	; 15
   6058 4F                  978 	.db #0x4F	; 79	'O'
   6059 0F                  979 	.db #0x0F	; 15
   605A 0F                  980 	.db #0x0F	; 15
   605B 0F                  981 	.db #0x0F	; 15
   605C 0F                  982 	.db #0x0F	; 15
   605D                     983 _station_large_ns:
   605D 0F                  984 	.db #0x0F	; 15
   605E 1E                  985 	.db #0x1E	; 30
   605F 43                  986 	.db #0x43	; 67	'C'
   6060 4F                  987 	.db #0x4F	; 79	'O'
   6061 0E                  988 	.db #0x0E	; 14
   6062 16                  989 	.db #0x16	; 22
   6063 21                  990 	.db #0x21	; 33
   6064 0F                  991 	.db #0x0F	; 15
   6065 0E                  992 	.db #0x0E	; 14
   6066 D2                  993 	.db #0xD2	; 210
   6067 50                  994 	.db #0x50	; 80	'P'
   6068 0F                  995 	.db #0x0F	; 15
   6069 0E                  996 	.db #0x0E	; 14
   606A D2                  997 	.db #0xD2	; 210
   606B 40                  998 	.db #0x40	; 64
   606C 87                  999 	.db #0x87	; 135
   606D 0E                 1000 	.db #0x0E	; 14
   606E D2                 1001 	.db #0xD2	; 210
   606F 50                 1002 	.db #0x50	; 80	'P'
   6070 43                 1003 	.db #0x43	; 67	'C'
   6071 0C                 1004 	.db #0x0C	; 12
   6072 D2                 1005 	.db #0xD2	; 210
   6073 50                 1006 	.db #0x50	; 80	'P'
   6074 21                 1007 	.db #0x21	; 33
   6075 1C                 1008 	.db #0x1C	; 28
   6076 D2                 1009 	.db #0xD2	; 210
   6077 50                 1010 	.db #0x50	; 80	'P'
   6078 50                 1011 	.db #0x50	; 80	'P'
   6079 1C                 1012 	.db #0x1C	; 28
   607A D2                 1013 	.db #0xD2	; 210
   607B 50                 1014 	.db #0x50	; 80	'P'
   607C 50                 1015 	.db #0x50	; 80	'P'
   607D 1C                 1016 	.db #0x1C	; 28
   607E D2                 1017 	.db #0xD2	; 210
   607F 50                 1018 	.db #0x50	; 80	'P'
   6080 50                 1019 	.db #0x50	; 80	'P'
   6081 1C                 1020 	.db #0x1C	; 28
   6082 D2                 1021 	.db #0xD2	; 210
   6083 50                 1022 	.db #0x50	; 80	'P'
   6084 50                 1023 	.db #0x50	; 80	'P'
   6085 1C                 1024 	.db #0x1C	; 28
   6086 D2                 1025 	.db #0xD2	; 210
   6087 50                 1026 	.db #0x50	; 80	'P'
   6088 50                 1027 	.db #0x50	; 80	'P'
   6089 0E                 1028 	.db #0x0E	; 14
   608A D2                 1029 	.db #0xD2	; 210
   608B 50                 1030 	.db #0x50	; 80	'P'
   608C 50                 1031 	.db #0x50	; 80	'P'
   608D 0E                 1032 	.db #0x0E	; 14
   608E D2                 1033 	.db #0xD2	; 210
   608F 50                 1034 	.db #0x50	; 80	'P'
   6090 50                 1035 	.db #0x50	; 80	'P'
   6091 4E                 1036 	.db #0x4E	; 78	'N'
   6092 D2                 1037 	.db #0xD2	; 210
   6093 50                 1038 	.db #0x50	; 80	'P'
   6094 50                 1039 	.db #0x50	; 80	'P'
   6095 0F                 1040 	.db #0x0F	; 15
   6096 D2                 1041 	.db #0xD2	; 210
   6097 50                 1042 	.db #0x50	; 80	'P'
   6098 50                 1043 	.db #0x50	; 80	'P'
   6099 0F                 1044 	.db #0x0F	; 15
   609A 1E                 1045 	.db #0x1E	; 30
   609B 70                 1046 	.db #0x70	; 112	'p'
   609C F0                 1047 	.db #0xF0	; 240
   609D                    1048 _station_large_ew:
   609D 0F                 1049 	.db #0x0F	; 15
   609E 0F                 1050 	.db #0x0F	; 15
   609F 0F                 1051 	.db #0x0F	; 15
   60A0 0F                 1052 	.db #0x0F	; 15
   60A1 0F                 1053 	.db #0x0F	; 15
   60A2 0F                 1054 	.db #0x0F	; 15
   60A3 0F                 1055 	.db #0x0F	; 15
   60A4 0F                 1056 	.db #0x0F	; 15
   60A5 0F                 1057 	.db #0x0F	; 15
   60A6 08                 1058 	.db #0x08	; 8
   60A7 01                 1059 	.db #0x01	; 1
   60A8 0F                 1060 	.db #0x0F	; 15
   60A9 08                 1061 	.db #0x08	; 8
   60AA 30                 1062 	.db #0x30	; 48	'0'
   60AB E0                 1063 	.db #0xE0	; 224
   60AC 01                 1064 	.db #0x01	; 1
   60AD 38                 1065 	.db #0x38	; 56	'8'
   60AE F0                 1066 	.db #0xF0	; 240
   60AF F0                 1067 	.db #0xF0	; 240
   60B0 E1                 1068 	.db #0xE1	; 225
   60B1 3C                 1069 	.db #0x3C	; 60
   60B2 F0                 1070 	.db #0xF0	; 240
   60B3 F0                 1071 	.db #0xF0	; 240
   60B4 E1                 1072 	.db #0xE1	; 225
   60B5 0F                 1073 	.db #0x0F	; 15
   60B6 0F                 1074 	.db #0x0F	; 15
   60B7 0F                 1075 	.db #0x0F	; 15
   60B8 0F                 1076 	.db #0x0F	; 15
   60B9 F0                 1077 	.db #0xF0	; 240
   60BA F0                 1078 	.db #0xF0	; 240
   60BB F0                 1079 	.db #0xF0	; 240
   60BC F0                 1080 	.db #0xF0	; 240
   60BD 00                 1081 	.db #0x00	; 0
   60BE 00                 1082 	.db #0x00	; 0
   60BF 00                 1083 	.db #0x00	; 0
   60C0 00                 1084 	.db #0x00	; 0
   60C1 F0                 1085 	.db #0xF0	; 240
   60C2 F0                 1086 	.db #0xF0	; 240
   60C3 F0                 1087 	.db #0xF0	; 240
   60C4 D0                 1088 	.db #0xD0	; 208
   60C5 80                 1089 	.db #0x80	; 128
   60C6 00                 1090 	.db #0x00	; 0
   60C7 00                 1091 	.db #0x00	; 0
   60C8 21                 1092 	.db #0x21	; 33
   60C9 F0                 1093 	.db #0xF0	; 240
   60CA F0                 1094 	.db #0xF0	; 240
   60CB F0                 1095 	.db #0xF0	; 240
   60CC 43                 1096 	.db #0x43	; 67	'C'
   60CD 80                 1097 	.db #0x80	; 128
   60CE 00                 1098 	.db #0x00	; 0
   60CF 00                 1099 	.db #0x00	; 0
   60D0 87                 1100 	.db #0x87	; 135
   60D1 F0                 1101 	.db #0xF0	; 240
   60D2 F0                 1102 	.db #0xF0	; 240
   60D3 D0                 1103 	.db #0xD0	; 208
   60D4 0F                 1104 	.db #0x0F	; 15
   60D5 80                 1105 	.db #0x80	; 128
   60D6 00                 1106 	.db #0x00	; 0
   60D7 21                 1107 	.db #0x21	; 33
   60D8 0F                 1108 	.db #0x0F	; 15
   60D9 F0                 1109 	.db #0xF0	; 240
   60DA F0                 1110 	.db #0xF0	; 240
   60DB C3                 1111 	.db #0xC3	; 195
   60DC 0F                 1112 	.db #0x0F	; 15
   60DD                    1113 _rail_ew:
   60DD 0F                 1114 	.db #0x0F	; 15
   60DE 0F                 1115 	.db #0x0F	; 15
   60DF 0F                 1116 	.db #0x0F	; 15
   60E0 0F                 1117 	.db #0x0F	; 15
   60E1 2F                 1118 	.db #0x2F	; 47
   60E2 0F                 1119 	.db #0x0F	; 15
   60E3 2F                 1120 	.db #0x2F	; 47
   60E4 2F                 1121 	.db #0x2F	; 47
   60E5 0F                 1122 	.db #0x0F	; 15
   60E6 0F                 1123 	.db #0x0F	; 15
   60E7 0F                 1124 	.db #0x0F	; 15
   60E8 0F                 1125 	.db #0x0F	; 15
   60E9 0F                 1126 	.db #0x0F	; 15
   60EA 0F                 1127 	.db #0x0F	; 15
   60EB 0F                 1128 	.db #0x0F	; 15
   60EC 0F                 1129 	.db #0x0F	; 15
   60ED 0F                 1130 	.db #0x0F	; 15
   60EE 2F                 1131 	.db #0x2F	; 47
   60EF 0F                 1132 	.db #0x0F	; 15
   60F0 0F                 1133 	.db #0x0F	; 15
   60F1 4F                 1134 	.db #0x4F	; 79	'O'
   60F2 0F                 1135 	.db #0x0F	; 15
   60F3 0F                 1136 	.db #0x0F	; 15
   60F4 4F                 1137 	.db #0x4F	; 79	'O'
   60F5 0F                 1138 	.db #0x0F	; 15
   60F6 0F                 1139 	.db #0x0F	; 15
   60F7 0F                 1140 	.db #0x0F	; 15
   60F8 0F                 1141 	.db #0x0F	; 15
   60F9 F0                 1142 	.db #0xF0	; 240
   60FA F0                 1143 	.db #0xF0	; 240
   60FB F0                 1144 	.db #0xF0	; 240
   60FC F0                 1145 	.db #0xF0	; 240
   60FD 00                 1146 	.db #0x00	; 0
   60FE 00                 1147 	.db #0x00	; 0
   60FF 00                 1148 	.db #0x00	; 0
   6100 00                 1149 	.db #0x00	; 0
   6101 F0                 1150 	.db #0xF0	; 240
   6102 F0                 1151 	.db #0xF0	; 240
   6103 F0                 1152 	.db #0xF0	; 240
   6104 F0                 1153 	.db #0xF0	; 240
   6105 0F                 1154 	.db #0x0F	; 15
   6106 0F                 1155 	.db #0x0F	; 15
   6107 0F                 1156 	.db #0x0F	; 15
   6108 0F                 1157 	.db #0x0F	; 15
   6109 0F                 1158 	.db #0x0F	; 15
   610A 0F                 1159 	.db #0x0F	; 15
   610B 8F                 1160 	.db #0x8F	; 143
   610C 0F                 1161 	.db #0x0F	; 15
   610D 0F                 1162 	.db #0x0F	; 15
   610E 8F                 1163 	.db #0x8F	; 143
   610F 0F                 1164 	.db #0x0F	; 15
   6110 4F                 1165 	.db #0x4F	; 79	'O'
   6111 0F                 1166 	.db #0x0F	; 15
   6112 0F                 1167 	.db #0x0F	; 15
   6113 0F                 1168 	.db #0x0F	; 15
   6114 0F                 1169 	.db #0x0F	; 15
   6115 0F                 1170 	.db #0x0F	; 15
   6116 0F                 1171 	.db #0x0F	; 15
   6117 0F                 1172 	.db #0x0F	; 15
   6118 0F                 1173 	.db #0x0F	; 15
   6119 2F                 1174 	.db #0x2F	; 47
   611A 0F                 1175 	.db #0x0F	; 15
   611B 2F                 1176 	.db #0x2F	; 47
   611C 0F                 1177 	.db #0x0F	; 15
   611D                    1178 _rail_ns:
   611D 0F                 1179 	.db #0x0F	; 15
   611E 1E                 1180 	.db #0x1E	; 30
   611F 43                 1181 	.db #0x43	; 67	'C'
   6120 0F                 1182 	.db #0x0F	; 15
   6121 0F                 1183 	.db #0x0F	; 15
   6122 9E                 1184 	.db #0x9E	; 158
   6123 43                 1185 	.db #0x43	; 67	'C'
   6124 8F                 1186 	.db #0x8F	; 143
   6125 0F                 1187 	.db #0x0F	; 15
   6126 1E                 1188 	.db #0x1E	; 30
   6127 43                 1189 	.db #0x43	; 67	'C'
   6128 0F                 1190 	.db #0x0F	; 15
   6129 0F                 1191 	.db #0x0F	; 15
   612A 1E                 1192 	.db #0x1E	; 30
   612B 43                 1193 	.db #0x43	; 67	'C'
   612C 0F                 1194 	.db #0x0F	; 15
   612D 0F                 1195 	.db #0x0F	; 15
   612E 1E                 1196 	.db #0x1E	; 30
   612F 43                 1197 	.db #0x43	; 67	'C'
   6130 0F                 1198 	.db #0x0F	; 15
   6131 0F                 1199 	.db #0x0F	; 15
   6132 1E                 1200 	.db #0x1E	; 30
   6133 43                 1201 	.db #0x43	; 67	'C'
   6134 2F                 1202 	.db #0x2F	; 47
   6135 0F                 1203 	.db #0x0F	; 15
   6136 1E                 1204 	.db #0x1E	; 30
   6137 43                 1205 	.db #0x43	; 67	'C'
   6138 0F                 1206 	.db #0x0F	; 15
   6139 2F                 1207 	.db #0x2F	; 47
   613A 1E                 1208 	.db #0x1E	; 30
   613B 43                 1209 	.db #0x43	; 67	'C'
   613C 0F                 1210 	.db #0x0F	; 15
   613D 0F                 1211 	.db #0x0F	; 15
   613E 1E                 1212 	.db #0x1E	; 30
   613F 43                 1213 	.db #0x43	; 67	'C'
   6140 0F                 1214 	.db #0x0F	; 15
   6141 0F                 1215 	.db #0x0F	; 15
   6142 1E                 1216 	.db #0x1E	; 30
   6143 43                 1217 	.db #0x43	; 67	'C'
   6144 0F                 1218 	.db #0x0F	; 15
   6145 0F                 1219 	.db #0x0F	; 15
   6146 1E                 1220 	.db #0x1E	; 30
   6147 43                 1221 	.db #0x43	; 67	'C'
   6148 0F                 1222 	.db #0x0F	; 15
   6149 0F                 1223 	.db #0x0F	; 15
   614A 1E                 1224 	.db #0x1E	; 30
   614B 53                 1225 	.db #0x53	; 83	'S'
   614C 0F                 1226 	.db #0x0F	; 15
   614D 0F                 1227 	.db #0x0F	; 15
   614E 9E                 1228 	.db #0x9E	; 158
   614F 43                 1229 	.db #0x43	; 67	'C'
   6150 0F                 1230 	.db #0x0F	; 15
   6151 4F                 1231 	.db #0x4F	; 79	'O'
   6152 1E                 1232 	.db #0x1E	; 30
   6153 43                 1233 	.db #0x43	; 67	'C'
   6154 0F                 1234 	.db #0x0F	; 15
   6155 0F                 1235 	.db #0x0F	; 15
   6156 1E                 1236 	.db #0x1E	; 30
   6157 43                 1237 	.db #0x43	; 67	'C'
   6158 4F                 1238 	.db #0x4F	; 79	'O'
   6159 0F                 1239 	.db #0x0F	; 15
   615A 1E                 1240 	.db #0x1E	; 30
   615B 43                 1241 	.db #0x43	; 67	'C'
   615C 0F                 1242 	.db #0x0F	; 15
   615D                    1243 _rail_en:
   615D 0F                 1244 	.db #0x0F	; 15
   615E 1E                 1245 	.db #0x1E	; 30
   615F 43                 1246 	.db #0x43	; 67	'C'
   6160 0F                 1247 	.db #0x0F	; 15
   6161 2F                 1248 	.db #0x2F	; 47
   6162 1E                 1249 	.db #0x1E	; 30
   6163 43                 1250 	.db #0x43	; 67	'C'
   6164 8F                 1251 	.db #0x8F	; 143
   6165 0F                 1252 	.db #0x0F	; 15
   6166 0F                 1253 	.db #0x0F	; 15
   6167 A1                 1254 	.db #0xA1	; 161
   6168 0F                 1255 	.db #0x0F	; 15
   6169 0F                 1256 	.db #0x0F	; 15
   616A 0F                 1257 	.db #0x0F	; 15
   616B 58                 1258 	.db #0x58	; 88	'X'
   616C 0F                 1259 	.db #0x0F	; 15
   616D 0F                 1260 	.db #0x0F	; 15
   616E 4F                 1261 	.db #0x4F	; 79	'O'
   616F 2C                 1262 	.db #0x2C	; 44
   6170 87                 1263 	.db #0x87	; 135
   6171 0F                 1264 	.db #0x0F	; 15
   6172 0F                 1265 	.db #0x0F	; 15
   6173 1E                 1266 	.db #0x1E	; 30
   6174 43                 1267 	.db #0x43	; 67	'C'
   6175 0F                 1268 	.db #0x0F	; 15
   6176 0F                 1269 	.db #0x0F	; 15
   6177 8F                 1270 	.db #0x8F	; 143
   6178 A1                 1271 	.db #0xA1	; 161
   6179 0F                 1272 	.db #0x0F	; 15
   617A 0F                 1273 	.db #0x0F	; 15
   617B 0F                 1274 	.db #0x0F	; 15
   617C 58                 1275 	.db #0x58	; 88	'X'
   617D 2F                 1276 	.db #0x2F	; 47
   617E 0F                 1277 	.db #0x0F	; 15
   617F 0F                 1278 	.db #0x0F	; 15
   6180 2C                 1279 	.db #0x2C	; 44
   6181 0F                 1280 	.db #0x0F	; 15
   6182 0F                 1281 	.db #0x0F	; 15
   6183 0F                 1282 	.db #0x0F	; 15
   6184 1E                 1283 	.db #0x1E	; 30
   6185 0F                 1284 	.db #0x0F	; 15
   6186 0F                 1285 	.db #0x0F	; 15
   6187 0F                 1286 	.db #0x0F	; 15
   6188 4F                 1287 	.db #0x4F	; 79	'O'
   6189 0F                 1288 	.db #0x0F	; 15
   618A 0F                 1289 	.db #0x0F	; 15
   618B 0F                 1290 	.db #0x0F	; 15
   618C 0F                 1291 	.db #0x0F	; 15
   618D 2F                 1292 	.db #0x2F	; 47
   618E 4F                 1293 	.db #0x4F	; 79	'O'
   618F 2F                 1294 	.db #0x2F	; 47
   6190 0F                 1295 	.db #0x0F	; 15
   6191 0F                 1296 	.db #0x0F	; 15
   6192 0F                 1297 	.db #0x0F	; 15
   6193 0F                 1298 	.db #0x0F	; 15
   6194 0F                 1299 	.db #0x0F	; 15
   6195 0F                 1300 	.db #0x0F	; 15
   6196 0F                 1301 	.db #0x0F	; 15
   6197 0F                 1302 	.db #0x0F	; 15
   6198 2F                 1303 	.db #0x2F	; 47
   6199 0F                 1304 	.db #0x0F	; 15
   619A 0F                 1305 	.db #0x0F	; 15
   619B 0F                 1306 	.db #0x0F	; 15
   619C 0F                 1307 	.db #0x0F	; 15
   619D                    1308 _rail_es:
   619D 0F                 1309 	.db #0x0F	; 15
   619E 0F                 1310 	.db #0x0F	; 15
   619F 0F                 1311 	.db #0x0F	; 15
   61A0 0F                 1312 	.db #0x0F	; 15
   61A1 0F                 1313 	.db #0x0F	; 15
   61A2 0F                 1314 	.db #0x0F	; 15
   61A3 0F                 1315 	.db #0x0F	; 15
   61A4 2F                 1316 	.db #0x2F	; 47
   61A5 0F                 1317 	.db #0x0F	; 15
   61A6 2F                 1318 	.db #0x2F	; 47
   61A7 0F                 1319 	.db #0x0F	; 15
   61A8 0F                 1320 	.db #0x0F	; 15
   61A9 1F                 1321 	.db #0x1F	; 31
   61AA 0F                 1322 	.db #0x0F	; 15
   61AB 0F                 1323 	.db #0x0F	; 15
   61AC 0F                 1324 	.db #0x0F	; 15
   61AD 0F                 1325 	.db #0x0F	; 15
   61AE 0F                 1326 	.db #0x0F	; 15
   61AF 0F                 1327 	.db #0x0F	; 15
   61B0 0F                 1328 	.db #0x0F	; 15
   61B1 0F                 1329 	.db #0x0F	; 15
   61B2 0F                 1330 	.db #0x0F	; 15
   61B3 1F                 1331 	.db #0x1F	; 31
   61B4 0F                 1332 	.db #0x0F	; 15
   61B5 0F                 1333 	.db #0x0F	; 15
   61B6 0F                 1334 	.db #0x0F	; 15
   61B7 0F                 1335 	.db #0x0F	; 15
   61B8 0F                 1336 	.db #0x0F	; 15
   61B9 4F                 1337 	.db #0x4F	; 79	'O'
   61BA 0F                 1338 	.db #0x0F	; 15
   61BB 0F                 1339 	.db #0x0F	; 15
   61BC 3C                 1340 	.db #0x3C	; 60
   61BD 0F                 1341 	.db #0x0F	; 15
   61BE 4F                 1342 	.db #0x4F	; 79	'O'
   61BF 0F                 1343 	.db #0x0F	; 15
   61C0 48                 1344 	.db #0x48	; 72	'H'
   61C1 0F                 1345 	.db #0x0F	; 15
   61C2 0F                 1346 	.db #0x0F	; 15
   61C3 4F                 1347 	.db #0x4F	; 79	'O'
   61C4 B0                 1348 	.db #0xB0	; 176
   61C5 0F                 1349 	.db #0x0F	; 15
   61C6 0F                 1350 	.db #0x0F	; 15
   61C7 1E                 1351 	.db #0x1E	; 30
   61C8 43                 1352 	.db #0x43	; 67	'C'
   61C9 0F                 1353 	.db #0x0F	; 15
   61CA 0F                 1354 	.db #0x0F	; 15
   61CB 2C                 1355 	.db #0x2C	; 44
   61CC 87                 1356 	.db #0x87	; 135
   61CD 0F                 1357 	.db #0x0F	; 15
   61CE 0F                 1358 	.db #0x0F	; 15
   61CF 58                 1359 	.db #0x58	; 88	'X'
   61D0 0F                 1360 	.db #0x0F	; 15
   61D1 0F                 1361 	.db #0x0F	; 15
   61D2 8F                 1362 	.db #0x8F	; 143
   61D3 A1                 1363 	.db #0xA1	; 161
   61D4 0F                 1364 	.db #0x0F	; 15
   61D5 0F                 1365 	.db #0x0F	; 15
   61D6 1E                 1366 	.db #0x1E	; 30
   61D7 43                 1367 	.db #0x43	; 67	'C'
   61D8 8F                 1368 	.db #0x8F	; 143
   61D9 0F                 1369 	.db #0x0F	; 15
   61DA 1E                 1370 	.db #0x1E	; 30
   61DB 43                 1371 	.db #0x43	; 67	'C'
   61DC 0F                 1372 	.db #0x0F	; 15
   61DD                    1373 _rail_wn:
   61DD 0F                 1374 	.db #0x0F	; 15
   61DE 1E                 1375 	.db #0x1E	; 30
   61DF 43                 1376 	.db #0x43	; 67	'C'
   61E0 0F                 1377 	.db #0x0F	; 15
   61E1 0F                 1378 	.db #0x0F	; 15
   61E2 1E                 1379 	.db #0x1E	; 30
   61E3 53                 1380 	.db #0x53	; 83	'S'
   61E4 0F                 1381 	.db #0x0F	; 15
   61E5 0F                 1382 	.db #0x0F	; 15
   61E6 2C                 1383 	.db #0x2C	; 44
   61E7 87                 1384 	.db #0x87	; 135
   61E8 0F                 1385 	.db #0x0F	; 15
   61E9 2F                 1386 	.db #0x2F	; 47
   61EA 58                 1387 	.db #0x58	; 88	'X'
   61EB 0F                 1388 	.db #0x0F	; 15
   61EC 0F                 1389 	.db #0x0F	; 15
   61ED 0F                 1390 	.db #0x0F	; 15
   61EE A1                 1391 	.db #0xA1	; 161
   61EF 0F                 1392 	.db #0x0F	; 15
   61F0 0F                 1393 	.db #0x0F	; 15
   61F1 1E                 1394 	.db #0x1E	; 30
   61F2 43                 1395 	.db #0x43	; 67	'C'
   61F3 0F                 1396 	.db #0x0F	; 15
   61F4 8F                 1397 	.db #0x8F	; 143
   61F5 2C                 1398 	.db #0x2C	; 44
   61F6 87                 1399 	.db #0x87	; 135
   61F7 0F                 1400 	.db #0x0F	; 15
   61F8 0F                 1401 	.db #0x0F	; 15
   61F9 D0                 1402 	.db #0xD0	; 208
   61FA 1F                 1403 	.db #0x1F	; 31
   61FB 0F                 1404 	.db #0x0F	; 15
   61FC 0F                 1405 	.db #0x0F	; 15
   61FD 21                 1406 	.db #0x21	; 33
   61FE 0F                 1407 	.db #0x0F	; 15
   61FF 0F                 1408 	.db #0x0F	; 15
   6200 0F                 1409 	.db #0x0F	; 15
   6201 C3                 1410 	.db #0xC3	; 195
   6202 0F                 1411 	.db #0x0F	; 15
   6203 0F                 1412 	.db #0x0F	; 15
   6204 0F                 1413 	.db #0x0F	; 15
   6205 0F                 1414 	.db #0x0F	; 15
   6206 0F                 1415 	.db #0x0F	; 15
   6207 0F                 1416 	.db #0x0F	; 15
   6208 0F                 1417 	.db #0x0F	; 15
   6209 1F                 1418 	.db #0x1F	; 31
   620A 0F                 1419 	.db #0x0F	; 15
   620B 4F                 1420 	.db #0x4F	; 79	'O'
   620C 4F                 1421 	.db #0x4F	; 79	'O'
   620D 0F                 1422 	.db #0x0F	; 15
   620E 0F                 1423 	.db #0x0F	; 15
   620F 0F                 1424 	.db #0x0F	; 15
   6210 0F                 1425 	.db #0x0F	; 15
   6211 0F                 1426 	.db #0x0F	; 15
   6212 1F                 1427 	.db #0x1F	; 31
   6213 0F                 1428 	.db #0x0F	; 15
   6214 0F                 1429 	.db #0x0F	; 15
   6215 2F                 1430 	.db #0x2F	; 47
   6216 0F                 1431 	.db #0x0F	; 15
   6217 0F                 1432 	.db #0x0F	; 15
   6218 0F                 1433 	.db #0x0F	; 15
   6219 0F                 1434 	.db #0x0F	; 15
   621A 0F                 1435 	.db #0x0F	; 15
   621B 0F                 1436 	.db #0x0F	; 15
   621C 0F                 1437 	.db #0x0F	; 15
   621D                    1438 _rail_ws:
   621D 0F                 1439 	.db #0x0F	; 15
   621E 0F                 1440 	.db #0x0F	; 15
   621F 0F                 1441 	.db #0x0F	; 15
   6220 0F                 1442 	.db #0x0F	; 15
   6221 0F                 1443 	.db #0x0F	; 15
   6222 0F                 1444 	.db #0x0F	; 15
   6223 0F                 1445 	.db #0x0F	; 15
   6224 0F                 1446 	.db #0x0F	; 15
   6225 2F                 1447 	.db #0x2F	; 47
   6226 0F                 1448 	.db #0x0F	; 15
   6227 4F                 1449 	.db #0x4F	; 79	'O'
   6228 2F                 1450 	.db #0x2F	; 47
   6229 0F                 1451 	.db #0x0F	; 15
   622A 0F                 1452 	.db #0x0F	; 15
   622B 0F                 1453 	.db #0x0F	; 15
   622C 0F                 1454 	.db #0x0F	; 15
   622D 0F                 1455 	.db #0x0F	; 15
   622E 0F                 1456 	.db #0x0F	; 15
   622F 0F                 1457 	.db #0x0F	; 15
   6230 0F                 1458 	.db #0x0F	; 15
   6231 0F                 1459 	.db #0x0F	; 15
   6232 0F                 1460 	.db #0x0F	; 15
   6233 0F                 1461 	.db #0x0F	; 15
   6234 0F                 1462 	.db #0x0F	; 15
   6235 0F                 1463 	.db #0x0F	; 15
   6236 2F                 1464 	.db #0x2F	; 47
   6237 0F                 1465 	.db #0x0F	; 15
   6238 0F                 1466 	.db #0x0F	; 15
   6239 C3                 1467 	.db #0xC3	; 195
   623A 0F                 1468 	.db #0x0F	; 15
   623B 0F                 1469 	.db #0x0F	; 15
   623C 0F                 1470 	.db #0x0F	; 15
   623D 21                 1471 	.db #0x21	; 33
   623E 0F                 1472 	.db #0x0F	; 15
   623F 2F                 1473 	.db #0x2F	; 47
   6240 0F                 1474 	.db #0x0F	; 15
   6241 D0                 1475 	.db #0xD0	; 208
   6242 0F                 1476 	.db #0x0F	; 15
   6243 0F                 1477 	.db #0x0F	; 15
   6244 0F                 1478 	.db #0x0F	; 15
   6245 2C                 1479 	.db #0x2C	; 44
   6246 87                 1480 	.db #0x87	; 135
   6247 0F                 1481 	.db #0x0F	; 15
   6248 0F                 1482 	.db #0x0F	; 15
   6249 1E                 1483 	.db #0x1E	; 30
   624A 43                 1484 	.db #0x43	; 67	'C'
   624B 0F                 1485 	.db #0x0F	; 15
   624C 2F                 1486 	.db #0x2F	; 47
   624D 4F                 1487 	.db #0x4F	; 79	'O'
   624E A1                 1488 	.db #0xA1	; 161
   624F 0F                 1489 	.db #0x0F	; 15
   6250 0F                 1490 	.db #0x0F	; 15
   6251 0F                 1491 	.db #0x0F	; 15
   6252 58                 1492 	.db #0x58	; 88	'X'
   6253 4F                 1493 	.db #0x4F	; 79	'O'
   6254 0F                 1494 	.db #0x0F	; 15
   6255 0F                 1495 	.db #0x0F	; 15
   6256 2C                 1496 	.db #0x2C	; 44
   6257 87                 1497 	.db #0x87	; 135
   6258 4F                 1498 	.db #0x4F	; 79	'O'
   6259 0F                 1499 	.db #0x0F	; 15
   625A 1E                 1500 	.db #0x1E	; 30
   625B 43                 1501 	.db #0x43	; 67	'C'
   625C 0F                 1502 	.db #0x0F	; 15
   625D                    1503 _rail_ew_n:
   625D 0F                 1504 	.db #0x0F	; 15
   625E 1E                 1505 	.db #0x1E	; 30
   625F 43                 1506 	.db #0x43	; 67	'C'
   6260 0F                 1507 	.db #0x0F	; 15
   6261 0F                 1508 	.db #0x0F	; 15
   6262 9E                 1509 	.db #0x9E	; 158
   6263 43                 1510 	.db #0x43	; 67	'C'
   6264 0F                 1511 	.db #0x0F	; 15
   6265 0F                 1512 	.db #0x0F	; 15
   6266 1E                 1513 	.db #0x1E	; 30
   6267 53                 1514 	.db #0x53	; 83	'S'
   6268 0F                 1515 	.db #0x0F	; 15
   6269 0F                 1516 	.db #0x0F	; 15
   626A 2C                 1517 	.db #0x2C	; 44
   626B 87                 1518 	.db #0x87	; 135
   626C 0F                 1519 	.db #0x0F	; 15
   626D 4F                 1520 	.db #0x4F	; 79	'O'
   626E 58                 1521 	.db #0x58	; 88	'X'
   626F 0F                 1522 	.db #0x0F	; 15
   6270 0F                 1523 	.db #0x0F	; 15
   6271 0F                 1524 	.db #0x0F	; 15
   6272 A1                 1525 	.db #0xA1	; 161
   6273 0F                 1526 	.db #0x0F	; 15
   6274 8F                 1527 	.db #0x8F	; 143
   6275 1E                 1528 	.db #0x1E	; 30
   6276 43                 1529 	.db #0x43	; 67	'C'
   6277 0F                 1530 	.db #0x0F	; 15
   6278 0F                 1531 	.db #0x0F	; 15
   6279 E0                 1532 	.db #0xE0	; 224
   627A F0                 1533 	.db #0xF0	; 240
   627B F0                 1534 	.db #0xF0	; 240
   627C F0                 1535 	.db #0xF0	; 240
   627D 00                 1536 	.db #0x00	; 0
   627E 00                 1537 	.db #0x00	; 0
   627F 00                 1538 	.db #0x00	; 0
   6280 00                 1539 	.db #0x00	; 0
   6281 F0                 1540 	.db #0xF0	; 240
   6282 F0                 1541 	.db #0xF0	; 240
   6283 F0                 1542 	.db #0xF0	; 240
   6284 F0                 1543 	.db #0xF0	; 240
   6285 0F                 1544 	.db #0x0F	; 15
   6286 0F                 1545 	.db #0x0F	; 15
   6287 0F                 1546 	.db #0x0F	; 15
   6288 0F                 1547 	.db #0x0F	; 15
   6289 2F                 1548 	.db #0x2F	; 47
   628A 1F                 1549 	.db #0x1F	; 31
   628B 0F                 1550 	.db #0x0F	; 15
   628C 4F                 1551 	.db #0x4F	; 79	'O'
   628D 0F                 1552 	.db #0x0F	; 15
   628E 0F                 1553 	.db #0x0F	; 15
   628F 0F                 1554 	.db #0x0F	; 15
   6290 0F                 1555 	.db #0x0F	; 15
   6291 0F                 1556 	.db #0x0F	; 15
   6292 0F                 1557 	.db #0x0F	; 15
   6293 0F                 1558 	.db #0x0F	; 15
   6294 0F                 1559 	.db #0x0F	; 15
   6295 0F                 1560 	.db #0x0F	; 15
   6296 8F                 1561 	.db #0x8F	; 143
   6297 4F                 1562 	.db #0x4F	; 79	'O'
   6298 0F                 1563 	.db #0x0F	; 15
   6299 0F                 1564 	.db #0x0F	; 15
   629A 0F                 1565 	.db #0x0F	; 15
   629B 0F                 1566 	.db #0x0F	; 15
   629C 0F                 1567 	.db #0x0F	; 15
   629D                    1568 _rail_ew_s:
   629D 0F                 1569 	.db #0x0F	; 15
   629E 0F                 1570 	.db #0x0F	; 15
   629F 0F                 1571 	.db #0x0F	; 15
   62A0 0F                 1572 	.db #0x0F	; 15
   62A1 0F                 1573 	.db #0x0F	; 15
   62A2 0F                 1574 	.db #0x0F	; 15
   62A3 0F                 1575 	.db #0x0F	; 15
   62A4 8F                 1576 	.db #0x8F	; 143
   62A5 0F                 1577 	.db #0x0F	; 15
   62A6 4F                 1578 	.db #0x4F	; 79	'O'
   62A7 0F                 1579 	.db #0x0F	; 15
   62A8 0F                 1580 	.db #0x0F	; 15
   62A9 0F                 1581 	.db #0x0F	; 15
   62AA 0F                 1582 	.db #0x0F	; 15
   62AB 0F                 1583 	.db #0x0F	; 15
   62AC 0F                 1584 	.db #0x0F	; 15
   62AD 0F                 1585 	.db #0x0F	; 15
   62AE 0F                 1586 	.db #0x0F	; 15
   62AF 4F                 1587 	.db #0x4F	; 79	'O'
   62B0 0F                 1588 	.db #0x0F	; 15
   62B1 4F                 1589 	.db #0x4F	; 79	'O'
   62B2 0F                 1590 	.db #0x0F	; 15
   62B3 0F                 1591 	.db #0x0F	; 15
   62B4 2F                 1592 	.db #0x2F	; 47
   62B5 0F                 1593 	.db #0x0F	; 15
   62B6 0F                 1594 	.db #0x0F	; 15
   62B7 0F                 1595 	.db #0x0F	; 15
   62B8 0F                 1596 	.db #0x0F	; 15
   62B9 F0                 1597 	.db #0xF0	; 240
   62BA F0                 1598 	.db #0xF0	; 240
   62BB F0                 1599 	.db #0xF0	; 240
   62BC F0                 1600 	.db #0xF0	; 240
   62BD 00                 1601 	.db #0x00	; 0
   62BE 00                 1602 	.db #0x00	; 0
   62BF 00                 1603 	.db #0x00	; 0
   62C0 00                 1604 	.db #0x00	; 0
   62C1 E0                 1605 	.db #0xE0	; 224
   62C2 F0                 1606 	.db #0xF0	; 240
   62C3 F0                 1607 	.db #0xF0	; 240
   62C4 F0                 1608 	.db #0xF0	; 240
   62C5 1E                 1609 	.db #0x1E	; 30
   62C6 43                 1610 	.db #0x43	; 67	'C'
   62C7 0F                 1611 	.db #0x0F	; 15
   62C8 0F                 1612 	.db #0x0F	; 15
   62C9 0F                 1613 	.db #0x0F	; 15
   62CA A1                 1614 	.db #0xA1	; 161
   62CB 4F                 1615 	.db #0x4F	; 79	'O'
   62CC 0F                 1616 	.db #0x0F	; 15
   62CD 0F                 1617 	.db #0x0F	; 15
   62CE 58                 1618 	.db #0x58	; 88	'X'
   62CF 0F                 1619 	.db #0x0F	; 15
   62D0 0F                 1620 	.db #0x0F	; 15
   62D1 0F                 1621 	.db #0x0F	; 15
   62D2 2C                 1622 	.db #0x2C	; 44
   62D3 87                 1623 	.db #0x87	; 135
   62D4 8F                 1624 	.db #0x8F	; 143
   62D5 4F                 1625 	.db #0x4F	; 79	'O'
   62D6 1E                 1626 	.db #0x1E	; 30
   62D7 43                 1627 	.db #0x43	; 67	'C'
   62D8 0F                 1628 	.db #0x0F	; 15
   62D9 0F                 1629 	.db #0x0F	; 15
   62DA 1E                 1630 	.db #0x1E	; 30
   62DB 43                 1631 	.db #0x43	; 67	'C'
   62DC 0F                 1632 	.db #0x0F	; 15
   62DD                    1633 _rail_ns_w:
   62DD 0F                 1634 	.db #0x0F	; 15
   62DE 1E                 1635 	.db #0x1E	; 30
   62DF 43                 1636 	.db #0x43	; 67	'C'
   62E0 0F                 1637 	.db #0x0F	; 15
   62E1 4F                 1638 	.db #0x4F	; 79	'O'
   62E2 1E                 1639 	.db #0x1E	; 30
   62E3 43                 1640 	.db #0x43	; 67	'C'
   62E4 2F                 1641 	.db #0x2F	; 47
   62E5 0F                 1642 	.db #0x0F	; 15
   62E6 1E                 1643 	.db #0x1E	; 30
   62E7 43                 1644 	.db #0x43	; 67	'C'
   62E8 0F                 1645 	.db #0x0F	; 15
   62E9 0F                 1646 	.db #0x0F	; 15
   62EA 1E                 1647 	.db #0x1E	; 30
   62EB 43                 1648 	.db #0x43	; 67	'C'
   62EC 0F                 1649 	.db #0x0F	; 15
   62ED 0F                 1650 	.db #0x0F	; 15
   62EE 5E                 1651 	.db #0x5E	; 94
   62EF 43                 1652 	.db #0x43	; 67	'C'
   62F0 0F                 1653 	.db #0x0F	; 15
   62F1 0F                 1654 	.db #0x0F	; 15
   62F2 1E                 1655 	.db #0x1E	; 30
   62F3 43                 1656 	.db #0x43	; 67	'C'
   62F4 0F                 1657 	.db #0x0F	; 15
   62F5 0F                 1658 	.db #0x0F	; 15
   62F6 1E                 1659 	.db #0x1E	; 30
   62F7 43                 1660 	.db #0x43	; 67	'C'
   62F8 0F                 1661 	.db #0x0F	; 15
   62F9 E1                 1662 	.db #0xE1	; 225
   62FA 1E                 1663 	.db #0x1E	; 30
   62FB 43                 1664 	.db #0x43	; 67	'C'
   62FC 4F                 1665 	.db #0x4F	; 79	'O'
   62FD 10                 1666 	.db #0x10	; 16
   62FE 1E                 1667 	.db #0x1E	; 30
   62FF 43                 1668 	.db #0x43	; 67	'C'
   6300 0F                 1669 	.db #0x0F	; 15
   6301 E0                 1670 	.db #0xE0	; 224
   6302 96                 1671 	.db #0x96	; 150
   6303 43                 1672 	.db #0x43	; 67	'C'
   6304 0F                 1673 	.db #0x0F	; 15
   6305 1E                 1674 	.db #0x1E	; 30
   6306 52                 1675 	.db #0x52	; 82	'R'
   6307 43                 1676 	.db #0x43	; 67	'C'
   6308 0F                 1677 	.db #0x0F	; 15
   6309 0F                 1678 	.db #0x0F	; 15
   630A B0                 1679 	.db #0xB0	; 176
   630B 53                 1680 	.db #0x53	; 83	'S'
   630C 0F                 1681 	.db #0x0F	; 15
   630D 0F                 1682 	.db #0x0F	; 15
   630E 58                 1683 	.db #0x58	; 88	'X'
   630F 43                 1684 	.db #0x43	; 67	'C'
   6310 0F                 1685 	.db #0x0F	; 15
   6311 2F                 1686 	.db #0x2F	; 47
   6312 2C                 1687 	.db #0x2C	; 44
   6313 43                 1688 	.db #0x43	; 67	'C'
   6314 0F                 1689 	.db #0x0F	; 15
   6315 0F                 1690 	.db #0x0F	; 15
   6316 1E                 1691 	.db #0x1E	; 30
   6317 43                 1692 	.db #0x43	; 67	'C'
   6318 2F                 1693 	.db #0x2F	; 47
   6319 0F                 1694 	.db #0x0F	; 15
   631A 1E                 1695 	.db #0x1E	; 30
   631B 43                 1696 	.db #0x43	; 67	'C'
   631C 0F                 1697 	.db #0x0F	; 15
   631D                    1698 _rail_ns_e:
   631D 0F                 1699 	.db #0x0F	; 15
   631E 1E                 1700 	.db #0x1E	; 30
   631F 43                 1701 	.db #0x43	; 67	'C'
   6320 0F                 1702 	.db #0x0F	; 15
   6321 0F                 1703 	.db #0x0F	; 15
   6322 1E                 1704 	.db #0x1E	; 30
   6323 43                 1705 	.db #0x43	; 67	'C'
   6324 2F                 1706 	.db #0x2F	; 47
   6325 0F                 1707 	.db #0x0F	; 15
   6326 9E                 1708 	.db #0x9E	; 158
   6327 43                 1709 	.db #0x43	; 67	'C'
   6328 0F                 1710 	.db #0x0F	; 15
   6329 0F                 1711 	.db #0x0F	; 15
   632A 1E                 1712 	.db #0x1E	; 30
   632B 43                 1713 	.db #0x43	; 67	'C'
   632C 0F                 1714 	.db #0x0F	; 15
   632D 0F                 1715 	.db #0x0F	; 15
   632E 1E                 1716 	.db #0x1E	; 30
   632F 43                 1717 	.db #0x43	; 67	'C'
   6330 8F                 1718 	.db #0x8F	; 143
   6331 0F                 1719 	.db #0x0F	; 15
   6332 1E                 1720 	.db #0x1E	; 30
   6333 43                 1721 	.db #0x43	; 67	'C'
   6334 0F                 1722 	.db #0x0F	; 15
   6335 0F                 1723 	.db #0x0F	; 15
   6336 5E                 1724 	.db #0x5E	; 94
   6337 43                 1725 	.db #0x43	; 67	'C'
   6338 0F                 1726 	.db #0x0F	; 15
   6339 4F                 1727 	.db #0x4F	; 79	'O'
   633A 1E                 1728 	.db #0x1E	; 30
   633B 43                 1729 	.db #0x43	; 67	'C'
   633C 3C                 1730 	.db #0x3C	; 60
   633D 0F                 1731 	.db #0x0F	; 15
   633E 1E                 1732 	.db #0x1E	; 30
   633F 43                 1733 	.db #0x43	; 67	'C'
   6340 48                 1734 	.db #0x48	; 72	'H'
   6341 0F                 1735 	.db #0x0F	; 15
   6342 1E                 1736 	.db #0x1E	; 30
   6343 43                 1737 	.db #0x43	; 67	'C'
   6344 B0                 1738 	.db #0xB0	; 176
   6345 0F                 1739 	.db #0x0F	; 15
   6346 1E                 1740 	.db #0x1E	; 30
   6347 52                 1741 	.db #0x52	; 82	'R'
   6348 43                 1742 	.db #0x43	; 67	'C'
   6349 0F                 1743 	.db #0x0F	; 15
   634A 5E                 1744 	.db #0x5E	; 94
   634B 60                 1745 	.db #0x60	; 96
   634C 87                 1746 	.db #0x87	; 135
   634D 0F                 1747 	.db #0x0F	; 15
   634E 1E                 1748 	.db #0x1E	; 30
   634F 50                 1749 	.db #0x50	; 80	'P'
   6350 0F                 1750 	.db #0x0F	; 15
   6351 0F                 1751 	.db #0x0F	; 15
   6352 1E                 1752 	.db #0x1E	; 30
   6353 21                 1753 	.db #0x21	; 33
   6354 0F                 1754 	.db #0x0F	; 15
   6355 2F                 1755 	.db #0x2F	; 47
   6356 1E                 1756 	.db #0x1E	; 30
   6357 43                 1757 	.db #0x43	; 67	'C'
   6358 8F                 1758 	.db #0x8F	; 143
   6359 0F                 1759 	.db #0x0F	; 15
   635A 1E                 1760 	.db #0x1E	; 30
   635B 43                 1761 	.db #0x43	; 67	'C'
   635C 0F                 1762 	.db #0x0F	; 15
   635D                    1763 _lock:
   635D 00                 1764 	.db #0x00	; 0
   635E 00                 1765 	.db #0x00	; 0
   635F 00                 1766 	.db #0x00	; 0
   6360 00                 1767 	.db #0x00	; 0
   6361 00                 1768 	.db #0x00	; 0
   6362 00                 1769 	.db #0x00	; 0
   6363 00                 1770 	.db #0x00	; 0
   6364 00                 1771 	.db #0x00	; 0
   6365 00                 1772 	.db #0x00	; 0
   6366 00                 1773 	.db #0x00	; 0
   6367 00                 1774 	.db #0x00	; 0
   6368 00                 1775 	.db #0x00	; 0
   6369 00                 1776 	.db #0x00	; 0
   636A 00                 1777 	.db #0x00	; 0
   636B 00                 1778 	.db #0x00	; 0
   636C 00                 1779 	.db #0x00	; 0
   636D 00                 1780 	.db #0x00	; 0
   636E 00                 1781 	.db #0x00	; 0
   636F 00                 1782 	.db #0x00	; 0
   6370 00                 1783 	.db #0x00	; 0
   6371 00                 1784 	.db #0x00	; 0
   6372 00                 1785 	.db #0x00	; 0
   6373 00                 1786 	.db #0x00	; 0
   6374 00                 1787 	.db #0x00	; 0
   6375 00                 1788 	.db #0x00	; 0
   6376 00                 1789 	.db #0x00	; 0
   6377 00                 1790 	.db #0x00	; 0
   6378 00                 1791 	.db #0x00	; 0
   6379 00                 1792 	.db #0x00	; 0
   637A 00                 1793 	.db #0x00	; 0
   637B 04                 1794 	.db #0x04	; 4
   637C 00                 1795 	.db #0x00	; 0
   637D 00                 1796 	.db #0x00	; 0
   637E 00                 1797 	.db #0x00	; 0
   637F 00                 1798 	.db #0x00	; 0
   6380 00                 1799 	.db #0x00	; 0
   6381 00                 1800 	.db #0x00	; 0
   6382 00                 1801 	.db #0x00	; 0
   6383 00                 1802 	.db #0x00	; 0
   6384 00                 1803 	.db #0x00	; 0
   6385 00                 1804 	.db #0x00	; 0
   6386 00                 1805 	.db #0x00	; 0
   6387 00                 1806 	.db #0x00	; 0
   6388 00                 1807 	.db #0x00	; 0
   6389 00                 1808 	.db #0x00	; 0
   638A 00                 1809 	.db #0x00	; 0
   638B 00                 1810 	.db #0x00	; 0
   638C 00                 1811 	.db #0x00	; 0
   638D 00                 1812 	.db #0x00	; 0
   638E 00                 1813 	.db #0x00	; 0
   638F 08                 1814 	.db #0x08	; 8
   6390 08                 1815 	.db #0x08	; 8
   6391 00                 1816 	.db #0x00	; 0
   6392 00                 1817 	.db #0x00	; 0
   6393 00                 1818 	.db #0x00	; 0
   6394 00                 1819 	.db #0x00	; 0
   6395 00                 1820 	.db #0x00	; 0
   6396 00                 1821 	.db #0x00	; 0
   6397 00                 1822 	.db #0x00	; 0
   6398 00                 1823 	.db #0x00	; 0
   6399 00                 1824 	.db #0x00	; 0
   639A 00                 1825 	.db #0x00	; 0
   639B 00                 1826 	.db #0x00	; 0
   639C 00                 1827 	.db #0x00	; 0
   639D 00                 1828 	.db #0x00	; 0
   639E 00                 1829 	.db #0x00	; 0
   639F 00                 1830 	.db #0x00	; 0
   63A0 00                 1831 	.db #0x00	; 0
   63A1 00                 1832 	.db #0x00	; 0
   63A2 00                 1833 	.db #0x00	; 0
   63A3 08                 1834 	.db #0x08	; 8
   63A4 08                 1835 	.db #0x08	; 8
   63A5 00                 1836 	.db #0x00	; 0
   63A6 00                 1837 	.db #0x00	; 0
   63A7 00                 1838 	.db #0x00	; 0
   63A8 00                 1839 	.db #0x00	; 0
   63A9 00                 1840 	.db #0x00	; 0
   63AA 00                 1841 	.db #0x00	; 0
   63AB 00                 1842 	.db #0x00	; 0
   63AC 00                 1843 	.db #0x00	; 0
   63AD 00                 1844 	.db #0x00	; 0
   63AE 00                 1845 	.db #0x00	; 0
   63AF 00                 1846 	.db #0x00	; 0
   63B0 00                 1847 	.db #0x00	; 0
   63B1 00                 1848 	.db #0x00	; 0
   63B2 00                 1849 	.db #0x00	; 0
   63B3 00                 1850 	.db #0x00	; 0
   63B4 00                 1851 	.db #0x00	; 0
   63B5 00                 1852 	.db #0x00	; 0
   63B6 04                 1853 	.db #0x04	; 4
   63B7 00                 1854 	.db #0x00	; 0
   63B8 04                 1855 	.db #0x04	; 4
   63B9 00                 1856 	.db #0x00	; 0
   63BA 00                 1857 	.db #0x00	; 0
   63BB 00                 1858 	.db #0x00	; 0
   63BC 00                 1859 	.db #0x00	; 0
   63BD 00                 1860 	.db #0x00	; 0
   63BE 00                 1861 	.db #0x00	; 0
   63BF 00                 1862 	.db #0x00	; 0
   63C0 00                 1863 	.db #0x00	; 0
   63C1 00                 1864 	.db #0x00	; 0
   63C2 00                 1865 	.db #0x00	; 0
   63C3 00                 1866 	.db #0x00	; 0
   63C4 00                 1867 	.db #0x00	; 0
   63C5 00                 1868 	.db #0x00	; 0
   63C6 00                 1869 	.db #0x00	; 0
   63C7 00                 1870 	.db #0x00	; 0
   63C8 00                 1871 	.db #0x00	; 0
   63C9 00                 1872 	.db #0x00	; 0
   63CA 04                 1873 	.db #0x04	; 4
   63CB 00                 1874 	.db #0x00	; 0
   63CC 04                 1875 	.db #0x04	; 4
   63CD 00                 1876 	.db #0x00	; 0
   63CE 00                 1877 	.db #0x00	; 0
   63CF 00                 1878 	.db #0x00	; 0
   63D0 00                 1879 	.db #0x00	; 0
   63D1 00                 1880 	.db #0x00	; 0
   63D2 00                 1881 	.db #0x00	; 0
   63D3 00                 1882 	.db #0x00	; 0
   63D4 00                 1883 	.db #0x00	; 0
   63D5 00                 1884 	.db #0x00	; 0
   63D6 00                 1885 	.db #0x00	; 0
   63D7 00                 1886 	.db #0x00	; 0
   63D8 00                 1887 	.db #0x00	; 0
   63D9 00                 1888 	.db #0x00	; 0
   63DA 00                 1889 	.db #0x00	; 0
   63DB 00                 1890 	.db #0x00	; 0
   63DC 00                 1891 	.db #0x00	; 0
   63DD 00                 1892 	.db #0x00	; 0
   63DE 04                 1893 	.db #0x04	; 4
   63DF 00                 1894 	.db #0x00	; 0
   63E0 04                 1895 	.db #0x04	; 4
   63E1 00                 1896 	.db #0x00	; 0
   63E2 00                 1897 	.db #0x00	; 0
   63E3 00                 1898 	.db #0x00	; 0
   63E4 00                 1899 	.db #0x00	; 0
   63E5 00                 1900 	.db #0x00	; 0
   63E6 00                 1901 	.db #0x00	; 0
   63E7 00                 1902 	.db #0x00	; 0
   63E8 00                 1903 	.db #0x00	; 0
   63E9 00                 1904 	.db #0x00	; 0
   63EA 00                 1905 	.db #0x00	; 0
   63EB 00                 1906 	.db #0x00	; 0
   63EC 00                 1907 	.db #0x00	; 0
   63ED 00                 1908 	.db #0x00	; 0
   63EE 00                 1909 	.db #0x00	; 0
   63EF 00                 1910 	.db #0x00	; 0
   63F0 00                 1911 	.db #0x00	; 0
   63F1 00                 1912 	.db #0x00	; 0
   63F2 04                 1913 	.db #0x04	; 4
   63F3 00                 1914 	.db #0x00	; 0
   63F4 04                 1915 	.db #0x04	; 4
   63F5 00                 1916 	.db #0x00	; 0
   63F6 00                 1917 	.db #0x00	; 0
   63F7 00                 1918 	.db #0x00	; 0
   63F8 00                 1919 	.db #0x00	; 0
   63F9 00                 1920 	.db #0x00	; 0
   63FA 00                 1921 	.db #0x00	; 0
   63FB 00                 1922 	.db #0x00	; 0
   63FC 00                 1923 	.db #0x00	; 0
   63FD 00                 1924 	.db #0x00	; 0
   63FE 00                 1925 	.db #0x00	; 0
   63FF 00                 1926 	.db #0x00	; 0
   6400 00                 1927 	.db #0x00	; 0
   6401 00                 1928 	.db #0x00	; 0
   6402 00                 1929 	.db #0x00	; 0
   6403 00                 1930 	.db #0x00	; 0
   6404 00                 1931 	.db #0x00	; 0
   6405 00                 1932 	.db #0x00	; 0
   6406 30                 1933 	.db #0x30	; 48	'0'
   6407 30                 1934 	.db #0x30	; 48	'0'
   6408 30                 1935 	.db #0x30	; 48	'0'
   6409 20                 1936 	.db #0x20	; 32
   640A 00                 1937 	.db #0x00	; 0
   640B 00                 1938 	.db #0x00	; 0
   640C 00                 1939 	.db #0x00	; 0
   640D 00                 1940 	.db #0x00	; 0
   640E 00                 1941 	.db #0x00	; 0
   640F 00                 1942 	.db #0x00	; 0
   6410 00                 1943 	.db #0x00	; 0
   6411 00                 1944 	.db #0x00	; 0
   6412 00                 1945 	.db #0x00	; 0
   6413 00                 1946 	.db #0x00	; 0
   6414 00                 1947 	.db #0x00	; 0
   6415 00                 1948 	.db #0x00	; 0
   6416 00                 1949 	.db #0x00	; 0
   6417 00                 1950 	.db #0x00	; 0
   6418 00                 1951 	.db #0x00	; 0
   6419 00                 1952 	.db #0x00	; 0
   641A 30                 1953 	.db #0x30	; 48	'0'
   641B 30                 1954 	.db #0x30	; 48	'0'
   641C 30                 1955 	.db #0x30	; 48	'0'
   641D 20                 1956 	.db #0x20	; 32
   641E 00                 1957 	.db #0x00	; 0
   641F 00                 1958 	.db #0x00	; 0
   6420 00                 1959 	.db #0x00	; 0
   6421 00                 1960 	.db #0x00	; 0
   6422 00                 1961 	.db #0x00	; 0
   6423 00                 1962 	.db #0x00	; 0
   6424 00                 1963 	.db #0x00	; 0
   6425 00                 1964 	.db #0x00	; 0
   6426 00                 1965 	.db #0x00	; 0
   6427 00                 1966 	.db #0x00	; 0
   6428 00                 1967 	.db #0x00	; 0
   6429 00                 1968 	.db #0x00	; 0
   642A 00                 1969 	.db #0x00	; 0
   642B 00                 1970 	.db #0x00	; 0
   642C 00                 1971 	.db #0x00	; 0
   642D 00                 1972 	.db #0x00	; 0
   642E FF                 1973 	.db #0xFF	; 255
   642F FF                 1974 	.db #0xFF	; 255
   6430 FF                 1975 	.db #0xFF	; 255
   6431 AA                 1976 	.db #0xAA	; 170
   6432 00                 1977 	.db #0x00	; 0
   6433 00                 1978 	.db #0x00	; 0
   6434 00                 1979 	.db #0x00	; 0
   6435 00                 1980 	.db #0x00	; 0
   6436 00                 1981 	.db #0x00	; 0
   6437 00                 1982 	.db #0x00	; 0
   6438 00                 1983 	.db #0x00	; 0
   6439 00                 1984 	.db #0x00	; 0
   643A 00                 1985 	.db #0x00	; 0
   643B 00                 1986 	.db #0x00	; 0
   643C 00                 1987 	.db #0x00	; 0
   643D 00                 1988 	.db #0x00	; 0
   643E 00                 1989 	.db #0x00	; 0
   643F 00                 1990 	.db #0x00	; 0
   6440 00                 1991 	.db #0x00	; 0
   6441 00                 1992 	.db #0x00	; 0
   6442 FF                 1993 	.db #0xFF	; 255
   6443 FF                 1994 	.db #0xFF	; 255
   6444 FF                 1995 	.db #0xFF	; 255
   6445 AA                 1996 	.db #0xAA	; 170
   6446 00                 1997 	.db #0x00	; 0
   6447 00                 1998 	.db #0x00	; 0
   6448 00                 1999 	.db #0x00	; 0
   6449 00                 2000 	.db #0x00	; 0
   644A 00                 2001 	.db #0x00	; 0
   644B 00                 2002 	.db #0x00	; 0
   644C 00                 2003 	.db #0x00	; 0
   644D 00                 2004 	.db #0x00	; 0
   644E 00                 2005 	.db #0x00	; 0
   644F 00                 2006 	.db #0x00	; 0
   6450 00                 2007 	.db #0x00	; 0
   6451 00                 2008 	.db #0x00	; 0
   6452 00                 2009 	.db #0x00	; 0
   6453 00                 2010 	.db #0x00	; 0
   6454 00                 2011 	.db #0x00	; 0
   6455 00                 2012 	.db #0x00	; 0
   6456 FF                 2013 	.db #0xFF	; 255
   6457 AA                 2014 	.db #0xAA	; 170
   6458 FF                 2015 	.db #0xFF	; 255
   6459 AA                 2016 	.db #0xAA	; 170
   645A 00                 2017 	.db #0x00	; 0
   645B 00                 2018 	.db #0x00	; 0
   645C 00                 2019 	.db #0x00	; 0
   645D 00                 2020 	.db #0x00	; 0
   645E 00                 2021 	.db #0x00	; 0
   645F 00                 2022 	.db #0x00	; 0
   6460 00                 2023 	.db #0x00	; 0
   6461 00                 2024 	.db #0x00	; 0
   6462 00                 2025 	.db #0x00	; 0
   6463 00                 2026 	.db #0x00	; 0
   6464 00                 2027 	.db #0x00	; 0
   6465 00                 2028 	.db #0x00	; 0
   6466 00                 2029 	.db #0x00	; 0
   6467 00                 2030 	.db #0x00	; 0
   6468 00                 2031 	.db #0x00	; 0
   6469 00                 2032 	.db #0x00	; 0
   646A FF                 2033 	.db #0xFF	; 255
   646B AA                 2034 	.db #0xAA	; 170
   646C FF                 2035 	.db #0xFF	; 255
   646D AA                 2036 	.db #0xAA	; 170
   646E 00                 2037 	.db #0x00	; 0
   646F 00                 2038 	.db #0x00	; 0
   6470 00                 2039 	.db #0x00	; 0
   6471 00                 2040 	.db #0x00	; 0
   6472 00                 2041 	.db #0x00	; 0
   6473 00                 2042 	.db #0x00	; 0
   6474 00                 2043 	.db #0x00	; 0
   6475 00                 2044 	.db #0x00	; 0
   6476 00                 2045 	.db #0x00	; 0
   6477 00                 2046 	.db #0x00	; 0
   6478 00                 2047 	.db #0x00	; 0
   6479 00                 2048 	.db #0x00	; 0
   647A 00                 2049 	.db #0x00	; 0
   647B 00                 2050 	.db #0x00	; 0
   647C 00                 2051 	.db #0x00	; 0
   647D 00                 2052 	.db #0x00	; 0
   647E FF                 2053 	.db #0xFF	; 255
   647F AA                 2054 	.db #0xAA	; 170
   6480 FF                 2055 	.db #0xFF	; 255
   6481 AA                 2056 	.db #0xAA	; 170
   6482 00                 2057 	.db #0x00	; 0
   6483 00                 2058 	.db #0x00	; 0
   6484 00                 2059 	.db #0x00	; 0
   6485 00                 2060 	.db #0x00	; 0
   6486 00                 2061 	.db #0x00	; 0
   6487 00                 2062 	.db #0x00	; 0
   6488 00                 2063 	.db #0x00	; 0
   6489 00                 2064 	.db #0x00	; 0
   648A 00                 2065 	.db #0x00	; 0
   648B 00                 2066 	.db #0x00	; 0
   648C 00                 2067 	.db #0x00	; 0
   648D 00                 2068 	.db #0x00	; 0
   648E 00                 2069 	.db #0x00	; 0
   648F 00                 2070 	.db #0x00	; 0
   6490 00                 2071 	.db #0x00	; 0
   6491 00                 2072 	.db #0x00	; 0
   6492 FF                 2073 	.db #0xFF	; 255
   6493 AA                 2074 	.db #0xAA	; 170
   6494 FF                 2075 	.db #0xFF	; 255
   6495 AA                 2076 	.db #0xAA	; 170
   6496 00                 2077 	.db #0x00	; 0
   6497 00                 2078 	.db #0x00	; 0
   6498 00                 2079 	.db #0x00	; 0
   6499 00                 2080 	.db #0x00	; 0
   649A 00                 2081 	.db #0x00	; 0
   649B 00                 2082 	.db #0x00	; 0
   649C 00                 2083 	.db #0x00	; 0
   649D 00                 2084 	.db #0x00	; 0
   649E 00                 2085 	.db #0x00	; 0
   649F 00                 2086 	.db #0x00	; 0
   64A0 00                 2087 	.db #0x00	; 0
   64A1 00                 2088 	.db #0x00	; 0
   64A2 00                 2089 	.db #0x00	; 0
   64A3 00                 2090 	.db #0x00	; 0
   64A4 00                 2091 	.db #0x00	; 0
   64A5 00                 2092 	.db #0x00	; 0
   64A6 FF                 2093 	.db #0xFF	; 255
   64A7 FF                 2094 	.db #0xFF	; 255
   64A8 FF                 2095 	.db #0xFF	; 255
   64A9 AA                 2096 	.db #0xAA	; 170
   64AA 00                 2097 	.db #0x00	; 0
   64AB 00                 2098 	.db #0x00	; 0
   64AC 00                 2099 	.db #0x00	; 0
   64AD 00                 2100 	.db #0x00	; 0
   64AE 00                 2101 	.db #0x00	; 0
   64AF 00                 2102 	.db #0x00	; 0
   64B0 00                 2103 	.db #0x00	; 0
   64B1 00                 2104 	.db #0x00	; 0
   64B2 00                 2105 	.db #0x00	; 0
   64B3 00                 2106 	.db #0x00	; 0
   64B4 00                 2107 	.db #0x00	; 0
   64B5 00                 2108 	.db #0x00	; 0
   64B6 00                 2109 	.db #0x00	; 0
   64B7 00                 2110 	.db #0x00	; 0
   64B8 00                 2111 	.db #0x00	; 0
   64B9 00                 2112 	.db #0x00	; 0
   64BA 30                 2113 	.db #0x30	; 48	'0'
   64BB 30                 2114 	.db #0x30	; 48	'0'
   64BC 30                 2115 	.db #0x30	; 48	'0'
   64BD 20                 2116 	.db #0x20	; 32
   64BE 00                 2117 	.db #0x00	; 0
   64BF 00                 2118 	.db #0x00	; 0
   64C0 00                 2119 	.db #0x00	; 0
   64C1 00                 2120 	.db #0x00	; 0
   64C2 00                 2121 	.db #0x00	; 0
   64C3 00                 2122 	.db #0x00	; 0
   64C4 00                 2123 	.db #0x00	; 0
   64C5 00                 2124 	.db #0x00	; 0
   64C6 00                 2125 	.db #0x00	; 0
   64C7 00                 2126 	.db #0x00	; 0
   64C8 00                 2127 	.db #0x00	; 0
   64C9 00                 2128 	.db #0x00	; 0
   64CA 00                 2129 	.db #0x00	; 0
   64CB 00                 2130 	.db #0x00	; 0
   64CC 00                 2131 	.db #0x00	; 0
   64CD 00                 2132 	.db #0x00	; 0
   64CE 00                 2133 	.db #0x00	; 0
   64CF 00                 2134 	.db #0x00	; 0
   64D0 00                 2135 	.db #0x00	; 0
   64D1 00                 2136 	.db #0x00	; 0
   64D2 00                 2137 	.db #0x00	; 0
   64D3 00                 2138 	.db #0x00	; 0
   64D4 00                 2139 	.db #0x00	; 0
   64D5 00                 2140 	.db #0x00	; 0
   64D6 00                 2141 	.db #0x00	; 0
   64D7 00                 2142 	.db #0x00	; 0
   64D8 00                 2143 	.db #0x00	; 0
   64D9 00                 2144 	.db #0x00	; 0
   64DA 00                 2145 	.db #0x00	; 0
   64DB 00                 2146 	.db #0x00	; 0
   64DC 00                 2147 	.db #0x00	; 0
   64DD 00                 2148 	.db #0x00	; 0
   64DE 00                 2149 	.db #0x00	; 0
   64DF 00                 2150 	.db #0x00	; 0
   64E0 00                 2151 	.db #0x00	; 0
   64E1 00                 2152 	.db #0x00	; 0
   64E2 00                 2153 	.db #0x00	; 0
   64E3 00                 2154 	.db #0x00	; 0
   64E4 00                 2155 	.db #0x00	; 0
   64E5 00                 2156 	.db #0x00	; 0
   64E6 00                 2157 	.db #0x00	; 0
   64E7 00                 2158 	.db #0x00	; 0
   64E8 00                 2159 	.db #0x00	; 0
   64E9 00                 2160 	.db #0x00	; 0
   64EA 00                 2161 	.db #0x00	; 0
   64EB 00                 2162 	.db #0x00	; 0
   64EC 00                 2163 	.db #0x00	; 0
   64ED                    2164 _l141P:
   64ED 00                 2165 	.db #0x00	; 0
   64EE 00                 2166 	.db #0x00	; 0
   64EF 00                 2167 	.db #0x00	; 0
   64F0 00                 2168 	.db #0x00	; 0
   64F1 00                 2169 	.db #0x00	; 0
   64F2 00                 2170 	.db #0x00	; 0
   64F3 00                 2171 	.db #0x00	; 0
   64F4 00                 2172 	.db #0x00	; 0
   64F5 00                 2173 	.db #0x00	; 0
   64F6 00                 2174 	.db #0x00	; 0
   64F7 00                 2175 	.db #0x00	; 0
   64F8 00                 2176 	.db #0x00	; 0
   64F9 00                 2177 	.db #0x00	; 0
   64FA 00                 2178 	.db #0x00	; 0
   64FB 00                 2179 	.db #0x00	; 0
   64FC 00                 2180 	.db #0x00	; 0
   64FD 00                 2181 	.db #0x00	; 0
   64FE 00                 2182 	.db #0x00	; 0
   64FF 00                 2183 	.db #0x00	; 0
   6500 00                 2184 	.db #0x00	; 0
   6501 00                 2185 	.db #0x00	; 0
   6502 00                 2186 	.db #0x00	; 0
   6503 00                 2187 	.db #0x00	; 0
   6504 00                 2188 	.db #0x00	; 0
   6505 00                 2189 	.db #0x00	; 0
   6506 00                 2190 	.db #0x00	; 0
   6507 00                 2191 	.db #0x00	; 0
   6508 00                 2192 	.db #0x00	; 0
   6509 00                 2193 	.db #0x00	; 0
   650A 00                 2194 	.db #0x00	; 0
   650B 00                 2195 	.db #0x00	; 0
   650C 00                 2196 	.db #0x00	; 0
   650D 00                 2197 	.db #0x00	; 0
   650E 00                 2198 	.db #0x00	; 0
   650F 00                 2199 	.db #0x00	; 0
   6510 00                 2200 	.db #0x00	; 0
   6511 00                 2201 	.db #0x00	; 0
   6512 00                 2202 	.db #0x00	; 0
   6513 00                 2203 	.db #0x00	; 0
   6514 00                 2204 	.db #0x00	; 0
   6515 00                 2205 	.db #0x00	; 0
   6516 00                 2206 	.db #0x00	; 0
   6517 00                 2207 	.db #0x00	; 0
   6518 00                 2208 	.db #0x00	; 0
   6519 00                 2209 	.db #0x00	; 0
   651A 00                 2210 	.db #0x00	; 0
   651B 00                 2211 	.db #0x00	; 0
   651C 00                 2212 	.db #0x00	; 0
   651D 00                 2213 	.db #0x00	; 0
   651E 00                 2214 	.db #0x00	; 0
   651F 00                 2215 	.db #0x00	; 0
   6520 00                 2216 	.db #0x00	; 0
   6521 00                 2217 	.db #0x00	; 0
   6522 00                 2218 	.db #0x00	; 0
   6523 00                 2219 	.db #0x00	; 0
   6524 00                 2220 	.db #0x00	; 0
   6525 00                 2221 	.db #0x00	; 0
   6526 00                 2222 	.db #0x00	; 0
   6527 0C                 2223 	.db #0x0C	; 12
   6528 00                 2224 	.db #0x00	; 0
   6529 00                 2225 	.db #0x00	; 0
   652A 00                 2226 	.db #0x00	; 0
   652B 00                 2227 	.db #0x00	; 0
   652C 0C                 2228 	.db #0x0C	; 12
   652D 0C                 2229 	.db #0x0C	; 12
   652E 0C                 2230 	.db #0x0C	; 12
   652F 08                 2231 	.db #0x08	; 8
   6530 54                 2232 	.db #0x54	; 84	'T'
   6531 FC                 2233 	.db #0xFC	; 252
   6532 FC                 2234 	.db #0xFC	; 252
   6533 FC                 2235 	.db #0xFC	; 252
   6534 00                 2236 	.db #0x00	; 0
   6535 04                 2237 	.db #0x04	; 4
   6536 00                 2238 	.db #0x00	; 0
   6537 56                 2239 	.db #0x56	; 86	'V'
   6538 A9                 2240 	.db #0xA9	; 169
   6539 04                 2241 	.db #0x04	; 4
   653A 0C                 2242 	.db #0x0C	; 12
   653B 0C                 2243 	.db #0x0C	; 12
   653C 00                 2244 	.db #0x00	; 0
   653D 00                 2245 	.db #0x00	; 0
   653E 00                 2246 	.db #0x00	; 0
   653F 00                 2247 	.db #0x00	; 0
   6540 0C                 2248 	.db #0x0C	; 12
   6541 0C                 2249 	.db #0x0C	; 12
   6542 0C                 2250 	.db #0x0C	; 12
   6543 0C                 2251 	.db #0x0C	; 12
   6544 00                 2252 	.db #0x00	; 0
   6545 FC                 2253 	.db #0xFC	; 252
   6546 FC                 2254 	.db #0xFC	; 252
   6547 FC                 2255 	.db #0xFC	; 252
   6548 FC                 2256 	.db #0xFC	; 252
   6549 FC                 2257 	.db #0xFC	; 252
   654A FC                 2258 	.db #0xFC	; 252
   654B A9                 2259 	.db #0xA9	; 169
   654C FC                 2260 	.db #0xFC	; 252
   654D FC                 2261 	.db #0xFC	; 252
   654E AC                 2262 	.db #0xAC	; 172
   654F 0C                 2263 	.db #0x0C	; 12
   6550 08                 2264 	.db #0x08	; 8
   6551 00                 2265 	.db #0x00	; 0
   6552 FC                 2266 	.db #0xFC	; 252
   6553 FC                 2267 	.db #0xFC	; 252
   6554 FC                 2268 	.db #0xFC	; 252
   6555 FC                 2269 	.db #0xFC	; 252
   6556 FC                 2270 	.db #0xFC	; 252
   6557 FC                 2271 	.db #0xFC	; 252
   6558 A8                 2272 	.db #0xA8	; 168
   6559 54                 2273 	.db #0x54	; 84	'T'
   655A C0                 2274 	.db #0xC0	; 192
   655B FC                 2275 	.db #0xFC	; 252
   655C FC                 2276 	.db #0xFC	; 252
   655D FC                 2277 	.db #0xFC	; 252
   655E FC                 2278 	.db #0xFC	; 252
   655F FC                 2279 	.db #0xFC	; 252
   6560 FC                 2280 	.db #0xFC	; 252
   6561 FC                 2281 	.db #0xFC	; 252
   6562 AC                 2282 	.db #0xAC	; 172
   6563 0C                 2283 	.db #0x0C	; 12
   6564 0C                 2284 	.db #0x0C	; 12
   6565 54                 2285 	.db #0x54	; 84	'T'
   6566 FC                 2286 	.db #0xFC	; 252
   6567 FC                 2287 	.db #0xFC	; 252
   6568 FC                 2288 	.db #0xFC	; 252
   6569 FC                 2289 	.db #0xFC	; 252
   656A FC                 2290 	.db #0xFC	; 252
   656B FC                 2291 	.db #0xFC	; 252
   656C FC                 2292 	.db #0xFC	; 252
   656D 54                 2293 	.db #0x54	; 84	'T'
   656E C0                 2294 	.db #0xC0	; 192
   656F FC                 2295 	.db #0xFC	; 252
   6570 FC                 2296 	.db #0xFC	; 252
   6571 FC                 2297 	.db #0xFC	; 252
   6572 FC                 2298 	.db #0xFC	; 252
   6573 A9                 2299 	.db #0xA9	; 169
   6574 FC                 2300 	.db #0xFC	; 252
   6575 FC                 2301 	.db #0xFC	; 252
   6576 FC                 2302 	.db #0xFC	; 252
   6577 0C                 2303 	.db #0x0C	; 12
   6578 0C                 2304 	.db #0x0C	; 12
   6579 54                 2305 	.db #0x54	; 84	'T'
   657A FC                 2306 	.db #0xFC	; 252
   657B FC                 2307 	.db #0xFC	; 252
   657C FC                 2308 	.db #0xFC	; 252
   657D FC                 2309 	.db #0xFC	; 252
   657E FC                 2310 	.db #0xFC	; 252
   657F FC                 2311 	.db #0xFC	; 252
   6580 FC                 2312 	.db #0xFC	; 252
   6581 54                 2313 	.db #0x54	; 84	'T'
   6582 C0                 2314 	.db #0xC0	; 192
   6583 FC                 2315 	.db #0xFC	; 252
   6584 FC                 2316 	.db #0xFC	; 252
   6585 FC                 2317 	.db #0xFC	; 252
   6586 FC                 2318 	.db #0xFC	; 252
   6587 FC                 2319 	.db #0xFC	; 252
   6588 FC                 2320 	.db #0xFC	; 252
   6589 FC                 2321 	.db #0xFC	; 252
   658A FC                 2322 	.db #0xFC	; 252
   658B 0C                 2323 	.db #0x0C	; 12
   658C 0C                 2324 	.db #0x0C	; 12
   658D 54                 2325 	.db #0x54	; 84	'T'
   658E FC                 2326 	.db #0xFC	; 252
   658F FC                 2327 	.db #0xFC	; 252
   6590 FC                 2328 	.db #0xFC	; 252
   6591 FC                 2329 	.db #0xFC	; 252
   6592 FC                 2330 	.db #0xFC	; 252
   6593 FC                 2331 	.db #0xFC	; 252
   6594 FC                 2332 	.db #0xFC	; 252
   6595 54                 2333 	.db #0x54	; 84	'T'
   6596 FC                 2334 	.db #0xFC	; 252
   6597 A9                 2335 	.db #0xA9	; 169
   6598 03                 2336 	.db #0x03	; 3
   6599 03                 2337 	.db #0x03	; 3
   659A 03                 2338 	.db #0x03	; 3
   659B 03                 2339 	.db #0x03	; 3
   659C 03                 2340 	.db #0x03	; 3
   659D 03                 2341 	.db #0x03	; 3
   659E 03                 2342 	.db #0x03	; 3
   659F 0C                 2343 	.db #0x0C	; 12
   65A0 0C                 2344 	.db #0x0C	; 12
   65A1 54                 2345 	.db #0x54	; 84	'T'
   65A2 FC                 2346 	.db #0xFC	; 252
   65A3 FC                 2347 	.db #0xFC	; 252
   65A4 FC                 2348 	.db #0xFC	; 252
   65A5 FC                 2349 	.db #0xFC	; 252
   65A6 FC                 2350 	.db #0xFC	; 252
   65A7 FC                 2351 	.db #0xFC	; 252
   65A8 FC                 2352 	.db #0xFC	; 252
   65A9 54                 2353 	.db #0x54	; 84	'T'
   65AA FC                 2354 	.db #0xFC	; 252
   65AB FC                 2355 	.db #0xFC	; 252
   65AC FC                 2356 	.db #0xFC	; 252
   65AD FC                 2357 	.db #0xFC	; 252
   65AE FC                 2358 	.db #0xFC	; 252
   65AF FC                 2359 	.db #0xFC	; 252
   65B0 FC                 2360 	.db #0xFC	; 252
   65B1 FC                 2361 	.db #0xFC	; 252
   65B2 FC                 2362 	.db #0xFC	; 252
   65B3 0C                 2363 	.db #0x0C	; 12
   65B4 0C                 2364 	.db #0x0C	; 12
   65B5 54                 2365 	.db #0x54	; 84	'T'
   65B6 FC                 2366 	.db #0xFC	; 252
   65B7 FC                 2367 	.db #0xFC	; 252
   65B8 FC                 2368 	.db #0xFC	; 252
   65B9 FC                 2369 	.db #0xFC	; 252
   65BA FC                 2370 	.db #0xFC	; 252
   65BB FC                 2371 	.db #0xFC	; 252
   65BC F4                 2372 	.db #0xF4	; 244
   65BD 54                 2373 	.db #0x54	; 84	'T'
   65BE F4                 2374 	.db #0xF4	; 244
   65BF FC                 2375 	.db #0xFC	; 252
   65C0 FC                 2376 	.db #0xFC	; 252
   65C1 FC                 2377 	.db #0xFC	; 252
   65C2 FC                 2378 	.db #0xFC	; 252
   65C3 A9                 2379 	.db #0xA9	; 169
   65C4 FC                 2380 	.db #0xFC	; 252
   65C5 FC                 2381 	.db #0xFC	; 252
   65C6 FC                 2382 	.db #0xFC	; 252
   65C7 0C                 2383 	.db #0x0C	; 12
   65C8 0C                 2384 	.db #0x0C	; 12
   65C9 54                 2385 	.db #0x54	; 84	'T'
   65CA FC                 2386 	.db #0xFC	; 252
   65CB FC                 2387 	.db #0xFC	; 252
   65CC FC                 2388 	.db #0xFC	; 252
   65CD FC                 2389 	.db #0xFC	; 252
   65CE FC                 2390 	.db #0xFC	; 252
   65CF FC                 2391 	.db #0xFC	; 252
   65D0 FC                 2392 	.db #0xFC	; 252
   65D1 54                 2393 	.db #0x54	; 84	'T'
   65D2 FC                 2394 	.db #0xFC	; 252
   65D3 F8                 2395 	.db #0xF8	; 248
   65D4 F0                 2396 	.db #0xF0	; 240
   65D5 F0                 2397 	.db #0xF0	; 240
   65D6 F0                 2398 	.db #0xF0	; 240
   65D7 F0                 2399 	.db #0xF0	; 240
   65D8 F0                 2400 	.db #0xF0	; 240
   65D9 F0                 2401 	.db #0xF0	; 240
   65DA F0                 2402 	.db #0xF0	; 240
   65DB A4                 2403 	.db #0xA4	; 164
   65DC 0C                 2404 	.db #0x0C	; 12
   65DD 50                 2405 	.db #0x50	; 80	'P'
   65DE F0                 2406 	.db #0xF0	; 240
   65DF F0                 2407 	.db #0xF0	; 240
   65E0 F0                 2408 	.db #0xF0	; 240
   65E1 F0                 2409 	.db #0xF0	; 240
   65E2 F0                 2410 	.db #0xF0	; 240
   65E3 F0                 2411 	.db #0xF0	; 240
   65E4 F0                 2412 	.db #0xF0	; 240
   65E5 50                 2413 	.db #0x50	; 80	'P'
   65E6 F0                 2414 	.db #0xF0	; 240
   65E7 A4                 2415 	.db #0xA4	; 164
   65E8 0C                 2416 	.db #0x0C	; 12
   65E9 0C                 2417 	.db #0x0C	; 12
   65EA 0C                 2418 	.db #0x0C	; 12
   65EB 0C                 2419 	.db #0x0C	; 12
   65EC 0C                 2420 	.db #0x0C	; 12
   65ED 0C                 2421 	.db #0x0C	; 12
   65EE 5C                 2422 	.db #0x5C	; 92
   65EF FC                 2423 	.db #0xFC	; 252
   65F0 0C                 2424 	.db #0x0C	; 12
   65F1 54                 2425 	.db #0x54	; 84	'T'
   65F2 FC                 2426 	.db #0xFC	; 252
   65F3 FC                 2427 	.db #0xFC	; 252
   65F4 FC                 2428 	.db #0xFC	; 252
   65F5 FC                 2429 	.db #0xFC	; 252
   65F6 FC                 2430 	.db #0xFC	; 252
   65F7 FC                 2431 	.db #0xFC	; 252
   65F8 FC                 2432 	.db #0xFC	; 252
   65F9 54                 2433 	.db #0x54	; 84	'T'
   65FA 0C                 2434 	.db #0x0C	; 12
   65FB 08                 2435 	.db #0x08	; 8
   65FC 04                 2436 	.db #0x04	; 4
   65FD 08                 2437 	.db #0x08	; 8
   65FE 04                 2438 	.db #0x04	; 4
   65FF 08                 2439 	.db #0x08	; 8
   6600 04                 2440 	.db #0x04	; 4
   6601 08                 2441 	.db #0x08	; 8
   6602 54                 2442 	.db #0x54	; 84	'T'
   6603 FC                 2443 	.db #0xFC	; 252
   6604 A4                 2444 	.db #0xA4	; 164
   6605 54                 2445 	.db #0x54	; 84	'T'
   6606 08                 2446 	.db #0x08	; 8
   6607 04                 2447 	.db #0x04	; 4
   6608 00                 2448 	.db #0x00	; 0
   6609 00                 2449 	.db #0x00	; 0
   660A 08                 2450 	.db #0x08	; 8
   660B 04                 2451 	.db #0x04	; 4
   660C FC                 2452 	.db #0xFC	; 252
   660D 54                 2453 	.db #0x54	; 84	'T'
   660E 08                 2454 	.db #0x08	; 8
   660F 04                 2455 	.db #0x04	; 4
   6610 08                 2456 	.db #0x08	; 8
   6611 04                 2457 	.db #0x04	; 4
   6612 08                 2458 	.db #0x08	; 8
   6613 04                 2459 	.db #0x04	; 4
   6614 08                 2460 	.db #0x08	; 8
   6615 04                 2461 	.db #0x04	; 4
   6616 5C                 2462 	.db #0x5C	; 92
   6617 FC                 2463 	.db #0xFC	; 252
   6618 50                 2464 	.db #0x50	; 80	'P'
   6619 04                 2465 	.db #0x04	; 4
   661A 0C                 2466 	.db #0x0C	; 12
   661B 0C                 2467 	.db #0x0C	; 12
   661C 08                 2468 	.db #0x08	; 8
   661D 04                 2469 	.db #0x04	; 4
   661E 0C                 2470 	.db #0x0C	; 12
   661F 0C                 2471 	.db #0x0C	; 12
   6620 5C                 2472 	.db #0x5C	; 92
   6621 54                 2473 	.db #0x54	; 84	'T'
   6622 04                 2474 	.db #0x04	; 4
   6623 0C                 2475 	.db #0x0C	; 12
   6624 0C                 2476 	.db #0x0C	; 12
   6625 0C                 2477 	.db #0x0C	; 12
   6626 0C                 2478 	.db #0x0C	; 12
   6627 0C                 2479 	.db #0x0C	; 12
   6628 48                 2480 	.db #0x48	; 72	'H'
   6629 C0                 2481 	.db #0xC0	; 192
   662A C0                 2482 	.db #0xC0	; 192
   662B A8                 2483 	.db #0xA8	; 168
   662C 08                 2484 	.db #0x08	; 8
   662D 04                 2485 	.db #0x04	; 4
   662E 0C                 2486 	.db #0x0C	; 12
   662F 0C                 2487 	.db #0x0C	; 12
   6630 0C                 2488 	.db #0x0C	; 12
   6631 0C                 2489 	.db #0x0C	; 12
   6632 0C                 2490 	.db #0x0C	; 12
   6633 0C                 2491 	.db #0x0C	; 12
   6634 5C                 2492 	.db #0x5C	; 92
   6635 08                 2493 	.db #0x08	; 8
   6636 08                 2494 	.db #0x08	; 8
   6637 0C                 2495 	.db #0x0C	; 12
   6638 C0                 2496 	.db #0xC0	; 192
   6639 C0                 2497 	.db #0xC0	; 192
   663A C0                 2498 	.db #0xC0	; 192
   663B C0                 2499 	.db #0xC0	; 192
   663C C0                 2500 	.db #0xC0	; 192
   663D 84                 2501 	.db #0x84	; 132
   663E 0C                 2502 	.db #0x0C	; 12
   663F AC                 2503 	.db #0xAC	; 172
   6640 0C                 2504 	.db #0x0C	; 12
   6641 04                 2505 	.db #0x04	; 4
   6642 0C                 2506 	.db #0x0C	; 12
   6643 0C                 2507 	.db #0x0C	; 12
   6644 08                 2508 	.db #0x08	; 8
   6645 04                 2509 	.db #0x04	; 4
   6646 0C                 2510 	.db #0x0C	; 12
   6647 0C                 2511 	.db #0x0C	; 12
   6648 5C                 2512 	.db #0x5C	; 92
   6649 04                 2513 	.db #0x04	; 4
   664A 0C                 2514 	.db #0x0C	; 12
   664B 0C                 2515 	.db #0x0C	; 12
   664C 0C                 2516 	.db #0x0C	; 12
   664D 0C                 2517 	.db #0x0C	; 12
   664E 0C                 2518 	.db #0x0C	; 12
   664F 0C                 2519 	.db #0x0C	; 12
   6650 0C                 2520 	.db #0x0C	; 12
   6651 0C                 2521 	.db #0x0C	; 12
   6652 08                 2522 	.db #0x08	; 8
   6653 04                 2523 	.db #0x04	; 4
   6654 0C                 2524 	.db #0x0C	; 12
   6655 00                 2525 	.db #0x00	; 0
   6656 08                 2526 	.db #0x08	; 8
   6657 04                 2527 	.db #0x04	; 4
   6658 00                 2528 	.db #0x00	; 0
   6659 00                 2529 	.db #0x00	; 0
   665A 08                 2530 	.db #0x08	; 8
   665B 04                 2531 	.db #0x04	; 4
   665C 00                 2532 	.db #0x00	; 0
   665D 00                 2533 	.db #0x00	; 0
   665E 08                 2534 	.db #0x08	; 8
   665F 04                 2535 	.db #0x04	; 4
   6660 08                 2536 	.db #0x08	; 8
   6661 04                 2537 	.db #0x04	; 4
   6662 08                 2538 	.db #0x08	; 8
   6663 04                 2539 	.db #0x04	; 4
   6664 08                 2540 	.db #0x08	; 8
   6665 04                 2541 	.db #0x04	; 4
   6666 08                 2542 	.db #0x08	; 8
   6667 00                 2543 	.db #0x00	; 0
   6668 08                 2544 	.db #0x08	; 8
   6669 00                 2545 	.db #0x00	; 0
   666A 00                 2546 	.db #0x00	; 0
   666B 00                 2547 	.db #0x00	; 0
   666C 00                 2548 	.db #0x00	; 0
   666D 00                 2549 	.db #0x00	; 0
   666E 00                 2550 	.db #0x00	; 0
   666F 00                 2551 	.db #0x00	; 0
   6670 00                 2552 	.db #0x00	; 0
   6671 00                 2553 	.db #0x00	; 0
   6672 00                 2554 	.db #0x00	; 0
   6673 00                 2555 	.db #0x00	; 0
   6674 00                 2556 	.db #0x00	; 0
   6675 00                 2557 	.db #0x00	; 0
   6676 00                 2558 	.db #0x00	; 0
   6677 00                 2559 	.db #0x00	; 0
   6678 00                 2560 	.db #0x00	; 0
   6679 00                 2561 	.db #0x00	; 0
   667A 00                 2562 	.db #0x00	; 0
   667B 00                 2563 	.db #0x00	; 0
   667C 00                 2564 	.db #0x00	; 0
   667D                    2565 _BB63000:
   667D 00                 2566 	.db #0x00	; 0
   667E 00                 2567 	.db #0x00	; 0
   667F 00                 2568 	.db #0x00	; 0
   6680 00                 2569 	.db #0x00	; 0
   6681 00                 2570 	.db #0x00	; 0
   6682 00                 2571 	.db #0x00	; 0
   6683 00                 2572 	.db #0x00	; 0
   6684 00                 2573 	.db #0x00	; 0
   6685 00                 2574 	.db #0x00	; 0
   6686 00                 2575 	.db #0x00	; 0
   6687 00                 2576 	.db #0x00	; 0
   6688 00                 2577 	.db #0x00	; 0
   6689 00                 2578 	.db #0x00	; 0
   668A CC                 2579 	.db #0xCC	; 204
   668B CC                 2580 	.db #0xCC	; 204
   668C 88                 2581 	.db #0x88	; 136
   668D 00                 2582 	.db #0x00	; 0
   668E 00                 2583 	.db #0x00	; 0
   668F 00                 2584 	.db #0x00	; 0
   6690 00                 2585 	.db #0x00	; 0
   6691 00                 2586 	.db #0x00	; 0
   6692 00                 2587 	.db #0x00	; 0
   6693 00                 2588 	.db #0x00	; 0
   6694 00                 2589 	.db #0x00	; 0
   6695 00                 2590 	.db #0x00	; 0
   6696 00                 2591 	.db #0x00	; 0
   6697 00                 2592 	.db #0x00	; 0
   6698 00                 2593 	.db #0x00	; 0
   6699 00                 2594 	.db #0x00	; 0
   669A 00                 2595 	.db #0x00	; 0
   669B 00                 2596 	.db #0x00	; 0
   669C 00                 2597 	.db #0x00	; 0
   669D 44                 2598 	.db #0x44	; 68	'D'
   669E CC                 2599 	.db #0xCC	; 204
   669F CC                 2600 	.db #0xCC	; 204
   66A0 CC                 2601 	.db #0xCC	; 204
   66A1 00                 2602 	.db #0x00	; 0
   66A2 00                 2603 	.db #0x00	; 0
   66A3 00                 2604 	.db #0x00	; 0
   66A4 00                 2605 	.db #0x00	; 0
   66A5 00                 2606 	.db #0x00	; 0
   66A6 00                 2607 	.db #0x00	; 0
   66A7 00                 2608 	.db #0x00	; 0
   66A8 00                 2609 	.db #0x00	; 0
   66A9 00                 2610 	.db #0x00	; 0
   66AA 00                 2611 	.db #0x00	; 0
   66AB 00                 2612 	.db #0x00	; 0
   66AC 00                 2613 	.db #0x00	; 0
   66AD 00                 2614 	.db #0x00	; 0
   66AE 00                 2615 	.db #0x00	; 0
   66AF 00                 2616 	.db #0x00	; 0
   66B0 00                 2617 	.db #0x00	; 0
   66B1 00                 2618 	.db #0x00	; 0
   66B2 89                 2619 	.db #0x89	; 137
   66B3 03                 2620 	.db #0x03	; 3
   66B4 88                 2621 	.db #0x88	; 136
   66B5 00                 2622 	.db #0x00	; 0
   66B6 00                 2623 	.db #0x00	; 0
   66B7 00                 2624 	.db #0x00	; 0
   66B8 00                 2625 	.db #0x00	; 0
   66B9 00                 2626 	.db #0x00	; 0
   66BA 00                 2627 	.db #0x00	; 0
   66BB 00                 2628 	.db #0x00	; 0
   66BC 00                 2629 	.db #0x00	; 0
   66BD 00                 2630 	.db #0x00	; 0
   66BE 00                 2631 	.db #0x00	; 0
   66BF 00                 2632 	.db #0x00	; 0
   66C0 00                 2633 	.db #0x00	; 0
   66C1 00                 2634 	.db #0x00	; 0
   66C2 00                 2635 	.db #0x00	; 0
   66C3 00                 2636 	.db #0x00	; 0
   66C4 00                 2637 	.db #0x00	; 0
   66C5 00                 2638 	.db #0x00	; 0
   66C6 89                 2639 	.db #0x89	; 137
   66C7 03                 2640 	.db #0x03	; 3
   66C8 88                 2641 	.db #0x88	; 136
   66C9 00                 2642 	.db #0x00	; 0
   66CA 00                 2643 	.db #0x00	; 0
   66CB 00                 2644 	.db #0x00	; 0
   66CC 00                 2645 	.db #0x00	; 0
   66CD 00                 2646 	.db #0x00	; 0
   66CE 00                 2647 	.db #0x00	; 0
   66CF 00                 2648 	.db #0x00	; 0
   66D0 00                 2649 	.db #0x00	; 0
   66D1 00                 2650 	.db #0x00	; 0
   66D2 00                 2651 	.db #0x00	; 0
   66D3 00                 2652 	.db #0x00	; 0
   66D4 00                 2653 	.db #0x00	; 0
   66D5 00                 2654 	.db #0x00	; 0
   66D6 00                 2655 	.db #0x00	; 0
   66D7 00                 2656 	.db #0x00	; 0
   66D8 00                 2657 	.db #0x00	; 0
   66D9 00                 2658 	.db #0x00	; 0
   66DA 89                 2659 	.db #0x89	; 137
   66DB 03                 2660 	.db #0x03	; 3
   66DC 88                 2661 	.db #0x88	; 136
   66DD 00                 2662 	.db #0x00	; 0
   66DE 00                 2663 	.db #0x00	; 0
   66DF 00                 2664 	.db #0x00	; 0
   66E0 00                 2665 	.db #0x00	; 0
   66E1 00                 2666 	.db #0x00	; 0
   66E2 00                 2667 	.db #0x00	; 0
   66E3 00                 2668 	.db #0x00	; 0
   66E4 44                 2669 	.db #0x44	; 68	'D'
   66E5 CC                 2670 	.db #0xCC	; 204
   66E6 CC                 2671 	.db #0xCC	; 204
   66E7 CC                 2672 	.db #0xCC	; 204
   66E8 CC                 2673 	.db #0xCC	; 204
   66E9 CC                 2674 	.db #0xCC	; 204
   66EA CC                 2675 	.db #0xCC	; 204
   66EB CC                 2676 	.db #0xCC	; 204
   66EC CC                 2677 	.db #0xCC	; 204
   66ED CC                 2678 	.db #0xCC	; 204
   66EE CC                 2679 	.db #0xCC	; 204
   66EF CC                 2680 	.db #0xCC	; 204
   66F0 CC                 2681 	.db #0xCC	; 204
   66F1 CC                 2682 	.db #0xCC	; 204
   66F2 00                 2683 	.db #0x00	; 0
   66F3 00                 2684 	.db #0x00	; 0
   66F4 00                 2685 	.db #0x00	; 0
   66F5 00                 2686 	.db #0x00	; 0
   66F6 00                 2687 	.db #0x00	; 0
   66F7 00                 2688 	.db #0x00	; 0
   66F8 30                 2689 	.db #0x30	; 48	'0'
   66F9 30                 2690 	.db #0x30	; 48	'0'
   66FA 30                 2691 	.db #0x30	; 48	'0'
   66FB 30                 2692 	.db #0x30	; 48	'0'
   66FC 30                 2693 	.db #0x30	; 48	'0'
   66FD 30                 2694 	.db #0x30	; 48	'0'
   66FE 30                 2695 	.db #0x30	; 48	'0'
   66FF 30                 2696 	.db #0x30	; 48	'0'
   6700 30                 2697 	.db #0x30	; 48	'0'
   6701 30                 2698 	.db #0x30	; 48	'0'
   6702 18                 2699 	.db #0x18	; 24
   6703 30                 2700 	.db #0x30	; 48	'0'
   6704 24                 2701 	.db #0x24	; 36
   6705 30                 2702 	.db #0x30	; 48	'0'
   6706 20                 2703 	.db #0x20	; 32
   6707 00                 2704 	.db #0x00	; 0
   6708 00                 2705 	.db #0x00	; 0
   6709 00                 2706 	.db #0x00	; 0
   670A 00                 2707 	.db #0x00	; 0
   670B 00                 2708 	.db #0x00	; 0
   670C 0C                 2709 	.db #0x0C	; 12
   670D 0C                 2710 	.db #0x0C	; 12
   670E 0C                 2711 	.db #0x0C	; 12
   670F 0C                 2712 	.db #0x0C	; 12
   6710 0C                 2713 	.db #0x0C	; 12
   6711 0C                 2714 	.db #0x0C	; 12
   6712 0C                 2715 	.db #0x0C	; 12
   6713 0C                 2716 	.db #0x0C	; 12
   6714 0C                 2717 	.db #0x0C	; 12
   6715 0C                 2718 	.db #0x0C	; 12
   6716 18                 2719 	.db #0x18	; 24
   6717 30                 2720 	.db #0x30	; 48	'0'
   6718 24                 2721 	.db #0x24	; 36
   6719 0C                 2722 	.db #0x0C	; 12
   671A 08                 2723 	.db #0x08	; 8
   671B 00                 2724 	.db #0x00	; 0
   671C 00                 2725 	.db #0x00	; 0
   671D 00                 2726 	.db #0x00	; 0
   671E 00                 2727 	.db #0x00	; 0
   671F 08                 2728 	.db #0x08	; 8
   6720 30                 2729 	.db #0x30	; 48	'0'
   6721 4C                 2730 	.db #0x4C	; 76	'L'
   6722 30                 2731 	.db #0x30	; 48	'0'
   6723 24                 2732 	.db #0x24	; 36
   6724 30                 2733 	.db #0x30	; 48	'0'
   6725 24                 2734 	.db #0x24	; 36
   6726 30                 2735 	.db #0x30	; 48	'0'
   6727 24                 2736 	.db #0x24	; 36
   6728 98                 2737 	.db #0x98	; 152
   6729 98                 2738 	.db #0x98	; 152
   672A 18                 2739 	.db #0x18	; 24
   672B 30                 2740 	.db #0x30	; 48	'0'
   672C 24                 2741 	.db #0x24	; 36
   672D 30                 2742 	.db #0x30	; 48	'0'
   672E 20                 2743 	.db #0x20	; 32
   672F 08                 2744 	.db #0x08	; 8
   6730 00                 2745 	.db #0x00	; 0
   6731 00                 2746 	.db #0x00	; 0
   6732 00                 2747 	.db #0x00	; 0
   6733 08                 2748 	.db #0x08	; 8
   6734 30                 2749 	.db #0x30	; 48	'0'
   6735 4C                 2750 	.db #0x4C	; 76	'L'
   6736 30                 2751 	.db #0x30	; 48	'0'
   6737 24                 2752 	.db #0x24	; 36
   6738 30                 2753 	.db #0x30	; 48	'0'
   6739 24                 2754 	.db #0x24	; 36
   673A 30                 2755 	.db #0x30	; 48	'0'
   673B 24                 2756 	.db #0x24	; 36
   673C 98                 2757 	.db #0x98	; 152
   673D 98                 2758 	.db #0x98	; 152
   673E 18                 2759 	.db #0x18	; 24
   673F 30                 2760 	.db #0x30	; 48	'0'
   6740 24                 2761 	.db #0x24	; 36
   6741 30                 2762 	.db #0x30	; 48	'0'
   6742 20                 2763 	.db #0x20	; 32
   6743 08                 2764 	.db #0x08	; 8
   6744 00                 2765 	.db #0x00	; 0
   6745 00                 2766 	.db #0x00	; 0
   6746 00                 2767 	.db #0x00	; 0
   6747 08                 2768 	.db #0x08	; 8
   6748 0C                 2769 	.db #0x0C	; 12
   6749 0C                 2770 	.db #0x0C	; 12
   674A 0C                 2771 	.db #0x0C	; 12
   674B 0C                 2772 	.db #0x0C	; 12
   674C 0C                 2773 	.db #0x0C	; 12
   674D 0C                 2774 	.db #0x0C	; 12
   674E 0C                 2775 	.db #0x0C	; 12
   674F 0C                 2776 	.db #0x0C	; 12
   6750 0C                 2777 	.db #0x0C	; 12
   6751 0C                 2778 	.db #0x0C	; 12
   6752 18                 2779 	.db #0x18	; 24
   6753 30                 2780 	.db #0x30	; 48	'0'
   6754 24                 2781 	.db #0x24	; 36
   6755 0C                 2782 	.db #0x0C	; 12
   6756 08                 2783 	.db #0x08	; 8
   6757 08                 2784 	.db #0x08	; 8
   6758 00                 2785 	.db #0x00	; 0
   6759 00                 2786 	.db #0x00	; 0
   675A 00                 2787 	.db #0x00	; 0
   675B 08                 2788 	.db #0x08	; 8
   675C 30                 2789 	.db #0x30	; 48	'0'
   675D 18                 2790 	.db #0x18	; 24
   675E 30                 2791 	.db #0x30	; 48	'0'
   675F 8C                 2792 	.db #0x8C	; 140
   6760 CC                 2793 	.db #0xCC	; 204
   6761 8C                 2794 	.db #0x8C	; 140
   6762 CC                 2795 	.db #0xCC	; 204
   6763 24                 2796 	.db #0x24	; 36
   6764 30                 2797 	.db #0x30	; 48	'0'
   6765 30                 2798 	.db #0x30	; 48	'0'
   6766 18                 2799 	.db #0x18	; 24
   6767 30                 2800 	.db #0x30	; 48	'0'
   6768 24                 2801 	.db #0x24	; 36
   6769 98                 2802 	.db #0x98	; 152
   676A 88                 2803 	.db #0x88	; 136
   676B 08                 2804 	.db #0x08	; 8
   676C 00                 2805 	.db #0x00	; 0
   676D 00                 2806 	.db #0x00	; 0
   676E 00                 2807 	.db #0x00	; 0
   676F 0C                 2808 	.db #0x0C	; 12
   6770 0C                 2809 	.db #0x0C	; 12
   6771 0C                 2810 	.db #0x0C	; 12
   6772 0C                 2811 	.db #0x0C	; 12
   6773 0C                 2812 	.db #0x0C	; 12
   6774 0C                 2813 	.db #0x0C	; 12
   6775 0C                 2814 	.db #0x0C	; 12
   6776 0C                 2815 	.db #0x0C	; 12
   6777 0C                 2816 	.db #0x0C	; 12
   6778 0C                 2817 	.db #0x0C	; 12
   6779 0C                 2818 	.db #0x0C	; 12
   677A 18                 2819 	.db #0x18	; 24
   677B 30                 2820 	.db #0x30	; 48	'0'
   677C 24                 2821 	.db #0x24	; 36
   677D 0C                 2822 	.db #0x0C	; 12
   677E 0C                 2823 	.db #0x0C	; 12
   677F 08                 2824 	.db #0x08	; 8
   6780 00                 2825 	.db #0x00	; 0
   6781 00                 2826 	.db #0x00	; 0
   6782 00                 2827 	.db #0x00	; 0
   6783 48                 2828 	.db #0x48	; 72	'H'
   6784 C0                 2829 	.db #0xC0	; 192
   6785 C0                 2830 	.db #0xC0	; 192
   6786 C0                 2831 	.db #0xC0	; 192
   6787 C0                 2832 	.db #0xC0	; 192
   6788 C0                 2833 	.db #0xC0	; 192
   6789 C0                 2834 	.db #0xC0	; 192
   678A C0                 2835 	.db #0xC0	; 192
   678B C0                 2836 	.db #0xC0	; 192
   678C C0                 2837 	.db #0xC0	; 192
   678D C0                 2838 	.db #0xC0	; 192
   678E C0                 2839 	.db #0xC0	; 192
   678F C0                 2840 	.db #0xC0	; 192
   6790 C0                 2841 	.db #0xC0	; 192
   6791 C0                 2842 	.db #0xC0	; 192
   6792 C0                 2843 	.db #0xC0	; 192
   6793 08                 2844 	.db #0x08	; 8
   6794 00                 2845 	.db #0x00	; 0
   6795 00                 2846 	.db #0x00	; 0
   6796 00                 2847 	.db #0x00	; 0
   6797 04                 2848 	.db #0x04	; 4
   6798 0C                 2849 	.db #0x0C	; 12
   6799 0C                 2850 	.db #0x0C	; 12
   679A 0C                 2851 	.db #0x0C	; 12
   679B 0C                 2852 	.db #0x0C	; 12
   679C 0C                 2853 	.db #0x0C	; 12
   679D 0C                 2854 	.db #0x0C	; 12
   679E 0C                 2855 	.db #0x0C	; 12
   679F 0C                 2856 	.db #0x0C	; 12
   67A0 0C                 2857 	.db #0x0C	; 12
   67A1 0C                 2858 	.db #0x0C	; 12
   67A2 0C                 2859 	.db #0x0C	; 12
   67A3 0C                 2860 	.db #0x0C	; 12
   67A4 0C                 2861 	.db #0x0C	; 12
   67A5 0C                 2862 	.db #0x0C	; 12
   67A6 0C                 2863 	.db #0x0C	; 12
   67A7 00                 2864 	.db #0x00	; 0
   67A8 00                 2865 	.db #0x00	; 0
   67A9 00                 2866 	.db #0x00	; 0
   67AA 00                 2867 	.db #0x00	; 0
   67AB 04                 2868 	.db #0x04	; 4
   67AC 00                 2869 	.db #0x00	; 0
   67AD 04                 2870 	.db #0x04	; 4
   67AE 0C                 2871 	.db #0x0C	; 12
   67AF 0C                 2872 	.db #0x0C	; 12
   67B0 08                 2873 	.db #0x08	; 8
   67B1 00                 2874 	.db #0x00	; 0
   67B2 00                 2875 	.db #0x00	; 0
   67B3 00                 2876 	.db #0x00	; 0
   67B4 00                 2877 	.db #0x00	; 0
   67B5 00                 2878 	.db #0x00	; 0
   67B6 0C                 2879 	.db #0x0C	; 12
   67B7 0C                 2880 	.db #0x0C	; 12
   67B8 0C                 2881 	.db #0x0C	; 12
   67B9 00                 2882 	.db #0x00	; 0
   67BA 04                 2883 	.db #0x04	; 4
   67BB 00                 2884 	.db #0x00	; 0
   67BC 00                 2885 	.db #0x00	; 0
   67BD 00                 2886 	.db #0x00	; 0
   67BE 00                 2887 	.db #0x00	; 0
   67BF 0C                 2888 	.db #0x0C	; 12
   67C0 00                 2889 	.db #0x00	; 0
   67C1 0C                 2890 	.db #0x0C	; 12
   67C2 0C                 2891 	.db #0x0C	; 12
   67C3 0C                 2892 	.db #0x0C	; 12
   67C4 0C                 2893 	.db #0x0C	; 12
   67C5 00                 2894 	.db #0x00	; 0
   67C6 00                 2895 	.db #0x00	; 0
   67C7 00                 2896 	.db #0x00	; 0
   67C8 00                 2897 	.db #0x00	; 0
   67C9 04                 2898 	.db #0x04	; 4
   67CA 0C                 2899 	.db #0x0C	; 12
   67CB 0C                 2900 	.db #0x0C	; 12
   67CC 0C                 2901 	.db #0x0C	; 12
   67CD 08                 2902 	.db #0x08	; 8
   67CE 04                 2903 	.db #0x04	; 4
   67CF 08                 2904 	.db #0x08	; 8
   67D0 00                 2905 	.db #0x00	; 0
   67D1 00                 2906 	.db #0x00	; 0
   67D2 00                 2907 	.db #0x00	; 0
   67D3 0C                 2908 	.db #0x0C	; 12
   67D4 04                 2909 	.db #0x04	; 4
   67D5 0C                 2910 	.db #0x0C	; 12
   67D6 0C                 2911 	.db #0x0C	; 12
   67D7 0C                 2912 	.db #0x0C	; 12
   67D8 0C                 2913 	.db #0x0C	; 12
   67D9 08                 2914 	.db #0x08	; 8
   67DA 00                 2915 	.db #0x00	; 0
   67DB 00                 2916 	.db #0x00	; 0
   67DC 00                 2917 	.db #0x00	; 0
   67DD 0C                 2918 	.db #0x0C	; 12
   67DE 0C                 2919 	.db #0x0C	; 12
   67DF 0C                 2920 	.db #0x0C	; 12
   67E0 0C                 2921 	.db #0x0C	; 12
   67E1 0C                 2922 	.db #0x0C	; 12
   67E2 04                 2923 	.db #0x04	; 4
   67E3 08                 2924 	.db #0x08	; 8
   67E4 00                 2925 	.db #0x00	; 0
   67E5 00                 2926 	.db #0x00	; 0
   67E6 00                 2927 	.db #0x00	; 0
   67E7 00                 2928 	.db #0x00	; 0
   67E8 04                 2929 	.db #0x04	; 4
   67E9 0C                 2930 	.db #0x0C	; 12
   67EA 0C                 2931 	.db #0x0C	; 12
   67EB 0C                 2932 	.db #0x0C	; 12
   67EC 0C                 2933 	.db #0x0C	; 12
   67ED 08                 2934 	.db #0x08	; 8
   67EE 00                 2935 	.db #0x00	; 0
   67EF 00                 2936 	.db #0x00	; 0
   67F0 00                 2937 	.db #0x00	; 0
   67F1 0C                 2938 	.db #0x0C	; 12
   67F2 0C                 2939 	.db #0x0C	; 12
   67F3 0C                 2940 	.db #0x0C	; 12
   67F4 0C                 2941 	.db #0x0C	; 12
   67F5 0C                 2942 	.db #0x0C	; 12
   67F6 00                 2943 	.db #0x00	; 0
   67F7 00                 2944 	.db #0x00	; 0
   67F8 00                 2945 	.db #0x00	; 0
   67F9 00                 2946 	.db #0x00	; 0
   67FA 00                 2947 	.db #0x00	; 0
   67FB 00                 2948 	.db #0x00	; 0
   67FC 00                 2949 	.db #0x00	; 0
   67FD 0C                 2950 	.db #0x0C	; 12
   67FE 00                 2951 	.db #0x00	; 0
   67FF 00                 2952 	.db #0x00	; 0
   6800 0C                 2953 	.db #0x0C	; 12
   6801 00                 2954 	.db #0x00	; 0
   6802 00                 2955 	.db #0x00	; 0
   6803 00                 2956 	.db #0x00	; 0
   6804 00                 2957 	.db #0x00	; 0
   6805 04                 2958 	.db #0x04	; 4
   6806 08                 2959 	.db #0x08	; 8
   6807 00                 2960 	.db #0x00	; 0
   6808 04                 2961 	.db #0x04	; 4
   6809 08                 2962 	.db #0x08	; 8
   680A 00                 2963 	.db #0x00	; 0
   680B 00                 2964 	.db #0x00	; 0
   680C 00                 2965 	.db #0x00	; 0
                           2966 	.area _INITIALIZER
                           2967 	.area _CABS (ABS)
