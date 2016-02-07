                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:09:18 2016
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
   5E0D                      73 _grass1:
   5E0D 0F                   74 	.db #0x0F	; 15
   5E0E 0F                   75 	.db #0x0F	; 15
   5E0F 0F                   76 	.db #0x0F	; 15
   5E10 8F                   77 	.db #0x8F	; 143
   5E11 0F                   78 	.db #0x0F	; 15
   5E12 0F                   79 	.db #0x0F	; 15
   5E13 0F                   80 	.db #0x0F	; 15
   5E14 0F                   81 	.db #0x0F	; 15
   5E15 1F                   82 	.db #0x1F	; 31
   5E16 0F                   83 	.db #0x0F	; 15
   5E17 2F                   84 	.db #0x2F	; 47
   5E18 0F                   85 	.db #0x0F	; 15
   5E19 0F                   86 	.db #0x0F	; 15
   5E1A 0F                   87 	.db #0x0F	; 15
   5E1B 0F                   88 	.db #0x0F	; 15
   5E1C 0F                   89 	.db #0x0F	; 15
   5E1D 0F                   90 	.db #0x0F	; 15
   5E1E 0F                   91 	.db #0x0F	; 15
   5E1F 0F                   92 	.db #0x0F	; 15
   5E20 0F                   93 	.db #0x0F	; 15
   5E21 0F                   94 	.db #0x0F	; 15
   5E22 0F                   95 	.db #0x0F	; 15
   5E23 0F                   96 	.db #0x0F	; 15
   5E24 0F                   97 	.db #0x0F	; 15
   5E25 0F                   98 	.db #0x0F	; 15
   5E26 0F                   99 	.db #0x0F	; 15
   5E27 0F                  100 	.db #0x0F	; 15
   5E28 0F                  101 	.db #0x0F	; 15
   5E29 4F                  102 	.db #0x4F	; 79	'O'
   5E2A 0F                  103 	.db #0x0F	; 15
   5E2B 0F                  104 	.db #0x0F	; 15
   5E2C 8F                  105 	.db #0x8F	; 143
   5E2D 0F                  106 	.db #0x0F	; 15
   5E2E 4F                  107 	.db #0x4F	; 79	'O'
   5E2F 0F                  108 	.db #0x0F	; 15
   5E30 0F                  109 	.db #0x0F	; 15
   5E31 0F                  110 	.db #0x0F	; 15
   5E32 0F                  111 	.db #0x0F	; 15
   5E33 0F                  112 	.db #0x0F	; 15
   5E34 0F                  113 	.db #0x0F	; 15
   5E35 0F                  114 	.db #0x0F	; 15
   5E36 0F                  115 	.db #0x0F	; 15
   5E37 0F                  116 	.db #0x0F	; 15
   5E38 0F                  117 	.db #0x0F	; 15
   5E39 0F                  118 	.db #0x0F	; 15
   5E3A 1F                  119 	.db #0x1F	; 31
   5E3B 0F                  120 	.db #0x0F	; 15
   5E3C 0F                  121 	.db #0x0F	; 15
   5E3D 0F                  122 	.db #0x0F	; 15
   5E3E 0F                  123 	.db #0x0F	; 15
   5E3F 0F                  124 	.db #0x0F	; 15
   5E40 8F                  125 	.db #0x8F	; 143
   5E41 0F                  126 	.db #0x0F	; 15
   5E42 0F                  127 	.db #0x0F	; 15
   5E43 0F                  128 	.db #0x0F	; 15
   5E44 0F                  129 	.db #0x0F	; 15
   5E45 0F                  130 	.db #0x0F	; 15
   5E46 0F                  131 	.db #0x0F	; 15
   5E47 0F                  132 	.db #0x0F	; 15
   5E48 0F                  133 	.db #0x0F	; 15
   5E49 4F                  134 	.db #0x4F	; 79	'O'
   5E4A 0F                  135 	.db #0x0F	; 15
   5E4B 8F                  136 	.db #0x8F	; 143
   5E4C 0F                  137 	.db #0x0F	; 15
   5E4D                     138 _grass2:
   5E4D 0F                  139 	.db #0x0F	; 15
   5E4E 0F                  140 	.db #0x0F	; 15
   5E4F 0F                  141 	.db #0x0F	; 15
   5E50 0F                  142 	.db #0x0F	; 15
   5E51 0F                  143 	.db #0x0F	; 15
   5E52 0F                  144 	.db #0x0F	; 15
   5E53 0F                  145 	.db #0x0F	; 15
   5E54 2F                  146 	.db #0x2F	; 47
   5E55 0F                  147 	.db #0x0F	; 15
   5E56 8F                  148 	.db #0x8F	; 143
   5E57 0F                  149 	.db #0x0F	; 15
   5E58 0F                  150 	.db #0x0F	; 15
   5E59 0F                  151 	.db #0x0F	; 15
   5E5A 0F                  152 	.db #0x0F	; 15
   5E5B 0F                  153 	.db #0x0F	; 15
   5E5C 0F                  154 	.db #0x0F	; 15
   5E5D 0F                  155 	.db #0x0F	; 15
   5E5E 0F                  156 	.db #0x0F	; 15
   5E5F 0F                  157 	.db #0x0F	; 15
   5E60 0F                  158 	.db #0x0F	; 15
   5E61 4F                  159 	.db #0x4F	; 79	'O'
   5E62 0F                  160 	.db #0x0F	; 15
   5E63 0F                  161 	.db #0x0F	; 15
   5E64 0F                  162 	.db #0x0F	; 15
   5E65 0F                  163 	.db #0x0F	; 15
   5E66 0F                  164 	.db #0x0F	; 15
   5E67 2F                  165 	.db #0x2F	; 47
   5E68 0F                  166 	.db #0x0F	; 15
   5E69 0F                  167 	.db #0x0F	; 15
   5E6A 0F                  168 	.db #0x0F	; 15
   5E6B 0F                  169 	.db #0x0F	; 15
   5E6C 0F                  170 	.db #0x0F	; 15
   5E6D 0F                  171 	.db #0x0F	; 15
   5E6E 4F                  172 	.db #0x4F	; 79	'O'
   5E6F 0F                  173 	.db #0x0F	; 15
   5E70 0F                  174 	.db #0x0F	; 15
   5E71 0F                  175 	.db #0x0F	; 15
   5E72 0F                  176 	.db #0x0F	; 15
   5E73 0F                  177 	.db #0x0F	; 15
   5E74 0F                  178 	.db #0x0F	; 15
   5E75 0F                  179 	.db #0x0F	; 15
   5E76 0F                  180 	.db #0x0F	; 15
   5E77 0F                  181 	.db #0x0F	; 15
   5E78 0F                  182 	.db #0x0F	; 15
   5E79 0F                  183 	.db #0x0F	; 15
   5E7A 0F                  184 	.db #0x0F	; 15
   5E7B 0F                  185 	.db #0x0F	; 15
   5E7C 8F                  186 	.db #0x8F	; 143
   5E7D 0F                  187 	.db #0x0F	; 15
   5E7E 0F                  188 	.db #0x0F	; 15
   5E7F 0F                  189 	.db #0x0F	; 15
   5E80 0F                  190 	.db #0x0F	; 15
   5E81 2F                  191 	.db #0x2F	; 47
   5E82 1F                  192 	.db #0x1F	; 31
   5E83 0F                  193 	.db #0x0F	; 15
   5E84 0F                  194 	.db #0x0F	; 15
   5E85 0F                  195 	.db #0x0F	; 15
   5E86 0F                  196 	.db #0x0F	; 15
   5E87 0F                  197 	.db #0x0F	; 15
   5E88 2F                  198 	.db #0x2F	; 47
   5E89 0F                  199 	.db #0x0F	; 15
   5E8A 0F                  200 	.db #0x0F	; 15
   5E8B 0F                  201 	.db #0x0F	; 15
   5E8C 0F                  202 	.db #0x0F	; 15
   5E8D                     203 _forest:
   5E8D 0F                  204 	.db #0x0F	; 15
   5E8E 0F                  205 	.db #0x0F	; 15
   5E8F 0E                  206 	.db #0x0E	; 14
   5E90 03                  207 	.db #0x03	; 3
   5E91 0E                  208 	.db #0x0E	; 14
   5E92 03                  209 	.db #0x03	; 3
   5E93 0E                  210 	.db #0x0E	; 14
   5E94 EF                  211 	.db #0xEF	; 239
   5E95 0E                  212 	.db #0x0E	; 14
   5E96 EF                  213 	.db #0xEF	; 239
   5E97 0F                  214 	.db #0x0F	; 15
   5E98 EF                  215 	.db #0xEF	; 239
   5E99 0E                  216 	.db #0x0E	; 14
   5E9A FF                  217 	.db #0xFF	; 255
   5E9B 0F                  218 	.db #0x0F	; 15
   5E9C 0F                  219 	.db #0x0F	; 15
   5E9D 07                  220 	.db #0x07	; 7
   5E9E 6F                  221 	.db #0x6F	; 111	'o'
   5E9F 0C                  222 	.db #0x0C	; 12
   5EA0 0F                  223 	.db #0x0F	; 15
   5EA1 CF                  224 	.db #0xCF	; 207
   5EA2 0F                  225 	.db #0x0F	; 15
   5EA3 19                  226 	.db #0x19	; 25
   5EA4 8F                  227 	.db #0x8F	; 143
   5EA5 CE                  228 	.db #0xCE	; 206
   5EA6 03                  229 	.db #0x03	; 3
   5EA7 3B                  230 	.db #0x3B	; 59
   5EA8 8F                  231 	.db #0x8F	; 143
   5EA9 CE                  232 	.db #0xCE	; 206
   5EAA CF                  233 	.db #0xCF	; 207
   5EAB 3B                  234 	.db #0x3B	; 59
   5EAC 0F                  235 	.db #0x0F	; 15
   5EAD 0E                  236 	.db #0x0E	; 14
   5EAE EF                  237 	.db #0xEF	; 239
   5EAF 3F                  238 	.db #0x3F	; 63
   5EB0 0F                  239 	.db #0x0F	; 15
   5EB1 0F                  240 	.db #0x0F	; 15
   5EB2 EF                  241 	.db #0xEF	; 239
   5EB3 0F                  242 	.db #0x0F	; 15
   5EB4 0F                  243 	.db #0x0F	; 15
   5EB5 0E                  244 	.db #0x0E	; 14
   5EB6 07                  245 	.db #0x07	; 7
   5EB7 03                  246 	.db #0x03	; 3
   5EB8 0F                  247 	.db #0x0F	; 15
   5EB9 1D                  248 	.db #0x1D	; 29
   5EBA CE                  249 	.db #0xCE	; 206
   5EBB EF                  250 	.db #0xEF	; 239
   5EBC 09                  251 	.db #0x09	; 9
   5EBD 3B                  252 	.db #0x3B	; 59
   5EBE 8F                  253 	.db #0x8F	; 143
   5EBF CE                  254 	.db #0xCE	; 206
   5EC0 67                  255 	.db #0x67	; 103	'g'
   5EC1 3B                  256 	.db #0x3B	; 59
   5EC2 8F                  257 	.db #0x8F	; 143
   5EC3 1D                  258 	.db #0x1D	; 29
   5EC4 EF                  259 	.db #0xEF	; 239
   5EC5 2F                  260 	.db #0x2F	; 47
   5EC6 0F                  261 	.db #0x0F	; 15
   5EC7 1D                  262 	.db #0x1D	; 29
   5EC8 EF                  263 	.db #0xEF	; 239
   5EC9 0F                  264 	.db #0x0F	; 15
   5ECA 0F                  265 	.db #0x0F	; 15
   5ECB 0F                  266 	.db #0x0F	; 15
   5ECC CF                  267 	.db #0xCF	; 207
   5ECD                     268 _dwellings1:
   5ECD 0F                  269 	.db #0x0F	; 15
   5ECE 0F                  270 	.db #0x0F	; 15
   5ECF 0F                  271 	.db #0x0F	; 15
   5ED0 0F                  272 	.db #0x0F	; 15
   5ED1 08                  273 	.db #0x08	; 8
   5ED2 03                  274 	.db #0x03	; 3
   5ED3 0C                  275 	.db #0x0C	; 12
   5ED4 07                  276 	.db #0x07	; 7
   5ED5 38                  277 	.db #0x38	; 56	'8'
   5ED6 E1                  278 	.db #0xE1	; 225
   5ED7 1C                  279 	.db #0x1C	; 28
   5ED8 C3                  280 	.db #0xC3	; 195
   5ED9 3C                  281 	.db #0x3C	; 60
   5EDA E1                  282 	.db #0xE1	; 225
   5EDB 1C                  283 	.db #0x1C	; 28
   5EDC C3                  284 	.db #0xC3	; 195
   5EDD 0F                  285 	.db #0x0F	; 15
   5EDE 0F                  286 	.db #0x0F	; 15
   5EDF 1E                  287 	.db #0x1E	; 30
   5EE0 C3                  288 	.db #0xC3	; 195
   5EE1 0F                  289 	.db #0x0F	; 15
   5EE2 0F                  290 	.db #0x0F	; 15
   5EE3 0F                  291 	.db #0x0F	; 15
   5EE4 0F                  292 	.db #0x0F	; 15
   5EE5 0F                  293 	.db #0x0F	; 15
   5EE6 0F                  294 	.db #0x0F	; 15
   5EE7 0E                  295 	.db #0x0E	; 14
   5EE8 03                  296 	.db #0x03	; 3
   5EE9 0F                  297 	.db #0x0F	; 15
   5EEA 0E                  298 	.db #0x0E	; 14
   5EEB 06                  299 	.db #0x06	; 6
   5EEC E1                  300 	.db #0xE1	; 225
   5EED 0F                  301 	.db #0x0F	; 15
   5EEE 0E                  302 	.db #0x0E	; 14
   5EEF C2                  303 	.db #0xC2	; 194
   5EF0 E1                  304 	.db #0xE1	; 225
   5EF1 0F                  305 	.db #0x0F	; 15
   5EF2 0E                  306 	.db #0x0E	; 14
   5EF3 C2                  307 	.db #0xC2	; 194
   5EF4 E1                  308 	.db #0xE1	; 225
   5EF5 0F                  309 	.db #0x0F	; 15
   5EF6 0E                  310 	.db #0x0E	; 14
   5EF7 C3                  311 	.db #0xC3	; 195
   5EF8 E1                  312 	.db #0xE1	; 225
   5EF9 0F                  313 	.db #0x0F	; 15
   5EFA 0E                  314 	.db #0x0E	; 14
   5EFB C3                  315 	.db #0xC3	; 195
   5EFC 0F                  316 	.db #0x0F	; 15
   5EFD 0F                  317 	.db #0x0F	; 15
   5EFE 0F                  318 	.db #0x0F	; 15
   5EFF C3                  319 	.db #0xC3	; 195
   5F00 0F                  320 	.db #0x0F	; 15
   5F01 08                  321 	.db #0x08	; 8
   5F02 07                  322 	.db #0x07	; 7
   5F03 0F                  323 	.db #0x0F	; 15
   5F04 0F                  324 	.db #0x0F	; 15
   5F05 38                  325 	.db #0x38	; 56	'8'
   5F06 C3                  326 	.db #0xC3	; 195
   5F07 0F                  327 	.db #0x0F	; 15
   5F08 0F                  328 	.db #0x0F	; 15
   5F09 3C                  329 	.db #0x3C	; 60
   5F0A C3                  330 	.db #0xC3	; 195
   5F0B 0F                  331 	.db #0x0F	; 15
   5F0C 0F                  332 	.db #0x0F	; 15
   5F0D                     333 _dwellings2:
   5F0D 0F                  334 	.db #0x0F	; 15
   5F0E 0F                  335 	.db #0x0F	; 15
   5F0F 0F                  336 	.db #0x0F	; 15
   5F10 0F                  337 	.db #0x0F	; 15
   5F11 0F                  338 	.db #0x0F	; 15
   5F12 01                  339 	.db #0x01	; 1
   5F13 0F                  340 	.db #0x0F	; 15
   5F14 0F                  341 	.db #0x0F	; 15
   5F15 0F                  342 	.db #0x0F	; 15
   5F16 70                  343 	.db #0x70	; 112	'p'
   5F17 0C                  344 	.db #0x0C	; 12
   5F18 0F                  345 	.db #0x0F	; 15
   5F19 09                  346 	.db #0x09	; 9
   5F1A 78                  347 	.db #0x78	; 120	'x'
   5F1B 1C                  348 	.db #0x1C	; 28
   5F1C 87                  349 	.db #0x87	; 135
   5F1D 38                  350 	.db #0x38	; 56	'8'
   5F1E 0F                  351 	.db #0x0F	; 15
   5F1F 1C                  352 	.db #0x1C	; 28
   5F20 87                  353 	.db #0x87	; 135
   5F21 38                  354 	.db #0x38	; 56	'8'
   5F22 0F                  355 	.db #0x0F	; 15
   5F23 1E                  356 	.db #0x1E	; 30
   5F24 87                  357 	.db #0x87	; 135
   5F25 3C                  358 	.db #0x3C	; 60
   5F26 0F                  359 	.db #0x0F	; 15
   5F27 0F                  360 	.db #0x0F	; 15
   5F28 0F                  361 	.db #0x0F	; 15
   5F29 0F                  362 	.db #0x0F	; 15
   5F2A 0F                  363 	.db #0x0F	; 15
   5F2B 0F                  364 	.db #0x0F	; 15
   5F2C 0F                  365 	.db #0x0F	; 15
   5F2D 0E                  366 	.db #0x0E	; 14
   5F2E 07                  367 	.db #0x07	; 7
   5F2F 0F                  368 	.db #0x0F	; 15
   5F30 0F                  369 	.db #0x0F	; 15
   5F31 0E                  370 	.db #0x0E	; 14
   5F32 C3                  371 	.db #0xC3	; 195
   5F33 00                  372 	.db #0x00	; 0
   5F34 07                  373 	.db #0x07	; 7
   5F35 0E                  374 	.db #0x0E	; 14
   5F36 C3                  375 	.db #0xC3	; 195
   5F37 70                  376 	.db #0x70	; 112	'p'
   5F38 C3                  377 	.db #0xC3	; 195
   5F39 0F                  378 	.db #0x0F	; 15
   5F3A C3                  379 	.db #0xC3	; 195
   5F3B 70                  380 	.db #0x70	; 112	'p'
   5F3C C3                  381 	.db #0xC3	; 195
   5F3D 03                  382 	.db #0x03	; 3
   5F3E 0F                  383 	.db #0x0F	; 15
   5F3F 78                  384 	.db #0x78	; 120	'x'
   5F40 C3                  385 	.db #0xC3	; 195
   5F41 61                  386 	.db #0x61	; 97	'a'
   5F42 0F                  387 	.db #0x0F	; 15
   5F43 0F                  388 	.db #0x0F	; 15
   5F44 0F                  389 	.db #0x0F	; 15
   5F45 69                  390 	.db #0x69	; 105	'i'
   5F46 0F                  391 	.db #0x0F	; 15
   5F47 0F                  392 	.db #0x0F	; 15
   5F48 0F                  393 	.db #0x0F	; 15
   5F49 0F                  394 	.db #0x0F	; 15
   5F4A 0F                  395 	.db #0x0F	; 15
   5F4B 0F                  396 	.db #0x0F	; 15
   5F4C 0F                  397 	.db #0x0F	; 15
   5F4D                     398 _dwellings3:
   5F4D 0F                  399 	.db #0x0F	; 15
   5F4E 0F                  400 	.db #0x0F	; 15
   5F4F 09                  401 	.db #0x09	; 9
   5F50 09                  402 	.db #0x09	; 9
   5F51 0F                  403 	.db #0x0F	; 15
   5F52 0F                  404 	.db #0x0F	; 15
   5F53 38                  405 	.db #0x38	; 56	'8'
   5F54 38                  406 	.db #0x38	; 56	'8'
   5F55 0E                  407 	.db #0x0E	; 14
   5F56 03                  408 	.db #0x03	; 3
   5F57 38                  409 	.db #0x38	; 56	'8'
   5F58 38                  410 	.db #0x38	; 56	'8'
   5F59 0E                  411 	.db #0x0E	; 14
   5F5A E1                  412 	.db #0xE1	; 225
   5F5B 3C                  413 	.db #0x3C	; 60
   5F5C 3C                  414 	.db #0x3C	; 60
   5F5D 0E                  415 	.db #0x0E	; 14
   5F5E E1                  416 	.db #0xE1	; 225
   5F5F 0F                  417 	.db #0x0F	; 15
   5F60 0F                  418 	.db #0x0F	; 15
   5F61 0E                  419 	.db #0x0E	; 14
   5F62 E1                  420 	.db #0xE1	; 225
   5F63 08                  421 	.db #0x08	; 8
   5F64 07                  422 	.db #0x07	; 7
   5F65 0F                  423 	.db #0x0F	; 15
   5F66 E1                  424 	.db #0xE1	; 225
   5F67 38                  425 	.db #0x38	; 56	'8'
   5F68 C3                  426 	.db #0xC3	; 195
   5F69 0F                  427 	.db #0x0F	; 15
   5F6A 0F                  428 	.db #0x0F	; 15
   5F6B 3C                  429 	.db #0x3C	; 60
   5F6C C3                  430 	.db #0xC3	; 195
   5F6D 0C                  431 	.db #0x0C	; 12
   5F6E 0F                  432 	.db #0x0F	; 15
   5F6F 0F                  433 	.db #0x0F	; 15
   5F70 0F                  434 	.db #0x0F	; 15
   5F71 1C                  435 	.db #0x1C	; 28
   5F72 87                  436 	.db #0x87	; 135
   5F73 0F                  437 	.db #0x0F	; 15
   5F74 0F                  438 	.db #0x0F	; 15
   5F75 1E                  439 	.db #0x1E	; 30
   5F76 87                  440 	.db #0x87	; 135
   5F77 0C                  441 	.db #0x0C	; 12
   5F78 07                  442 	.db #0x07	; 7
   5F79 0F                  443 	.db #0x0F	; 15
   5F7A 0F                  444 	.db #0x0F	; 15
   5F7B 1C                  445 	.db #0x1C	; 28
   5F7C C3                  446 	.db #0xC3	; 195
   5F7D 0F                  447 	.db #0x0F	; 15
   5F7E 09                  448 	.db #0x09	; 9
   5F7F 1C                  449 	.db #0x1C	; 28
   5F80 C3                  450 	.db #0xC3	; 195
   5F81 0F                  451 	.db #0x0F	; 15
   5F82 38                  452 	.db #0x38	; 56	'8'
   5F83 1C                  453 	.db #0x1C	; 28
   5F84 C3                  454 	.db #0xC3	; 195
   5F85 0F                  455 	.db #0x0F	; 15
   5F86 3C                  456 	.db #0x3C	; 60
   5F87 1E                  457 	.db #0x1E	; 30
   5F88 C3                  458 	.db #0xC3	; 195
   5F89 0F                  459 	.db #0x0F	; 15
   5F8A 0F                  460 	.db #0x0F	; 15
   5F8B 0F                  461 	.db #0x0F	; 15
   5F8C 0F                  462 	.db #0x0F	; 15
   5F8D                     463 _water:
   5F8D 5F                  464 	.db #0x5F	; 95
   5F8E 5F                  465 	.db #0x5F	; 95
   5F8F 5F                  466 	.db #0x5F	; 95
   5F90 5F                  467 	.db #0x5F	; 95
   5F91 AF                  468 	.db #0xAF	; 175
   5F92 AF                  469 	.db #0xAF	; 175
   5F93 AF                  470 	.db #0xAF	; 175
   5F94 AF                  471 	.db #0xAF	; 175
   5F95 5F                  472 	.db #0x5F	; 95
   5F96 5F                  473 	.db #0x5F	; 95
   5F97 5F                  474 	.db #0x5F	; 95
   5F98 5F                  475 	.db #0x5F	; 95
   5F99 AF                  476 	.db #0xAF	; 175
   5F9A AF                  477 	.db #0xAF	; 175
   5F9B AF                  478 	.db #0xAF	; 175
   5F9C AF                  479 	.db #0xAF	; 175
   5F9D 5F                  480 	.db #0x5F	; 95
   5F9E 5F                  481 	.db #0x5F	; 95
   5F9F 5F                  482 	.db #0x5F	; 95
   5FA0 5F                  483 	.db #0x5F	; 95
   5FA1 AF                  484 	.db #0xAF	; 175
   5FA2 AF                  485 	.db #0xAF	; 175
   5FA3 AF                  486 	.db #0xAF	; 175
   5FA4 AF                  487 	.db #0xAF	; 175
   5FA5 5F                  488 	.db #0x5F	; 95
   5FA6 5F                  489 	.db #0x5F	; 95
   5FA7 5F                  490 	.db #0x5F	; 95
   5FA8 5F                  491 	.db #0x5F	; 95
   5FA9 AF                  492 	.db #0xAF	; 175
   5FAA AF                  493 	.db #0xAF	; 175
   5FAB AF                  494 	.db #0xAF	; 175
   5FAC AF                  495 	.db #0xAF	; 175
   5FAD 5F                  496 	.db #0x5F	; 95
   5FAE 5F                  497 	.db #0x5F	; 95
   5FAF 5F                  498 	.db #0x5F	; 95
   5FB0 5F                  499 	.db #0x5F	; 95
   5FB1 AF                  500 	.db #0xAF	; 175
   5FB2 AF                  501 	.db #0xAF	; 175
   5FB3 AF                  502 	.db #0xAF	; 175
   5FB4 AF                  503 	.db #0xAF	; 175
   5FB5 5F                  504 	.db #0x5F	; 95
   5FB6 5F                  505 	.db #0x5F	; 95
   5FB7 5F                  506 	.db #0x5F	; 95
   5FB8 5F                  507 	.db #0x5F	; 95
   5FB9 AF                  508 	.db #0xAF	; 175
   5FBA AF                  509 	.db #0xAF	; 175
   5FBB AF                  510 	.db #0xAF	; 175
   5FBC AF                  511 	.db #0xAF	; 175
   5FBD 5F                  512 	.db #0x5F	; 95
   5FBE 5F                  513 	.db #0x5F	; 95
   5FBF 5F                  514 	.db #0x5F	; 95
   5FC0 5F                  515 	.db #0x5F	; 95
   5FC1 AF                  516 	.db #0xAF	; 175
   5FC2 AF                  517 	.db #0xAF	; 175
   5FC3 AF                  518 	.db #0xAF	; 175
   5FC4 AF                  519 	.db #0xAF	; 175
   5FC5 5F                  520 	.db #0x5F	; 95
   5FC6 5F                  521 	.db #0x5F	; 95
   5FC7 5F                  522 	.db #0x5F	; 95
   5FC8 5F                  523 	.db #0x5F	; 95
   5FC9 AF                  524 	.db #0xAF	; 175
   5FCA AF                  525 	.db #0xAF	; 175
   5FCB AF                  526 	.db #0xAF	; 175
   5FCC AF                  527 	.db #0xAF	; 175
   5FCD                     528 _farm1:
   5FCD 03                  529 	.db #0x03	; 3
   5FCE 0F                  530 	.db #0x0F	; 15
   5FCF 78                  531 	.db #0x78	; 120	'x'
   5FD0 F0                  532 	.db #0xF0	; 240
   5FD1 61                  533 	.db #0x61	; 97	'a'
   5FD2 01                  534 	.db #0x01	; 1
   5FD3 5F                  535 	.db #0x5F	; 95
   5FD4 5F                  536 	.db #0x5F	; 95
   5FD5 61                  537 	.db #0x61	; 97	'a'
   5FD6 70                  538 	.db #0x70	; 112	'p'
   5FD7 78                  539 	.db #0x78	; 120	'x'
   5FD8 F0                  540 	.db #0xF0	; 240
   5FD9 69                  541 	.db #0x69	; 105	'i'
   5FDA 78                  542 	.db #0x78	; 120	'x'
   5FDB 2F                  543 	.db #0x2F	; 47
   5FDC AF                  544 	.db #0xAF	; 175
   5FDD 0F                  545 	.db #0x0F	; 15
   5FDE 0F                  546 	.db #0x0F	; 15
   5FDF 78                  547 	.db #0x78	; 120	'x'
   5FE0 F0                  548 	.db #0xF0	; 240
   5FE1 7A                  549 	.db #0x7A	; 122	'z'
   5FE2 7A                  550 	.db #0x7A	; 122	'z'
   5FE3 5F                  551 	.db #0x5F	; 95
   5FE4 5F                  552 	.db #0x5F	; 95
   5FE5 5A                  553 	.db #0x5A	; 90	'Z'
   5FE6 DA                  554 	.db #0xDA	; 218
   5FE7 78                  555 	.db #0x78	; 120	'x'
   5FE8 F0                  556 	.db #0xF0	; 240
   5FE9 7A                  557 	.db #0x7A	; 122	'z'
   5FEA 7A                  558 	.db #0x7A	; 122	'z'
   5FEB 0F                  559 	.db #0x0F	; 15
   5FEC 0F                  560 	.db #0x0F	; 15
   5FED 5A                  561 	.db #0x5A	; 90	'Z'
   5FEE DA                  562 	.db #0xDA	; 218
   5FEF 0F                  563 	.db #0x0F	; 15
   5FF0 0F                  564 	.db #0x0F	; 15
   5FF1 7A                  565 	.db #0x7A	; 122	'z'
   5FF2 7A                  566 	.db #0x7A	; 122	'z'
   5FF3 78                  567 	.db #0x78	; 120	'x'
   5FF4 F0                  568 	.db #0xF0	; 240
   5FF5 5A                  569 	.db #0x5A	; 90	'Z'
   5FF6 DA                  570 	.db #0xDA	; 218
   5FF7 5F                  571 	.db #0x5F	; 95
   5FF8 5F                  572 	.db #0x5F	; 95
   5FF9 7A                  573 	.db #0x7A	; 122	'z'
   5FFA 7A                  574 	.db #0x7A	; 122	'z'
   5FFB 78                  575 	.db #0x78	; 120	'x'
   5FFC F0                  576 	.db #0xF0	; 240
   5FFD 5A                  577 	.db #0x5A	; 90	'Z'
   5FFE DA                  578 	.db #0xDA	; 218
   5FFF 2F                  579 	.db #0x2F	; 47
   6000 AF                  580 	.db #0xAF	; 175
   6001 7A                  581 	.db #0x7A	; 122	'z'
   6002 7A                  582 	.db #0x7A	; 122	'z'
   6003 78                  583 	.db #0x78	; 120	'x'
   6004 F0                  584 	.db #0xF0	; 240
   6005 5A                  585 	.db #0x5A	; 90	'Z'
   6006 DA                  586 	.db #0xDA	; 218
   6007 5F                  587 	.db #0x5F	; 95
   6008 5F                  588 	.db #0x5F	; 95
   6009 7A                  589 	.db #0x7A	; 122	'z'
   600A 7A                  590 	.db #0x7A	; 122	'z'
   600B 78                  591 	.db #0x78	; 120	'x'
   600C F0                  592 	.db #0xF0	; 240
   600D                     593 _farm2:
   600D 0F                  594 	.db #0x0F	; 15
   600E 0F                  595 	.db #0x0F	; 15
   600F 0F                  596 	.db #0x0F	; 15
   6010 0F                  597 	.db #0x0F	; 15
   6011 7F                  598 	.db #0x7F	; 127
   6012 FF                  599 	.db #0xFF	; 255
   6013 FF                  600 	.db #0xFF	; 255
   6014 EF                  601 	.db #0xEF	; 239
   6015 2D                  602 	.db #0x2D	; 45
   6016 A5                  603 	.db #0xA5	; 165
   6017 A5                  604 	.db #0xA5	; 165
   6018 A5                  605 	.db #0xA5	; 165
   6019 7F                  606 	.db #0x7F	; 127
   601A FF                  607 	.db #0xFF	; 255
   601B FF                  608 	.db #0xFF	; 255
   601C EF                  609 	.db #0xEF	; 239
   601D 5A                  610 	.db #0x5A	; 90	'Z'
   601E 5A                  611 	.db #0x5A	; 90	'Z'
   601F 5A                  612 	.db #0x5A	; 90	'Z'
   6020 4B                  613 	.db #0x4B	; 75	'K'
   6021 7F                  614 	.db #0x7F	; 127
   6022 FF                  615 	.db #0xFF	; 255
   6023 FF                  616 	.db #0xFF	; 255
   6024 EF                  617 	.db #0xEF	; 239
   6025 2D                  618 	.db #0x2D	; 45
   6026 A5                  619 	.db #0xA5	; 165
   6027 A5                  620 	.db #0xA5	; 165
   6028 A5                  621 	.db #0xA5	; 165
   6029 7F                  622 	.db #0x7F	; 127
   602A FF                  623 	.db #0xFF	; 255
   602B FF                  624 	.db #0xFF	; 255
   602C EF                  625 	.db #0xEF	; 239
   602D 5A                  626 	.db #0x5A	; 90	'Z'
   602E 5A                  627 	.db #0x5A	; 90	'Z'
   602F 5A                  628 	.db #0x5A	; 90	'Z'
   6030 4B                  629 	.db #0x4B	; 75	'K'
   6031 7F                  630 	.db #0x7F	; 127
   6032 FF                  631 	.db #0xFF	; 255
   6033 FF                  632 	.db #0xFF	; 255
   6034 EF                  633 	.db #0xEF	; 239
   6035 0F                  634 	.db #0x0F	; 15
   6036 0F                  635 	.db #0x0F	; 15
   6037 0F                  636 	.db #0x0F	; 15
   6038 0F                  637 	.db #0x0F	; 15
   6039 0E                  638 	.db #0x0E	; 14
   603A 07                  639 	.db #0x07	; 7
   603B AF                  640 	.db #0xAF	; 175
   603C AF                  641 	.db #0xAF	; 175
   603D 02                  642 	.db #0x02	; 2
   603E C3                  643 	.db #0xC3	; 195
   603F AF                  644 	.db #0xAF	; 175
   6040 AF                  645 	.db #0xAF	; 175
   6041 60                  646 	.db #0x60	; 96
   6042 C3                  647 	.db #0xC3	; 195
   6043 AF                  648 	.db #0xAF	; 175
   6044 AF                  649 	.db #0xAF	; 175
   6045 69                  650 	.db #0x69	; 105	'i'
   6046 C3                  651 	.db #0xC3	; 195
   6047 AF                  652 	.db #0xAF	; 175
   6048 AF                  653 	.db #0xAF	; 175
   6049 0F                  654 	.db #0x0F	; 15
   604A 0F                  655 	.db #0x0F	; 15
   604B 0F                  656 	.db #0x0F	; 15
   604C 0F                  657 	.db #0x0F	; 15
   604D                     658 _livestock:
   604D 03                  659 	.db #0x03	; 3
   604E 0F                  660 	.db #0x0F	; 15
   604F 0F                  661 	.db #0x0F	; 15
   6050 0F                  662 	.db #0x0F	; 15
   6051 61                  663 	.db #0x61	; 97	'a'
   6052 F5                  664 	.db #0xF5	; 245
   6053 F5                  665 	.db #0xF5	; 245
   6054 E5                  666 	.db #0xE5	; 229
   6055 61                  667 	.db #0x61	; 97	'a'
   6056 8F                  668 	.db #0x8F	; 143
   6057 0F                  669 	.db #0x0F	; 15
   6058 2F                  670 	.db #0x2F	; 47
   6059 69                  671 	.db #0x69	; 105	'i'
   605A 87                  672 	.db #0x87	; 135
   605B 0F                  673 	.db #0x0F	; 15
   605C AD                  674 	.db #0xAD	; 173
   605D 0F                  675 	.db #0x0F	; 15
   605E 9F                  676 	.db #0x9F	; 159
   605F 0F                  677 	.db #0x0F	; 15
   6060 2F                  678 	.db #0x2F	; 47
   6061 7D                  679 	.db #0x7D	; 125
   6062 87                  680 	.db #0x87	; 135
   6063 0F                  681 	.db #0x0F	; 15
   6064 2D                  682 	.db #0x2D	; 45
   6065 4B                  683 	.db #0x4B	; 75	'K'
   6066 0F                  684 	.db #0x0F	; 15
   6067 2F                  685 	.db #0x2F	; 47
   6068 2F                  686 	.db #0x2F	; 47
   6069 4F                  687 	.db #0x4F	; 79	'O'
   606A 0F                  688 	.db #0x0F	; 15
   606B 0F                  689 	.db #0x0F	; 15
   606C 2D                  690 	.db #0x2D	; 45
   606D 5B                  691 	.db #0x5B	; 91
   606E 1F                  692 	.db #0x1F	; 31
   606F 0F                  693 	.db #0x0F	; 15
   6070 2F                  694 	.db #0x2F	; 47
   6071 4F                  695 	.db #0x4F	; 79	'O'
   6072 0F                  696 	.db #0x0F	; 15
   6073 1F                  697 	.db #0x1F	; 31
   6074 2D                  698 	.db #0x2D	; 45
   6075 4B                  699 	.db #0x4B	; 75	'K'
   6076 0F                  700 	.db #0x0F	; 15
   6077 0F                  701 	.db #0x0F	; 15
   6078 2F                  702 	.db #0x2F	; 47
   6079 4F                  703 	.db #0x4F	; 79	'O'
   607A 4F                  704 	.db #0x4F	; 79	'O'
   607B 0F                  705 	.db #0x0F	; 15
   607C 2D                  706 	.db #0x2D	; 45
   607D 4B                  707 	.db #0x4B	; 75	'K'
   607E 0F                  708 	.db #0x0F	; 15
   607F 2F                  709 	.db #0x2F	; 47
   6080 2F                  710 	.db #0x2F	; 47
   6081 4F                  711 	.db #0x4F	; 79	'O'
   6082 0F                  712 	.db #0x0F	; 15
   6083 0F                  713 	.db #0x0F	; 15
   6084 2D                  714 	.db #0x2D	; 45
   6085 7A                  715 	.db #0x7A	; 122	'z'
   6086 FA                  716 	.db #0xFA	; 250
   6087 FA                  717 	.db #0xFA	; 250
   6088 EB                  718 	.db #0xEB	; 235
   6089 0F                  719 	.db #0x0F	; 15
   608A 0F                  720 	.db #0x0F	; 15
   608B 0F                  721 	.db #0x0F	; 15
   608C 0F                  722 	.db #0x0F	; 15
   608D                     723 _station_small_ns:
   608D 0F                  724 	.db #0x0F	; 15
   608E 1E                  725 	.db #0x1E	; 30
   608F 43                  726 	.db #0x43	; 67	'C'
   6090 0F                  727 	.db #0x0F	; 15
   6091 0F                  728 	.db #0x0F	; 15
   6092 1E                  729 	.db #0x1E	; 30
   6093 43                  730 	.db #0x43	; 67	'C'
   6094 4F                  731 	.db #0x4F	; 79	'O'
   6095 0F                  732 	.db #0x0F	; 15
   6096 5E                  733 	.db #0x5E	; 94
   6097 43                  734 	.db #0x43	; 67	'C'
   6098 0F                  735 	.db #0x0F	; 15
   6099 0F                  736 	.db #0x0F	; 15
   609A 1E                  737 	.db #0x1E	; 30
   609B 43                  738 	.db #0x43	; 67	'C'
   609C 0F                  739 	.db #0x0F	; 15
   609D 4F                  740 	.db #0x4F	; 79	'O'
   609E 1E                  741 	.db #0x1E	; 30
   609F 43                  742 	.db #0x43	; 67	'C'
   60A0 8F                  743 	.db #0x8F	; 143
   60A1 0F                  744 	.db #0x0F	; 15
   60A2 1E                  745 	.db #0x1E	; 30
   60A3 43                  746 	.db #0x43	; 67	'C'
   60A4 0F                  747 	.db #0x0F	; 15
   60A5 0F                  748 	.db #0x0F	; 15
   60A6 1E                  749 	.db #0x1E	; 30
   60A7 43                  750 	.db #0x43	; 67	'C'
   60A8 0F                  751 	.db #0x0F	; 15
   60A9 0E                  752 	.db #0x0E	; 14
   60AA 16                  753 	.db #0x16	; 22
   60AB 43                  754 	.db #0x43	; 67	'C'
   60AC 0F                  755 	.db #0x0F	; 15
   60AD 0E                  756 	.db #0x0E	; 14
   60AE D2                  757 	.db #0xD2	; 210
   60AF 43                  758 	.db #0x43	; 67	'C'
   60B0 0F                  759 	.db #0x0F	; 15
   60B1 4F                  760 	.db #0x4F	; 79	'O'
   60B2 D2                  761 	.db #0xD2	; 210
   60B3 43                  762 	.db #0x43	; 67	'C'
   60B4 0F                  763 	.db #0x0F	; 15
   60B5 0F                  764 	.db #0x0F	; 15
   60B6 1E                  765 	.db #0x1E	; 30
   60B7 53                  766 	.db #0x53	; 83	'S'
   60B8 0F                  767 	.db #0x0F	; 15
   60B9 0F                  768 	.db #0x0F	; 15
   60BA 1E                  769 	.db #0x1E	; 30
   60BB 43                  770 	.db #0x43	; 67	'C'
   60BC 0F                  771 	.db #0x0F	; 15
   60BD 0F                  772 	.db #0x0F	; 15
   60BE 5E                  773 	.db #0x5E	; 94
   60BF 43                  774 	.db #0x43	; 67	'C'
   60C0 0F                  775 	.db #0x0F	; 15
   60C1 0F                  776 	.db #0x0F	; 15
   60C2 1E                  777 	.db #0x1E	; 30
   60C3 43                  778 	.db #0x43	; 67	'C'
   60C4 1F                  779 	.db #0x1F	; 31
   60C5 4F                  780 	.db #0x4F	; 79	'O'
   60C6 1E                  781 	.db #0x1E	; 30
   60C7 43                  782 	.db #0x43	; 67	'C'
   60C8 0F                  783 	.db #0x0F	; 15
   60C9 0F                  784 	.db #0x0F	; 15
   60CA 1E                  785 	.db #0x1E	; 30
   60CB 43                  786 	.db #0x43	; 67	'C'
   60CC 0F                  787 	.db #0x0F	; 15
   60CD                     788 _station_small_ew:
   60CD 0F                  789 	.db #0x0F	; 15
   60CE 2F                  790 	.db #0x2F	; 47
   60CF 0F                  791 	.db #0x0F	; 15
   60D0 0F                  792 	.db #0x0F	; 15
   60D1 0F                  793 	.db #0x0F	; 15
   60D2 0F                  794 	.db #0x0F	; 15
   60D3 0F                  795 	.db #0x0F	; 15
   60D4 4F                  796 	.db #0x4F	; 79	'O'
   60D5 0F                  797 	.db #0x0F	; 15
   60D6 0F                  798 	.db #0x0F	; 15
   60D7 0F                  799 	.db #0x0F	; 15
   60D8 0F                  800 	.db #0x0F	; 15
   60D9 2F                  801 	.db #0x2F	; 47
   60DA 0C                  802 	.db #0x0C	; 12
   60DB 0F                  803 	.db #0x0F	; 15
   60DC 0F                  804 	.db #0x0F	; 15
   60DD 0F                  805 	.db #0x0F	; 15
   60DE 1C                  806 	.db #0x1C	; 28
   60DF 87                  807 	.db #0x87	; 135
   60E0 8F                  808 	.db #0x8F	; 143
   60E1 0F                  809 	.db #0x0F	; 15
   60E2 1E                  810 	.db #0x1E	; 30
   60E3 87                  811 	.db #0x87	; 135
   60E4 0F                  812 	.db #0x0F	; 15
   60E5 0F                  813 	.db #0x0F	; 15
   60E6 0F                  814 	.db #0x0F	; 15
   60E7 0F                  815 	.db #0x0F	; 15
   60E8 0F                  816 	.db #0x0F	; 15
   60E9 F0                  817 	.db #0xF0	; 240
   60EA F0                  818 	.db #0xF0	; 240
   60EB F0                  819 	.db #0xF0	; 240
   60EC F0                  820 	.db #0xF0	; 240
   60ED 00                  821 	.db #0x00	; 0
   60EE 00                  822 	.db #0x00	; 0
   60EF 00                  823 	.db #0x00	; 0
   60F0 00                  824 	.db #0x00	; 0
   60F1 F0                  825 	.db #0xF0	; 240
   60F2 F0                  826 	.db #0xF0	; 240
   60F3 F0                  827 	.db #0xF0	; 240
   60F4 F0                  828 	.db #0xF0	; 240
   60F5 0F                  829 	.db #0x0F	; 15
   60F6 0F                  830 	.db #0x0F	; 15
   60F7 0F                  831 	.db #0x0F	; 15
   60F8 0F                  832 	.db #0x0F	; 15
   60F9 0F                  833 	.db #0x0F	; 15
   60FA 8F                  834 	.db #0x8F	; 143
   60FB 0F                  835 	.db #0x0F	; 15
   60FC 8F                  836 	.db #0x8F	; 143
   60FD 0F                  837 	.db #0x0F	; 15
   60FE 0F                  838 	.db #0x0F	; 15
   60FF 0F                  839 	.db #0x0F	; 15
   6100 0F                  840 	.db #0x0F	; 15
   6101 0F                  841 	.db #0x0F	; 15
   6102 0F                  842 	.db #0x0F	; 15
   6103 8F                  843 	.db #0x8F	; 143
   6104 0F                  844 	.db #0x0F	; 15
   6105 4F                  845 	.db #0x4F	; 79	'O'
   6106 0F                  846 	.db #0x0F	; 15
   6107 1F                  847 	.db #0x1F	; 31
   6108 0F                  848 	.db #0x0F	; 15
   6109 0F                  849 	.db #0x0F	; 15
   610A 0F                  850 	.db #0x0F	; 15
   610B 0F                  851 	.db #0x0F	; 15
   610C 1F                  852 	.db #0x1F	; 31
   610D                     853 _station_medium_ns:
   610D 0F                  854 	.db #0x0F	; 15
   610E 1E                  855 	.db #0x1E	; 30
   610F 70                  856 	.db #0x70	; 112	'p'
   6110 0F                  857 	.db #0x0F	; 15
   6111 2F                  858 	.db #0x2F	; 47
   6112 1E                  859 	.db #0x1E	; 30
   6113 50                  860 	.db #0x50	; 80	'P'
   6114 0F                  861 	.db #0x0F	; 15
   6115 0F                  862 	.db #0x0F	; 15
   6116 1E                  863 	.db #0x1E	; 30
   6117 50                  864 	.db #0x50	; 80	'P'
   6118 2F                  865 	.db #0x2F	; 47
   6119 0F                  866 	.db #0x0F	; 15
   611A 1E                  867 	.db #0x1E	; 30
   611B 50                  868 	.db #0x50	; 80	'P'
   611C 0F                  869 	.db #0x0F	; 15
   611D 0F                  870 	.db #0x0F	; 15
   611E 1E                  871 	.db #0x1E	; 30
   611F 50                  872 	.db #0x50	; 80	'P'
   6120 0F                  873 	.db #0x0F	; 15
   6121 0E                  874 	.db #0x0E	; 14
   6122 16                  875 	.db #0x16	; 22
   6123 50                  876 	.db #0x50	; 80	'P'
   6124 0F                  877 	.db #0x0F	; 15
   6125 0E                  878 	.db #0x0E	; 14
   6126 D2                  879 	.db #0xD2	; 210
   6127 50                  880 	.db #0x50	; 80	'P'
   6128 2F                  881 	.db #0x2F	; 47
   6129 0E                  882 	.db #0x0E	; 14
   612A D2                  883 	.db #0xD2	; 210
   612B 50                  884 	.db #0x50	; 80	'P'
   612C 0F                  885 	.db #0x0F	; 15
   612D 0E                  886 	.db #0x0E	; 14
   612E D2                  887 	.db #0xD2	; 210
   612F 50                  888 	.db #0x50	; 80	'P'
   6130 0F                  889 	.db #0x0F	; 15
   6131 0E                  890 	.db #0x0E	; 14
   6132 D2                  891 	.db #0xD2	; 210
   6133 50                  892 	.db #0x50	; 80	'P'
   6134 0F                  893 	.db #0x0F	; 15
   6135 0F                  894 	.db #0x0F	; 15
   6136 D2                  895 	.db #0xD2	; 210
   6137 50                  896 	.db #0x50	; 80	'P'
   6138 1F                  897 	.db #0x1F	; 31
   6139 4F                  898 	.db #0x4F	; 79	'O'
   613A 1E                  899 	.db #0x1E	; 30
   613B 50                  900 	.db #0x50	; 80	'P'
   613C 0F                  901 	.db #0x0F	; 15
   613D 0F                  902 	.db #0x0F	; 15
   613E 1E                  903 	.db #0x1E	; 30
   613F 50                  904 	.db #0x50	; 80	'P'
   6140 0F                  905 	.db #0x0F	; 15
   6141 0F                  906 	.db #0x0F	; 15
   6142 1E                  907 	.db #0x1E	; 30
   6143 50                  908 	.db #0x50	; 80	'P'
   6144 0F                  909 	.db #0x0F	; 15
   6145 0F                  910 	.db #0x0F	; 15
   6146 9E                  911 	.db #0x9E	; 158
   6147 21                  912 	.db #0x21	; 33
   6148 0F                  913 	.db #0x0F	; 15
   6149 0F                  914 	.db #0x0F	; 15
   614A 1E                  915 	.db #0x1E	; 30
   614B 43                  916 	.db #0x43	; 67	'C'
   614C 4F                  917 	.db #0x4F	; 79	'O'
   614D                     918 _station_medium_ew:
   614D 0F                  919 	.db #0x0F	; 15
   614E 0F                  920 	.db #0x0F	; 15
   614F 0F                  921 	.db #0x0F	; 15
   6150 0F                  922 	.db #0x0F	; 15
   6151 0F                  923 	.db #0x0F	; 15
   6152 2F                  924 	.db #0x2F	; 47
   6153 0F                  925 	.db #0x0F	; 15
   6154 03                  926 	.db #0x03	; 3
   6155 0F                  927 	.db #0x0F	; 15
   6156 0F                  928 	.db #0x0F	; 15
   6157 0E                  929 	.db #0x0E	; 14
   6158 67                  930 	.db #0x67	; 103	'g'
   6159 4F                  931 	.db #0x4F	; 79	'O'
   615A 00                  932 	.db #0x00	; 0
   615B 06                  933 	.db #0x06	; 6
   615C EF                  934 	.db #0xEF	; 239
   615D 0F                  935 	.db #0x0F	; 15
   615E 70                  936 	.db #0x70	; 112	'p'
   615F C3                  937 	.db #0xC3	; 195
   6160 CF                  938 	.db #0xCF	; 207
   6161 0F                  939 	.db #0x0F	; 15
   6162 78                  940 	.db #0x78	; 120	'x'
   6163 C3                  941 	.db #0xC3	; 195
   6164 0F                  942 	.db #0x0F	; 15
   6165 0F                  943 	.db #0x0F	; 15
   6166 0F                  944 	.db #0x0F	; 15
   6167 0F                  945 	.db #0x0F	; 15
   6168 0F                  946 	.db #0x0F	; 15
   6169 F0                  947 	.db #0xF0	; 240
   616A F0                  948 	.db #0xF0	; 240
   616B F0                  949 	.db #0xF0	; 240
   616C F0                  950 	.db #0xF0	; 240
   616D 00                  951 	.db #0x00	; 0
   616E 00                  952 	.db #0x00	; 0
   616F 00                  953 	.db #0x00	; 0
   6170 00                  954 	.db #0x00	; 0
   6171 B0                  955 	.db #0xB0	; 176
   6172 F0                  956 	.db #0xF0	; 240
   6173 F0                  957 	.db #0xF0	; 240
   6174 F0                  958 	.db #0xF0	; 240
   6175 48                  959 	.db #0x48	; 72	'H'
   6176 00                  960 	.db #0x00	; 0
   6177 00                  961 	.db #0x00	; 0
   6178 10                  962 	.db #0x10	; 16
   6179 3C                  963 	.db #0x3C	; 60
   617A F0                  964 	.db #0xF0	; 240
   617B F0                  965 	.db #0xF0	; 240
   617C F0                  966 	.db #0xF0	; 240
   617D 0F                  967 	.db #0x0F	; 15
   617E 4F                  968 	.db #0x4F	; 79	'O'
   617F 0F                  969 	.db #0x0F	; 15
   6180 0F                  970 	.db #0x0F	; 15
   6181 0F                  971 	.db #0x0F	; 15
   6182 0F                  972 	.db #0x0F	; 15
   6183 0F                  973 	.db #0x0F	; 15
   6184 0F                  974 	.db #0x0F	; 15
   6185 2F                  975 	.db #0x2F	; 47
   6186 0F                  976 	.db #0x0F	; 15
   6187 0F                  977 	.db #0x0F	; 15
   6188 4F                  978 	.db #0x4F	; 79	'O'
   6189 0F                  979 	.db #0x0F	; 15
   618A 0F                  980 	.db #0x0F	; 15
   618B 0F                  981 	.db #0x0F	; 15
   618C 0F                  982 	.db #0x0F	; 15
   618D                     983 _station_large_ns:
   618D 0F                  984 	.db #0x0F	; 15
   618E 1E                  985 	.db #0x1E	; 30
   618F 43                  986 	.db #0x43	; 67	'C'
   6190 4F                  987 	.db #0x4F	; 79	'O'
   6191 0E                  988 	.db #0x0E	; 14
   6192 16                  989 	.db #0x16	; 22
   6193 21                  990 	.db #0x21	; 33
   6194 0F                  991 	.db #0x0F	; 15
   6195 0E                  992 	.db #0x0E	; 14
   6196 D2                  993 	.db #0xD2	; 210
   6197 50                  994 	.db #0x50	; 80	'P'
   6198 0F                  995 	.db #0x0F	; 15
   6199 0E                  996 	.db #0x0E	; 14
   619A D2                  997 	.db #0xD2	; 210
   619B 40                  998 	.db #0x40	; 64
   619C 87                  999 	.db #0x87	; 135
   619D 0E                 1000 	.db #0x0E	; 14
   619E D2                 1001 	.db #0xD2	; 210
   619F 50                 1002 	.db #0x50	; 80	'P'
   61A0 43                 1003 	.db #0x43	; 67	'C'
   61A1 0C                 1004 	.db #0x0C	; 12
   61A2 D2                 1005 	.db #0xD2	; 210
   61A3 50                 1006 	.db #0x50	; 80	'P'
   61A4 21                 1007 	.db #0x21	; 33
   61A5 1C                 1008 	.db #0x1C	; 28
   61A6 D2                 1009 	.db #0xD2	; 210
   61A7 50                 1010 	.db #0x50	; 80	'P'
   61A8 50                 1011 	.db #0x50	; 80	'P'
   61A9 1C                 1012 	.db #0x1C	; 28
   61AA D2                 1013 	.db #0xD2	; 210
   61AB 50                 1014 	.db #0x50	; 80	'P'
   61AC 50                 1015 	.db #0x50	; 80	'P'
   61AD 1C                 1016 	.db #0x1C	; 28
   61AE D2                 1017 	.db #0xD2	; 210
   61AF 50                 1018 	.db #0x50	; 80	'P'
   61B0 50                 1019 	.db #0x50	; 80	'P'
   61B1 1C                 1020 	.db #0x1C	; 28
   61B2 D2                 1021 	.db #0xD2	; 210
   61B3 50                 1022 	.db #0x50	; 80	'P'
   61B4 50                 1023 	.db #0x50	; 80	'P'
   61B5 1C                 1024 	.db #0x1C	; 28
   61B6 D2                 1025 	.db #0xD2	; 210
   61B7 50                 1026 	.db #0x50	; 80	'P'
   61B8 50                 1027 	.db #0x50	; 80	'P'
   61B9 0E                 1028 	.db #0x0E	; 14
   61BA D2                 1029 	.db #0xD2	; 210
   61BB 50                 1030 	.db #0x50	; 80	'P'
   61BC 50                 1031 	.db #0x50	; 80	'P'
   61BD 0E                 1032 	.db #0x0E	; 14
   61BE D2                 1033 	.db #0xD2	; 210
   61BF 50                 1034 	.db #0x50	; 80	'P'
   61C0 50                 1035 	.db #0x50	; 80	'P'
   61C1 4E                 1036 	.db #0x4E	; 78	'N'
   61C2 D2                 1037 	.db #0xD2	; 210
   61C3 50                 1038 	.db #0x50	; 80	'P'
   61C4 50                 1039 	.db #0x50	; 80	'P'
   61C5 0F                 1040 	.db #0x0F	; 15
   61C6 D2                 1041 	.db #0xD2	; 210
   61C7 50                 1042 	.db #0x50	; 80	'P'
   61C8 50                 1043 	.db #0x50	; 80	'P'
   61C9 0F                 1044 	.db #0x0F	; 15
   61CA 1E                 1045 	.db #0x1E	; 30
   61CB 70                 1046 	.db #0x70	; 112	'p'
   61CC F0                 1047 	.db #0xF0	; 240
   61CD                    1048 _station_large_ew:
   61CD 0F                 1049 	.db #0x0F	; 15
   61CE 0F                 1050 	.db #0x0F	; 15
   61CF 0F                 1051 	.db #0x0F	; 15
   61D0 0F                 1052 	.db #0x0F	; 15
   61D1 0F                 1053 	.db #0x0F	; 15
   61D2 0F                 1054 	.db #0x0F	; 15
   61D3 0F                 1055 	.db #0x0F	; 15
   61D4 0F                 1056 	.db #0x0F	; 15
   61D5 0F                 1057 	.db #0x0F	; 15
   61D6 08                 1058 	.db #0x08	; 8
   61D7 01                 1059 	.db #0x01	; 1
   61D8 0F                 1060 	.db #0x0F	; 15
   61D9 08                 1061 	.db #0x08	; 8
   61DA 30                 1062 	.db #0x30	; 48	'0'
   61DB E0                 1063 	.db #0xE0	; 224
   61DC 01                 1064 	.db #0x01	; 1
   61DD 38                 1065 	.db #0x38	; 56	'8'
   61DE F0                 1066 	.db #0xF0	; 240
   61DF F0                 1067 	.db #0xF0	; 240
   61E0 E1                 1068 	.db #0xE1	; 225
   61E1 3C                 1069 	.db #0x3C	; 60
   61E2 F0                 1070 	.db #0xF0	; 240
   61E3 F0                 1071 	.db #0xF0	; 240
   61E4 E1                 1072 	.db #0xE1	; 225
   61E5 0F                 1073 	.db #0x0F	; 15
   61E6 0F                 1074 	.db #0x0F	; 15
   61E7 0F                 1075 	.db #0x0F	; 15
   61E8 0F                 1076 	.db #0x0F	; 15
   61E9 F0                 1077 	.db #0xF0	; 240
   61EA F0                 1078 	.db #0xF0	; 240
   61EB F0                 1079 	.db #0xF0	; 240
   61EC F0                 1080 	.db #0xF0	; 240
   61ED 00                 1081 	.db #0x00	; 0
   61EE 00                 1082 	.db #0x00	; 0
   61EF 00                 1083 	.db #0x00	; 0
   61F0 00                 1084 	.db #0x00	; 0
   61F1 F0                 1085 	.db #0xF0	; 240
   61F2 F0                 1086 	.db #0xF0	; 240
   61F3 F0                 1087 	.db #0xF0	; 240
   61F4 D0                 1088 	.db #0xD0	; 208
   61F5 80                 1089 	.db #0x80	; 128
   61F6 00                 1090 	.db #0x00	; 0
   61F7 00                 1091 	.db #0x00	; 0
   61F8 21                 1092 	.db #0x21	; 33
   61F9 F0                 1093 	.db #0xF0	; 240
   61FA F0                 1094 	.db #0xF0	; 240
   61FB F0                 1095 	.db #0xF0	; 240
   61FC 43                 1096 	.db #0x43	; 67	'C'
   61FD 80                 1097 	.db #0x80	; 128
   61FE 00                 1098 	.db #0x00	; 0
   61FF 00                 1099 	.db #0x00	; 0
   6200 87                 1100 	.db #0x87	; 135
   6201 F0                 1101 	.db #0xF0	; 240
   6202 F0                 1102 	.db #0xF0	; 240
   6203 D0                 1103 	.db #0xD0	; 208
   6204 0F                 1104 	.db #0x0F	; 15
   6205 80                 1105 	.db #0x80	; 128
   6206 00                 1106 	.db #0x00	; 0
   6207 21                 1107 	.db #0x21	; 33
   6208 0F                 1108 	.db #0x0F	; 15
   6209 F0                 1109 	.db #0xF0	; 240
   620A F0                 1110 	.db #0xF0	; 240
   620B C3                 1111 	.db #0xC3	; 195
   620C 0F                 1112 	.db #0x0F	; 15
   620D                    1113 _rail_ew:
   620D 0F                 1114 	.db #0x0F	; 15
   620E 0F                 1115 	.db #0x0F	; 15
   620F 0F                 1116 	.db #0x0F	; 15
   6210 0F                 1117 	.db #0x0F	; 15
   6211 2F                 1118 	.db #0x2F	; 47
   6212 0F                 1119 	.db #0x0F	; 15
   6213 2F                 1120 	.db #0x2F	; 47
   6214 2F                 1121 	.db #0x2F	; 47
   6215 0F                 1122 	.db #0x0F	; 15
   6216 0F                 1123 	.db #0x0F	; 15
   6217 0F                 1124 	.db #0x0F	; 15
   6218 0F                 1125 	.db #0x0F	; 15
   6219 0F                 1126 	.db #0x0F	; 15
   621A 0F                 1127 	.db #0x0F	; 15
   621B 0F                 1128 	.db #0x0F	; 15
   621C 0F                 1129 	.db #0x0F	; 15
   621D 0F                 1130 	.db #0x0F	; 15
   621E 2F                 1131 	.db #0x2F	; 47
   621F 0F                 1132 	.db #0x0F	; 15
   6220 0F                 1133 	.db #0x0F	; 15
   6221 4F                 1134 	.db #0x4F	; 79	'O'
   6222 0F                 1135 	.db #0x0F	; 15
   6223 0F                 1136 	.db #0x0F	; 15
   6224 4F                 1137 	.db #0x4F	; 79	'O'
   6225 0F                 1138 	.db #0x0F	; 15
   6226 0F                 1139 	.db #0x0F	; 15
   6227 0F                 1140 	.db #0x0F	; 15
   6228 0F                 1141 	.db #0x0F	; 15
   6229 F0                 1142 	.db #0xF0	; 240
   622A F0                 1143 	.db #0xF0	; 240
   622B F0                 1144 	.db #0xF0	; 240
   622C F0                 1145 	.db #0xF0	; 240
   622D 00                 1146 	.db #0x00	; 0
   622E 00                 1147 	.db #0x00	; 0
   622F 00                 1148 	.db #0x00	; 0
   6230 00                 1149 	.db #0x00	; 0
   6231 F0                 1150 	.db #0xF0	; 240
   6232 F0                 1151 	.db #0xF0	; 240
   6233 F0                 1152 	.db #0xF0	; 240
   6234 F0                 1153 	.db #0xF0	; 240
   6235 0F                 1154 	.db #0x0F	; 15
   6236 0F                 1155 	.db #0x0F	; 15
   6237 0F                 1156 	.db #0x0F	; 15
   6238 0F                 1157 	.db #0x0F	; 15
   6239 0F                 1158 	.db #0x0F	; 15
   623A 0F                 1159 	.db #0x0F	; 15
   623B 8F                 1160 	.db #0x8F	; 143
   623C 0F                 1161 	.db #0x0F	; 15
   623D 0F                 1162 	.db #0x0F	; 15
   623E 8F                 1163 	.db #0x8F	; 143
   623F 0F                 1164 	.db #0x0F	; 15
   6240 4F                 1165 	.db #0x4F	; 79	'O'
   6241 0F                 1166 	.db #0x0F	; 15
   6242 0F                 1167 	.db #0x0F	; 15
   6243 0F                 1168 	.db #0x0F	; 15
   6244 0F                 1169 	.db #0x0F	; 15
   6245 0F                 1170 	.db #0x0F	; 15
   6246 0F                 1171 	.db #0x0F	; 15
   6247 0F                 1172 	.db #0x0F	; 15
   6248 0F                 1173 	.db #0x0F	; 15
   6249 2F                 1174 	.db #0x2F	; 47
   624A 0F                 1175 	.db #0x0F	; 15
   624B 2F                 1176 	.db #0x2F	; 47
   624C 0F                 1177 	.db #0x0F	; 15
   624D                    1178 _rail_ns:
   624D 0F                 1179 	.db #0x0F	; 15
   624E 1E                 1180 	.db #0x1E	; 30
   624F 43                 1181 	.db #0x43	; 67	'C'
   6250 0F                 1182 	.db #0x0F	; 15
   6251 0F                 1183 	.db #0x0F	; 15
   6252 9E                 1184 	.db #0x9E	; 158
   6253 43                 1185 	.db #0x43	; 67	'C'
   6254 8F                 1186 	.db #0x8F	; 143
   6255 0F                 1187 	.db #0x0F	; 15
   6256 1E                 1188 	.db #0x1E	; 30
   6257 43                 1189 	.db #0x43	; 67	'C'
   6258 0F                 1190 	.db #0x0F	; 15
   6259 0F                 1191 	.db #0x0F	; 15
   625A 1E                 1192 	.db #0x1E	; 30
   625B 43                 1193 	.db #0x43	; 67	'C'
   625C 0F                 1194 	.db #0x0F	; 15
   625D 0F                 1195 	.db #0x0F	; 15
   625E 1E                 1196 	.db #0x1E	; 30
   625F 43                 1197 	.db #0x43	; 67	'C'
   6260 0F                 1198 	.db #0x0F	; 15
   6261 0F                 1199 	.db #0x0F	; 15
   6262 1E                 1200 	.db #0x1E	; 30
   6263 43                 1201 	.db #0x43	; 67	'C'
   6264 2F                 1202 	.db #0x2F	; 47
   6265 0F                 1203 	.db #0x0F	; 15
   6266 1E                 1204 	.db #0x1E	; 30
   6267 43                 1205 	.db #0x43	; 67	'C'
   6268 0F                 1206 	.db #0x0F	; 15
   6269 2F                 1207 	.db #0x2F	; 47
   626A 1E                 1208 	.db #0x1E	; 30
   626B 43                 1209 	.db #0x43	; 67	'C'
   626C 0F                 1210 	.db #0x0F	; 15
   626D 0F                 1211 	.db #0x0F	; 15
   626E 1E                 1212 	.db #0x1E	; 30
   626F 43                 1213 	.db #0x43	; 67	'C'
   6270 0F                 1214 	.db #0x0F	; 15
   6271 0F                 1215 	.db #0x0F	; 15
   6272 1E                 1216 	.db #0x1E	; 30
   6273 43                 1217 	.db #0x43	; 67	'C'
   6274 0F                 1218 	.db #0x0F	; 15
   6275 0F                 1219 	.db #0x0F	; 15
   6276 1E                 1220 	.db #0x1E	; 30
   6277 43                 1221 	.db #0x43	; 67	'C'
   6278 0F                 1222 	.db #0x0F	; 15
   6279 0F                 1223 	.db #0x0F	; 15
   627A 1E                 1224 	.db #0x1E	; 30
   627B 53                 1225 	.db #0x53	; 83	'S'
   627C 0F                 1226 	.db #0x0F	; 15
   627D 0F                 1227 	.db #0x0F	; 15
   627E 9E                 1228 	.db #0x9E	; 158
   627F 43                 1229 	.db #0x43	; 67	'C'
   6280 0F                 1230 	.db #0x0F	; 15
   6281 4F                 1231 	.db #0x4F	; 79	'O'
   6282 1E                 1232 	.db #0x1E	; 30
   6283 43                 1233 	.db #0x43	; 67	'C'
   6284 0F                 1234 	.db #0x0F	; 15
   6285 0F                 1235 	.db #0x0F	; 15
   6286 1E                 1236 	.db #0x1E	; 30
   6287 43                 1237 	.db #0x43	; 67	'C'
   6288 4F                 1238 	.db #0x4F	; 79	'O'
   6289 0F                 1239 	.db #0x0F	; 15
   628A 1E                 1240 	.db #0x1E	; 30
   628B 43                 1241 	.db #0x43	; 67	'C'
   628C 0F                 1242 	.db #0x0F	; 15
   628D                    1243 _rail_en:
   628D 0F                 1244 	.db #0x0F	; 15
   628E 1E                 1245 	.db #0x1E	; 30
   628F 43                 1246 	.db #0x43	; 67	'C'
   6290 0F                 1247 	.db #0x0F	; 15
   6291 2F                 1248 	.db #0x2F	; 47
   6292 1E                 1249 	.db #0x1E	; 30
   6293 43                 1250 	.db #0x43	; 67	'C'
   6294 8F                 1251 	.db #0x8F	; 143
   6295 0F                 1252 	.db #0x0F	; 15
   6296 0F                 1253 	.db #0x0F	; 15
   6297 A1                 1254 	.db #0xA1	; 161
   6298 0F                 1255 	.db #0x0F	; 15
   6299 0F                 1256 	.db #0x0F	; 15
   629A 0F                 1257 	.db #0x0F	; 15
   629B 58                 1258 	.db #0x58	; 88	'X'
   629C 0F                 1259 	.db #0x0F	; 15
   629D 0F                 1260 	.db #0x0F	; 15
   629E 4F                 1261 	.db #0x4F	; 79	'O'
   629F 2C                 1262 	.db #0x2C	; 44
   62A0 87                 1263 	.db #0x87	; 135
   62A1 0F                 1264 	.db #0x0F	; 15
   62A2 0F                 1265 	.db #0x0F	; 15
   62A3 1E                 1266 	.db #0x1E	; 30
   62A4 43                 1267 	.db #0x43	; 67	'C'
   62A5 0F                 1268 	.db #0x0F	; 15
   62A6 0F                 1269 	.db #0x0F	; 15
   62A7 8F                 1270 	.db #0x8F	; 143
   62A8 A1                 1271 	.db #0xA1	; 161
   62A9 0F                 1272 	.db #0x0F	; 15
   62AA 0F                 1273 	.db #0x0F	; 15
   62AB 0F                 1274 	.db #0x0F	; 15
   62AC 58                 1275 	.db #0x58	; 88	'X'
   62AD 2F                 1276 	.db #0x2F	; 47
   62AE 0F                 1277 	.db #0x0F	; 15
   62AF 0F                 1278 	.db #0x0F	; 15
   62B0 2C                 1279 	.db #0x2C	; 44
   62B1 0F                 1280 	.db #0x0F	; 15
   62B2 0F                 1281 	.db #0x0F	; 15
   62B3 0F                 1282 	.db #0x0F	; 15
   62B4 1E                 1283 	.db #0x1E	; 30
   62B5 0F                 1284 	.db #0x0F	; 15
   62B6 0F                 1285 	.db #0x0F	; 15
   62B7 0F                 1286 	.db #0x0F	; 15
   62B8 4F                 1287 	.db #0x4F	; 79	'O'
   62B9 0F                 1288 	.db #0x0F	; 15
   62BA 0F                 1289 	.db #0x0F	; 15
   62BB 0F                 1290 	.db #0x0F	; 15
   62BC 0F                 1291 	.db #0x0F	; 15
   62BD 2F                 1292 	.db #0x2F	; 47
   62BE 4F                 1293 	.db #0x4F	; 79	'O'
   62BF 2F                 1294 	.db #0x2F	; 47
   62C0 0F                 1295 	.db #0x0F	; 15
   62C1 0F                 1296 	.db #0x0F	; 15
   62C2 0F                 1297 	.db #0x0F	; 15
   62C3 0F                 1298 	.db #0x0F	; 15
   62C4 0F                 1299 	.db #0x0F	; 15
   62C5 0F                 1300 	.db #0x0F	; 15
   62C6 0F                 1301 	.db #0x0F	; 15
   62C7 0F                 1302 	.db #0x0F	; 15
   62C8 2F                 1303 	.db #0x2F	; 47
   62C9 0F                 1304 	.db #0x0F	; 15
   62CA 0F                 1305 	.db #0x0F	; 15
   62CB 0F                 1306 	.db #0x0F	; 15
   62CC 0F                 1307 	.db #0x0F	; 15
   62CD                    1308 _rail_es:
   62CD 0F                 1309 	.db #0x0F	; 15
   62CE 0F                 1310 	.db #0x0F	; 15
   62CF 0F                 1311 	.db #0x0F	; 15
   62D0 0F                 1312 	.db #0x0F	; 15
   62D1 0F                 1313 	.db #0x0F	; 15
   62D2 0F                 1314 	.db #0x0F	; 15
   62D3 0F                 1315 	.db #0x0F	; 15
   62D4 2F                 1316 	.db #0x2F	; 47
   62D5 0F                 1317 	.db #0x0F	; 15
   62D6 2F                 1318 	.db #0x2F	; 47
   62D7 0F                 1319 	.db #0x0F	; 15
   62D8 0F                 1320 	.db #0x0F	; 15
   62D9 1F                 1321 	.db #0x1F	; 31
   62DA 0F                 1322 	.db #0x0F	; 15
   62DB 0F                 1323 	.db #0x0F	; 15
   62DC 0F                 1324 	.db #0x0F	; 15
   62DD 0F                 1325 	.db #0x0F	; 15
   62DE 0F                 1326 	.db #0x0F	; 15
   62DF 0F                 1327 	.db #0x0F	; 15
   62E0 0F                 1328 	.db #0x0F	; 15
   62E1 0F                 1329 	.db #0x0F	; 15
   62E2 0F                 1330 	.db #0x0F	; 15
   62E3 1F                 1331 	.db #0x1F	; 31
   62E4 0F                 1332 	.db #0x0F	; 15
   62E5 0F                 1333 	.db #0x0F	; 15
   62E6 0F                 1334 	.db #0x0F	; 15
   62E7 0F                 1335 	.db #0x0F	; 15
   62E8 0F                 1336 	.db #0x0F	; 15
   62E9 4F                 1337 	.db #0x4F	; 79	'O'
   62EA 0F                 1338 	.db #0x0F	; 15
   62EB 0F                 1339 	.db #0x0F	; 15
   62EC 3C                 1340 	.db #0x3C	; 60
   62ED 0F                 1341 	.db #0x0F	; 15
   62EE 4F                 1342 	.db #0x4F	; 79	'O'
   62EF 0F                 1343 	.db #0x0F	; 15
   62F0 48                 1344 	.db #0x48	; 72	'H'
   62F1 0F                 1345 	.db #0x0F	; 15
   62F2 0F                 1346 	.db #0x0F	; 15
   62F3 4F                 1347 	.db #0x4F	; 79	'O'
   62F4 B0                 1348 	.db #0xB0	; 176
   62F5 0F                 1349 	.db #0x0F	; 15
   62F6 0F                 1350 	.db #0x0F	; 15
   62F7 1E                 1351 	.db #0x1E	; 30
   62F8 43                 1352 	.db #0x43	; 67	'C'
   62F9 0F                 1353 	.db #0x0F	; 15
   62FA 0F                 1354 	.db #0x0F	; 15
   62FB 2C                 1355 	.db #0x2C	; 44
   62FC 87                 1356 	.db #0x87	; 135
   62FD 0F                 1357 	.db #0x0F	; 15
   62FE 0F                 1358 	.db #0x0F	; 15
   62FF 58                 1359 	.db #0x58	; 88	'X'
   6300 0F                 1360 	.db #0x0F	; 15
   6301 0F                 1361 	.db #0x0F	; 15
   6302 8F                 1362 	.db #0x8F	; 143
   6303 A1                 1363 	.db #0xA1	; 161
   6304 0F                 1364 	.db #0x0F	; 15
   6305 0F                 1365 	.db #0x0F	; 15
   6306 1E                 1366 	.db #0x1E	; 30
   6307 43                 1367 	.db #0x43	; 67	'C'
   6308 8F                 1368 	.db #0x8F	; 143
   6309 0F                 1369 	.db #0x0F	; 15
   630A 1E                 1370 	.db #0x1E	; 30
   630B 43                 1371 	.db #0x43	; 67	'C'
   630C 0F                 1372 	.db #0x0F	; 15
   630D                    1373 _rail_wn:
   630D 0F                 1374 	.db #0x0F	; 15
   630E 1E                 1375 	.db #0x1E	; 30
   630F 43                 1376 	.db #0x43	; 67	'C'
   6310 0F                 1377 	.db #0x0F	; 15
   6311 0F                 1378 	.db #0x0F	; 15
   6312 1E                 1379 	.db #0x1E	; 30
   6313 53                 1380 	.db #0x53	; 83	'S'
   6314 0F                 1381 	.db #0x0F	; 15
   6315 0F                 1382 	.db #0x0F	; 15
   6316 2C                 1383 	.db #0x2C	; 44
   6317 87                 1384 	.db #0x87	; 135
   6318 0F                 1385 	.db #0x0F	; 15
   6319 2F                 1386 	.db #0x2F	; 47
   631A 58                 1387 	.db #0x58	; 88	'X'
   631B 0F                 1388 	.db #0x0F	; 15
   631C 0F                 1389 	.db #0x0F	; 15
   631D 0F                 1390 	.db #0x0F	; 15
   631E A1                 1391 	.db #0xA1	; 161
   631F 0F                 1392 	.db #0x0F	; 15
   6320 0F                 1393 	.db #0x0F	; 15
   6321 1E                 1394 	.db #0x1E	; 30
   6322 43                 1395 	.db #0x43	; 67	'C'
   6323 0F                 1396 	.db #0x0F	; 15
   6324 8F                 1397 	.db #0x8F	; 143
   6325 2C                 1398 	.db #0x2C	; 44
   6326 87                 1399 	.db #0x87	; 135
   6327 0F                 1400 	.db #0x0F	; 15
   6328 0F                 1401 	.db #0x0F	; 15
   6329 D0                 1402 	.db #0xD0	; 208
   632A 1F                 1403 	.db #0x1F	; 31
   632B 0F                 1404 	.db #0x0F	; 15
   632C 0F                 1405 	.db #0x0F	; 15
   632D 21                 1406 	.db #0x21	; 33
   632E 0F                 1407 	.db #0x0F	; 15
   632F 0F                 1408 	.db #0x0F	; 15
   6330 0F                 1409 	.db #0x0F	; 15
   6331 C3                 1410 	.db #0xC3	; 195
   6332 0F                 1411 	.db #0x0F	; 15
   6333 0F                 1412 	.db #0x0F	; 15
   6334 0F                 1413 	.db #0x0F	; 15
   6335 0F                 1414 	.db #0x0F	; 15
   6336 0F                 1415 	.db #0x0F	; 15
   6337 0F                 1416 	.db #0x0F	; 15
   6338 0F                 1417 	.db #0x0F	; 15
   6339 1F                 1418 	.db #0x1F	; 31
   633A 0F                 1419 	.db #0x0F	; 15
   633B 4F                 1420 	.db #0x4F	; 79	'O'
   633C 4F                 1421 	.db #0x4F	; 79	'O'
   633D 0F                 1422 	.db #0x0F	; 15
   633E 0F                 1423 	.db #0x0F	; 15
   633F 0F                 1424 	.db #0x0F	; 15
   6340 0F                 1425 	.db #0x0F	; 15
   6341 0F                 1426 	.db #0x0F	; 15
   6342 1F                 1427 	.db #0x1F	; 31
   6343 0F                 1428 	.db #0x0F	; 15
   6344 0F                 1429 	.db #0x0F	; 15
   6345 2F                 1430 	.db #0x2F	; 47
   6346 0F                 1431 	.db #0x0F	; 15
   6347 0F                 1432 	.db #0x0F	; 15
   6348 0F                 1433 	.db #0x0F	; 15
   6349 0F                 1434 	.db #0x0F	; 15
   634A 0F                 1435 	.db #0x0F	; 15
   634B 0F                 1436 	.db #0x0F	; 15
   634C 0F                 1437 	.db #0x0F	; 15
   634D                    1438 _rail_ws:
   634D 0F                 1439 	.db #0x0F	; 15
   634E 0F                 1440 	.db #0x0F	; 15
   634F 0F                 1441 	.db #0x0F	; 15
   6350 0F                 1442 	.db #0x0F	; 15
   6351 0F                 1443 	.db #0x0F	; 15
   6352 0F                 1444 	.db #0x0F	; 15
   6353 0F                 1445 	.db #0x0F	; 15
   6354 0F                 1446 	.db #0x0F	; 15
   6355 2F                 1447 	.db #0x2F	; 47
   6356 0F                 1448 	.db #0x0F	; 15
   6357 4F                 1449 	.db #0x4F	; 79	'O'
   6358 2F                 1450 	.db #0x2F	; 47
   6359 0F                 1451 	.db #0x0F	; 15
   635A 0F                 1452 	.db #0x0F	; 15
   635B 0F                 1453 	.db #0x0F	; 15
   635C 0F                 1454 	.db #0x0F	; 15
   635D 0F                 1455 	.db #0x0F	; 15
   635E 0F                 1456 	.db #0x0F	; 15
   635F 0F                 1457 	.db #0x0F	; 15
   6360 0F                 1458 	.db #0x0F	; 15
   6361 0F                 1459 	.db #0x0F	; 15
   6362 0F                 1460 	.db #0x0F	; 15
   6363 0F                 1461 	.db #0x0F	; 15
   6364 0F                 1462 	.db #0x0F	; 15
   6365 0F                 1463 	.db #0x0F	; 15
   6366 2F                 1464 	.db #0x2F	; 47
   6367 0F                 1465 	.db #0x0F	; 15
   6368 0F                 1466 	.db #0x0F	; 15
   6369 C3                 1467 	.db #0xC3	; 195
   636A 0F                 1468 	.db #0x0F	; 15
   636B 0F                 1469 	.db #0x0F	; 15
   636C 0F                 1470 	.db #0x0F	; 15
   636D 21                 1471 	.db #0x21	; 33
   636E 0F                 1472 	.db #0x0F	; 15
   636F 2F                 1473 	.db #0x2F	; 47
   6370 0F                 1474 	.db #0x0F	; 15
   6371 D0                 1475 	.db #0xD0	; 208
   6372 0F                 1476 	.db #0x0F	; 15
   6373 0F                 1477 	.db #0x0F	; 15
   6374 0F                 1478 	.db #0x0F	; 15
   6375 2C                 1479 	.db #0x2C	; 44
   6376 87                 1480 	.db #0x87	; 135
   6377 0F                 1481 	.db #0x0F	; 15
   6378 0F                 1482 	.db #0x0F	; 15
   6379 1E                 1483 	.db #0x1E	; 30
   637A 43                 1484 	.db #0x43	; 67	'C'
   637B 0F                 1485 	.db #0x0F	; 15
   637C 2F                 1486 	.db #0x2F	; 47
   637D 4F                 1487 	.db #0x4F	; 79	'O'
   637E A1                 1488 	.db #0xA1	; 161
   637F 0F                 1489 	.db #0x0F	; 15
   6380 0F                 1490 	.db #0x0F	; 15
   6381 0F                 1491 	.db #0x0F	; 15
   6382 58                 1492 	.db #0x58	; 88	'X'
   6383 4F                 1493 	.db #0x4F	; 79	'O'
   6384 0F                 1494 	.db #0x0F	; 15
   6385 0F                 1495 	.db #0x0F	; 15
   6386 2C                 1496 	.db #0x2C	; 44
   6387 87                 1497 	.db #0x87	; 135
   6388 4F                 1498 	.db #0x4F	; 79	'O'
   6389 0F                 1499 	.db #0x0F	; 15
   638A 1E                 1500 	.db #0x1E	; 30
   638B 43                 1501 	.db #0x43	; 67	'C'
   638C 0F                 1502 	.db #0x0F	; 15
   638D                    1503 _rail_ew_n:
   638D 0F                 1504 	.db #0x0F	; 15
   638E 1E                 1505 	.db #0x1E	; 30
   638F 43                 1506 	.db #0x43	; 67	'C'
   6390 0F                 1507 	.db #0x0F	; 15
   6391 0F                 1508 	.db #0x0F	; 15
   6392 9E                 1509 	.db #0x9E	; 158
   6393 43                 1510 	.db #0x43	; 67	'C'
   6394 0F                 1511 	.db #0x0F	; 15
   6395 0F                 1512 	.db #0x0F	; 15
   6396 1E                 1513 	.db #0x1E	; 30
   6397 53                 1514 	.db #0x53	; 83	'S'
   6398 0F                 1515 	.db #0x0F	; 15
   6399 0F                 1516 	.db #0x0F	; 15
   639A 2C                 1517 	.db #0x2C	; 44
   639B 87                 1518 	.db #0x87	; 135
   639C 0F                 1519 	.db #0x0F	; 15
   639D 4F                 1520 	.db #0x4F	; 79	'O'
   639E 58                 1521 	.db #0x58	; 88	'X'
   639F 0F                 1522 	.db #0x0F	; 15
   63A0 0F                 1523 	.db #0x0F	; 15
   63A1 0F                 1524 	.db #0x0F	; 15
   63A2 A1                 1525 	.db #0xA1	; 161
   63A3 0F                 1526 	.db #0x0F	; 15
   63A4 8F                 1527 	.db #0x8F	; 143
   63A5 1E                 1528 	.db #0x1E	; 30
   63A6 43                 1529 	.db #0x43	; 67	'C'
   63A7 0F                 1530 	.db #0x0F	; 15
   63A8 0F                 1531 	.db #0x0F	; 15
   63A9 E0                 1532 	.db #0xE0	; 224
   63AA F0                 1533 	.db #0xF0	; 240
   63AB F0                 1534 	.db #0xF0	; 240
   63AC F0                 1535 	.db #0xF0	; 240
   63AD 00                 1536 	.db #0x00	; 0
   63AE 00                 1537 	.db #0x00	; 0
   63AF 00                 1538 	.db #0x00	; 0
   63B0 00                 1539 	.db #0x00	; 0
   63B1 F0                 1540 	.db #0xF0	; 240
   63B2 F0                 1541 	.db #0xF0	; 240
   63B3 F0                 1542 	.db #0xF0	; 240
   63B4 F0                 1543 	.db #0xF0	; 240
   63B5 0F                 1544 	.db #0x0F	; 15
   63B6 0F                 1545 	.db #0x0F	; 15
   63B7 0F                 1546 	.db #0x0F	; 15
   63B8 0F                 1547 	.db #0x0F	; 15
   63B9 2F                 1548 	.db #0x2F	; 47
   63BA 1F                 1549 	.db #0x1F	; 31
   63BB 0F                 1550 	.db #0x0F	; 15
   63BC 4F                 1551 	.db #0x4F	; 79	'O'
   63BD 0F                 1552 	.db #0x0F	; 15
   63BE 0F                 1553 	.db #0x0F	; 15
   63BF 0F                 1554 	.db #0x0F	; 15
   63C0 0F                 1555 	.db #0x0F	; 15
   63C1 0F                 1556 	.db #0x0F	; 15
   63C2 0F                 1557 	.db #0x0F	; 15
   63C3 0F                 1558 	.db #0x0F	; 15
   63C4 0F                 1559 	.db #0x0F	; 15
   63C5 0F                 1560 	.db #0x0F	; 15
   63C6 8F                 1561 	.db #0x8F	; 143
   63C7 4F                 1562 	.db #0x4F	; 79	'O'
   63C8 0F                 1563 	.db #0x0F	; 15
   63C9 0F                 1564 	.db #0x0F	; 15
   63CA 0F                 1565 	.db #0x0F	; 15
   63CB 0F                 1566 	.db #0x0F	; 15
   63CC 0F                 1567 	.db #0x0F	; 15
   63CD                    1568 _rail_ew_s:
   63CD 0F                 1569 	.db #0x0F	; 15
   63CE 0F                 1570 	.db #0x0F	; 15
   63CF 0F                 1571 	.db #0x0F	; 15
   63D0 0F                 1572 	.db #0x0F	; 15
   63D1 0F                 1573 	.db #0x0F	; 15
   63D2 0F                 1574 	.db #0x0F	; 15
   63D3 0F                 1575 	.db #0x0F	; 15
   63D4 8F                 1576 	.db #0x8F	; 143
   63D5 0F                 1577 	.db #0x0F	; 15
   63D6 4F                 1578 	.db #0x4F	; 79	'O'
   63D7 0F                 1579 	.db #0x0F	; 15
   63D8 0F                 1580 	.db #0x0F	; 15
   63D9 0F                 1581 	.db #0x0F	; 15
   63DA 0F                 1582 	.db #0x0F	; 15
   63DB 0F                 1583 	.db #0x0F	; 15
   63DC 0F                 1584 	.db #0x0F	; 15
   63DD 0F                 1585 	.db #0x0F	; 15
   63DE 0F                 1586 	.db #0x0F	; 15
   63DF 4F                 1587 	.db #0x4F	; 79	'O'
   63E0 0F                 1588 	.db #0x0F	; 15
   63E1 4F                 1589 	.db #0x4F	; 79	'O'
   63E2 0F                 1590 	.db #0x0F	; 15
   63E3 0F                 1591 	.db #0x0F	; 15
   63E4 2F                 1592 	.db #0x2F	; 47
   63E5 0F                 1593 	.db #0x0F	; 15
   63E6 0F                 1594 	.db #0x0F	; 15
   63E7 0F                 1595 	.db #0x0F	; 15
   63E8 0F                 1596 	.db #0x0F	; 15
   63E9 F0                 1597 	.db #0xF0	; 240
   63EA F0                 1598 	.db #0xF0	; 240
   63EB F0                 1599 	.db #0xF0	; 240
   63EC F0                 1600 	.db #0xF0	; 240
   63ED 00                 1601 	.db #0x00	; 0
   63EE 00                 1602 	.db #0x00	; 0
   63EF 00                 1603 	.db #0x00	; 0
   63F0 00                 1604 	.db #0x00	; 0
   63F1 E0                 1605 	.db #0xE0	; 224
   63F2 F0                 1606 	.db #0xF0	; 240
   63F3 F0                 1607 	.db #0xF0	; 240
   63F4 F0                 1608 	.db #0xF0	; 240
   63F5 1E                 1609 	.db #0x1E	; 30
   63F6 43                 1610 	.db #0x43	; 67	'C'
   63F7 0F                 1611 	.db #0x0F	; 15
   63F8 0F                 1612 	.db #0x0F	; 15
   63F9 0F                 1613 	.db #0x0F	; 15
   63FA A1                 1614 	.db #0xA1	; 161
   63FB 4F                 1615 	.db #0x4F	; 79	'O'
   63FC 0F                 1616 	.db #0x0F	; 15
   63FD 0F                 1617 	.db #0x0F	; 15
   63FE 58                 1618 	.db #0x58	; 88	'X'
   63FF 0F                 1619 	.db #0x0F	; 15
   6400 0F                 1620 	.db #0x0F	; 15
   6401 0F                 1621 	.db #0x0F	; 15
   6402 2C                 1622 	.db #0x2C	; 44
   6403 87                 1623 	.db #0x87	; 135
   6404 8F                 1624 	.db #0x8F	; 143
   6405 4F                 1625 	.db #0x4F	; 79	'O'
   6406 1E                 1626 	.db #0x1E	; 30
   6407 43                 1627 	.db #0x43	; 67	'C'
   6408 0F                 1628 	.db #0x0F	; 15
   6409 0F                 1629 	.db #0x0F	; 15
   640A 1E                 1630 	.db #0x1E	; 30
   640B 43                 1631 	.db #0x43	; 67	'C'
   640C 0F                 1632 	.db #0x0F	; 15
   640D                    1633 _rail_ns_w:
   640D 0F                 1634 	.db #0x0F	; 15
   640E 1E                 1635 	.db #0x1E	; 30
   640F 43                 1636 	.db #0x43	; 67	'C'
   6410 0F                 1637 	.db #0x0F	; 15
   6411 4F                 1638 	.db #0x4F	; 79	'O'
   6412 1E                 1639 	.db #0x1E	; 30
   6413 43                 1640 	.db #0x43	; 67	'C'
   6414 2F                 1641 	.db #0x2F	; 47
   6415 0F                 1642 	.db #0x0F	; 15
   6416 1E                 1643 	.db #0x1E	; 30
   6417 43                 1644 	.db #0x43	; 67	'C'
   6418 0F                 1645 	.db #0x0F	; 15
   6419 0F                 1646 	.db #0x0F	; 15
   641A 1E                 1647 	.db #0x1E	; 30
   641B 43                 1648 	.db #0x43	; 67	'C'
   641C 0F                 1649 	.db #0x0F	; 15
   641D 0F                 1650 	.db #0x0F	; 15
   641E 5E                 1651 	.db #0x5E	; 94
   641F 43                 1652 	.db #0x43	; 67	'C'
   6420 0F                 1653 	.db #0x0F	; 15
   6421 0F                 1654 	.db #0x0F	; 15
   6422 1E                 1655 	.db #0x1E	; 30
   6423 43                 1656 	.db #0x43	; 67	'C'
   6424 0F                 1657 	.db #0x0F	; 15
   6425 0F                 1658 	.db #0x0F	; 15
   6426 1E                 1659 	.db #0x1E	; 30
   6427 43                 1660 	.db #0x43	; 67	'C'
   6428 0F                 1661 	.db #0x0F	; 15
   6429 E1                 1662 	.db #0xE1	; 225
   642A 1E                 1663 	.db #0x1E	; 30
   642B 43                 1664 	.db #0x43	; 67	'C'
   642C 4F                 1665 	.db #0x4F	; 79	'O'
   642D 10                 1666 	.db #0x10	; 16
   642E 1E                 1667 	.db #0x1E	; 30
   642F 43                 1668 	.db #0x43	; 67	'C'
   6430 0F                 1669 	.db #0x0F	; 15
   6431 E0                 1670 	.db #0xE0	; 224
   6432 96                 1671 	.db #0x96	; 150
   6433 43                 1672 	.db #0x43	; 67	'C'
   6434 0F                 1673 	.db #0x0F	; 15
   6435 1E                 1674 	.db #0x1E	; 30
   6436 52                 1675 	.db #0x52	; 82	'R'
   6437 43                 1676 	.db #0x43	; 67	'C'
   6438 0F                 1677 	.db #0x0F	; 15
   6439 0F                 1678 	.db #0x0F	; 15
   643A B0                 1679 	.db #0xB0	; 176
   643B 53                 1680 	.db #0x53	; 83	'S'
   643C 0F                 1681 	.db #0x0F	; 15
   643D 0F                 1682 	.db #0x0F	; 15
   643E 58                 1683 	.db #0x58	; 88	'X'
   643F 43                 1684 	.db #0x43	; 67	'C'
   6440 0F                 1685 	.db #0x0F	; 15
   6441 2F                 1686 	.db #0x2F	; 47
   6442 2C                 1687 	.db #0x2C	; 44
   6443 43                 1688 	.db #0x43	; 67	'C'
   6444 0F                 1689 	.db #0x0F	; 15
   6445 0F                 1690 	.db #0x0F	; 15
   6446 1E                 1691 	.db #0x1E	; 30
   6447 43                 1692 	.db #0x43	; 67	'C'
   6448 2F                 1693 	.db #0x2F	; 47
   6449 0F                 1694 	.db #0x0F	; 15
   644A 1E                 1695 	.db #0x1E	; 30
   644B 43                 1696 	.db #0x43	; 67	'C'
   644C 0F                 1697 	.db #0x0F	; 15
   644D                    1698 _rail_ns_e:
   644D 0F                 1699 	.db #0x0F	; 15
   644E 1E                 1700 	.db #0x1E	; 30
   644F 43                 1701 	.db #0x43	; 67	'C'
   6450 0F                 1702 	.db #0x0F	; 15
   6451 0F                 1703 	.db #0x0F	; 15
   6452 1E                 1704 	.db #0x1E	; 30
   6453 43                 1705 	.db #0x43	; 67	'C'
   6454 2F                 1706 	.db #0x2F	; 47
   6455 0F                 1707 	.db #0x0F	; 15
   6456 9E                 1708 	.db #0x9E	; 158
   6457 43                 1709 	.db #0x43	; 67	'C'
   6458 0F                 1710 	.db #0x0F	; 15
   6459 0F                 1711 	.db #0x0F	; 15
   645A 1E                 1712 	.db #0x1E	; 30
   645B 43                 1713 	.db #0x43	; 67	'C'
   645C 0F                 1714 	.db #0x0F	; 15
   645D 0F                 1715 	.db #0x0F	; 15
   645E 1E                 1716 	.db #0x1E	; 30
   645F 43                 1717 	.db #0x43	; 67	'C'
   6460 8F                 1718 	.db #0x8F	; 143
   6461 0F                 1719 	.db #0x0F	; 15
   6462 1E                 1720 	.db #0x1E	; 30
   6463 43                 1721 	.db #0x43	; 67	'C'
   6464 0F                 1722 	.db #0x0F	; 15
   6465 0F                 1723 	.db #0x0F	; 15
   6466 5E                 1724 	.db #0x5E	; 94
   6467 43                 1725 	.db #0x43	; 67	'C'
   6468 0F                 1726 	.db #0x0F	; 15
   6469 4F                 1727 	.db #0x4F	; 79	'O'
   646A 1E                 1728 	.db #0x1E	; 30
   646B 43                 1729 	.db #0x43	; 67	'C'
   646C 3C                 1730 	.db #0x3C	; 60
   646D 0F                 1731 	.db #0x0F	; 15
   646E 1E                 1732 	.db #0x1E	; 30
   646F 43                 1733 	.db #0x43	; 67	'C'
   6470 48                 1734 	.db #0x48	; 72	'H'
   6471 0F                 1735 	.db #0x0F	; 15
   6472 1E                 1736 	.db #0x1E	; 30
   6473 43                 1737 	.db #0x43	; 67	'C'
   6474 B0                 1738 	.db #0xB0	; 176
   6475 0F                 1739 	.db #0x0F	; 15
   6476 1E                 1740 	.db #0x1E	; 30
   6477 52                 1741 	.db #0x52	; 82	'R'
   6478 43                 1742 	.db #0x43	; 67	'C'
   6479 0F                 1743 	.db #0x0F	; 15
   647A 5E                 1744 	.db #0x5E	; 94
   647B 60                 1745 	.db #0x60	; 96
   647C 87                 1746 	.db #0x87	; 135
   647D 0F                 1747 	.db #0x0F	; 15
   647E 1E                 1748 	.db #0x1E	; 30
   647F 50                 1749 	.db #0x50	; 80	'P'
   6480 0F                 1750 	.db #0x0F	; 15
   6481 0F                 1751 	.db #0x0F	; 15
   6482 1E                 1752 	.db #0x1E	; 30
   6483 21                 1753 	.db #0x21	; 33
   6484 0F                 1754 	.db #0x0F	; 15
   6485 2F                 1755 	.db #0x2F	; 47
   6486 1E                 1756 	.db #0x1E	; 30
   6487 43                 1757 	.db #0x43	; 67	'C'
   6488 8F                 1758 	.db #0x8F	; 143
   6489 0F                 1759 	.db #0x0F	; 15
   648A 1E                 1760 	.db #0x1E	; 30
   648B 43                 1761 	.db #0x43	; 67	'C'
   648C 0F                 1762 	.db #0x0F	; 15
   648D                    1763 _lock:
   648D 00                 1764 	.db #0x00	; 0
   648E 00                 1765 	.db #0x00	; 0
   648F 00                 1766 	.db #0x00	; 0
   6490 00                 1767 	.db #0x00	; 0
   6491 00                 1768 	.db #0x00	; 0
   6492 00                 1769 	.db #0x00	; 0
   6493 00                 1770 	.db #0x00	; 0
   6494 00                 1771 	.db #0x00	; 0
   6495 00                 1772 	.db #0x00	; 0
   6496 00                 1773 	.db #0x00	; 0
   6497 00                 1774 	.db #0x00	; 0
   6498 00                 1775 	.db #0x00	; 0
   6499 00                 1776 	.db #0x00	; 0
   649A 00                 1777 	.db #0x00	; 0
   649B 00                 1778 	.db #0x00	; 0
   649C 00                 1779 	.db #0x00	; 0
   649D 00                 1780 	.db #0x00	; 0
   649E 00                 1781 	.db #0x00	; 0
   649F 00                 1782 	.db #0x00	; 0
   64A0 00                 1783 	.db #0x00	; 0
   64A1 00                 1784 	.db #0x00	; 0
   64A2 00                 1785 	.db #0x00	; 0
   64A3 00                 1786 	.db #0x00	; 0
   64A4 00                 1787 	.db #0x00	; 0
   64A5 00                 1788 	.db #0x00	; 0
   64A6 00                 1789 	.db #0x00	; 0
   64A7 00                 1790 	.db #0x00	; 0
   64A8 00                 1791 	.db #0x00	; 0
   64A9 00                 1792 	.db #0x00	; 0
   64AA 00                 1793 	.db #0x00	; 0
   64AB 04                 1794 	.db #0x04	; 4
   64AC 00                 1795 	.db #0x00	; 0
   64AD 00                 1796 	.db #0x00	; 0
   64AE 00                 1797 	.db #0x00	; 0
   64AF 00                 1798 	.db #0x00	; 0
   64B0 00                 1799 	.db #0x00	; 0
   64B1 00                 1800 	.db #0x00	; 0
   64B2 00                 1801 	.db #0x00	; 0
   64B3 00                 1802 	.db #0x00	; 0
   64B4 00                 1803 	.db #0x00	; 0
   64B5 00                 1804 	.db #0x00	; 0
   64B6 00                 1805 	.db #0x00	; 0
   64B7 00                 1806 	.db #0x00	; 0
   64B8 00                 1807 	.db #0x00	; 0
   64B9 00                 1808 	.db #0x00	; 0
   64BA 00                 1809 	.db #0x00	; 0
   64BB 00                 1810 	.db #0x00	; 0
   64BC 00                 1811 	.db #0x00	; 0
   64BD 00                 1812 	.db #0x00	; 0
   64BE 00                 1813 	.db #0x00	; 0
   64BF 08                 1814 	.db #0x08	; 8
   64C0 08                 1815 	.db #0x08	; 8
   64C1 00                 1816 	.db #0x00	; 0
   64C2 00                 1817 	.db #0x00	; 0
   64C3 00                 1818 	.db #0x00	; 0
   64C4 00                 1819 	.db #0x00	; 0
   64C5 00                 1820 	.db #0x00	; 0
   64C6 00                 1821 	.db #0x00	; 0
   64C7 00                 1822 	.db #0x00	; 0
   64C8 00                 1823 	.db #0x00	; 0
   64C9 00                 1824 	.db #0x00	; 0
   64CA 00                 1825 	.db #0x00	; 0
   64CB 00                 1826 	.db #0x00	; 0
   64CC 00                 1827 	.db #0x00	; 0
   64CD 00                 1828 	.db #0x00	; 0
   64CE 00                 1829 	.db #0x00	; 0
   64CF 00                 1830 	.db #0x00	; 0
   64D0 00                 1831 	.db #0x00	; 0
   64D1 00                 1832 	.db #0x00	; 0
   64D2 00                 1833 	.db #0x00	; 0
   64D3 08                 1834 	.db #0x08	; 8
   64D4 08                 1835 	.db #0x08	; 8
   64D5 00                 1836 	.db #0x00	; 0
   64D6 00                 1837 	.db #0x00	; 0
   64D7 00                 1838 	.db #0x00	; 0
   64D8 00                 1839 	.db #0x00	; 0
   64D9 00                 1840 	.db #0x00	; 0
   64DA 00                 1841 	.db #0x00	; 0
   64DB 00                 1842 	.db #0x00	; 0
   64DC 00                 1843 	.db #0x00	; 0
   64DD 00                 1844 	.db #0x00	; 0
   64DE 00                 1845 	.db #0x00	; 0
   64DF 00                 1846 	.db #0x00	; 0
   64E0 00                 1847 	.db #0x00	; 0
   64E1 00                 1848 	.db #0x00	; 0
   64E2 00                 1849 	.db #0x00	; 0
   64E3 00                 1850 	.db #0x00	; 0
   64E4 00                 1851 	.db #0x00	; 0
   64E5 00                 1852 	.db #0x00	; 0
   64E6 04                 1853 	.db #0x04	; 4
   64E7 00                 1854 	.db #0x00	; 0
   64E8 04                 1855 	.db #0x04	; 4
   64E9 00                 1856 	.db #0x00	; 0
   64EA 00                 1857 	.db #0x00	; 0
   64EB 00                 1858 	.db #0x00	; 0
   64EC 00                 1859 	.db #0x00	; 0
   64ED 00                 1860 	.db #0x00	; 0
   64EE 00                 1861 	.db #0x00	; 0
   64EF 00                 1862 	.db #0x00	; 0
   64F0 00                 1863 	.db #0x00	; 0
   64F1 00                 1864 	.db #0x00	; 0
   64F2 00                 1865 	.db #0x00	; 0
   64F3 00                 1866 	.db #0x00	; 0
   64F4 00                 1867 	.db #0x00	; 0
   64F5 00                 1868 	.db #0x00	; 0
   64F6 00                 1869 	.db #0x00	; 0
   64F7 00                 1870 	.db #0x00	; 0
   64F8 00                 1871 	.db #0x00	; 0
   64F9 00                 1872 	.db #0x00	; 0
   64FA 04                 1873 	.db #0x04	; 4
   64FB 00                 1874 	.db #0x00	; 0
   64FC 04                 1875 	.db #0x04	; 4
   64FD 00                 1876 	.db #0x00	; 0
   64FE 00                 1877 	.db #0x00	; 0
   64FF 00                 1878 	.db #0x00	; 0
   6500 00                 1879 	.db #0x00	; 0
   6501 00                 1880 	.db #0x00	; 0
   6502 00                 1881 	.db #0x00	; 0
   6503 00                 1882 	.db #0x00	; 0
   6504 00                 1883 	.db #0x00	; 0
   6505 00                 1884 	.db #0x00	; 0
   6506 00                 1885 	.db #0x00	; 0
   6507 00                 1886 	.db #0x00	; 0
   6508 00                 1887 	.db #0x00	; 0
   6509 00                 1888 	.db #0x00	; 0
   650A 00                 1889 	.db #0x00	; 0
   650B 00                 1890 	.db #0x00	; 0
   650C 00                 1891 	.db #0x00	; 0
   650D 00                 1892 	.db #0x00	; 0
   650E 04                 1893 	.db #0x04	; 4
   650F 00                 1894 	.db #0x00	; 0
   6510 04                 1895 	.db #0x04	; 4
   6511 00                 1896 	.db #0x00	; 0
   6512 00                 1897 	.db #0x00	; 0
   6513 00                 1898 	.db #0x00	; 0
   6514 00                 1899 	.db #0x00	; 0
   6515 00                 1900 	.db #0x00	; 0
   6516 00                 1901 	.db #0x00	; 0
   6517 00                 1902 	.db #0x00	; 0
   6518 00                 1903 	.db #0x00	; 0
   6519 00                 1904 	.db #0x00	; 0
   651A 00                 1905 	.db #0x00	; 0
   651B 00                 1906 	.db #0x00	; 0
   651C 00                 1907 	.db #0x00	; 0
   651D 00                 1908 	.db #0x00	; 0
   651E 00                 1909 	.db #0x00	; 0
   651F 00                 1910 	.db #0x00	; 0
   6520 00                 1911 	.db #0x00	; 0
   6521 00                 1912 	.db #0x00	; 0
   6522 04                 1913 	.db #0x04	; 4
   6523 00                 1914 	.db #0x00	; 0
   6524 04                 1915 	.db #0x04	; 4
   6525 00                 1916 	.db #0x00	; 0
   6526 00                 1917 	.db #0x00	; 0
   6527 00                 1918 	.db #0x00	; 0
   6528 00                 1919 	.db #0x00	; 0
   6529 00                 1920 	.db #0x00	; 0
   652A 00                 1921 	.db #0x00	; 0
   652B 00                 1922 	.db #0x00	; 0
   652C 00                 1923 	.db #0x00	; 0
   652D 00                 1924 	.db #0x00	; 0
   652E 00                 1925 	.db #0x00	; 0
   652F 00                 1926 	.db #0x00	; 0
   6530 00                 1927 	.db #0x00	; 0
   6531 00                 1928 	.db #0x00	; 0
   6532 00                 1929 	.db #0x00	; 0
   6533 00                 1930 	.db #0x00	; 0
   6534 00                 1931 	.db #0x00	; 0
   6535 00                 1932 	.db #0x00	; 0
   6536 30                 1933 	.db #0x30	; 48	'0'
   6537 30                 1934 	.db #0x30	; 48	'0'
   6538 30                 1935 	.db #0x30	; 48	'0'
   6539 20                 1936 	.db #0x20	; 32
   653A 00                 1937 	.db #0x00	; 0
   653B 00                 1938 	.db #0x00	; 0
   653C 00                 1939 	.db #0x00	; 0
   653D 00                 1940 	.db #0x00	; 0
   653E 00                 1941 	.db #0x00	; 0
   653F 00                 1942 	.db #0x00	; 0
   6540 00                 1943 	.db #0x00	; 0
   6541 00                 1944 	.db #0x00	; 0
   6542 00                 1945 	.db #0x00	; 0
   6543 00                 1946 	.db #0x00	; 0
   6544 00                 1947 	.db #0x00	; 0
   6545 00                 1948 	.db #0x00	; 0
   6546 00                 1949 	.db #0x00	; 0
   6547 00                 1950 	.db #0x00	; 0
   6548 00                 1951 	.db #0x00	; 0
   6549 00                 1952 	.db #0x00	; 0
   654A 30                 1953 	.db #0x30	; 48	'0'
   654B 30                 1954 	.db #0x30	; 48	'0'
   654C 30                 1955 	.db #0x30	; 48	'0'
   654D 20                 1956 	.db #0x20	; 32
   654E 00                 1957 	.db #0x00	; 0
   654F 00                 1958 	.db #0x00	; 0
   6550 00                 1959 	.db #0x00	; 0
   6551 00                 1960 	.db #0x00	; 0
   6552 00                 1961 	.db #0x00	; 0
   6553 00                 1962 	.db #0x00	; 0
   6554 00                 1963 	.db #0x00	; 0
   6555 00                 1964 	.db #0x00	; 0
   6556 00                 1965 	.db #0x00	; 0
   6557 00                 1966 	.db #0x00	; 0
   6558 00                 1967 	.db #0x00	; 0
   6559 00                 1968 	.db #0x00	; 0
   655A 00                 1969 	.db #0x00	; 0
   655B 00                 1970 	.db #0x00	; 0
   655C 00                 1971 	.db #0x00	; 0
   655D 00                 1972 	.db #0x00	; 0
   655E FF                 1973 	.db #0xFF	; 255
   655F FF                 1974 	.db #0xFF	; 255
   6560 FF                 1975 	.db #0xFF	; 255
   6561 AA                 1976 	.db #0xAA	; 170
   6562 00                 1977 	.db #0x00	; 0
   6563 00                 1978 	.db #0x00	; 0
   6564 00                 1979 	.db #0x00	; 0
   6565 00                 1980 	.db #0x00	; 0
   6566 00                 1981 	.db #0x00	; 0
   6567 00                 1982 	.db #0x00	; 0
   6568 00                 1983 	.db #0x00	; 0
   6569 00                 1984 	.db #0x00	; 0
   656A 00                 1985 	.db #0x00	; 0
   656B 00                 1986 	.db #0x00	; 0
   656C 00                 1987 	.db #0x00	; 0
   656D 00                 1988 	.db #0x00	; 0
   656E 00                 1989 	.db #0x00	; 0
   656F 00                 1990 	.db #0x00	; 0
   6570 00                 1991 	.db #0x00	; 0
   6571 00                 1992 	.db #0x00	; 0
   6572 FF                 1993 	.db #0xFF	; 255
   6573 FF                 1994 	.db #0xFF	; 255
   6574 FF                 1995 	.db #0xFF	; 255
   6575 AA                 1996 	.db #0xAA	; 170
   6576 00                 1997 	.db #0x00	; 0
   6577 00                 1998 	.db #0x00	; 0
   6578 00                 1999 	.db #0x00	; 0
   6579 00                 2000 	.db #0x00	; 0
   657A 00                 2001 	.db #0x00	; 0
   657B 00                 2002 	.db #0x00	; 0
   657C 00                 2003 	.db #0x00	; 0
   657D 00                 2004 	.db #0x00	; 0
   657E 00                 2005 	.db #0x00	; 0
   657F 00                 2006 	.db #0x00	; 0
   6580 00                 2007 	.db #0x00	; 0
   6581 00                 2008 	.db #0x00	; 0
   6582 00                 2009 	.db #0x00	; 0
   6583 00                 2010 	.db #0x00	; 0
   6584 00                 2011 	.db #0x00	; 0
   6585 00                 2012 	.db #0x00	; 0
   6586 FF                 2013 	.db #0xFF	; 255
   6587 AA                 2014 	.db #0xAA	; 170
   6588 FF                 2015 	.db #0xFF	; 255
   6589 AA                 2016 	.db #0xAA	; 170
   658A 00                 2017 	.db #0x00	; 0
   658B 00                 2018 	.db #0x00	; 0
   658C 00                 2019 	.db #0x00	; 0
   658D 00                 2020 	.db #0x00	; 0
   658E 00                 2021 	.db #0x00	; 0
   658F 00                 2022 	.db #0x00	; 0
   6590 00                 2023 	.db #0x00	; 0
   6591 00                 2024 	.db #0x00	; 0
   6592 00                 2025 	.db #0x00	; 0
   6593 00                 2026 	.db #0x00	; 0
   6594 00                 2027 	.db #0x00	; 0
   6595 00                 2028 	.db #0x00	; 0
   6596 00                 2029 	.db #0x00	; 0
   6597 00                 2030 	.db #0x00	; 0
   6598 00                 2031 	.db #0x00	; 0
   6599 00                 2032 	.db #0x00	; 0
   659A FF                 2033 	.db #0xFF	; 255
   659B AA                 2034 	.db #0xAA	; 170
   659C FF                 2035 	.db #0xFF	; 255
   659D AA                 2036 	.db #0xAA	; 170
   659E 00                 2037 	.db #0x00	; 0
   659F 00                 2038 	.db #0x00	; 0
   65A0 00                 2039 	.db #0x00	; 0
   65A1 00                 2040 	.db #0x00	; 0
   65A2 00                 2041 	.db #0x00	; 0
   65A3 00                 2042 	.db #0x00	; 0
   65A4 00                 2043 	.db #0x00	; 0
   65A5 00                 2044 	.db #0x00	; 0
   65A6 00                 2045 	.db #0x00	; 0
   65A7 00                 2046 	.db #0x00	; 0
   65A8 00                 2047 	.db #0x00	; 0
   65A9 00                 2048 	.db #0x00	; 0
   65AA 00                 2049 	.db #0x00	; 0
   65AB 00                 2050 	.db #0x00	; 0
   65AC 00                 2051 	.db #0x00	; 0
   65AD 00                 2052 	.db #0x00	; 0
   65AE FF                 2053 	.db #0xFF	; 255
   65AF AA                 2054 	.db #0xAA	; 170
   65B0 FF                 2055 	.db #0xFF	; 255
   65B1 AA                 2056 	.db #0xAA	; 170
   65B2 00                 2057 	.db #0x00	; 0
   65B3 00                 2058 	.db #0x00	; 0
   65B4 00                 2059 	.db #0x00	; 0
   65B5 00                 2060 	.db #0x00	; 0
   65B6 00                 2061 	.db #0x00	; 0
   65B7 00                 2062 	.db #0x00	; 0
   65B8 00                 2063 	.db #0x00	; 0
   65B9 00                 2064 	.db #0x00	; 0
   65BA 00                 2065 	.db #0x00	; 0
   65BB 00                 2066 	.db #0x00	; 0
   65BC 00                 2067 	.db #0x00	; 0
   65BD 00                 2068 	.db #0x00	; 0
   65BE 00                 2069 	.db #0x00	; 0
   65BF 00                 2070 	.db #0x00	; 0
   65C0 00                 2071 	.db #0x00	; 0
   65C1 00                 2072 	.db #0x00	; 0
   65C2 FF                 2073 	.db #0xFF	; 255
   65C3 AA                 2074 	.db #0xAA	; 170
   65C4 FF                 2075 	.db #0xFF	; 255
   65C5 AA                 2076 	.db #0xAA	; 170
   65C6 00                 2077 	.db #0x00	; 0
   65C7 00                 2078 	.db #0x00	; 0
   65C8 00                 2079 	.db #0x00	; 0
   65C9 00                 2080 	.db #0x00	; 0
   65CA 00                 2081 	.db #0x00	; 0
   65CB 00                 2082 	.db #0x00	; 0
   65CC 00                 2083 	.db #0x00	; 0
   65CD 00                 2084 	.db #0x00	; 0
   65CE 00                 2085 	.db #0x00	; 0
   65CF 00                 2086 	.db #0x00	; 0
   65D0 00                 2087 	.db #0x00	; 0
   65D1 00                 2088 	.db #0x00	; 0
   65D2 00                 2089 	.db #0x00	; 0
   65D3 00                 2090 	.db #0x00	; 0
   65D4 00                 2091 	.db #0x00	; 0
   65D5 00                 2092 	.db #0x00	; 0
   65D6 FF                 2093 	.db #0xFF	; 255
   65D7 FF                 2094 	.db #0xFF	; 255
   65D8 FF                 2095 	.db #0xFF	; 255
   65D9 AA                 2096 	.db #0xAA	; 170
   65DA 00                 2097 	.db #0x00	; 0
   65DB 00                 2098 	.db #0x00	; 0
   65DC 00                 2099 	.db #0x00	; 0
   65DD 00                 2100 	.db #0x00	; 0
   65DE 00                 2101 	.db #0x00	; 0
   65DF 00                 2102 	.db #0x00	; 0
   65E0 00                 2103 	.db #0x00	; 0
   65E1 00                 2104 	.db #0x00	; 0
   65E2 00                 2105 	.db #0x00	; 0
   65E3 00                 2106 	.db #0x00	; 0
   65E4 00                 2107 	.db #0x00	; 0
   65E5 00                 2108 	.db #0x00	; 0
   65E6 00                 2109 	.db #0x00	; 0
   65E7 00                 2110 	.db #0x00	; 0
   65E8 00                 2111 	.db #0x00	; 0
   65E9 00                 2112 	.db #0x00	; 0
   65EA 30                 2113 	.db #0x30	; 48	'0'
   65EB 30                 2114 	.db #0x30	; 48	'0'
   65EC 30                 2115 	.db #0x30	; 48	'0'
   65ED 20                 2116 	.db #0x20	; 32
   65EE 00                 2117 	.db #0x00	; 0
   65EF 00                 2118 	.db #0x00	; 0
   65F0 00                 2119 	.db #0x00	; 0
   65F1 00                 2120 	.db #0x00	; 0
   65F2 00                 2121 	.db #0x00	; 0
   65F3 00                 2122 	.db #0x00	; 0
   65F4 00                 2123 	.db #0x00	; 0
   65F5 00                 2124 	.db #0x00	; 0
   65F6 00                 2125 	.db #0x00	; 0
   65F7 00                 2126 	.db #0x00	; 0
   65F8 00                 2127 	.db #0x00	; 0
   65F9 00                 2128 	.db #0x00	; 0
   65FA 00                 2129 	.db #0x00	; 0
   65FB 00                 2130 	.db #0x00	; 0
   65FC 00                 2131 	.db #0x00	; 0
   65FD 00                 2132 	.db #0x00	; 0
   65FE 00                 2133 	.db #0x00	; 0
   65FF 00                 2134 	.db #0x00	; 0
   6600 00                 2135 	.db #0x00	; 0
   6601 00                 2136 	.db #0x00	; 0
   6602 00                 2137 	.db #0x00	; 0
   6603 00                 2138 	.db #0x00	; 0
   6604 00                 2139 	.db #0x00	; 0
   6605 00                 2140 	.db #0x00	; 0
   6606 00                 2141 	.db #0x00	; 0
   6607 00                 2142 	.db #0x00	; 0
   6608 00                 2143 	.db #0x00	; 0
   6609 00                 2144 	.db #0x00	; 0
   660A 00                 2145 	.db #0x00	; 0
   660B 00                 2146 	.db #0x00	; 0
   660C 00                 2147 	.db #0x00	; 0
   660D 00                 2148 	.db #0x00	; 0
   660E 00                 2149 	.db #0x00	; 0
   660F 00                 2150 	.db #0x00	; 0
   6610 00                 2151 	.db #0x00	; 0
   6611 00                 2152 	.db #0x00	; 0
   6612 00                 2153 	.db #0x00	; 0
   6613 00                 2154 	.db #0x00	; 0
   6614 00                 2155 	.db #0x00	; 0
   6615 00                 2156 	.db #0x00	; 0
   6616 00                 2157 	.db #0x00	; 0
   6617 00                 2158 	.db #0x00	; 0
   6618 00                 2159 	.db #0x00	; 0
   6619 00                 2160 	.db #0x00	; 0
   661A 00                 2161 	.db #0x00	; 0
   661B 00                 2162 	.db #0x00	; 0
   661C 00                 2163 	.db #0x00	; 0
   661D                    2164 _l141P:
   661D 00                 2165 	.db #0x00	; 0
   661E 00                 2166 	.db #0x00	; 0
   661F 00                 2167 	.db #0x00	; 0
   6620 00                 2168 	.db #0x00	; 0
   6621 00                 2169 	.db #0x00	; 0
   6622 00                 2170 	.db #0x00	; 0
   6623 00                 2171 	.db #0x00	; 0
   6624 00                 2172 	.db #0x00	; 0
   6625 00                 2173 	.db #0x00	; 0
   6626 00                 2174 	.db #0x00	; 0
   6627 00                 2175 	.db #0x00	; 0
   6628 00                 2176 	.db #0x00	; 0
   6629 00                 2177 	.db #0x00	; 0
   662A 00                 2178 	.db #0x00	; 0
   662B 00                 2179 	.db #0x00	; 0
   662C 00                 2180 	.db #0x00	; 0
   662D 00                 2181 	.db #0x00	; 0
   662E 00                 2182 	.db #0x00	; 0
   662F 00                 2183 	.db #0x00	; 0
   6630 00                 2184 	.db #0x00	; 0
   6631 00                 2185 	.db #0x00	; 0
   6632 00                 2186 	.db #0x00	; 0
   6633 00                 2187 	.db #0x00	; 0
   6634 00                 2188 	.db #0x00	; 0
   6635 00                 2189 	.db #0x00	; 0
   6636 00                 2190 	.db #0x00	; 0
   6637 00                 2191 	.db #0x00	; 0
   6638 00                 2192 	.db #0x00	; 0
   6639 00                 2193 	.db #0x00	; 0
   663A 00                 2194 	.db #0x00	; 0
   663B 00                 2195 	.db #0x00	; 0
   663C 00                 2196 	.db #0x00	; 0
   663D 00                 2197 	.db #0x00	; 0
   663E 00                 2198 	.db #0x00	; 0
   663F 00                 2199 	.db #0x00	; 0
   6640 00                 2200 	.db #0x00	; 0
   6641 00                 2201 	.db #0x00	; 0
   6642 00                 2202 	.db #0x00	; 0
   6643 00                 2203 	.db #0x00	; 0
   6644 00                 2204 	.db #0x00	; 0
   6645 00                 2205 	.db #0x00	; 0
   6646 00                 2206 	.db #0x00	; 0
   6647 00                 2207 	.db #0x00	; 0
   6648 00                 2208 	.db #0x00	; 0
   6649 00                 2209 	.db #0x00	; 0
   664A 00                 2210 	.db #0x00	; 0
   664B 00                 2211 	.db #0x00	; 0
   664C 00                 2212 	.db #0x00	; 0
   664D 00                 2213 	.db #0x00	; 0
   664E 00                 2214 	.db #0x00	; 0
   664F 00                 2215 	.db #0x00	; 0
   6650 00                 2216 	.db #0x00	; 0
   6651 00                 2217 	.db #0x00	; 0
   6652 00                 2218 	.db #0x00	; 0
   6653 00                 2219 	.db #0x00	; 0
   6654 00                 2220 	.db #0x00	; 0
   6655 00                 2221 	.db #0x00	; 0
   6656 00                 2222 	.db #0x00	; 0
   6657 0C                 2223 	.db #0x0C	; 12
   6658 00                 2224 	.db #0x00	; 0
   6659 00                 2225 	.db #0x00	; 0
   665A 00                 2226 	.db #0x00	; 0
   665B 00                 2227 	.db #0x00	; 0
   665C 0C                 2228 	.db #0x0C	; 12
   665D 0C                 2229 	.db #0x0C	; 12
   665E 0C                 2230 	.db #0x0C	; 12
   665F 08                 2231 	.db #0x08	; 8
   6660 54                 2232 	.db #0x54	; 84	'T'
   6661 FC                 2233 	.db #0xFC	; 252
   6662 FC                 2234 	.db #0xFC	; 252
   6663 FC                 2235 	.db #0xFC	; 252
   6664 00                 2236 	.db #0x00	; 0
   6665 04                 2237 	.db #0x04	; 4
   6666 00                 2238 	.db #0x00	; 0
   6667 56                 2239 	.db #0x56	; 86	'V'
   6668 A9                 2240 	.db #0xA9	; 169
   6669 04                 2241 	.db #0x04	; 4
   666A 0C                 2242 	.db #0x0C	; 12
   666B 0C                 2243 	.db #0x0C	; 12
   666C 00                 2244 	.db #0x00	; 0
   666D 00                 2245 	.db #0x00	; 0
   666E 00                 2246 	.db #0x00	; 0
   666F 00                 2247 	.db #0x00	; 0
   6670 0C                 2248 	.db #0x0C	; 12
   6671 0C                 2249 	.db #0x0C	; 12
   6672 0C                 2250 	.db #0x0C	; 12
   6673 0C                 2251 	.db #0x0C	; 12
   6674 00                 2252 	.db #0x00	; 0
   6675 FC                 2253 	.db #0xFC	; 252
   6676 FC                 2254 	.db #0xFC	; 252
   6677 FC                 2255 	.db #0xFC	; 252
   6678 FC                 2256 	.db #0xFC	; 252
   6679 FC                 2257 	.db #0xFC	; 252
   667A FC                 2258 	.db #0xFC	; 252
   667B A9                 2259 	.db #0xA9	; 169
   667C FC                 2260 	.db #0xFC	; 252
   667D FC                 2261 	.db #0xFC	; 252
   667E AC                 2262 	.db #0xAC	; 172
   667F 0C                 2263 	.db #0x0C	; 12
   6680 08                 2264 	.db #0x08	; 8
   6681 00                 2265 	.db #0x00	; 0
   6682 FC                 2266 	.db #0xFC	; 252
   6683 FC                 2267 	.db #0xFC	; 252
   6684 FC                 2268 	.db #0xFC	; 252
   6685 FC                 2269 	.db #0xFC	; 252
   6686 FC                 2270 	.db #0xFC	; 252
   6687 FC                 2271 	.db #0xFC	; 252
   6688 A8                 2272 	.db #0xA8	; 168
   6689 54                 2273 	.db #0x54	; 84	'T'
   668A C0                 2274 	.db #0xC0	; 192
   668B FC                 2275 	.db #0xFC	; 252
   668C FC                 2276 	.db #0xFC	; 252
   668D FC                 2277 	.db #0xFC	; 252
   668E FC                 2278 	.db #0xFC	; 252
   668F FC                 2279 	.db #0xFC	; 252
   6690 FC                 2280 	.db #0xFC	; 252
   6691 FC                 2281 	.db #0xFC	; 252
   6692 AC                 2282 	.db #0xAC	; 172
   6693 0C                 2283 	.db #0x0C	; 12
   6694 0C                 2284 	.db #0x0C	; 12
   6695 54                 2285 	.db #0x54	; 84	'T'
   6696 FC                 2286 	.db #0xFC	; 252
   6697 FC                 2287 	.db #0xFC	; 252
   6698 FC                 2288 	.db #0xFC	; 252
   6699 FC                 2289 	.db #0xFC	; 252
   669A FC                 2290 	.db #0xFC	; 252
   669B FC                 2291 	.db #0xFC	; 252
   669C FC                 2292 	.db #0xFC	; 252
   669D 54                 2293 	.db #0x54	; 84	'T'
   669E C0                 2294 	.db #0xC0	; 192
   669F FC                 2295 	.db #0xFC	; 252
   66A0 FC                 2296 	.db #0xFC	; 252
   66A1 FC                 2297 	.db #0xFC	; 252
   66A2 FC                 2298 	.db #0xFC	; 252
   66A3 A9                 2299 	.db #0xA9	; 169
   66A4 FC                 2300 	.db #0xFC	; 252
   66A5 FC                 2301 	.db #0xFC	; 252
   66A6 FC                 2302 	.db #0xFC	; 252
   66A7 0C                 2303 	.db #0x0C	; 12
   66A8 0C                 2304 	.db #0x0C	; 12
   66A9 54                 2305 	.db #0x54	; 84	'T'
   66AA FC                 2306 	.db #0xFC	; 252
   66AB FC                 2307 	.db #0xFC	; 252
   66AC FC                 2308 	.db #0xFC	; 252
   66AD FC                 2309 	.db #0xFC	; 252
   66AE FC                 2310 	.db #0xFC	; 252
   66AF FC                 2311 	.db #0xFC	; 252
   66B0 FC                 2312 	.db #0xFC	; 252
   66B1 54                 2313 	.db #0x54	; 84	'T'
   66B2 C0                 2314 	.db #0xC0	; 192
   66B3 FC                 2315 	.db #0xFC	; 252
   66B4 FC                 2316 	.db #0xFC	; 252
   66B5 FC                 2317 	.db #0xFC	; 252
   66B6 FC                 2318 	.db #0xFC	; 252
   66B7 FC                 2319 	.db #0xFC	; 252
   66B8 FC                 2320 	.db #0xFC	; 252
   66B9 FC                 2321 	.db #0xFC	; 252
   66BA FC                 2322 	.db #0xFC	; 252
   66BB 0C                 2323 	.db #0x0C	; 12
   66BC 0C                 2324 	.db #0x0C	; 12
   66BD 54                 2325 	.db #0x54	; 84	'T'
   66BE FC                 2326 	.db #0xFC	; 252
   66BF FC                 2327 	.db #0xFC	; 252
   66C0 FC                 2328 	.db #0xFC	; 252
   66C1 FC                 2329 	.db #0xFC	; 252
   66C2 FC                 2330 	.db #0xFC	; 252
   66C3 FC                 2331 	.db #0xFC	; 252
   66C4 FC                 2332 	.db #0xFC	; 252
   66C5 54                 2333 	.db #0x54	; 84	'T'
   66C6 FC                 2334 	.db #0xFC	; 252
   66C7 A9                 2335 	.db #0xA9	; 169
   66C8 03                 2336 	.db #0x03	; 3
   66C9 03                 2337 	.db #0x03	; 3
   66CA 03                 2338 	.db #0x03	; 3
   66CB 03                 2339 	.db #0x03	; 3
   66CC 03                 2340 	.db #0x03	; 3
   66CD 03                 2341 	.db #0x03	; 3
   66CE 03                 2342 	.db #0x03	; 3
   66CF 0C                 2343 	.db #0x0C	; 12
   66D0 0C                 2344 	.db #0x0C	; 12
   66D1 54                 2345 	.db #0x54	; 84	'T'
   66D2 FC                 2346 	.db #0xFC	; 252
   66D3 FC                 2347 	.db #0xFC	; 252
   66D4 FC                 2348 	.db #0xFC	; 252
   66D5 FC                 2349 	.db #0xFC	; 252
   66D6 FC                 2350 	.db #0xFC	; 252
   66D7 FC                 2351 	.db #0xFC	; 252
   66D8 FC                 2352 	.db #0xFC	; 252
   66D9 54                 2353 	.db #0x54	; 84	'T'
   66DA FC                 2354 	.db #0xFC	; 252
   66DB FC                 2355 	.db #0xFC	; 252
   66DC FC                 2356 	.db #0xFC	; 252
   66DD FC                 2357 	.db #0xFC	; 252
   66DE FC                 2358 	.db #0xFC	; 252
   66DF FC                 2359 	.db #0xFC	; 252
   66E0 FC                 2360 	.db #0xFC	; 252
   66E1 FC                 2361 	.db #0xFC	; 252
   66E2 FC                 2362 	.db #0xFC	; 252
   66E3 0C                 2363 	.db #0x0C	; 12
   66E4 0C                 2364 	.db #0x0C	; 12
   66E5 54                 2365 	.db #0x54	; 84	'T'
   66E6 FC                 2366 	.db #0xFC	; 252
   66E7 FC                 2367 	.db #0xFC	; 252
   66E8 FC                 2368 	.db #0xFC	; 252
   66E9 FC                 2369 	.db #0xFC	; 252
   66EA FC                 2370 	.db #0xFC	; 252
   66EB FC                 2371 	.db #0xFC	; 252
   66EC F4                 2372 	.db #0xF4	; 244
   66ED 54                 2373 	.db #0x54	; 84	'T'
   66EE F4                 2374 	.db #0xF4	; 244
   66EF FC                 2375 	.db #0xFC	; 252
   66F0 FC                 2376 	.db #0xFC	; 252
   66F1 FC                 2377 	.db #0xFC	; 252
   66F2 FC                 2378 	.db #0xFC	; 252
   66F3 A9                 2379 	.db #0xA9	; 169
   66F4 FC                 2380 	.db #0xFC	; 252
   66F5 FC                 2381 	.db #0xFC	; 252
   66F6 FC                 2382 	.db #0xFC	; 252
   66F7 0C                 2383 	.db #0x0C	; 12
   66F8 0C                 2384 	.db #0x0C	; 12
   66F9 54                 2385 	.db #0x54	; 84	'T'
   66FA FC                 2386 	.db #0xFC	; 252
   66FB FC                 2387 	.db #0xFC	; 252
   66FC FC                 2388 	.db #0xFC	; 252
   66FD FC                 2389 	.db #0xFC	; 252
   66FE FC                 2390 	.db #0xFC	; 252
   66FF FC                 2391 	.db #0xFC	; 252
   6700 FC                 2392 	.db #0xFC	; 252
   6701 54                 2393 	.db #0x54	; 84	'T'
   6702 FC                 2394 	.db #0xFC	; 252
   6703 F8                 2395 	.db #0xF8	; 248
   6704 F0                 2396 	.db #0xF0	; 240
   6705 F0                 2397 	.db #0xF0	; 240
   6706 F0                 2398 	.db #0xF0	; 240
   6707 F0                 2399 	.db #0xF0	; 240
   6708 F0                 2400 	.db #0xF0	; 240
   6709 F0                 2401 	.db #0xF0	; 240
   670A F0                 2402 	.db #0xF0	; 240
   670B A4                 2403 	.db #0xA4	; 164
   670C 0C                 2404 	.db #0x0C	; 12
   670D 50                 2405 	.db #0x50	; 80	'P'
   670E F0                 2406 	.db #0xF0	; 240
   670F F0                 2407 	.db #0xF0	; 240
   6710 F0                 2408 	.db #0xF0	; 240
   6711 F0                 2409 	.db #0xF0	; 240
   6712 F0                 2410 	.db #0xF0	; 240
   6713 F0                 2411 	.db #0xF0	; 240
   6714 F0                 2412 	.db #0xF0	; 240
   6715 50                 2413 	.db #0x50	; 80	'P'
   6716 F0                 2414 	.db #0xF0	; 240
   6717 A4                 2415 	.db #0xA4	; 164
   6718 0C                 2416 	.db #0x0C	; 12
   6719 0C                 2417 	.db #0x0C	; 12
   671A 0C                 2418 	.db #0x0C	; 12
   671B 0C                 2419 	.db #0x0C	; 12
   671C 0C                 2420 	.db #0x0C	; 12
   671D 0C                 2421 	.db #0x0C	; 12
   671E 5C                 2422 	.db #0x5C	; 92
   671F FC                 2423 	.db #0xFC	; 252
   6720 0C                 2424 	.db #0x0C	; 12
   6721 54                 2425 	.db #0x54	; 84	'T'
   6722 FC                 2426 	.db #0xFC	; 252
   6723 FC                 2427 	.db #0xFC	; 252
   6724 FC                 2428 	.db #0xFC	; 252
   6725 FC                 2429 	.db #0xFC	; 252
   6726 FC                 2430 	.db #0xFC	; 252
   6727 FC                 2431 	.db #0xFC	; 252
   6728 FC                 2432 	.db #0xFC	; 252
   6729 54                 2433 	.db #0x54	; 84	'T'
   672A 0C                 2434 	.db #0x0C	; 12
   672B 08                 2435 	.db #0x08	; 8
   672C 04                 2436 	.db #0x04	; 4
   672D 08                 2437 	.db #0x08	; 8
   672E 04                 2438 	.db #0x04	; 4
   672F 08                 2439 	.db #0x08	; 8
   6730 04                 2440 	.db #0x04	; 4
   6731 08                 2441 	.db #0x08	; 8
   6732 54                 2442 	.db #0x54	; 84	'T'
   6733 FC                 2443 	.db #0xFC	; 252
   6734 A4                 2444 	.db #0xA4	; 164
   6735 54                 2445 	.db #0x54	; 84	'T'
   6736 08                 2446 	.db #0x08	; 8
   6737 04                 2447 	.db #0x04	; 4
   6738 00                 2448 	.db #0x00	; 0
   6739 00                 2449 	.db #0x00	; 0
   673A 08                 2450 	.db #0x08	; 8
   673B 04                 2451 	.db #0x04	; 4
   673C FC                 2452 	.db #0xFC	; 252
   673D 54                 2453 	.db #0x54	; 84	'T'
   673E 08                 2454 	.db #0x08	; 8
   673F 04                 2455 	.db #0x04	; 4
   6740 08                 2456 	.db #0x08	; 8
   6741 04                 2457 	.db #0x04	; 4
   6742 08                 2458 	.db #0x08	; 8
   6743 04                 2459 	.db #0x04	; 4
   6744 08                 2460 	.db #0x08	; 8
   6745 04                 2461 	.db #0x04	; 4
   6746 5C                 2462 	.db #0x5C	; 92
   6747 FC                 2463 	.db #0xFC	; 252
   6748 50                 2464 	.db #0x50	; 80	'P'
   6749 04                 2465 	.db #0x04	; 4
   674A 0C                 2466 	.db #0x0C	; 12
   674B 0C                 2467 	.db #0x0C	; 12
   674C 08                 2468 	.db #0x08	; 8
   674D 04                 2469 	.db #0x04	; 4
   674E 0C                 2470 	.db #0x0C	; 12
   674F 0C                 2471 	.db #0x0C	; 12
   6750 5C                 2472 	.db #0x5C	; 92
   6751 54                 2473 	.db #0x54	; 84	'T'
   6752 04                 2474 	.db #0x04	; 4
   6753 0C                 2475 	.db #0x0C	; 12
   6754 0C                 2476 	.db #0x0C	; 12
   6755 0C                 2477 	.db #0x0C	; 12
   6756 0C                 2478 	.db #0x0C	; 12
   6757 0C                 2479 	.db #0x0C	; 12
   6758 48                 2480 	.db #0x48	; 72	'H'
   6759 C0                 2481 	.db #0xC0	; 192
   675A C0                 2482 	.db #0xC0	; 192
   675B A8                 2483 	.db #0xA8	; 168
   675C 08                 2484 	.db #0x08	; 8
   675D 04                 2485 	.db #0x04	; 4
   675E 0C                 2486 	.db #0x0C	; 12
   675F 0C                 2487 	.db #0x0C	; 12
   6760 0C                 2488 	.db #0x0C	; 12
   6761 0C                 2489 	.db #0x0C	; 12
   6762 0C                 2490 	.db #0x0C	; 12
   6763 0C                 2491 	.db #0x0C	; 12
   6764 5C                 2492 	.db #0x5C	; 92
   6765 08                 2493 	.db #0x08	; 8
   6766 08                 2494 	.db #0x08	; 8
   6767 0C                 2495 	.db #0x0C	; 12
   6768 C0                 2496 	.db #0xC0	; 192
   6769 C0                 2497 	.db #0xC0	; 192
   676A C0                 2498 	.db #0xC0	; 192
   676B C0                 2499 	.db #0xC0	; 192
   676C C0                 2500 	.db #0xC0	; 192
   676D 84                 2501 	.db #0x84	; 132
   676E 0C                 2502 	.db #0x0C	; 12
   676F AC                 2503 	.db #0xAC	; 172
   6770 0C                 2504 	.db #0x0C	; 12
   6771 04                 2505 	.db #0x04	; 4
   6772 0C                 2506 	.db #0x0C	; 12
   6773 0C                 2507 	.db #0x0C	; 12
   6774 08                 2508 	.db #0x08	; 8
   6775 04                 2509 	.db #0x04	; 4
   6776 0C                 2510 	.db #0x0C	; 12
   6777 0C                 2511 	.db #0x0C	; 12
   6778 5C                 2512 	.db #0x5C	; 92
   6779 04                 2513 	.db #0x04	; 4
   677A 0C                 2514 	.db #0x0C	; 12
   677B 0C                 2515 	.db #0x0C	; 12
   677C 0C                 2516 	.db #0x0C	; 12
   677D 0C                 2517 	.db #0x0C	; 12
   677E 0C                 2518 	.db #0x0C	; 12
   677F 0C                 2519 	.db #0x0C	; 12
   6780 0C                 2520 	.db #0x0C	; 12
   6781 0C                 2521 	.db #0x0C	; 12
   6782 08                 2522 	.db #0x08	; 8
   6783 04                 2523 	.db #0x04	; 4
   6784 0C                 2524 	.db #0x0C	; 12
   6785 00                 2525 	.db #0x00	; 0
   6786 08                 2526 	.db #0x08	; 8
   6787 04                 2527 	.db #0x04	; 4
   6788 00                 2528 	.db #0x00	; 0
   6789 00                 2529 	.db #0x00	; 0
   678A 08                 2530 	.db #0x08	; 8
   678B 04                 2531 	.db #0x04	; 4
   678C 00                 2532 	.db #0x00	; 0
   678D 00                 2533 	.db #0x00	; 0
   678E 08                 2534 	.db #0x08	; 8
   678F 04                 2535 	.db #0x04	; 4
   6790 08                 2536 	.db #0x08	; 8
   6791 04                 2537 	.db #0x04	; 4
   6792 08                 2538 	.db #0x08	; 8
   6793 04                 2539 	.db #0x04	; 4
   6794 08                 2540 	.db #0x08	; 8
   6795 04                 2541 	.db #0x04	; 4
   6796 08                 2542 	.db #0x08	; 8
   6797 00                 2543 	.db #0x00	; 0
   6798 08                 2544 	.db #0x08	; 8
   6799 00                 2545 	.db #0x00	; 0
   679A 00                 2546 	.db #0x00	; 0
   679B 00                 2547 	.db #0x00	; 0
   679C 00                 2548 	.db #0x00	; 0
   679D 00                 2549 	.db #0x00	; 0
   679E 00                 2550 	.db #0x00	; 0
   679F 00                 2551 	.db #0x00	; 0
   67A0 00                 2552 	.db #0x00	; 0
   67A1 00                 2553 	.db #0x00	; 0
   67A2 00                 2554 	.db #0x00	; 0
   67A3 00                 2555 	.db #0x00	; 0
   67A4 00                 2556 	.db #0x00	; 0
   67A5 00                 2557 	.db #0x00	; 0
   67A6 00                 2558 	.db #0x00	; 0
   67A7 00                 2559 	.db #0x00	; 0
   67A8 00                 2560 	.db #0x00	; 0
   67A9 00                 2561 	.db #0x00	; 0
   67AA 00                 2562 	.db #0x00	; 0
   67AB 00                 2563 	.db #0x00	; 0
   67AC 00                 2564 	.db #0x00	; 0
   67AD                    2565 _BB63000:
   67AD 00                 2566 	.db #0x00	; 0
   67AE 00                 2567 	.db #0x00	; 0
   67AF 00                 2568 	.db #0x00	; 0
   67B0 00                 2569 	.db #0x00	; 0
   67B1 00                 2570 	.db #0x00	; 0
   67B2 00                 2571 	.db #0x00	; 0
   67B3 00                 2572 	.db #0x00	; 0
   67B4 00                 2573 	.db #0x00	; 0
   67B5 00                 2574 	.db #0x00	; 0
   67B6 00                 2575 	.db #0x00	; 0
   67B7 00                 2576 	.db #0x00	; 0
   67B8 00                 2577 	.db #0x00	; 0
   67B9 00                 2578 	.db #0x00	; 0
   67BA CC                 2579 	.db #0xCC	; 204
   67BB CC                 2580 	.db #0xCC	; 204
   67BC 88                 2581 	.db #0x88	; 136
   67BD 00                 2582 	.db #0x00	; 0
   67BE 00                 2583 	.db #0x00	; 0
   67BF 00                 2584 	.db #0x00	; 0
   67C0 00                 2585 	.db #0x00	; 0
   67C1 00                 2586 	.db #0x00	; 0
   67C2 00                 2587 	.db #0x00	; 0
   67C3 00                 2588 	.db #0x00	; 0
   67C4 00                 2589 	.db #0x00	; 0
   67C5 00                 2590 	.db #0x00	; 0
   67C6 00                 2591 	.db #0x00	; 0
   67C7 00                 2592 	.db #0x00	; 0
   67C8 00                 2593 	.db #0x00	; 0
   67C9 00                 2594 	.db #0x00	; 0
   67CA 00                 2595 	.db #0x00	; 0
   67CB 00                 2596 	.db #0x00	; 0
   67CC 00                 2597 	.db #0x00	; 0
   67CD 44                 2598 	.db #0x44	; 68	'D'
   67CE CC                 2599 	.db #0xCC	; 204
   67CF CC                 2600 	.db #0xCC	; 204
   67D0 CC                 2601 	.db #0xCC	; 204
   67D1 00                 2602 	.db #0x00	; 0
   67D2 00                 2603 	.db #0x00	; 0
   67D3 00                 2604 	.db #0x00	; 0
   67D4 00                 2605 	.db #0x00	; 0
   67D5 00                 2606 	.db #0x00	; 0
   67D6 00                 2607 	.db #0x00	; 0
   67D7 00                 2608 	.db #0x00	; 0
   67D8 00                 2609 	.db #0x00	; 0
   67D9 00                 2610 	.db #0x00	; 0
   67DA 00                 2611 	.db #0x00	; 0
   67DB 00                 2612 	.db #0x00	; 0
   67DC 00                 2613 	.db #0x00	; 0
   67DD 00                 2614 	.db #0x00	; 0
   67DE 00                 2615 	.db #0x00	; 0
   67DF 00                 2616 	.db #0x00	; 0
   67E0 00                 2617 	.db #0x00	; 0
   67E1 00                 2618 	.db #0x00	; 0
   67E2 89                 2619 	.db #0x89	; 137
   67E3 03                 2620 	.db #0x03	; 3
   67E4 88                 2621 	.db #0x88	; 136
   67E5 00                 2622 	.db #0x00	; 0
   67E6 00                 2623 	.db #0x00	; 0
   67E7 00                 2624 	.db #0x00	; 0
   67E8 00                 2625 	.db #0x00	; 0
   67E9 00                 2626 	.db #0x00	; 0
   67EA 00                 2627 	.db #0x00	; 0
   67EB 00                 2628 	.db #0x00	; 0
   67EC 00                 2629 	.db #0x00	; 0
   67ED 00                 2630 	.db #0x00	; 0
   67EE 00                 2631 	.db #0x00	; 0
   67EF 00                 2632 	.db #0x00	; 0
   67F0 00                 2633 	.db #0x00	; 0
   67F1 00                 2634 	.db #0x00	; 0
   67F2 00                 2635 	.db #0x00	; 0
   67F3 00                 2636 	.db #0x00	; 0
   67F4 00                 2637 	.db #0x00	; 0
   67F5 00                 2638 	.db #0x00	; 0
   67F6 89                 2639 	.db #0x89	; 137
   67F7 03                 2640 	.db #0x03	; 3
   67F8 88                 2641 	.db #0x88	; 136
   67F9 00                 2642 	.db #0x00	; 0
   67FA 00                 2643 	.db #0x00	; 0
   67FB 00                 2644 	.db #0x00	; 0
   67FC 00                 2645 	.db #0x00	; 0
   67FD 00                 2646 	.db #0x00	; 0
   67FE 00                 2647 	.db #0x00	; 0
   67FF 00                 2648 	.db #0x00	; 0
   6800 00                 2649 	.db #0x00	; 0
   6801 00                 2650 	.db #0x00	; 0
   6802 00                 2651 	.db #0x00	; 0
   6803 00                 2652 	.db #0x00	; 0
   6804 00                 2653 	.db #0x00	; 0
   6805 00                 2654 	.db #0x00	; 0
   6806 00                 2655 	.db #0x00	; 0
   6807 00                 2656 	.db #0x00	; 0
   6808 00                 2657 	.db #0x00	; 0
   6809 00                 2658 	.db #0x00	; 0
   680A 89                 2659 	.db #0x89	; 137
   680B 03                 2660 	.db #0x03	; 3
   680C 88                 2661 	.db #0x88	; 136
   680D 00                 2662 	.db #0x00	; 0
   680E 00                 2663 	.db #0x00	; 0
   680F 00                 2664 	.db #0x00	; 0
   6810 00                 2665 	.db #0x00	; 0
   6811 00                 2666 	.db #0x00	; 0
   6812 00                 2667 	.db #0x00	; 0
   6813 00                 2668 	.db #0x00	; 0
   6814 44                 2669 	.db #0x44	; 68	'D'
   6815 CC                 2670 	.db #0xCC	; 204
   6816 CC                 2671 	.db #0xCC	; 204
   6817 CC                 2672 	.db #0xCC	; 204
   6818 CC                 2673 	.db #0xCC	; 204
   6819 CC                 2674 	.db #0xCC	; 204
   681A CC                 2675 	.db #0xCC	; 204
   681B CC                 2676 	.db #0xCC	; 204
   681C CC                 2677 	.db #0xCC	; 204
   681D CC                 2678 	.db #0xCC	; 204
   681E CC                 2679 	.db #0xCC	; 204
   681F CC                 2680 	.db #0xCC	; 204
   6820 CC                 2681 	.db #0xCC	; 204
   6821 CC                 2682 	.db #0xCC	; 204
   6822 00                 2683 	.db #0x00	; 0
   6823 00                 2684 	.db #0x00	; 0
   6824 00                 2685 	.db #0x00	; 0
   6825 00                 2686 	.db #0x00	; 0
   6826 00                 2687 	.db #0x00	; 0
   6827 00                 2688 	.db #0x00	; 0
   6828 30                 2689 	.db #0x30	; 48	'0'
   6829 30                 2690 	.db #0x30	; 48	'0'
   682A 30                 2691 	.db #0x30	; 48	'0'
   682B 30                 2692 	.db #0x30	; 48	'0'
   682C 30                 2693 	.db #0x30	; 48	'0'
   682D 30                 2694 	.db #0x30	; 48	'0'
   682E 30                 2695 	.db #0x30	; 48	'0'
   682F 30                 2696 	.db #0x30	; 48	'0'
   6830 30                 2697 	.db #0x30	; 48	'0'
   6831 30                 2698 	.db #0x30	; 48	'0'
   6832 18                 2699 	.db #0x18	; 24
   6833 30                 2700 	.db #0x30	; 48	'0'
   6834 24                 2701 	.db #0x24	; 36
   6835 30                 2702 	.db #0x30	; 48	'0'
   6836 20                 2703 	.db #0x20	; 32
   6837 00                 2704 	.db #0x00	; 0
   6838 00                 2705 	.db #0x00	; 0
   6839 00                 2706 	.db #0x00	; 0
   683A 00                 2707 	.db #0x00	; 0
   683B 00                 2708 	.db #0x00	; 0
   683C 0C                 2709 	.db #0x0C	; 12
   683D 0C                 2710 	.db #0x0C	; 12
   683E 0C                 2711 	.db #0x0C	; 12
   683F 0C                 2712 	.db #0x0C	; 12
   6840 0C                 2713 	.db #0x0C	; 12
   6841 0C                 2714 	.db #0x0C	; 12
   6842 0C                 2715 	.db #0x0C	; 12
   6843 0C                 2716 	.db #0x0C	; 12
   6844 0C                 2717 	.db #0x0C	; 12
   6845 0C                 2718 	.db #0x0C	; 12
   6846 18                 2719 	.db #0x18	; 24
   6847 30                 2720 	.db #0x30	; 48	'0'
   6848 24                 2721 	.db #0x24	; 36
   6849 0C                 2722 	.db #0x0C	; 12
   684A 08                 2723 	.db #0x08	; 8
   684B 00                 2724 	.db #0x00	; 0
   684C 00                 2725 	.db #0x00	; 0
   684D 00                 2726 	.db #0x00	; 0
   684E 00                 2727 	.db #0x00	; 0
   684F 08                 2728 	.db #0x08	; 8
   6850 30                 2729 	.db #0x30	; 48	'0'
   6851 4C                 2730 	.db #0x4C	; 76	'L'
   6852 30                 2731 	.db #0x30	; 48	'0'
   6853 24                 2732 	.db #0x24	; 36
   6854 30                 2733 	.db #0x30	; 48	'0'
   6855 24                 2734 	.db #0x24	; 36
   6856 30                 2735 	.db #0x30	; 48	'0'
   6857 24                 2736 	.db #0x24	; 36
   6858 98                 2737 	.db #0x98	; 152
   6859 98                 2738 	.db #0x98	; 152
   685A 18                 2739 	.db #0x18	; 24
   685B 30                 2740 	.db #0x30	; 48	'0'
   685C 24                 2741 	.db #0x24	; 36
   685D 30                 2742 	.db #0x30	; 48	'0'
   685E 20                 2743 	.db #0x20	; 32
   685F 08                 2744 	.db #0x08	; 8
   6860 00                 2745 	.db #0x00	; 0
   6861 00                 2746 	.db #0x00	; 0
   6862 00                 2747 	.db #0x00	; 0
   6863 08                 2748 	.db #0x08	; 8
   6864 30                 2749 	.db #0x30	; 48	'0'
   6865 4C                 2750 	.db #0x4C	; 76	'L'
   6866 30                 2751 	.db #0x30	; 48	'0'
   6867 24                 2752 	.db #0x24	; 36
   6868 30                 2753 	.db #0x30	; 48	'0'
   6869 24                 2754 	.db #0x24	; 36
   686A 30                 2755 	.db #0x30	; 48	'0'
   686B 24                 2756 	.db #0x24	; 36
   686C 98                 2757 	.db #0x98	; 152
   686D 98                 2758 	.db #0x98	; 152
   686E 18                 2759 	.db #0x18	; 24
   686F 30                 2760 	.db #0x30	; 48	'0'
   6870 24                 2761 	.db #0x24	; 36
   6871 30                 2762 	.db #0x30	; 48	'0'
   6872 20                 2763 	.db #0x20	; 32
   6873 08                 2764 	.db #0x08	; 8
   6874 00                 2765 	.db #0x00	; 0
   6875 00                 2766 	.db #0x00	; 0
   6876 00                 2767 	.db #0x00	; 0
   6877 08                 2768 	.db #0x08	; 8
   6878 0C                 2769 	.db #0x0C	; 12
   6879 0C                 2770 	.db #0x0C	; 12
   687A 0C                 2771 	.db #0x0C	; 12
   687B 0C                 2772 	.db #0x0C	; 12
   687C 0C                 2773 	.db #0x0C	; 12
   687D 0C                 2774 	.db #0x0C	; 12
   687E 0C                 2775 	.db #0x0C	; 12
   687F 0C                 2776 	.db #0x0C	; 12
   6880 0C                 2777 	.db #0x0C	; 12
   6881 0C                 2778 	.db #0x0C	; 12
   6882 18                 2779 	.db #0x18	; 24
   6883 30                 2780 	.db #0x30	; 48	'0'
   6884 24                 2781 	.db #0x24	; 36
   6885 0C                 2782 	.db #0x0C	; 12
   6886 08                 2783 	.db #0x08	; 8
   6887 08                 2784 	.db #0x08	; 8
   6888 00                 2785 	.db #0x00	; 0
   6889 00                 2786 	.db #0x00	; 0
   688A 00                 2787 	.db #0x00	; 0
   688B 08                 2788 	.db #0x08	; 8
   688C 30                 2789 	.db #0x30	; 48	'0'
   688D 18                 2790 	.db #0x18	; 24
   688E 30                 2791 	.db #0x30	; 48	'0'
   688F 8C                 2792 	.db #0x8C	; 140
   6890 CC                 2793 	.db #0xCC	; 204
   6891 8C                 2794 	.db #0x8C	; 140
   6892 CC                 2795 	.db #0xCC	; 204
   6893 24                 2796 	.db #0x24	; 36
   6894 30                 2797 	.db #0x30	; 48	'0'
   6895 30                 2798 	.db #0x30	; 48	'0'
   6896 18                 2799 	.db #0x18	; 24
   6897 30                 2800 	.db #0x30	; 48	'0'
   6898 24                 2801 	.db #0x24	; 36
   6899 98                 2802 	.db #0x98	; 152
   689A 88                 2803 	.db #0x88	; 136
   689B 08                 2804 	.db #0x08	; 8
   689C 00                 2805 	.db #0x00	; 0
   689D 00                 2806 	.db #0x00	; 0
   689E 00                 2807 	.db #0x00	; 0
   689F 0C                 2808 	.db #0x0C	; 12
   68A0 0C                 2809 	.db #0x0C	; 12
   68A1 0C                 2810 	.db #0x0C	; 12
   68A2 0C                 2811 	.db #0x0C	; 12
   68A3 0C                 2812 	.db #0x0C	; 12
   68A4 0C                 2813 	.db #0x0C	; 12
   68A5 0C                 2814 	.db #0x0C	; 12
   68A6 0C                 2815 	.db #0x0C	; 12
   68A7 0C                 2816 	.db #0x0C	; 12
   68A8 0C                 2817 	.db #0x0C	; 12
   68A9 0C                 2818 	.db #0x0C	; 12
   68AA 18                 2819 	.db #0x18	; 24
   68AB 30                 2820 	.db #0x30	; 48	'0'
   68AC 24                 2821 	.db #0x24	; 36
   68AD 0C                 2822 	.db #0x0C	; 12
   68AE 0C                 2823 	.db #0x0C	; 12
   68AF 08                 2824 	.db #0x08	; 8
   68B0 00                 2825 	.db #0x00	; 0
   68B1 00                 2826 	.db #0x00	; 0
   68B2 00                 2827 	.db #0x00	; 0
   68B3 48                 2828 	.db #0x48	; 72	'H'
   68B4 C0                 2829 	.db #0xC0	; 192
   68B5 C0                 2830 	.db #0xC0	; 192
   68B6 C0                 2831 	.db #0xC0	; 192
   68B7 C0                 2832 	.db #0xC0	; 192
   68B8 C0                 2833 	.db #0xC0	; 192
   68B9 C0                 2834 	.db #0xC0	; 192
   68BA C0                 2835 	.db #0xC0	; 192
   68BB C0                 2836 	.db #0xC0	; 192
   68BC C0                 2837 	.db #0xC0	; 192
   68BD C0                 2838 	.db #0xC0	; 192
   68BE C0                 2839 	.db #0xC0	; 192
   68BF C0                 2840 	.db #0xC0	; 192
   68C0 C0                 2841 	.db #0xC0	; 192
   68C1 C0                 2842 	.db #0xC0	; 192
   68C2 C0                 2843 	.db #0xC0	; 192
   68C3 08                 2844 	.db #0x08	; 8
   68C4 00                 2845 	.db #0x00	; 0
   68C5 00                 2846 	.db #0x00	; 0
   68C6 00                 2847 	.db #0x00	; 0
   68C7 04                 2848 	.db #0x04	; 4
   68C8 0C                 2849 	.db #0x0C	; 12
   68C9 0C                 2850 	.db #0x0C	; 12
   68CA 0C                 2851 	.db #0x0C	; 12
   68CB 0C                 2852 	.db #0x0C	; 12
   68CC 0C                 2853 	.db #0x0C	; 12
   68CD 0C                 2854 	.db #0x0C	; 12
   68CE 0C                 2855 	.db #0x0C	; 12
   68CF 0C                 2856 	.db #0x0C	; 12
   68D0 0C                 2857 	.db #0x0C	; 12
   68D1 0C                 2858 	.db #0x0C	; 12
   68D2 0C                 2859 	.db #0x0C	; 12
   68D3 0C                 2860 	.db #0x0C	; 12
   68D4 0C                 2861 	.db #0x0C	; 12
   68D5 0C                 2862 	.db #0x0C	; 12
   68D6 0C                 2863 	.db #0x0C	; 12
   68D7 00                 2864 	.db #0x00	; 0
   68D8 00                 2865 	.db #0x00	; 0
   68D9 00                 2866 	.db #0x00	; 0
   68DA 00                 2867 	.db #0x00	; 0
   68DB 04                 2868 	.db #0x04	; 4
   68DC 00                 2869 	.db #0x00	; 0
   68DD 04                 2870 	.db #0x04	; 4
   68DE 0C                 2871 	.db #0x0C	; 12
   68DF 0C                 2872 	.db #0x0C	; 12
   68E0 08                 2873 	.db #0x08	; 8
   68E1 00                 2874 	.db #0x00	; 0
   68E2 00                 2875 	.db #0x00	; 0
   68E3 00                 2876 	.db #0x00	; 0
   68E4 00                 2877 	.db #0x00	; 0
   68E5 00                 2878 	.db #0x00	; 0
   68E6 0C                 2879 	.db #0x0C	; 12
   68E7 0C                 2880 	.db #0x0C	; 12
   68E8 0C                 2881 	.db #0x0C	; 12
   68E9 00                 2882 	.db #0x00	; 0
   68EA 04                 2883 	.db #0x04	; 4
   68EB 00                 2884 	.db #0x00	; 0
   68EC 00                 2885 	.db #0x00	; 0
   68ED 00                 2886 	.db #0x00	; 0
   68EE 00                 2887 	.db #0x00	; 0
   68EF 0C                 2888 	.db #0x0C	; 12
   68F0 00                 2889 	.db #0x00	; 0
   68F1 0C                 2890 	.db #0x0C	; 12
   68F2 0C                 2891 	.db #0x0C	; 12
   68F3 0C                 2892 	.db #0x0C	; 12
   68F4 0C                 2893 	.db #0x0C	; 12
   68F5 00                 2894 	.db #0x00	; 0
   68F6 00                 2895 	.db #0x00	; 0
   68F7 00                 2896 	.db #0x00	; 0
   68F8 00                 2897 	.db #0x00	; 0
   68F9 04                 2898 	.db #0x04	; 4
   68FA 0C                 2899 	.db #0x0C	; 12
   68FB 0C                 2900 	.db #0x0C	; 12
   68FC 0C                 2901 	.db #0x0C	; 12
   68FD 08                 2902 	.db #0x08	; 8
   68FE 04                 2903 	.db #0x04	; 4
   68FF 08                 2904 	.db #0x08	; 8
   6900 00                 2905 	.db #0x00	; 0
   6901 00                 2906 	.db #0x00	; 0
   6902 00                 2907 	.db #0x00	; 0
   6903 0C                 2908 	.db #0x0C	; 12
   6904 04                 2909 	.db #0x04	; 4
   6905 0C                 2910 	.db #0x0C	; 12
   6906 0C                 2911 	.db #0x0C	; 12
   6907 0C                 2912 	.db #0x0C	; 12
   6908 0C                 2913 	.db #0x0C	; 12
   6909 08                 2914 	.db #0x08	; 8
   690A 00                 2915 	.db #0x00	; 0
   690B 00                 2916 	.db #0x00	; 0
   690C 00                 2917 	.db #0x00	; 0
   690D 0C                 2918 	.db #0x0C	; 12
   690E 0C                 2919 	.db #0x0C	; 12
   690F 0C                 2920 	.db #0x0C	; 12
   6910 0C                 2921 	.db #0x0C	; 12
   6911 0C                 2922 	.db #0x0C	; 12
   6912 04                 2923 	.db #0x04	; 4
   6913 08                 2924 	.db #0x08	; 8
   6914 00                 2925 	.db #0x00	; 0
   6915 00                 2926 	.db #0x00	; 0
   6916 00                 2927 	.db #0x00	; 0
   6917 00                 2928 	.db #0x00	; 0
   6918 04                 2929 	.db #0x04	; 4
   6919 0C                 2930 	.db #0x0C	; 12
   691A 0C                 2931 	.db #0x0C	; 12
   691B 0C                 2932 	.db #0x0C	; 12
   691C 0C                 2933 	.db #0x0C	; 12
   691D 08                 2934 	.db #0x08	; 8
   691E 00                 2935 	.db #0x00	; 0
   691F 00                 2936 	.db #0x00	; 0
   6920 00                 2937 	.db #0x00	; 0
   6921 0C                 2938 	.db #0x0C	; 12
   6922 0C                 2939 	.db #0x0C	; 12
   6923 0C                 2940 	.db #0x0C	; 12
   6924 0C                 2941 	.db #0x0C	; 12
   6925 0C                 2942 	.db #0x0C	; 12
   6926 00                 2943 	.db #0x00	; 0
   6927 00                 2944 	.db #0x00	; 0
   6928 00                 2945 	.db #0x00	; 0
   6929 00                 2946 	.db #0x00	; 0
   692A 00                 2947 	.db #0x00	; 0
   692B 00                 2948 	.db #0x00	; 0
   692C 00                 2949 	.db #0x00	; 0
   692D 0C                 2950 	.db #0x0C	; 12
   692E 00                 2951 	.db #0x00	; 0
   692F 00                 2952 	.db #0x00	; 0
   6930 0C                 2953 	.db #0x0C	; 12
   6931 00                 2954 	.db #0x00	; 0
   6932 00                 2955 	.db #0x00	; 0
   6933 00                 2956 	.db #0x00	; 0
   6934 00                 2957 	.db #0x00	; 0
   6935 04                 2958 	.db #0x04	; 4
   6936 08                 2959 	.db #0x08	; 8
   6937 00                 2960 	.db #0x00	; 0
   6938 04                 2961 	.db #0x04	; 4
   6939 08                 2962 	.db #0x08	; 8
   693A 00                 2963 	.db #0x00	; 0
   693B 00                 2964 	.db #0x00	; 0
   693C 00                 2965 	.db #0x00	; 0
                           2966 	.area _INITIALIZER
                           2967 	.area _CABS (ABS)
