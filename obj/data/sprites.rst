                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module sprites
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _train_v
                             12 	.globl _train_h
                             13 	.globl _rail_ns_e
                             14 	.globl _rail_ns_w
                             15 	.globl _rail_ew_s
                             16 	.globl _rail_ew_n
                             17 	.globl _rail_ws
                             18 	.globl _rail_wn
                             19 	.globl _rail_es
                             20 	.globl _rail_en
                             21 	.globl _rail_ns
                             22 	.globl _rail_ew
                             23 	.globl _station_large_ew
                             24 	.globl _station_large_ns
                             25 	.globl _station_medium_ew
                             26 	.globl _station_medium_ns
                             27 	.globl _station_small_ew
                             28 	.globl _station_small_ns
                             29 	.globl _livestock
                             30 	.globl _farm2
                             31 	.globl _farm1
                             32 	.globl _water
                             33 	.globl _dwellings3
                             34 	.globl _dwellings2
                             35 	.globl _dwellings1
                             36 	.globl _forest
                             37 	.globl _grass2
                             38 	.globl _grass1
                             39 ;--------------------------------------------------------
                             40 ; special function registers
                             41 ;--------------------------------------------------------
                             42 ;--------------------------------------------------------
                             43 ; ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DATA
                             46 ;--------------------------------------------------------
                             47 ; ram data
                             48 ;--------------------------------------------------------
                             49 	.area _INITIALIZED
                             50 ;--------------------------------------------------------
                             51 ; absolute external ram data
                             52 ;--------------------------------------------------------
                             53 	.area _DABS (ABS)
                             54 ;--------------------------------------------------------
                             55 ; global & static initialisations
                             56 ;--------------------------------------------------------
                             57 	.area _HOME
                             58 	.area _GSINIT
                             59 	.area _GSFINAL
                             60 	.area _GSINIT
                             61 ;--------------------------------------------------------
                             62 ; Home
                             63 ;--------------------------------------------------------
                             64 	.area _HOME
                             65 	.area _HOME
                             66 ;--------------------------------------------------------
                             67 ; code
                             68 ;--------------------------------------------------------
                             69 	.area _CODE
                             70 	.area _CODE
   47D4                      71 _grass1:
   47D4 0F                   72 	.db #0x0f	; 15
   47D5 0F                   73 	.db #0x0f	; 15
   47D6 0F                   74 	.db #0x0f	; 15
   47D7 8F                   75 	.db #0x8f	; 143
   47D8 0F                   76 	.db #0x0f	; 15
   47D9 0F                   77 	.db #0x0f	; 15
   47DA 0F                   78 	.db #0x0f	; 15
   47DB 0F                   79 	.db #0x0f	; 15
   47DC 1F                   80 	.db #0x1f	; 31
   47DD 0F                   81 	.db #0x0f	; 15
   47DE 2F                   82 	.db #0x2f	; 47
   47DF 0F                   83 	.db #0x0f	; 15
   47E0 0F                   84 	.db #0x0f	; 15
   47E1 0F                   85 	.db #0x0f	; 15
   47E2 0F                   86 	.db #0x0f	; 15
   47E3 0F                   87 	.db #0x0f	; 15
   47E4 0F                   88 	.db #0x0f	; 15
   47E5 0F                   89 	.db #0x0f	; 15
   47E6 0F                   90 	.db #0x0f	; 15
   47E7 0F                   91 	.db #0x0f	; 15
   47E8 0F                   92 	.db #0x0f	; 15
   47E9 0F                   93 	.db #0x0f	; 15
   47EA 0F                   94 	.db #0x0f	; 15
   47EB 0F                   95 	.db #0x0f	; 15
   47EC 0F                   96 	.db #0x0f	; 15
   47ED 0F                   97 	.db #0x0f	; 15
   47EE 0F                   98 	.db #0x0f	; 15
   47EF 0F                   99 	.db #0x0f	; 15
   47F0 4F                  100 	.db #0x4f	; 79	'O'
   47F1 0F                  101 	.db #0x0f	; 15
   47F2 0F                  102 	.db #0x0f	; 15
   47F3 8F                  103 	.db #0x8f	; 143
   47F4 0F                  104 	.db #0x0f	; 15
   47F5 4F                  105 	.db #0x4f	; 79	'O'
   47F6 0F                  106 	.db #0x0f	; 15
   47F7 0F                  107 	.db #0x0f	; 15
   47F8 0F                  108 	.db #0x0f	; 15
   47F9 0F                  109 	.db #0x0f	; 15
   47FA 0F                  110 	.db #0x0f	; 15
   47FB 0F                  111 	.db #0x0f	; 15
   47FC 0F                  112 	.db #0x0f	; 15
   47FD 0F                  113 	.db #0x0f	; 15
   47FE 0F                  114 	.db #0x0f	; 15
   47FF 0F                  115 	.db #0x0f	; 15
   4800 0F                  116 	.db #0x0f	; 15
   4801 1F                  117 	.db #0x1f	; 31
   4802 0F                  118 	.db #0x0f	; 15
   4803 0F                  119 	.db #0x0f	; 15
   4804 0F                  120 	.db #0x0f	; 15
   4805 0F                  121 	.db #0x0f	; 15
   4806 0F                  122 	.db #0x0f	; 15
   4807 8F                  123 	.db #0x8f	; 143
   4808 0F                  124 	.db #0x0f	; 15
   4809 0F                  125 	.db #0x0f	; 15
   480A 0F                  126 	.db #0x0f	; 15
   480B 0F                  127 	.db #0x0f	; 15
   480C 0F                  128 	.db #0x0f	; 15
   480D 0F                  129 	.db #0x0f	; 15
   480E 0F                  130 	.db #0x0f	; 15
   480F 0F                  131 	.db #0x0f	; 15
   4810 4F                  132 	.db #0x4f	; 79	'O'
   4811 0F                  133 	.db #0x0f	; 15
   4812 8F                  134 	.db #0x8f	; 143
   4813 0F                  135 	.db #0x0f	; 15
   4814                     136 _grass2:
   4814 0F                  137 	.db #0x0f	; 15
   4815 0F                  138 	.db #0x0f	; 15
   4816 0F                  139 	.db #0x0f	; 15
   4817 0F                  140 	.db #0x0f	; 15
   4818 0F                  141 	.db #0x0f	; 15
   4819 0F                  142 	.db #0x0f	; 15
   481A 0F                  143 	.db #0x0f	; 15
   481B 2F                  144 	.db #0x2f	; 47
   481C 0F                  145 	.db #0x0f	; 15
   481D 8F                  146 	.db #0x8f	; 143
   481E 0F                  147 	.db #0x0f	; 15
   481F 0F                  148 	.db #0x0f	; 15
   4820 0F                  149 	.db #0x0f	; 15
   4821 0F                  150 	.db #0x0f	; 15
   4822 0F                  151 	.db #0x0f	; 15
   4823 0F                  152 	.db #0x0f	; 15
   4824 0F                  153 	.db #0x0f	; 15
   4825 0F                  154 	.db #0x0f	; 15
   4826 0F                  155 	.db #0x0f	; 15
   4827 0F                  156 	.db #0x0f	; 15
   4828 4F                  157 	.db #0x4f	; 79	'O'
   4829 0F                  158 	.db #0x0f	; 15
   482A 0F                  159 	.db #0x0f	; 15
   482B 0F                  160 	.db #0x0f	; 15
   482C 0F                  161 	.db #0x0f	; 15
   482D 0F                  162 	.db #0x0f	; 15
   482E 2F                  163 	.db #0x2f	; 47
   482F 0F                  164 	.db #0x0f	; 15
   4830 0F                  165 	.db #0x0f	; 15
   4831 0F                  166 	.db #0x0f	; 15
   4832 0F                  167 	.db #0x0f	; 15
   4833 0F                  168 	.db #0x0f	; 15
   4834 0F                  169 	.db #0x0f	; 15
   4835 4F                  170 	.db #0x4f	; 79	'O'
   4836 0F                  171 	.db #0x0f	; 15
   4837 0F                  172 	.db #0x0f	; 15
   4838 0F                  173 	.db #0x0f	; 15
   4839 0F                  174 	.db #0x0f	; 15
   483A 0F                  175 	.db #0x0f	; 15
   483B 0F                  176 	.db #0x0f	; 15
   483C 0F                  177 	.db #0x0f	; 15
   483D 0F                  178 	.db #0x0f	; 15
   483E 0F                  179 	.db #0x0f	; 15
   483F 0F                  180 	.db #0x0f	; 15
   4840 0F                  181 	.db #0x0f	; 15
   4841 0F                  182 	.db #0x0f	; 15
   4842 0F                  183 	.db #0x0f	; 15
   4843 8F                  184 	.db #0x8f	; 143
   4844 0F                  185 	.db #0x0f	; 15
   4845 0F                  186 	.db #0x0f	; 15
   4846 0F                  187 	.db #0x0f	; 15
   4847 0F                  188 	.db #0x0f	; 15
   4848 2F                  189 	.db #0x2f	; 47
   4849 1F                  190 	.db #0x1f	; 31
   484A 0F                  191 	.db #0x0f	; 15
   484B 0F                  192 	.db #0x0f	; 15
   484C 0F                  193 	.db #0x0f	; 15
   484D 0F                  194 	.db #0x0f	; 15
   484E 0F                  195 	.db #0x0f	; 15
   484F 2F                  196 	.db #0x2f	; 47
   4850 0F                  197 	.db #0x0f	; 15
   4851 0F                  198 	.db #0x0f	; 15
   4852 0F                  199 	.db #0x0f	; 15
   4853 0F                  200 	.db #0x0f	; 15
   4854                     201 _forest:
   4854 0F                  202 	.db #0x0f	; 15
   4855 0F                  203 	.db #0x0f	; 15
   4856 0E                  204 	.db #0x0e	; 14
   4857 03                  205 	.db #0x03	; 3
   4858 0E                  206 	.db #0x0e	; 14
   4859 03                  207 	.db #0x03	; 3
   485A 0E                  208 	.db #0x0e	; 14
   485B EF                  209 	.db #0xef	; 239
   485C 0E                  210 	.db #0x0e	; 14
   485D EF                  211 	.db #0xef	; 239
   485E 0F                  212 	.db #0x0f	; 15
   485F EF                  213 	.db #0xef	; 239
   4860 0E                  214 	.db #0x0e	; 14
   4861 FF                  215 	.db #0xff	; 255
   4862 0F                  216 	.db #0x0f	; 15
   4863 0F                  217 	.db #0x0f	; 15
   4864 07                  218 	.db #0x07	; 7
   4865 6F                  219 	.db #0x6f	; 111	'o'
   4866 0C                  220 	.db #0x0c	; 12
   4867 0F                  221 	.db #0x0f	; 15
   4868 CF                  222 	.db #0xcf	; 207
   4869 0F                  223 	.db #0x0f	; 15
   486A 19                  224 	.db #0x19	; 25
   486B 8F                  225 	.db #0x8f	; 143
   486C CE                  226 	.db #0xce	; 206
   486D 03                  227 	.db #0x03	; 3
   486E 3B                  228 	.db #0x3b	; 59
   486F 8F                  229 	.db #0x8f	; 143
   4870 CE                  230 	.db #0xce	; 206
   4871 CF                  231 	.db #0xcf	; 207
   4872 3B                  232 	.db #0x3b	; 59
   4873 0F                  233 	.db #0x0f	; 15
   4874 0E                  234 	.db #0x0e	; 14
   4875 EF                  235 	.db #0xef	; 239
   4876 3F                  236 	.db #0x3f	; 63
   4877 0F                  237 	.db #0x0f	; 15
   4878 0F                  238 	.db #0x0f	; 15
   4879 EF                  239 	.db #0xef	; 239
   487A 0F                  240 	.db #0x0f	; 15
   487B 0F                  241 	.db #0x0f	; 15
   487C 0E                  242 	.db #0x0e	; 14
   487D 07                  243 	.db #0x07	; 7
   487E 03                  244 	.db #0x03	; 3
   487F 0F                  245 	.db #0x0f	; 15
   4880 1D                  246 	.db #0x1d	; 29
   4881 CE                  247 	.db #0xce	; 206
   4882 EF                  248 	.db #0xef	; 239
   4883 09                  249 	.db #0x09	; 9
   4884 3B                  250 	.db #0x3b	; 59
   4885 8F                  251 	.db #0x8f	; 143
   4886 CE                  252 	.db #0xce	; 206
   4887 67                  253 	.db #0x67	; 103	'g'
   4888 3B                  254 	.db #0x3b	; 59
   4889 8F                  255 	.db #0x8f	; 143
   488A 1D                  256 	.db #0x1d	; 29
   488B EF                  257 	.db #0xef	; 239
   488C 2F                  258 	.db #0x2f	; 47
   488D 0F                  259 	.db #0x0f	; 15
   488E 1D                  260 	.db #0x1d	; 29
   488F EF                  261 	.db #0xef	; 239
   4890 0F                  262 	.db #0x0f	; 15
   4891 0F                  263 	.db #0x0f	; 15
   4892 0F                  264 	.db #0x0f	; 15
   4893 CF                  265 	.db #0xcf	; 207
   4894                     266 _dwellings1:
   4894 0F                  267 	.db #0x0f	; 15
   4895 0F                  268 	.db #0x0f	; 15
   4896 0F                  269 	.db #0x0f	; 15
   4897 0F                  270 	.db #0x0f	; 15
   4898 08                  271 	.db #0x08	; 8
   4899 03                  272 	.db #0x03	; 3
   489A 0C                  273 	.db #0x0c	; 12
   489B 07                  274 	.db #0x07	; 7
   489C 38                  275 	.db #0x38	; 56	'8'
   489D E1                  276 	.db #0xe1	; 225
   489E 1C                  277 	.db #0x1c	; 28
   489F C3                  278 	.db #0xc3	; 195
   48A0 3C                  279 	.db #0x3c	; 60
   48A1 E1                  280 	.db #0xe1	; 225
   48A2 1C                  281 	.db #0x1c	; 28
   48A3 C3                  282 	.db #0xc3	; 195
   48A4 0F                  283 	.db #0x0f	; 15
   48A5 0F                  284 	.db #0x0f	; 15
   48A6 1E                  285 	.db #0x1e	; 30
   48A7 C3                  286 	.db #0xc3	; 195
   48A8 0F                  287 	.db #0x0f	; 15
   48A9 0F                  288 	.db #0x0f	; 15
   48AA 0F                  289 	.db #0x0f	; 15
   48AB 0F                  290 	.db #0x0f	; 15
   48AC 0F                  291 	.db #0x0f	; 15
   48AD 0F                  292 	.db #0x0f	; 15
   48AE 0E                  293 	.db #0x0e	; 14
   48AF 03                  294 	.db #0x03	; 3
   48B0 0F                  295 	.db #0x0f	; 15
   48B1 0E                  296 	.db #0x0e	; 14
   48B2 06                  297 	.db #0x06	; 6
   48B3 E1                  298 	.db #0xe1	; 225
   48B4 0F                  299 	.db #0x0f	; 15
   48B5 0E                  300 	.db #0x0e	; 14
   48B6 C2                  301 	.db #0xc2	; 194
   48B7 E1                  302 	.db #0xe1	; 225
   48B8 0F                  303 	.db #0x0f	; 15
   48B9 0E                  304 	.db #0x0e	; 14
   48BA C2                  305 	.db #0xc2	; 194
   48BB E1                  306 	.db #0xe1	; 225
   48BC 0F                  307 	.db #0x0f	; 15
   48BD 0E                  308 	.db #0x0e	; 14
   48BE C3                  309 	.db #0xc3	; 195
   48BF E1                  310 	.db #0xe1	; 225
   48C0 0F                  311 	.db #0x0f	; 15
   48C1 0E                  312 	.db #0x0e	; 14
   48C2 C3                  313 	.db #0xc3	; 195
   48C3 0F                  314 	.db #0x0f	; 15
   48C4 0F                  315 	.db #0x0f	; 15
   48C5 0F                  316 	.db #0x0f	; 15
   48C6 C3                  317 	.db #0xc3	; 195
   48C7 0F                  318 	.db #0x0f	; 15
   48C8 08                  319 	.db #0x08	; 8
   48C9 07                  320 	.db #0x07	; 7
   48CA 0F                  321 	.db #0x0f	; 15
   48CB 0F                  322 	.db #0x0f	; 15
   48CC 38                  323 	.db #0x38	; 56	'8'
   48CD C3                  324 	.db #0xc3	; 195
   48CE 0F                  325 	.db #0x0f	; 15
   48CF 0F                  326 	.db #0x0f	; 15
   48D0 3C                  327 	.db #0x3c	; 60
   48D1 C3                  328 	.db #0xc3	; 195
   48D2 0F                  329 	.db #0x0f	; 15
   48D3 0F                  330 	.db #0x0f	; 15
   48D4                     331 _dwellings2:
   48D4 0F                  332 	.db #0x0f	; 15
   48D5 0F                  333 	.db #0x0f	; 15
   48D6 0F                  334 	.db #0x0f	; 15
   48D7 0F                  335 	.db #0x0f	; 15
   48D8 0F                  336 	.db #0x0f	; 15
   48D9 01                  337 	.db #0x01	; 1
   48DA 0F                  338 	.db #0x0f	; 15
   48DB 0F                  339 	.db #0x0f	; 15
   48DC 0F                  340 	.db #0x0f	; 15
   48DD 70                  341 	.db #0x70	; 112	'p'
   48DE 0C                  342 	.db #0x0c	; 12
   48DF 0F                  343 	.db #0x0f	; 15
   48E0 09                  344 	.db #0x09	; 9
   48E1 78                  345 	.db #0x78	; 120	'x'
   48E2 1C                  346 	.db #0x1c	; 28
   48E3 87                  347 	.db #0x87	; 135
   48E4 38                  348 	.db #0x38	; 56	'8'
   48E5 0F                  349 	.db #0x0f	; 15
   48E6 1C                  350 	.db #0x1c	; 28
   48E7 87                  351 	.db #0x87	; 135
   48E8 38                  352 	.db #0x38	; 56	'8'
   48E9 0F                  353 	.db #0x0f	; 15
   48EA 1E                  354 	.db #0x1e	; 30
   48EB 87                  355 	.db #0x87	; 135
   48EC 3C                  356 	.db #0x3c	; 60
   48ED 0F                  357 	.db #0x0f	; 15
   48EE 0F                  358 	.db #0x0f	; 15
   48EF 0F                  359 	.db #0x0f	; 15
   48F0 0F                  360 	.db #0x0f	; 15
   48F1 0F                  361 	.db #0x0f	; 15
   48F2 0F                  362 	.db #0x0f	; 15
   48F3 0F                  363 	.db #0x0f	; 15
   48F4 0E                  364 	.db #0x0e	; 14
   48F5 07                  365 	.db #0x07	; 7
   48F6 0F                  366 	.db #0x0f	; 15
   48F7 0F                  367 	.db #0x0f	; 15
   48F8 0E                  368 	.db #0x0e	; 14
   48F9 C3                  369 	.db #0xc3	; 195
   48FA 00                  370 	.db #0x00	; 0
   48FB 07                  371 	.db #0x07	; 7
   48FC 0E                  372 	.db #0x0e	; 14
   48FD C3                  373 	.db #0xc3	; 195
   48FE 70                  374 	.db #0x70	; 112	'p'
   48FF C3                  375 	.db #0xc3	; 195
   4900 0F                  376 	.db #0x0f	; 15
   4901 C3                  377 	.db #0xc3	; 195
   4902 70                  378 	.db #0x70	; 112	'p'
   4903 C3                  379 	.db #0xc3	; 195
   4904 03                  380 	.db #0x03	; 3
   4905 0F                  381 	.db #0x0f	; 15
   4906 78                  382 	.db #0x78	; 120	'x'
   4907 C3                  383 	.db #0xc3	; 195
   4908 61                  384 	.db #0x61	; 97	'a'
   4909 0F                  385 	.db #0x0f	; 15
   490A 0F                  386 	.db #0x0f	; 15
   490B 0F                  387 	.db #0x0f	; 15
   490C 69                  388 	.db #0x69	; 105	'i'
   490D 0F                  389 	.db #0x0f	; 15
   490E 0F                  390 	.db #0x0f	; 15
   490F 0F                  391 	.db #0x0f	; 15
   4910 0F                  392 	.db #0x0f	; 15
   4911 0F                  393 	.db #0x0f	; 15
   4912 0F                  394 	.db #0x0f	; 15
   4913 0F                  395 	.db #0x0f	; 15
   4914                     396 _dwellings3:
   4914 0F                  397 	.db #0x0f	; 15
   4915 0F                  398 	.db #0x0f	; 15
   4916 09                  399 	.db #0x09	; 9
   4917 09                  400 	.db #0x09	; 9
   4918 0F                  401 	.db #0x0f	; 15
   4919 0F                  402 	.db #0x0f	; 15
   491A 38                  403 	.db #0x38	; 56	'8'
   491B 38                  404 	.db #0x38	; 56	'8'
   491C 0E                  405 	.db #0x0e	; 14
   491D 03                  406 	.db #0x03	; 3
   491E 38                  407 	.db #0x38	; 56	'8'
   491F 38                  408 	.db #0x38	; 56	'8'
   4920 0E                  409 	.db #0x0e	; 14
   4921 E1                  410 	.db #0xe1	; 225
   4922 3C                  411 	.db #0x3c	; 60
   4923 3C                  412 	.db #0x3c	; 60
   4924 0E                  413 	.db #0x0e	; 14
   4925 E1                  414 	.db #0xe1	; 225
   4926 0F                  415 	.db #0x0f	; 15
   4927 0F                  416 	.db #0x0f	; 15
   4928 0E                  417 	.db #0x0e	; 14
   4929 E1                  418 	.db #0xe1	; 225
   492A 08                  419 	.db #0x08	; 8
   492B 07                  420 	.db #0x07	; 7
   492C 0F                  421 	.db #0x0f	; 15
   492D E1                  422 	.db #0xe1	; 225
   492E 38                  423 	.db #0x38	; 56	'8'
   492F C3                  424 	.db #0xc3	; 195
   4930 0F                  425 	.db #0x0f	; 15
   4931 0F                  426 	.db #0x0f	; 15
   4932 3C                  427 	.db #0x3c	; 60
   4933 C3                  428 	.db #0xc3	; 195
   4934 0C                  429 	.db #0x0c	; 12
   4935 0F                  430 	.db #0x0f	; 15
   4936 0F                  431 	.db #0x0f	; 15
   4937 0F                  432 	.db #0x0f	; 15
   4938 1C                  433 	.db #0x1c	; 28
   4939 87                  434 	.db #0x87	; 135
   493A 0F                  435 	.db #0x0f	; 15
   493B 0F                  436 	.db #0x0f	; 15
   493C 1E                  437 	.db #0x1e	; 30
   493D 87                  438 	.db #0x87	; 135
   493E 0C                  439 	.db #0x0c	; 12
   493F 07                  440 	.db #0x07	; 7
   4940 0F                  441 	.db #0x0f	; 15
   4941 0F                  442 	.db #0x0f	; 15
   4942 1C                  443 	.db #0x1c	; 28
   4943 C3                  444 	.db #0xc3	; 195
   4944 0F                  445 	.db #0x0f	; 15
   4945 09                  446 	.db #0x09	; 9
   4946 1C                  447 	.db #0x1c	; 28
   4947 C3                  448 	.db #0xc3	; 195
   4948 0F                  449 	.db #0x0f	; 15
   4949 38                  450 	.db #0x38	; 56	'8'
   494A 1C                  451 	.db #0x1c	; 28
   494B C3                  452 	.db #0xc3	; 195
   494C 0F                  453 	.db #0x0f	; 15
   494D 3C                  454 	.db #0x3c	; 60
   494E 1E                  455 	.db #0x1e	; 30
   494F C3                  456 	.db #0xc3	; 195
   4950 0F                  457 	.db #0x0f	; 15
   4951 0F                  458 	.db #0x0f	; 15
   4952 0F                  459 	.db #0x0f	; 15
   4953 0F                  460 	.db #0x0f	; 15
   4954                     461 _water:
   4954 5F                  462 	.db #0x5f	; 95
   4955 5F                  463 	.db #0x5f	; 95
   4956 5F                  464 	.db #0x5f	; 95
   4957 5F                  465 	.db #0x5f	; 95
   4958 AF                  466 	.db #0xaf	; 175
   4959 AF                  467 	.db #0xaf	; 175
   495A AF                  468 	.db #0xaf	; 175
   495B AF                  469 	.db #0xaf	; 175
   495C 5F                  470 	.db #0x5f	; 95
   495D 5F                  471 	.db #0x5f	; 95
   495E 5F                  472 	.db #0x5f	; 95
   495F 5F                  473 	.db #0x5f	; 95
   4960 AF                  474 	.db #0xaf	; 175
   4961 AF                  475 	.db #0xaf	; 175
   4962 AF                  476 	.db #0xaf	; 175
   4963 AF                  477 	.db #0xaf	; 175
   4964 5F                  478 	.db #0x5f	; 95
   4965 5F                  479 	.db #0x5f	; 95
   4966 5F                  480 	.db #0x5f	; 95
   4967 5F                  481 	.db #0x5f	; 95
   4968 AF                  482 	.db #0xaf	; 175
   4969 AF                  483 	.db #0xaf	; 175
   496A AF                  484 	.db #0xaf	; 175
   496B AF                  485 	.db #0xaf	; 175
   496C 5F                  486 	.db #0x5f	; 95
   496D 5F                  487 	.db #0x5f	; 95
   496E 5F                  488 	.db #0x5f	; 95
   496F 5F                  489 	.db #0x5f	; 95
   4970 AF                  490 	.db #0xaf	; 175
   4971 AF                  491 	.db #0xaf	; 175
   4972 AF                  492 	.db #0xaf	; 175
   4973 AF                  493 	.db #0xaf	; 175
   4974 5F                  494 	.db #0x5f	; 95
   4975 5F                  495 	.db #0x5f	; 95
   4976 5F                  496 	.db #0x5f	; 95
   4977 5F                  497 	.db #0x5f	; 95
   4978 AF                  498 	.db #0xaf	; 175
   4979 AF                  499 	.db #0xaf	; 175
   497A AF                  500 	.db #0xaf	; 175
   497B AF                  501 	.db #0xaf	; 175
   497C 5F                  502 	.db #0x5f	; 95
   497D 5F                  503 	.db #0x5f	; 95
   497E 5F                  504 	.db #0x5f	; 95
   497F 5F                  505 	.db #0x5f	; 95
   4980 AF                  506 	.db #0xaf	; 175
   4981 AF                  507 	.db #0xaf	; 175
   4982 AF                  508 	.db #0xaf	; 175
   4983 AF                  509 	.db #0xaf	; 175
   4984 5F                  510 	.db #0x5f	; 95
   4985 5F                  511 	.db #0x5f	; 95
   4986 5F                  512 	.db #0x5f	; 95
   4987 5F                  513 	.db #0x5f	; 95
   4988 AF                  514 	.db #0xaf	; 175
   4989 AF                  515 	.db #0xaf	; 175
   498A AF                  516 	.db #0xaf	; 175
   498B AF                  517 	.db #0xaf	; 175
   498C 5F                  518 	.db #0x5f	; 95
   498D 5F                  519 	.db #0x5f	; 95
   498E 5F                  520 	.db #0x5f	; 95
   498F 5F                  521 	.db #0x5f	; 95
   4990 AF                  522 	.db #0xaf	; 175
   4991 AF                  523 	.db #0xaf	; 175
   4992 AF                  524 	.db #0xaf	; 175
   4993 AF                  525 	.db #0xaf	; 175
   4994                     526 _farm1:
   4994 03                  527 	.db #0x03	; 3
   4995 0F                  528 	.db #0x0f	; 15
   4996 78                  529 	.db #0x78	; 120	'x'
   4997 F0                  530 	.db #0xf0	; 240
   4998 61                  531 	.db #0x61	; 97	'a'
   4999 01                  532 	.db #0x01	; 1
   499A 5F                  533 	.db #0x5f	; 95
   499B 5F                  534 	.db #0x5f	; 95
   499C 61                  535 	.db #0x61	; 97	'a'
   499D 70                  536 	.db #0x70	; 112	'p'
   499E 78                  537 	.db #0x78	; 120	'x'
   499F F0                  538 	.db #0xf0	; 240
   49A0 69                  539 	.db #0x69	; 105	'i'
   49A1 78                  540 	.db #0x78	; 120	'x'
   49A2 2F                  541 	.db #0x2f	; 47
   49A3 AF                  542 	.db #0xaf	; 175
   49A4 0F                  543 	.db #0x0f	; 15
   49A5 0F                  544 	.db #0x0f	; 15
   49A6 78                  545 	.db #0x78	; 120	'x'
   49A7 F0                  546 	.db #0xf0	; 240
   49A8 7A                  547 	.db #0x7a	; 122	'z'
   49A9 7A                  548 	.db #0x7a	; 122	'z'
   49AA 5F                  549 	.db #0x5f	; 95
   49AB 5F                  550 	.db #0x5f	; 95
   49AC 5A                  551 	.db #0x5a	; 90	'Z'
   49AD DA                  552 	.db #0xda	; 218
   49AE 78                  553 	.db #0x78	; 120	'x'
   49AF F0                  554 	.db #0xf0	; 240
   49B0 7A                  555 	.db #0x7a	; 122	'z'
   49B1 7A                  556 	.db #0x7a	; 122	'z'
   49B2 0F                  557 	.db #0x0f	; 15
   49B3 0F                  558 	.db #0x0f	; 15
   49B4 5A                  559 	.db #0x5a	; 90	'Z'
   49B5 DA                  560 	.db #0xda	; 218
   49B6 0F                  561 	.db #0x0f	; 15
   49B7 0F                  562 	.db #0x0f	; 15
   49B8 7A                  563 	.db #0x7a	; 122	'z'
   49B9 7A                  564 	.db #0x7a	; 122	'z'
   49BA 78                  565 	.db #0x78	; 120	'x'
   49BB F0                  566 	.db #0xf0	; 240
   49BC 5A                  567 	.db #0x5a	; 90	'Z'
   49BD DA                  568 	.db #0xda	; 218
   49BE 5F                  569 	.db #0x5f	; 95
   49BF 5F                  570 	.db #0x5f	; 95
   49C0 7A                  571 	.db #0x7a	; 122	'z'
   49C1 7A                  572 	.db #0x7a	; 122	'z'
   49C2 78                  573 	.db #0x78	; 120	'x'
   49C3 F0                  574 	.db #0xf0	; 240
   49C4 5A                  575 	.db #0x5a	; 90	'Z'
   49C5 DA                  576 	.db #0xda	; 218
   49C6 2F                  577 	.db #0x2f	; 47
   49C7 AF                  578 	.db #0xaf	; 175
   49C8 7A                  579 	.db #0x7a	; 122	'z'
   49C9 7A                  580 	.db #0x7a	; 122	'z'
   49CA 78                  581 	.db #0x78	; 120	'x'
   49CB F0                  582 	.db #0xf0	; 240
   49CC 5A                  583 	.db #0x5a	; 90	'Z'
   49CD DA                  584 	.db #0xda	; 218
   49CE 5F                  585 	.db #0x5f	; 95
   49CF 5F                  586 	.db #0x5f	; 95
   49D0 7A                  587 	.db #0x7a	; 122	'z'
   49D1 7A                  588 	.db #0x7a	; 122	'z'
   49D2 78                  589 	.db #0x78	; 120	'x'
   49D3 F0                  590 	.db #0xf0	; 240
   49D4                     591 _farm2:
   49D4 0F                  592 	.db #0x0f	; 15
   49D5 0F                  593 	.db #0x0f	; 15
   49D6 0F                  594 	.db #0x0f	; 15
   49D7 0F                  595 	.db #0x0f	; 15
   49D8 7F                  596 	.db #0x7f	; 127
   49D9 FF                  597 	.db #0xff	; 255
   49DA FF                  598 	.db #0xff	; 255
   49DB EF                  599 	.db #0xef	; 239
   49DC 2D                  600 	.db #0x2d	; 45
   49DD A5                  601 	.db #0xa5	; 165
   49DE A5                  602 	.db #0xa5	; 165
   49DF A5                  603 	.db #0xa5	; 165
   49E0 7F                  604 	.db #0x7f	; 127
   49E1 FF                  605 	.db #0xff	; 255
   49E2 FF                  606 	.db #0xff	; 255
   49E3 EF                  607 	.db #0xef	; 239
   49E4 5A                  608 	.db #0x5a	; 90	'Z'
   49E5 5A                  609 	.db #0x5a	; 90	'Z'
   49E6 5A                  610 	.db #0x5a	; 90	'Z'
   49E7 4B                  611 	.db #0x4b	; 75	'K'
   49E8 7F                  612 	.db #0x7f	; 127
   49E9 FF                  613 	.db #0xff	; 255
   49EA FF                  614 	.db #0xff	; 255
   49EB EF                  615 	.db #0xef	; 239
   49EC 2D                  616 	.db #0x2d	; 45
   49ED A5                  617 	.db #0xa5	; 165
   49EE A5                  618 	.db #0xa5	; 165
   49EF A5                  619 	.db #0xa5	; 165
   49F0 7F                  620 	.db #0x7f	; 127
   49F1 FF                  621 	.db #0xff	; 255
   49F2 FF                  622 	.db #0xff	; 255
   49F3 EF                  623 	.db #0xef	; 239
   49F4 5A                  624 	.db #0x5a	; 90	'Z'
   49F5 5A                  625 	.db #0x5a	; 90	'Z'
   49F6 5A                  626 	.db #0x5a	; 90	'Z'
   49F7 4B                  627 	.db #0x4b	; 75	'K'
   49F8 7F                  628 	.db #0x7f	; 127
   49F9 FF                  629 	.db #0xff	; 255
   49FA FF                  630 	.db #0xff	; 255
   49FB EF                  631 	.db #0xef	; 239
   49FC 0F                  632 	.db #0x0f	; 15
   49FD 0F                  633 	.db #0x0f	; 15
   49FE 0F                  634 	.db #0x0f	; 15
   49FF 0F                  635 	.db #0x0f	; 15
   4A00 0E                  636 	.db #0x0e	; 14
   4A01 07                  637 	.db #0x07	; 7
   4A02 AF                  638 	.db #0xaf	; 175
   4A03 AF                  639 	.db #0xaf	; 175
   4A04 02                  640 	.db #0x02	; 2
   4A05 C3                  641 	.db #0xc3	; 195
   4A06 AF                  642 	.db #0xaf	; 175
   4A07 AF                  643 	.db #0xaf	; 175
   4A08 60                  644 	.db #0x60	; 96
   4A09 C3                  645 	.db #0xc3	; 195
   4A0A AF                  646 	.db #0xaf	; 175
   4A0B AF                  647 	.db #0xaf	; 175
   4A0C 69                  648 	.db #0x69	; 105	'i'
   4A0D C3                  649 	.db #0xc3	; 195
   4A0E AF                  650 	.db #0xaf	; 175
   4A0F AF                  651 	.db #0xaf	; 175
   4A10 0F                  652 	.db #0x0f	; 15
   4A11 0F                  653 	.db #0x0f	; 15
   4A12 0F                  654 	.db #0x0f	; 15
   4A13 0F                  655 	.db #0x0f	; 15
   4A14                     656 _livestock:
   4A14 03                  657 	.db #0x03	; 3
   4A15 0F                  658 	.db #0x0f	; 15
   4A16 0F                  659 	.db #0x0f	; 15
   4A17 0F                  660 	.db #0x0f	; 15
   4A18 61                  661 	.db #0x61	; 97	'a'
   4A19 F5                  662 	.db #0xf5	; 245
   4A1A F5                  663 	.db #0xf5	; 245
   4A1B E5                  664 	.db #0xe5	; 229
   4A1C 61                  665 	.db #0x61	; 97	'a'
   4A1D 8F                  666 	.db #0x8f	; 143
   4A1E 0F                  667 	.db #0x0f	; 15
   4A1F 2F                  668 	.db #0x2f	; 47
   4A20 69                  669 	.db #0x69	; 105	'i'
   4A21 87                  670 	.db #0x87	; 135
   4A22 0F                  671 	.db #0x0f	; 15
   4A23 AD                  672 	.db #0xad	; 173
   4A24 0F                  673 	.db #0x0f	; 15
   4A25 9F                  674 	.db #0x9f	; 159
   4A26 0F                  675 	.db #0x0f	; 15
   4A27 2F                  676 	.db #0x2f	; 47
   4A28 7D                  677 	.db #0x7d	; 125
   4A29 87                  678 	.db #0x87	; 135
   4A2A 0F                  679 	.db #0x0f	; 15
   4A2B 2D                  680 	.db #0x2d	; 45
   4A2C 4B                  681 	.db #0x4b	; 75	'K'
   4A2D 0F                  682 	.db #0x0f	; 15
   4A2E 2F                  683 	.db #0x2f	; 47
   4A2F 2F                  684 	.db #0x2f	; 47
   4A30 4F                  685 	.db #0x4f	; 79	'O'
   4A31 0F                  686 	.db #0x0f	; 15
   4A32 0F                  687 	.db #0x0f	; 15
   4A33 2D                  688 	.db #0x2d	; 45
   4A34 5B                  689 	.db #0x5b	; 91
   4A35 1F                  690 	.db #0x1f	; 31
   4A36 0F                  691 	.db #0x0f	; 15
   4A37 2F                  692 	.db #0x2f	; 47
   4A38 4F                  693 	.db #0x4f	; 79	'O'
   4A39 0F                  694 	.db #0x0f	; 15
   4A3A 1F                  695 	.db #0x1f	; 31
   4A3B 2D                  696 	.db #0x2d	; 45
   4A3C 4B                  697 	.db #0x4b	; 75	'K'
   4A3D 0F                  698 	.db #0x0f	; 15
   4A3E 0F                  699 	.db #0x0f	; 15
   4A3F 2F                  700 	.db #0x2f	; 47
   4A40 4F                  701 	.db #0x4f	; 79	'O'
   4A41 4F                  702 	.db #0x4f	; 79	'O'
   4A42 0F                  703 	.db #0x0f	; 15
   4A43 2D                  704 	.db #0x2d	; 45
   4A44 4B                  705 	.db #0x4b	; 75	'K'
   4A45 0F                  706 	.db #0x0f	; 15
   4A46 2F                  707 	.db #0x2f	; 47
   4A47 2F                  708 	.db #0x2f	; 47
   4A48 4F                  709 	.db #0x4f	; 79	'O'
   4A49 0F                  710 	.db #0x0f	; 15
   4A4A 0F                  711 	.db #0x0f	; 15
   4A4B 2D                  712 	.db #0x2d	; 45
   4A4C 7A                  713 	.db #0x7a	; 122	'z'
   4A4D FA                  714 	.db #0xfa	; 250
   4A4E FA                  715 	.db #0xfa	; 250
   4A4F EB                  716 	.db #0xeb	; 235
   4A50 0F                  717 	.db #0x0f	; 15
   4A51 0F                  718 	.db #0x0f	; 15
   4A52 0F                  719 	.db #0x0f	; 15
   4A53 0F                  720 	.db #0x0f	; 15
   4A54                     721 _station_small_ns:
   4A54 0F                  722 	.db #0x0f	; 15
   4A55 1E                  723 	.db #0x1e	; 30
   4A56 43                  724 	.db #0x43	; 67	'C'
   4A57 0F                  725 	.db #0x0f	; 15
   4A58 0F                  726 	.db #0x0f	; 15
   4A59 1E                  727 	.db #0x1e	; 30
   4A5A 43                  728 	.db #0x43	; 67	'C'
   4A5B 4F                  729 	.db #0x4f	; 79	'O'
   4A5C 0F                  730 	.db #0x0f	; 15
   4A5D 5E                  731 	.db #0x5e	; 94
   4A5E 43                  732 	.db #0x43	; 67	'C'
   4A5F 0F                  733 	.db #0x0f	; 15
   4A60 0F                  734 	.db #0x0f	; 15
   4A61 1E                  735 	.db #0x1e	; 30
   4A62 43                  736 	.db #0x43	; 67	'C'
   4A63 0F                  737 	.db #0x0f	; 15
   4A64 4F                  738 	.db #0x4f	; 79	'O'
   4A65 1E                  739 	.db #0x1e	; 30
   4A66 43                  740 	.db #0x43	; 67	'C'
   4A67 8F                  741 	.db #0x8f	; 143
   4A68 0F                  742 	.db #0x0f	; 15
   4A69 1E                  743 	.db #0x1e	; 30
   4A6A 43                  744 	.db #0x43	; 67	'C'
   4A6B 0F                  745 	.db #0x0f	; 15
   4A6C 0F                  746 	.db #0x0f	; 15
   4A6D 1E                  747 	.db #0x1e	; 30
   4A6E 43                  748 	.db #0x43	; 67	'C'
   4A6F 0F                  749 	.db #0x0f	; 15
   4A70 0E                  750 	.db #0x0e	; 14
   4A71 16                  751 	.db #0x16	; 22
   4A72 43                  752 	.db #0x43	; 67	'C'
   4A73 0F                  753 	.db #0x0f	; 15
   4A74 0E                  754 	.db #0x0e	; 14
   4A75 D2                  755 	.db #0xd2	; 210
   4A76 43                  756 	.db #0x43	; 67	'C'
   4A77 0F                  757 	.db #0x0f	; 15
   4A78 4F                  758 	.db #0x4f	; 79	'O'
   4A79 D2                  759 	.db #0xd2	; 210
   4A7A 43                  760 	.db #0x43	; 67	'C'
   4A7B 0F                  761 	.db #0x0f	; 15
   4A7C 0F                  762 	.db #0x0f	; 15
   4A7D 1E                  763 	.db #0x1e	; 30
   4A7E 53                  764 	.db #0x53	; 83	'S'
   4A7F 0F                  765 	.db #0x0f	; 15
   4A80 0F                  766 	.db #0x0f	; 15
   4A81 1E                  767 	.db #0x1e	; 30
   4A82 43                  768 	.db #0x43	; 67	'C'
   4A83 0F                  769 	.db #0x0f	; 15
   4A84 0F                  770 	.db #0x0f	; 15
   4A85 5E                  771 	.db #0x5e	; 94
   4A86 43                  772 	.db #0x43	; 67	'C'
   4A87 0F                  773 	.db #0x0f	; 15
   4A88 0F                  774 	.db #0x0f	; 15
   4A89 1E                  775 	.db #0x1e	; 30
   4A8A 43                  776 	.db #0x43	; 67	'C'
   4A8B 1F                  777 	.db #0x1f	; 31
   4A8C 4F                  778 	.db #0x4f	; 79	'O'
   4A8D 1E                  779 	.db #0x1e	; 30
   4A8E 43                  780 	.db #0x43	; 67	'C'
   4A8F 0F                  781 	.db #0x0f	; 15
   4A90 0F                  782 	.db #0x0f	; 15
   4A91 1E                  783 	.db #0x1e	; 30
   4A92 43                  784 	.db #0x43	; 67	'C'
   4A93 0F                  785 	.db #0x0f	; 15
   4A94                     786 _station_small_ew:
   4A94 0F                  787 	.db #0x0f	; 15
   4A95 2F                  788 	.db #0x2f	; 47
   4A96 0F                  789 	.db #0x0f	; 15
   4A97 0F                  790 	.db #0x0f	; 15
   4A98 0F                  791 	.db #0x0f	; 15
   4A99 0F                  792 	.db #0x0f	; 15
   4A9A 0F                  793 	.db #0x0f	; 15
   4A9B 4F                  794 	.db #0x4f	; 79	'O'
   4A9C 0F                  795 	.db #0x0f	; 15
   4A9D 0F                  796 	.db #0x0f	; 15
   4A9E 0F                  797 	.db #0x0f	; 15
   4A9F 0F                  798 	.db #0x0f	; 15
   4AA0 2F                  799 	.db #0x2f	; 47
   4AA1 0C                  800 	.db #0x0c	; 12
   4AA2 0F                  801 	.db #0x0f	; 15
   4AA3 0F                  802 	.db #0x0f	; 15
   4AA4 0F                  803 	.db #0x0f	; 15
   4AA5 1C                  804 	.db #0x1c	; 28
   4AA6 87                  805 	.db #0x87	; 135
   4AA7 8F                  806 	.db #0x8f	; 143
   4AA8 0F                  807 	.db #0x0f	; 15
   4AA9 1E                  808 	.db #0x1e	; 30
   4AAA 87                  809 	.db #0x87	; 135
   4AAB 0F                  810 	.db #0x0f	; 15
   4AAC 0F                  811 	.db #0x0f	; 15
   4AAD 0F                  812 	.db #0x0f	; 15
   4AAE 0F                  813 	.db #0x0f	; 15
   4AAF 0F                  814 	.db #0x0f	; 15
   4AB0 F0                  815 	.db #0xf0	; 240
   4AB1 F0                  816 	.db #0xf0	; 240
   4AB2 F0                  817 	.db #0xf0	; 240
   4AB3 F0                  818 	.db #0xf0	; 240
   4AB4 00                  819 	.db #0x00	; 0
   4AB5 00                  820 	.db #0x00	; 0
   4AB6 00                  821 	.db #0x00	; 0
   4AB7 00                  822 	.db #0x00	; 0
   4AB8 F0                  823 	.db #0xf0	; 240
   4AB9 F0                  824 	.db #0xf0	; 240
   4ABA F0                  825 	.db #0xf0	; 240
   4ABB F0                  826 	.db #0xf0	; 240
   4ABC 0F                  827 	.db #0x0f	; 15
   4ABD 0F                  828 	.db #0x0f	; 15
   4ABE 0F                  829 	.db #0x0f	; 15
   4ABF 0F                  830 	.db #0x0f	; 15
   4AC0 0F                  831 	.db #0x0f	; 15
   4AC1 8F                  832 	.db #0x8f	; 143
   4AC2 0F                  833 	.db #0x0f	; 15
   4AC3 8F                  834 	.db #0x8f	; 143
   4AC4 0F                  835 	.db #0x0f	; 15
   4AC5 0F                  836 	.db #0x0f	; 15
   4AC6 0F                  837 	.db #0x0f	; 15
   4AC7 0F                  838 	.db #0x0f	; 15
   4AC8 0F                  839 	.db #0x0f	; 15
   4AC9 0F                  840 	.db #0x0f	; 15
   4ACA 8F                  841 	.db #0x8f	; 143
   4ACB 0F                  842 	.db #0x0f	; 15
   4ACC 4F                  843 	.db #0x4f	; 79	'O'
   4ACD 0F                  844 	.db #0x0f	; 15
   4ACE 1F                  845 	.db #0x1f	; 31
   4ACF 0F                  846 	.db #0x0f	; 15
   4AD0 0F                  847 	.db #0x0f	; 15
   4AD1 0F                  848 	.db #0x0f	; 15
   4AD2 0F                  849 	.db #0x0f	; 15
   4AD3 1F                  850 	.db #0x1f	; 31
   4AD4                     851 _station_medium_ns:
   4AD4 0F                  852 	.db #0x0f	; 15
   4AD5 1E                  853 	.db #0x1e	; 30
   4AD6 70                  854 	.db #0x70	; 112	'p'
   4AD7 0F                  855 	.db #0x0f	; 15
   4AD8 2F                  856 	.db #0x2f	; 47
   4AD9 1E                  857 	.db #0x1e	; 30
   4ADA 50                  858 	.db #0x50	; 80	'P'
   4ADB 0F                  859 	.db #0x0f	; 15
   4ADC 0F                  860 	.db #0x0f	; 15
   4ADD 1E                  861 	.db #0x1e	; 30
   4ADE 50                  862 	.db #0x50	; 80	'P'
   4ADF 2F                  863 	.db #0x2f	; 47
   4AE0 0F                  864 	.db #0x0f	; 15
   4AE1 1E                  865 	.db #0x1e	; 30
   4AE2 50                  866 	.db #0x50	; 80	'P'
   4AE3 0F                  867 	.db #0x0f	; 15
   4AE4 0F                  868 	.db #0x0f	; 15
   4AE5 1E                  869 	.db #0x1e	; 30
   4AE6 50                  870 	.db #0x50	; 80	'P'
   4AE7 0F                  871 	.db #0x0f	; 15
   4AE8 0E                  872 	.db #0x0e	; 14
   4AE9 16                  873 	.db #0x16	; 22
   4AEA 50                  874 	.db #0x50	; 80	'P'
   4AEB 0F                  875 	.db #0x0f	; 15
   4AEC 0E                  876 	.db #0x0e	; 14
   4AED D2                  877 	.db #0xd2	; 210
   4AEE 50                  878 	.db #0x50	; 80	'P'
   4AEF 2F                  879 	.db #0x2f	; 47
   4AF0 0E                  880 	.db #0x0e	; 14
   4AF1 D2                  881 	.db #0xd2	; 210
   4AF2 50                  882 	.db #0x50	; 80	'P'
   4AF3 0F                  883 	.db #0x0f	; 15
   4AF4 0E                  884 	.db #0x0e	; 14
   4AF5 D2                  885 	.db #0xd2	; 210
   4AF6 50                  886 	.db #0x50	; 80	'P'
   4AF7 0F                  887 	.db #0x0f	; 15
   4AF8 0E                  888 	.db #0x0e	; 14
   4AF9 D2                  889 	.db #0xd2	; 210
   4AFA 50                  890 	.db #0x50	; 80	'P'
   4AFB 0F                  891 	.db #0x0f	; 15
   4AFC 0F                  892 	.db #0x0f	; 15
   4AFD D2                  893 	.db #0xd2	; 210
   4AFE 50                  894 	.db #0x50	; 80	'P'
   4AFF 1F                  895 	.db #0x1f	; 31
   4B00 4F                  896 	.db #0x4f	; 79	'O'
   4B01 1E                  897 	.db #0x1e	; 30
   4B02 50                  898 	.db #0x50	; 80	'P'
   4B03 0F                  899 	.db #0x0f	; 15
   4B04 0F                  900 	.db #0x0f	; 15
   4B05 1E                  901 	.db #0x1e	; 30
   4B06 50                  902 	.db #0x50	; 80	'P'
   4B07 0F                  903 	.db #0x0f	; 15
   4B08 0F                  904 	.db #0x0f	; 15
   4B09 1E                  905 	.db #0x1e	; 30
   4B0A 50                  906 	.db #0x50	; 80	'P'
   4B0B 0F                  907 	.db #0x0f	; 15
   4B0C 0F                  908 	.db #0x0f	; 15
   4B0D 9E                  909 	.db #0x9e	; 158
   4B0E 21                  910 	.db #0x21	; 33
   4B0F 0F                  911 	.db #0x0f	; 15
   4B10 0F                  912 	.db #0x0f	; 15
   4B11 1E                  913 	.db #0x1e	; 30
   4B12 43                  914 	.db #0x43	; 67	'C'
   4B13 4F                  915 	.db #0x4f	; 79	'O'
   4B14                     916 _station_medium_ew:
   4B14 0F                  917 	.db #0x0f	; 15
   4B15 0F                  918 	.db #0x0f	; 15
   4B16 0F                  919 	.db #0x0f	; 15
   4B17 0F                  920 	.db #0x0f	; 15
   4B18 0F                  921 	.db #0x0f	; 15
   4B19 2F                  922 	.db #0x2f	; 47
   4B1A 0F                  923 	.db #0x0f	; 15
   4B1B 03                  924 	.db #0x03	; 3
   4B1C 0F                  925 	.db #0x0f	; 15
   4B1D 0F                  926 	.db #0x0f	; 15
   4B1E 0E                  927 	.db #0x0e	; 14
   4B1F 67                  928 	.db #0x67	; 103	'g'
   4B20 4F                  929 	.db #0x4f	; 79	'O'
   4B21 00                  930 	.db #0x00	; 0
   4B22 06                  931 	.db #0x06	; 6
   4B23 EF                  932 	.db #0xef	; 239
   4B24 0F                  933 	.db #0x0f	; 15
   4B25 70                  934 	.db #0x70	; 112	'p'
   4B26 C3                  935 	.db #0xc3	; 195
   4B27 CF                  936 	.db #0xcf	; 207
   4B28 0F                  937 	.db #0x0f	; 15
   4B29 78                  938 	.db #0x78	; 120	'x'
   4B2A C3                  939 	.db #0xc3	; 195
   4B2B 0F                  940 	.db #0x0f	; 15
   4B2C 0F                  941 	.db #0x0f	; 15
   4B2D 0F                  942 	.db #0x0f	; 15
   4B2E 0F                  943 	.db #0x0f	; 15
   4B2F 0F                  944 	.db #0x0f	; 15
   4B30 F0                  945 	.db #0xf0	; 240
   4B31 F0                  946 	.db #0xf0	; 240
   4B32 F0                  947 	.db #0xf0	; 240
   4B33 F0                  948 	.db #0xf0	; 240
   4B34 00                  949 	.db #0x00	; 0
   4B35 00                  950 	.db #0x00	; 0
   4B36 00                  951 	.db #0x00	; 0
   4B37 00                  952 	.db #0x00	; 0
   4B38 B0                  953 	.db #0xb0	; 176
   4B39 F0                  954 	.db #0xf0	; 240
   4B3A F0                  955 	.db #0xf0	; 240
   4B3B F0                  956 	.db #0xf0	; 240
   4B3C 48                  957 	.db #0x48	; 72	'H'
   4B3D 00                  958 	.db #0x00	; 0
   4B3E 00                  959 	.db #0x00	; 0
   4B3F 10                  960 	.db #0x10	; 16
   4B40 3C                  961 	.db #0x3c	; 60
   4B41 F0                  962 	.db #0xf0	; 240
   4B42 F0                  963 	.db #0xf0	; 240
   4B43 F0                  964 	.db #0xf0	; 240
   4B44 0F                  965 	.db #0x0f	; 15
   4B45 4F                  966 	.db #0x4f	; 79	'O'
   4B46 0F                  967 	.db #0x0f	; 15
   4B47 0F                  968 	.db #0x0f	; 15
   4B48 0F                  969 	.db #0x0f	; 15
   4B49 0F                  970 	.db #0x0f	; 15
   4B4A 0F                  971 	.db #0x0f	; 15
   4B4B 0F                  972 	.db #0x0f	; 15
   4B4C 2F                  973 	.db #0x2f	; 47
   4B4D 0F                  974 	.db #0x0f	; 15
   4B4E 0F                  975 	.db #0x0f	; 15
   4B4F 4F                  976 	.db #0x4f	; 79	'O'
   4B50 0F                  977 	.db #0x0f	; 15
   4B51 0F                  978 	.db #0x0f	; 15
   4B52 0F                  979 	.db #0x0f	; 15
   4B53 0F                  980 	.db #0x0f	; 15
   4B54                     981 _station_large_ns:
   4B54 0F                  982 	.db #0x0f	; 15
   4B55 1E                  983 	.db #0x1e	; 30
   4B56 43                  984 	.db #0x43	; 67	'C'
   4B57 4F                  985 	.db #0x4f	; 79	'O'
   4B58 0E                  986 	.db #0x0e	; 14
   4B59 16                  987 	.db #0x16	; 22
   4B5A 21                  988 	.db #0x21	; 33
   4B5B 0F                  989 	.db #0x0f	; 15
   4B5C 0E                  990 	.db #0x0e	; 14
   4B5D D2                  991 	.db #0xd2	; 210
   4B5E 50                  992 	.db #0x50	; 80	'P'
   4B5F 0F                  993 	.db #0x0f	; 15
   4B60 0E                  994 	.db #0x0e	; 14
   4B61 D2                  995 	.db #0xd2	; 210
   4B62 40                  996 	.db #0x40	; 64
   4B63 87                  997 	.db #0x87	; 135
   4B64 0E                  998 	.db #0x0e	; 14
   4B65 D2                  999 	.db #0xd2	; 210
   4B66 50                 1000 	.db #0x50	; 80	'P'
   4B67 43                 1001 	.db #0x43	; 67	'C'
   4B68 0C                 1002 	.db #0x0c	; 12
   4B69 D2                 1003 	.db #0xd2	; 210
   4B6A 50                 1004 	.db #0x50	; 80	'P'
   4B6B 21                 1005 	.db #0x21	; 33
   4B6C 1C                 1006 	.db #0x1c	; 28
   4B6D D2                 1007 	.db #0xd2	; 210
   4B6E 50                 1008 	.db #0x50	; 80	'P'
   4B6F 50                 1009 	.db #0x50	; 80	'P'
   4B70 1C                 1010 	.db #0x1c	; 28
   4B71 D2                 1011 	.db #0xd2	; 210
   4B72 50                 1012 	.db #0x50	; 80	'P'
   4B73 50                 1013 	.db #0x50	; 80	'P'
   4B74 1C                 1014 	.db #0x1c	; 28
   4B75 D2                 1015 	.db #0xd2	; 210
   4B76 50                 1016 	.db #0x50	; 80	'P'
   4B77 50                 1017 	.db #0x50	; 80	'P'
   4B78 1C                 1018 	.db #0x1c	; 28
   4B79 D2                 1019 	.db #0xd2	; 210
   4B7A 50                 1020 	.db #0x50	; 80	'P'
   4B7B 50                 1021 	.db #0x50	; 80	'P'
   4B7C 1C                 1022 	.db #0x1c	; 28
   4B7D D2                 1023 	.db #0xd2	; 210
   4B7E 50                 1024 	.db #0x50	; 80	'P'
   4B7F 50                 1025 	.db #0x50	; 80	'P'
   4B80 0E                 1026 	.db #0x0e	; 14
   4B81 D2                 1027 	.db #0xd2	; 210
   4B82 50                 1028 	.db #0x50	; 80	'P'
   4B83 50                 1029 	.db #0x50	; 80	'P'
   4B84 0E                 1030 	.db #0x0e	; 14
   4B85 D2                 1031 	.db #0xd2	; 210
   4B86 50                 1032 	.db #0x50	; 80	'P'
   4B87 50                 1033 	.db #0x50	; 80	'P'
   4B88 4E                 1034 	.db #0x4e	; 78	'N'
   4B89 D2                 1035 	.db #0xd2	; 210
   4B8A 50                 1036 	.db #0x50	; 80	'P'
   4B8B 50                 1037 	.db #0x50	; 80	'P'
   4B8C 0F                 1038 	.db #0x0f	; 15
   4B8D D2                 1039 	.db #0xd2	; 210
   4B8E 50                 1040 	.db #0x50	; 80	'P'
   4B8F 50                 1041 	.db #0x50	; 80	'P'
   4B90 0F                 1042 	.db #0x0f	; 15
   4B91 1E                 1043 	.db #0x1e	; 30
   4B92 70                 1044 	.db #0x70	; 112	'p'
   4B93 F0                 1045 	.db #0xf0	; 240
   4B94                    1046 _station_large_ew:
   4B94 0F                 1047 	.db #0x0f	; 15
   4B95 0F                 1048 	.db #0x0f	; 15
   4B96 0F                 1049 	.db #0x0f	; 15
   4B97 0F                 1050 	.db #0x0f	; 15
   4B98 0F                 1051 	.db #0x0f	; 15
   4B99 0F                 1052 	.db #0x0f	; 15
   4B9A 0F                 1053 	.db #0x0f	; 15
   4B9B 0F                 1054 	.db #0x0f	; 15
   4B9C 0F                 1055 	.db #0x0f	; 15
   4B9D 08                 1056 	.db #0x08	; 8
   4B9E 01                 1057 	.db #0x01	; 1
   4B9F 0F                 1058 	.db #0x0f	; 15
   4BA0 08                 1059 	.db #0x08	; 8
   4BA1 30                 1060 	.db #0x30	; 48	'0'
   4BA2 E0                 1061 	.db #0xe0	; 224
   4BA3 01                 1062 	.db #0x01	; 1
   4BA4 38                 1063 	.db #0x38	; 56	'8'
   4BA5 F0                 1064 	.db #0xf0	; 240
   4BA6 F0                 1065 	.db #0xf0	; 240
   4BA7 E1                 1066 	.db #0xe1	; 225
   4BA8 3C                 1067 	.db #0x3c	; 60
   4BA9 F0                 1068 	.db #0xf0	; 240
   4BAA F0                 1069 	.db #0xf0	; 240
   4BAB E1                 1070 	.db #0xe1	; 225
   4BAC 0F                 1071 	.db #0x0f	; 15
   4BAD 0F                 1072 	.db #0x0f	; 15
   4BAE 0F                 1073 	.db #0x0f	; 15
   4BAF 0F                 1074 	.db #0x0f	; 15
   4BB0 F0                 1075 	.db #0xf0	; 240
   4BB1 F0                 1076 	.db #0xf0	; 240
   4BB2 F0                 1077 	.db #0xf0	; 240
   4BB3 F0                 1078 	.db #0xf0	; 240
   4BB4 00                 1079 	.db #0x00	; 0
   4BB5 00                 1080 	.db #0x00	; 0
   4BB6 00                 1081 	.db #0x00	; 0
   4BB7 00                 1082 	.db #0x00	; 0
   4BB8 F0                 1083 	.db #0xf0	; 240
   4BB9 F0                 1084 	.db #0xf0	; 240
   4BBA F0                 1085 	.db #0xf0	; 240
   4BBB D0                 1086 	.db #0xd0	; 208
   4BBC 80                 1087 	.db #0x80	; 128
   4BBD 00                 1088 	.db #0x00	; 0
   4BBE 00                 1089 	.db #0x00	; 0
   4BBF 21                 1090 	.db #0x21	; 33
   4BC0 F0                 1091 	.db #0xf0	; 240
   4BC1 F0                 1092 	.db #0xf0	; 240
   4BC2 F0                 1093 	.db #0xf0	; 240
   4BC3 43                 1094 	.db #0x43	; 67	'C'
   4BC4 80                 1095 	.db #0x80	; 128
   4BC5 00                 1096 	.db #0x00	; 0
   4BC6 00                 1097 	.db #0x00	; 0
   4BC7 87                 1098 	.db #0x87	; 135
   4BC8 F0                 1099 	.db #0xf0	; 240
   4BC9 F0                 1100 	.db #0xf0	; 240
   4BCA D0                 1101 	.db #0xd0	; 208
   4BCB 0F                 1102 	.db #0x0f	; 15
   4BCC 80                 1103 	.db #0x80	; 128
   4BCD 00                 1104 	.db #0x00	; 0
   4BCE 21                 1105 	.db #0x21	; 33
   4BCF 0F                 1106 	.db #0x0f	; 15
   4BD0 F0                 1107 	.db #0xf0	; 240
   4BD1 F0                 1108 	.db #0xf0	; 240
   4BD2 C3                 1109 	.db #0xc3	; 195
   4BD3 0F                 1110 	.db #0x0f	; 15
   4BD4                    1111 _rail_ew:
   4BD4 0F                 1112 	.db #0x0f	; 15
   4BD5 0F                 1113 	.db #0x0f	; 15
   4BD6 0F                 1114 	.db #0x0f	; 15
   4BD7 0F                 1115 	.db #0x0f	; 15
   4BD8 2F                 1116 	.db #0x2f	; 47
   4BD9 0F                 1117 	.db #0x0f	; 15
   4BDA 2F                 1118 	.db #0x2f	; 47
   4BDB 2F                 1119 	.db #0x2f	; 47
   4BDC 0F                 1120 	.db #0x0f	; 15
   4BDD 0F                 1121 	.db #0x0f	; 15
   4BDE 0F                 1122 	.db #0x0f	; 15
   4BDF 0F                 1123 	.db #0x0f	; 15
   4BE0 0F                 1124 	.db #0x0f	; 15
   4BE1 0F                 1125 	.db #0x0f	; 15
   4BE2 0F                 1126 	.db #0x0f	; 15
   4BE3 0F                 1127 	.db #0x0f	; 15
   4BE4 0F                 1128 	.db #0x0f	; 15
   4BE5 2F                 1129 	.db #0x2f	; 47
   4BE6 0F                 1130 	.db #0x0f	; 15
   4BE7 0F                 1131 	.db #0x0f	; 15
   4BE8 4F                 1132 	.db #0x4f	; 79	'O'
   4BE9 0F                 1133 	.db #0x0f	; 15
   4BEA 0F                 1134 	.db #0x0f	; 15
   4BEB 4F                 1135 	.db #0x4f	; 79	'O'
   4BEC 0F                 1136 	.db #0x0f	; 15
   4BED 0F                 1137 	.db #0x0f	; 15
   4BEE 0F                 1138 	.db #0x0f	; 15
   4BEF 0F                 1139 	.db #0x0f	; 15
   4BF0 F0                 1140 	.db #0xf0	; 240
   4BF1 F0                 1141 	.db #0xf0	; 240
   4BF2 F0                 1142 	.db #0xf0	; 240
   4BF3 F0                 1143 	.db #0xf0	; 240
   4BF4 00                 1144 	.db #0x00	; 0
   4BF5 00                 1145 	.db #0x00	; 0
   4BF6 00                 1146 	.db #0x00	; 0
   4BF7 00                 1147 	.db #0x00	; 0
   4BF8 F0                 1148 	.db #0xf0	; 240
   4BF9 F0                 1149 	.db #0xf0	; 240
   4BFA F0                 1150 	.db #0xf0	; 240
   4BFB F0                 1151 	.db #0xf0	; 240
   4BFC 0F                 1152 	.db #0x0f	; 15
   4BFD 0F                 1153 	.db #0x0f	; 15
   4BFE 0F                 1154 	.db #0x0f	; 15
   4BFF 0F                 1155 	.db #0x0f	; 15
   4C00 0F                 1156 	.db #0x0f	; 15
   4C01 0F                 1157 	.db #0x0f	; 15
   4C02 8F                 1158 	.db #0x8f	; 143
   4C03 0F                 1159 	.db #0x0f	; 15
   4C04 0F                 1160 	.db #0x0f	; 15
   4C05 8F                 1161 	.db #0x8f	; 143
   4C06 0F                 1162 	.db #0x0f	; 15
   4C07 4F                 1163 	.db #0x4f	; 79	'O'
   4C08 0F                 1164 	.db #0x0f	; 15
   4C09 0F                 1165 	.db #0x0f	; 15
   4C0A 0F                 1166 	.db #0x0f	; 15
   4C0B 0F                 1167 	.db #0x0f	; 15
   4C0C 0F                 1168 	.db #0x0f	; 15
   4C0D 0F                 1169 	.db #0x0f	; 15
   4C0E 0F                 1170 	.db #0x0f	; 15
   4C0F 0F                 1171 	.db #0x0f	; 15
   4C10 2F                 1172 	.db #0x2f	; 47
   4C11 0F                 1173 	.db #0x0f	; 15
   4C12 2F                 1174 	.db #0x2f	; 47
   4C13 0F                 1175 	.db #0x0f	; 15
   4C14                    1176 _rail_ns:
   4C14 0F                 1177 	.db #0x0f	; 15
   4C15 1E                 1178 	.db #0x1e	; 30
   4C16 43                 1179 	.db #0x43	; 67	'C'
   4C17 0F                 1180 	.db #0x0f	; 15
   4C18 0F                 1181 	.db #0x0f	; 15
   4C19 9E                 1182 	.db #0x9e	; 158
   4C1A 43                 1183 	.db #0x43	; 67	'C'
   4C1B 8F                 1184 	.db #0x8f	; 143
   4C1C 0F                 1185 	.db #0x0f	; 15
   4C1D 1E                 1186 	.db #0x1e	; 30
   4C1E 43                 1187 	.db #0x43	; 67	'C'
   4C1F 0F                 1188 	.db #0x0f	; 15
   4C20 0F                 1189 	.db #0x0f	; 15
   4C21 1E                 1190 	.db #0x1e	; 30
   4C22 43                 1191 	.db #0x43	; 67	'C'
   4C23 0F                 1192 	.db #0x0f	; 15
   4C24 0F                 1193 	.db #0x0f	; 15
   4C25 1E                 1194 	.db #0x1e	; 30
   4C26 43                 1195 	.db #0x43	; 67	'C'
   4C27 0F                 1196 	.db #0x0f	; 15
   4C28 0F                 1197 	.db #0x0f	; 15
   4C29 1E                 1198 	.db #0x1e	; 30
   4C2A 43                 1199 	.db #0x43	; 67	'C'
   4C2B 2F                 1200 	.db #0x2f	; 47
   4C2C 0F                 1201 	.db #0x0f	; 15
   4C2D 1E                 1202 	.db #0x1e	; 30
   4C2E 43                 1203 	.db #0x43	; 67	'C'
   4C2F 0F                 1204 	.db #0x0f	; 15
   4C30 2F                 1205 	.db #0x2f	; 47
   4C31 1E                 1206 	.db #0x1e	; 30
   4C32 43                 1207 	.db #0x43	; 67	'C'
   4C33 0F                 1208 	.db #0x0f	; 15
   4C34 0F                 1209 	.db #0x0f	; 15
   4C35 1E                 1210 	.db #0x1e	; 30
   4C36 43                 1211 	.db #0x43	; 67	'C'
   4C37 0F                 1212 	.db #0x0f	; 15
   4C38 0F                 1213 	.db #0x0f	; 15
   4C39 1E                 1214 	.db #0x1e	; 30
   4C3A 43                 1215 	.db #0x43	; 67	'C'
   4C3B 0F                 1216 	.db #0x0f	; 15
   4C3C 0F                 1217 	.db #0x0f	; 15
   4C3D 1E                 1218 	.db #0x1e	; 30
   4C3E 43                 1219 	.db #0x43	; 67	'C'
   4C3F 0F                 1220 	.db #0x0f	; 15
   4C40 0F                 1221 	.db #0x0f	; 15
   4C41 1E                 1222 	.db #0x1e	; 30
   4C42 53                 1223 	.db #0x53	; 83	'S'
   4C43 0F                 1224 	.db #0x0f	; 15
   4C44 0F                 1225 	.db #0x0f	; 15
   4C45 9E                 1226 	.db #0x9e	; 158
   4C46 43                 1227 	.db #0x43	; 67	'C'
   4C47 0F                 1228 	.db #0x0f	; 15
   4C48 4F                 1229 	.db #0x4f	; 79	'O'
   4C49 1E                 1230 	.db #0x1e	; 30
   4C4A 43                 1231 	.db #0x43	; 67	'C'
   4C4B 0F                 1232 	.db #0x0f	; 15
   4C4C 0F                 1233 	.db #0x0f	; 15
   4C4D 1E                 1234 	.db #0x1e	; 30
   4C4E 43                 1235 	.db #0x43	; 67	'C'
   4C4F 4F                 1236 	.db #0x4f	; 79	'O'
   4C50 0F                 1237 	.db #0x0f	; 15
   4C51 1E                 1238 	.db #0x1e	; 30
   4C52 43                 1239 	.db #0x43	; 67	'C'
   4C53 0F                 1240 	.db #0x0f	; 15
   4C54                    1241 _rail_en:
   4C54 0F                 1242 	.db #0x0f	; 15
   4C55 1E                 1243 	.db #0x1e	; 30
   4C56 43                 1244 	.db #0x43	; 67	'C'
   4C57 0F                 1245 	.db #0x0f	; 15
   4C58 2F                 1246 	.db #0x2f	; 47
   4C59 1E                 1247 	.db #0x1e	; 30
   4C5A 43                 1248 	.db #0x43	; 67	'C'
   4C5B 8F                 1249 	.db #0x8f	; 143
   4C5C 0F                 1250 	.db #0x0f	; 15
   4C5D 0F                 1251 	.db #0x0f	; 15
   4C5E A1                 1252 	.db #0xa1	; 161
   4C5F 0F                 1253 	.db #0x0f	; 15
   4C60 0F                 1254 	.db #0x0f	; 15
   4C61 0F                 1255 	.db #0x0f	; 15
   4C62 58                 1256 	.db #0x58	; 88	'X'
   4C63 0F                 1257 	.db #0x0f	; 15
   4C64 0F                 1258 	.db #0x0f	; 15
   4C65 4F                 1259 	.db #0x4f	; 79	'O'
   4C66 2C                 1260 	.db #0x2c	; 44
   4C67 87                 1261 	.db #0x87	; 135
   4C68 0F                 1262 	.db #0x0f	; 15
   4C69 0F                 1263 	.db #0x0f	; 15
   4C6A 1E                 1264 	.db #0x1e	; 30
   4C6B 43                 1265 	.db #0x43	; 67	'C'
   4C6C 0F                 1266 	.db #0x0f	; 15
   4C6D 0F                 1267 	.db #0x0f	; 15
   4C6E 8F                 1268 	.db #0x8f	; 143
   4C6F A1                 1269 	.db #0xa1	; 161
   4C70 0F                 1270 	.db #0x0f	; 15
   4C71 0F                 1271 	.db #0x0f	; 15
   4C72 0F                 1272 	.db #0x0f	; 15
   4C73 58                 1273 	.db #0x58	; 88	'X'
   4C74 2F                 1274 	.db #0x2f	; 47
   4C75 0F                 1275 	.db #0x0f	; 15
   4C76 0F                 1276 	.db #0x0f	; 15
   4C77 2C                 1277 	.db #0x2c	; 44
   4C78 0F                 1278 	.db #0x0f	; 15
   4C79 0F                 1279 	.db #0x0f	; 15
   4C7A 0F                 1280 	.db #0x0f	; 15
   4C7B 1E                 1281 	.db #0x1e	; 30
   4C7C 0F                 1282 	.db #0x0f	; 15
   4C7D 0F                 1283 	.db #0x0f	; 15
   4C7E 0F                 1284 	.db #0x0f	; 15
   4C7F 4F                 1285 	.db #0x4f	; 79	'O'
   4C80 0F                 1286 	.db #0x0f	; 15
   4C81 0F                 1287 	.db #0x0f	; 15
   4C82 0F                 1288 	.db #0x0f	; 15
   4C83 0F                 1289 	.db #0x0f	; 15
   4C84 2F                 1290 	.db #0x2f	; 47
   4C85 4F                 1291 	.db #0x4f	; 79	'O'
   4C86 2F                 1292 	.db #0x2f	; 47
   4C87 0F                 1293 	.db #0x0f	; 15
   4C88 0F                 1294 	.db #0x0f	; 15
   4C89 0F                 1295 	.db #0x0f	; 15
   4C8A 0F                 1296 	.db #0x0f	; 15
   4C8B 0F                 1297 	.db #0x0f	; 15
   4C8C 0F                 1298 	.db #0x0f	; 15
   4C8D 0F                 1299 	.db #0x0f	; 15
   4C8E 0F                 1300 	.db #0x0f	; 15
   4C8F 2F                 1301 	.db #0x2f	; 47
   4C90 0F                 1302 	.db #0x0f	; 15
   4C91 0F                 1303 	.db #0x0f	; 15
   4C92 0F                 1304 	.db #0x0f	; 15
   4C93 0F                 1305 	.db #0x0f	; 15
   4C94                    1306 _rail_es:
   4C94 0F                 1307 	.db #0x0f	; 15
   4C95 0F                 1308 	.db #0x0f	; 15
   4C96 0F                 1309 	.db #0x0f	; 15
   4C97 0F                 1310 	.db #0x0f	; 15
   4C98 0F                 1311 	.db #0x0f	; 15
   4C99 0F                 1312 	.db #0x0f	; 15
   4C9A 0F                 1313 	.db #0x0f	; 15
   4C9B 2F                 1314 	.db #0x2f	; 47
   4C9C 0F                 1315 	.db #0x0f	; 15
   4C9D 2F                 1316 	.db #0x2f	; 47
   4C9E 0F                 1317 	.db #0x0f	; 15
   4C9F 0F                 1318 	.db #0x0f	; 15
   4CA0 1F                 1319 	.db #0x1f	; 31
   4CA1 0F                 1320 	.db #0x0f	; 15
   4CA2 0F                 1321 	.db #0x0f	; 15
   4CA3 0F                 1322 	.db #0x0f	; 15
   4CA4 0F                 1323 	.db #0x0f	; 15
   4CA5 0F                 1324 	.db #0x0f	; 15
   4CA6 0F                 1325 	.db #0x0f	; 15
   4CA7 0F                 1326 	.db #0x0f	; 15
   4CA8 0F                 1327 	.db #0x0f	; 15
   4CA9 0F                 1328 	.db #0x0f	; 15
   4CAA 1F                 1329 	.db #0x1f	; 31
   4CAB 0F                 1330 	.db #0x0f	; 15
   4CAC 0F                 1331 	.db #0x0f	; 15
   4CAD 0F                 1332 	.db #0x0f	; 15
   4CAE 0F                 1333 	.db #0x0f	; 15
   4CAF 0F                 1334 	.db #0x0f	; 15
   4CB0 4F                 1335 	.db #0x4f	; 79	'O'
   4CB1 0F                 1336 	.db #0x0f	; 15
   4CB2 0F                 1337 	.db #0x0f	; 15
   4CB3 3C                 1338 	.db #0x3c	; 60
   4CB4 0F                 1339 	.db #0x0f	; 15
   4CB5 4F                 1340 	.db #0x4f	; 79	'O'
   4CB6 0F                 1341 	.db #0x0f	; 15
   4CB7 48                 1342 	.db #0x48	; 72	'H'
   4CB8 0F                 1343 	.db #0x0f	; 15
   4CB9 0F                 1344 	.db #0x0f	; 15
   4CBA 4F                 1345 	.db #0x4f	; 79	'O'
   4CBB B0                 1346 	.db #0xb0	; 176
   4CBC 0F                 1347 	.db #0x0f	; 15
   4CBD 0F                 1348 	.db #0x0f	; 15
   4CBE 1E                 1349 	.db #0x1e	; 30
   4CBF 43                 1350 	.db #0x43	; 67	'C'
   4CC0 0F                 1351 	.db #0x0f	; 15
   4CC1 0F                 1352 	.db #0x0f	; 15
   4CC2 2C                 1353 	.db #0x2c	; 44
   4CC3 87                 1354 	.db #0x87	; 135
   4CC4 0F                 1355 	.db #0x0f	; 15
   4CC5 0F                 1356 	.db #0x0f	; 15
   4CC6 58                 1357 	.db #0x58	; 88	'X'
   4CC7 0F                 1358 	.db #0x0f	; 15
   4CC8 0F                 1359 	.db #0x0f	; 15
   4CC9 8F                 1360 	.db #0x8f	; 143
   4CCA A1                 1361 	.db #0xa1	; 161
   4CCB 0F                 1362 	.db #0x0f	; 15
   4CCC 0F                 1363 	.db #0x0f	; 15
   4CCD 1E                 1364 	.db #0x1e	; 30
   4CCE 43                 1365 	.db #0x43	; 67	'C'
   4CCF 8F                 1366 	.db #0x8f	; 143
   4CD0 0F                 1367 	.db #0x0f	; 15
   4CD1 1E                 1368 	.db #0x1e	; 30
   4CD2 43                 1369 	.db #0x43	; 67	'C'
   4CD3 0F                 1370 	.db #0x0f	; 15
   4CD4                    1371 _rail_wn:
   4CD4 0F                 1372 	.db #0x0f	; 15
   4CD5 1E                 1373 	.db #0x1e	; 30
   4CD6 43                 1374 	.db #0x43	; 67	'C'
   4CD7 0F                 1375 	.db #0x0f	; 15
   4CD8 0F                 1376 	.db #0x0f	; 15
   4CD9 1E                 1377 	.db #0x1e	; 30
   4CDA 53                 1378 	.db #0x53	; 83	'S'
   4CDB 0F                 1379 	.db #0x0f	; 15
   4CDC 0F                 1380 	.db #0x0f	; 15
   4CDD 2C                 1381 	.db #0x2c	; 44
   4CDE 87                 1382 	.db #0x87	; 135
   4CDF 0F                 1383 	.db #0x0f	; 15
   4CE0 2F                 1384 	.db #0x2f	; 47
   4CE1 58                 1385 	.db #0x58	; 88	'X'
   4CE2 0F                 1386 	.db #0x0f	; 15
   4CE3 0F                 1387 	.db #0x0f	; 15
   4CE4 0F                 1388 	.db #0x0f	; 15
   4CE5 A1                 1389 	.db #0xa1	; 161
   4CE6 0F                 1390 	.db #0x0f	; 15
   4CE7 0F                 1391 	.db #0x0f	; 15
   4CE8 1E                 1392 	.db #0x1e	; 30
   4CE9 43                 1393 	.db #0x43	; 67	'C'
   4CEA 0F                 1394 	.db #0x0f	; 15
   4CEB 8F                 1395 	.db #0x8f	; 143
   4CEC 2C                 1396 	.db #0x2c	; 44
   4CED 87                 1397 	.db #0x87	; 135
   4CEE 0F                 1398 	.db #0x0f	; 15
   4CEF 0F                 1399 	.db #0x0f	; 15
   4CF0 D0                 1400 	.db #0xd0	; 208
   4CF1 1F                 1401 	.db #0x1f	; 31
   4CF2 0F                 1402 	.db #0x0f	; 15
   4CF3 0F                 1403 	.db #0x0f	; 15
   4CF4 21                 1404 	.db #0x21	; 33
   4CF5 0F                 1405 	.db #0x0f	; 15
   4CF6 0F                 1406 	.db #0x0f	; 15
   4CF7 0F                 1407 	.db #0x0f	; 15
   4CF8 C3                 1408 	.db #0xc3	; 195
   4CF9 0F                 1409 	.db #0x0f	; 15
   4CFA 0F                 1410 	.db #0x0f	; 15
   4CFB 0F                 1411 	.db #0x0f	; 15
   4CFC 0F                 1412 	.db #0x0f	; 15
   4CFD 0F                 1413 	.db #0x0f	; 15
   4CFE 0F                 1414 	.db #0x0f	; 15
   4CFF 0F                 1415 	.db #0x0f	; 15
   4D00 1F                 1416 	.db #0x1f	; 31
   4D01 0F                 1417 	.db #0x0f	; 15
   4D02 4F                 1418 	.db #0x4f	; 79	'O'
   4D03 4F                 1419 	.db #0x4f	; 79	'O'
   4D04 0F                 1420 	.db #0x0f	; 15
   4D05 0F                 1421 	.db #0x0f	; 15
   4D06 0F                 1422 	.db #0x0f	; 15
   4D07 0F                 1423 	.db #0x0f	; 15
   4D08 0F                 1424 	.db #0x0f	; 15
   4D09 1F                 1425 	.db #0x1f	; 31
   4D0A 0F                 1426 	.db #0x0f	; 15
   4D0B 0F                 1427 	.db #0x0f	; 15
   4D0C 2F                 1428 	.db #0x2f	; 47
   4D0D 0F                 1429 	.db #0x0f	; 15
   4D0E 0F                 1430 	.db #0x0f	; 15
   4D0F 0F                 1431 	.db #0x0f	; 15
   4D10 0F                 1432 	.db #0x0f	; 15
   4D11 0F                 1433 	.db #0x0f	; 15
   4D12 0F                 1434 	.db #0x0f	; 15
   4D13 0F                 1435 	.db #0x0f	; 15
   4D14                    1436 _rail_ws:
   4D14 0F                 1437 	.db #0x0f	; 15
   4D15 0F                 1438 	.db #0x0f	; 15
   4D16 0F                 1439 	.db #0x0f	; 15
   4D17 0F                 1440 	.db #0x0f	; 15
   4D18 0F                 1441 	.db #0x0f	; 15
   4D19 0F                 1442 	.db #0x0f	; 15
   4D1A 0F                 1443 	.db #0x0f	; 15
   4D1B 0F                 1444 	.db #0x0f	; 15
   4D1C 2F                 1445 	.db #0x2f	; 47
   4D1D 0F                 1446 	.db #0x0f	; 15
   4D1E 4F                 1447 	.db #0x4f	; 79	'O'
   4D1F 2F                 1448 	.db #0x2f	; 47
   4D20 0F                 1449 	.db #0x0f	; 15
   4D21 0F                 1450 	.db #0x0f	; 15
   4D22 0F                 1451 	.db #0x0f	; 15
   4D23 0F                 1452 	.db #0x0f	; 15
   4D24 0F                 1453 	.db #0x0f	; 15
   4D25 0F                 1454 	.db #0x0f	; 15
   4D26 0F                 1455 	.db #0x0f	; 15
   4D27 0F                 1456 	.db #0x0f	; 15
   4D28 0F                 1457 	.db #0x0f	; 15
   4D29 0F                 1458 	.db #0x0f	; 15
   4D2A 0F                 1459 	.db #0x0f	; 15
   4D2B 0F                 1460 	.db #0x0f	; 15
   4D2C 0F                 1461 	.db #0x0f	; 15
   4D2D 2F                 1462 	.db #0x2f	; 47
   4D2E 0F                 1463 	.db #0x0f	; 15
   4D2F 0F                 1464 	.db #0x0f	; 15
   4D30 C3                 1465 	.db #0xc3	; 195
   4D31 0F                 1466 	.db #0x0f	; 15
   4D32 0F                 1467 	.db #0x0f	; 15
   4D33 0F                 1468 	.db #0x0f	; 15
   4D34 21                 1469 	.db #0x21	; 33
   4D35 0F                 1470 	.db #0x0f	; 15
   4D36 2F                 1471 	.db #0x2f	; 47
   4D37 0F                 1472 	.db #0x0f	; 15
   4D38 D0                 1473 	.db #0xd0	; 208
   4D39 0F                 1474 	.db #0x0f	; 15
   4D3A 0F                 1475 	.db #0x0f	; 15
   4D3B 0F                 1476 	.db #0x0f	; 15
   4D3C 2C                 1477 	.db #0x2c	; 44
   4D3D 87                 1478 	.db #0x87	; 135
   4D3E 0F                 1479 	.db #0x0f	; 15
   4D3F 0F                 1480 	.db #0x0f	; 15
   4D40 1E                 1481 	.db #0x1e	; 30
   4D41 43                 1482 	.db #0x43	; 67	'C'
   4D42 0F                 1483 	.db #0x0f	; 15
   4D43 2F                 1484 	.db #0x2f	; 47
   4D44 4F                 1485 	.db #0x4f	; 79	'O'
   4D45 A1                 1486 	.db #0xa1	; 161
   4D46 0F                 1487 	.db #0x0f	; 15
   4D47 0F                 1488 	.db #0x0f	; 15
   4D48 0F                 1489 	.db #0x0f	; 15
   4D49 58                 1490 	.db #0x58	; 88	'X'
   4D4A 4F                 1491 	.db #0x4f	; 79	'O'
   4D4B 0F                 1492 	.db #0x0f	; 15
   4D4C 0F                 1493 	.db #0x0f	; 15
   4D4D 2C                 1494 	.db #0x2c	; 44
   4D4E 87                 1495 	.db #0x87	; 135
   4D4F 4F                 1496 	.db #0x4f	; 79	'O'
   4D50 0F                 1497 	.db #0x0f	; 15
   4D51 1E                 1498 	.db #0x1e	; 30
   4D52 43                 1499 	.db #0x43	; 67	'C'
   4D53 0F                 1500 	.db #0x0f	; 15
   4D54                    1501 _rail_ew_n:
   4D54 0F                 1502 	.db #0x0f	; 15
   4D55 1E                 1503 	.db #0x1e	; 30
   4D56 43                 1504 	.db #0x43	; 67	'C'
   4D57 0F                 1505 	.db #0x0f	; 15
   4D58 0F                 1506 	.db #0x0f	; 15
   4D59 9E                 1507 	.db #0x9e	; 158
   4D5A 43                 1508 	.db #0x43	; 67	'C'
   4D5B 0F                 1509 	.db #0x0f	; 15
   4D5C 0F                 1510 	.db #0x0f	; 15
   4D5D 1E                 1511 	.db #0x1e	; 30
   4D5E 53                 1512 	.db #0x53	; 83	'S'
   4D5F 0F                 1513 	.db #0x0f	; 15
   4D60 0F                 1514 	.db #0x0f	; 15
   4D61 2C                 1515 	.db #0x2c	; 44
   4D62 87                 1516 	.db #0x87	; 135
   4D63 0F                 1517 	.db #0x0f	; 15
   4D64 4F                 1518 	.db #0x4f	; 79	'O'
   4D65 58                 1519 	.db #0x58	; 88	'X'
   4D66 0F                 1520 	.db #0x0f	; 15
   4D67 0F                 1521 	.db #0x0f	; 15
   4D68 0F                 1522 	.db #0x0f	; 15
   4D69 A1                 1523 	.db #0xa1	; 161
   4D6A 0F                 1524 	.db #0x0f	; 15
   4D6B 8F                 1525 	.db #0x8f	; 143
   4D6C 1E                 1526 	.db #0x1e	; 30
   4D6D 43                 1527 	.db #0x43	; 67	'C'
   4D6E 0F                 1528 	.db #0x0f	; 15
   4D6F 0F                 1529 	.db #0x0f	; 15
   4D70 E0                 1530 	.db #0xe0	; 224
   4D71 F0                 1531 	.db #0xf0	; 240
   4D72 F0                 1532 	.db #0xf0	; 240
   4D73 F0                 1533 	.db #0xf0	; 240
   4D74 00                 1534 	.db #0x00	; 0
   4D75 00                 1535 	.db #0x00	; 0
   4D76 00                 1536 	.db #0x00	; 0
   4D77 00                 1537 	.db #0x00	; 0
   4D78 F0                 1538 	.db #0xf0	; 240
   4D79 F0                 1539 	.db #0xf0	; 240
   4D7A F0                 1540 	.db #0xf0	; 240
   4D7B F0                 1541 	.db #0xf0	; 240
   4D7C 0F                 1542 	.db #0x0f	; 15
   4D7D 0F                 1543 	.db #0x0f	; 15
   4D7E 0F                 1544 	.db #0x0f	; 15
   4D7F 0F                 1545 	.db #0x0f	; 15
   4D80 2F                 1546 	.db #0x2f	; 47
   4D81 1F                 1547 	.db #0x1f	; 31
   4D82 0F                 1548 	.db #0x0f	; 15
   4D83 4F                 1549 	.db #0x4f	; 79	'O'
   4D84 0F                 1550 	.db #0x0f	; 15
   4D85 0F                 1551 	.db #0x0f	; 15
   4D86 0F                 1552 	.db #0x0f	; 15
   4D87 0F                 1553 	.db #0x0f	; 15
   4D88 0F                 1554 	.db #0x0f	; 15
   4D89 0F                 1555 	.db #0x0f	; 15
   4D8A 0F                 1556 	.db #0x0f	; 15
   4D8B 0F                 1557 	.db #0x0f	; 15
   4D8C 0F                 1558 	.db #0x0f	; 15
   4D8D 8F                 1559 	.db #0x8f	; 143
   4D8E 4F                 1560 	.db #0x4f	; 79	'O'
   4D8F 0F                 1561 	.db #0x0f	; 15
   4D90 0F                 1562 	.db #0x0f	; 15
   4D91 0F                 1563 	.db #0x0f	; 15
   4D92 0F                 1564 	.db #0x0f	; 15
   4D93 0F                 1565 	.db #0x0f	; 15
   4D94                    1566 _rail_ew_s:
   4D94 0F                 1567 	.db #0x0f	; 15
   4D95 0F                 1568 	.db #0x0f	; 15
   4D96 0F                 1569 	.db #0x0f	; 15
   4D97 0F                 1570 	.db #0x0f	; 15
   4D98 0F                 1571 	.db #0x0f	; 15
   4D99 0F                 1572 	.db #0x0f	; 15
   4D9A 0F                 1573 	.db #0x0f	; 15
   4D9B 8F                 1574 	.db #0x8f	; 143
   4D9C 0F                 1575 	.db #0x0f	; 15
   4D9D 4F                 1576 	.db #0x4f	; 79	'O'
   4D9E 0F                 1577 	.db #0x0f	; 15
   4D9F 0F                 1578 	.db #0x0f	; 15
   4DA0 0F                 1579 	.db #0x0f	; 15
   4DA1 0F                 1580 	.db #0x0f	; 15
   4DA2 0F                 1581 	.db #0x0f	; 15
   4DA3 0F                 1582 	.db #0x0f	; 15
   4DA4 0F                 1583 	.db #0x0f	; 15
   4DA5 0F                 1584 	.db #0x0f	; 15
   4DA6 4F                 1585 	.db #0x4f	; 79	'O'
   4DA7 0F                 1586 	.db #0x0f	; 15
   4DA8 4F                 1587 	.db #0x4f	; 79	'O'
   4DA9 0F                 1588 	.db #0x0f	; 15
   4DAA 0F                 1589 	.db #0x0f	; 15
   4DAB 2F                 1590 	.db #0x2f	; 47
   4DAC 0F                 1591 	.db #0x0f	; 15
   4DAD 0F                 1592 	.db #0x0f	; 15
   4DAE 0F                 1593 	.db #0x0f	; 15
   4DAF 0F                 1594 	.db #0x0f	; 15
   4DB0 F0                 1595 	.db #0xf0	; 240
   4DB1 F0                 1596 	.db #0xf0	; 240
   4DB2 F0                 1597 	.db #0xf0	; 240
   4DB3 F0                 1598 	.db #0xf0	; 240
   4DB4 00                 1599 	.db #0x00	; 0
   4DB5 00                 1600 	.db #0x00	; 0
   4DB6 00                 1601 	.db #0x00	; 0
   4DB7 00                 1602 	.db #0x00	; 0
   4DB8 E0                 1603 	.db #0xe0	; 224
   4DB9 F0                 1604 	.db #0xf0	; 240
   4DBA F0                 1605 	.db #0xf0	; 240
   4DBB F0                 1606 	.db #0xf0	; 240
   4DBC 1E                 1607 	.db #0x1e	; 30
   4DBD 43                 1608 	.db #0x43	; 67	'C'
   4DBE 0F                 1609 	.db #0x0f	; 15
   4DBF 0F                 1610 	.db #0x0f	; 15
   4DC0 0F                 1611 	.db #0x0f	; 15
   4DC1 A1                 1612 	.db #0xa1	; 161
   4DC2 4F                 1613 	.db #0x4f	; 79	'O'
   4DC3 0F                 1614 	.db #0x0f	; 15
   4DC4 0F                 1615 	.db #0x0f	; 15
   4DC5 58                 1616 	.db #0x58	; 88	'X'
   4DC6 0F                 1617 	.db #0x0f	; 15
   4DC7 0F                 1618 	.db #0x0f	; 15
   4DC8 0F                 1619 	.db #0x0f	; 15
   4DC9 2C                 1620 	.db #0x2c	; 44
   4DCA 87                 1621 	.db #0x87	; 135
   4DCB 8F                 1622 	.db #0x8f	; 143
   4DCC 4F                 1623 	.db #0x4f	; 79	'O'
   4DCD 1E                 1624 	.db #0x1e	; 30
   4DCE 43                 1625 	.db #0x43	; 67	'C'
   4DCF 0F                 1626 	.db #0x0f	; 15
   4DD0 0F                 1627 	.db #0x0f	; 15
   4DD1 1E                 1628 	.db #0x1e	; 30
   4DD2 43                 1629 	.db #0x43	; 67	'C'
   4DD3 0F                 1630 	.db #0x0f	; 15
   4DD4                    1631 _rail_ns_w:
   4DD4 0F                 1632 	.db #0x0f	; 15
   4DD5 1E                 1633 	.db #0x1e	; 30
   4DD6 43                 1634 	.db #0x43	; 67	'C'
   4DD7 0F                 1635 	.db #0x0f	; 15
   4DD8 4F                 1636 	.db #0x4f	; 79	'O'
   4DD9 1E                 1637 	.db #0x1e	; 30
   4DDA 43                 1638 	.db #0x43	; 67	'C'
   4DDB 2F                 1639 	.db #0x2f	; 47
   4DDC 0F                 1640 	.db #0x0f	; 15
   4DDD 1E                 1641 	.db #0x1e	; 30
   4DDE 43                 1642 	.db #0x43	; 67	'C'
   4DDF 0F                 1643 	.db #0x0f	; 15
   4DE0 0F                 1644 	.db #0x0f	; 15
   4DE1 1E                 1645 	.db #0x1e	; 30
   4DE2 43                 1646 	.db #0x43	; 67	'C'
   4DE3 0F                 1647 	.db #0x0f	; 15
   4DE4 0F                 1648 	.db #0x0f	; 15
   4DE5 5E                 1649 	.db #0x5e	; 94
   4DE6 43                 1650 	.db #0x43	; 67	'C'
   4DE7 0F                 1651 	.db #0x0f	; 15
   4DE8 0F                 1652 	.db #0x0f	; 15
   4DE9 1E                 1653 	.db #0x1e	; 30
   4DEA 43                 1654 	.db #0x43	; 67	'C'
   4DEB 0F                 1655 	.db #0x0f	; 15
   4DEC 0F                 1656 	.db #0x0f	; 15
   4DED 1E                 1657 	.db #0x1e	; 30
   4DEE 43                 1658 	.db #0x43	; 67	'C'
   4DEF 0F                 1659 	.db #0x0f	; 15
   4DF0 E1                 1660 	.db #0xe1	; 225
   4DF1 1E                 1661 	.db #0x1e	; 30
   4DF2 43                 1662 	.db #0x43	; 67	'C'
   4DF3 4F                 1663 	.db #0x4f	; 79	'O'
   4DF4 10                 1664 	.db #0x10	; 16
   4DF5 1E                 1665 	.db #0x1e	; 30
   4DF6 43                 1666 	.db #0x43	; 67	'C'
   4DF7 0F                 1667 	.db #0x0f	; 15
   4DF8 E0                 1668 	.db #0xe0	; 224
   4DF9 96                 1669 	.db #0x96	; 150
   4DFA 43                 1670 	.db #0x43	; 67	'C'
   4DFB 0F                 1671 	.db #0x0f	; 15
   4DFC 1E                 1672 	.db #0x1e	; 30
   4DFD 52                 1673 	.db #0x52	; 82	'R'
   4DFE 43                 1674 	.db #0x43	; 67	'C'
   4DFF 0F                 1675 	.db #0x0f	; 15
   4E00 0F                 1676 	.db #0x0f	; 15
   4E01 B0                 1677 	.db #0xb0	; 176
   4E02 53                 1678 	.db #0x53	; 83	'S'
   4E03 0F                 1679 	.db #0x0f	; 15
   4E04 0F                 1680 	.db #0x0f	; 15
   4E05 58                 1681 	.db #0x58	; 88	'X'
   4E06 43                 1682 	.db #0x43	; 67	'C'
   4E07 0F                 1683 	.db #0x0f	; 15
   4E08 2F                 1684 	.db #0x2f	; 47
   4E09 2C                 1685 	.db #0x2c	; 44
   4E0A 43                 1686 	.db #0x43	; 67	'C'
   4E0B 0F                 1687 	.db #0x0f	; 15
   4E0C 0F                 1688 	.db #0x0f	; 15
   4E0D 1E                 1689 	.db #0x1e	; 30
   4E0E 43                 1690 	.db #0x43	; 67	'C'
   4E0F 2F                 1691 	.db #0x2f	; 47
   4E10 0F                 1692 	.db #0x0f	; 15
   4E11 1E                 1693 	.db #0x1e	; 30
   4E12 43                 1694 	.db #0x43	; 67	'C'
   4E13 0F                 1695 	.db #0x0f	; 15
   4E14                    1696 _rail_ns_e:
   4E14 0F                 1697 	.db #0x0f	; 15
   4E15 1E                 1698 	.db #0x1e	; 30
   4E16 43                 1699 	.db #0x43	; 67	'C'
   4E17 0F                 1700 	.db #0x0f	; 15
   4E18 0F                 1701 	.db #0x0f	; 15
   4E19 1E                 1702 	.db #0x1e	; 30
   4E1A 43                 1703 	.db #0x43	; 67	'C'
   4E1B 2F                 1704 	.db #0x2f	; 47
   4E1C 0F                 1705 	.db #0x0f	; 15
   4E1D 9E                 1706 	.db #0x9e	; 158
   4E1E 43                 1707 	.db #0x43	; 67	'C'
   4E1F 0F                 1708 	.db #0x0f	; 15
   4E20 0F                 1709 	.db #0x0f	; 15
   4E21 1E                 1710 	.db #0x1e	; 30
   4E22 43                 1711 	.db #0x43	; 67	'C'
   4E23 0F                 1712 	.db #0x0f	; 15
   4E24 0F                 1713 	.db #0x0f	; 15
   4E25 1E                 1714 	.db #0x1e	; 30
   4E26 43                 1715 	.db #0x43	; 67	'C'
   4E27 8F                 1716 	.db #0x8f	; 143
   4E28 0F                 1717 	.db #0x0f	; 15
   4E29 1E                 1718 	.db #0x1e	; 30
   4E2A 43                 1719 	.db #0x43	; 67	'C'
   4E2B 0F                 1720 	.db #0x0f	; 15
   4E2C 0F                 1721 	.db #0x0f	; 15
   4E2D 5E                 1722 	.db #0x5e	; 94
   4E2E 43                 1723 	.db #0x43	; 67	'C'
   4E2F 0F                 1724 	.db #0x0f	; 15
   4E30 4F                 1725 	.db #0x4f	; 79	'O'
   4E31 1E                 1726 	.db #0x1e	; 30
   4E32 43                 1727 	.db #0x43	; 67	'C'
   4E33 3C                 1728 	.db #0x3c	; 60
   4E34 0F                 1729 	.db #0x0f	; 15
   4E35 1E                 1730 	.db #0x1e	; 30
   4E36 43                 1731 	.db #0x43	; 67	'C'
   4E37 48                 1732 	.db #0x48	; 72	'H'
   4E38 0F                 1733 	.db #0x0f	; 15
   4E39 1E                 1734 	.db #0x1e	; 30
   4E3A 43                 1735 	.db #0x43	; 67	'C'
   4E3B B0                 1736 	.db #0xb0	; 176
   4E3C 0F                 1737 	.db #0x0f	; 15
   4E3D 1E                 1738 	.db #0x1e	; 30
   4E3E 52                 1739 	.db #0x52	; 82	'R'
   4E3F 43                 1740 	.db #0x43	; 67	'C'
   4E40 0F                 1741 	.db #0x0f	; 15
   4E41 5E                 1742 	.db #0x5e	; 94
   4E42 60                 1743 	.db #0x60	; 96
   4E43 87                 1744 	.db #0x87	; 135
   4E44 0F                 1745 	.db #0x0f	; 15
   4E45 1E                 1746 	.db #0x1e	; 30
   4E46 50                 1747 	.db #0x50	; 80	'P'
   4E47 0F                 1748 	.db #0x0f	; 15
   4E48 0F                 1749 	.db #0x0f	; 15
   4E49 1E                 1750 	.db #0x1e	; 30
   4E4A 21                 1751 	.db #0x21	; 33
   4E4B 0F                 1752 	.db #0x0f	; 15
   4E4C 2F                 1753 	.db #0x2f	; 47
   4E4D 1E                 1754 	.db #0x1e	; 30
   4E4E 43                 1755 	.db #0x43	; 67	'C'
   4E4F 8F                 1756 	.db #0x8f	; 143
   4E50 0F                 1757 	.db #0x0f	; 15
   4E51 1E                 1758 	.db #0x1e	; 30
   4E52 43                 1759 	.db #0x43	; 67	'C'
   4E53 0F                 1760 	.db #0x0f	; 15
   4E54                    1761 _train_h:
   4E54 00                 1762 	.db #0x00	; 0
   4E55 00                 1763 	.db #0x00	; 0
   4E56 00                 1764 	.db #0x00	; 0
   4E57 00                 1765 	.db #0x00	; 0
   4E58 00                 1766 	.db #0x00	; 0
   4E59 00                 1767 	.db #0x00	; 0
   4E5A 00                 1768 	.db #0x00	; 0
   4E5B 00                 1769 	.db #0x00	; 0
   4E5C 00                 1770 	.db #0x00	; 0
   4E5D 00                 1771 	.db #0x00	; 0
   4E5E 00                 1772 	.db #0x00	; 0
   4E5F 00                 1773 	.db #0x00	; 0
   4E60 00                 1774 	.db #0x00	; 0
   4E61 00                 1775 	.db #0x00	; 0
   4E62 00                 1776 	.db #0x00	; 0
   4E63 00                 1777 	.db #0x00	; 0
   4E64 00                 1778 	.db #0x00	; 0
   4E65 00                 1779 	.db #0x00	; 0
   4E66 00                 1780 	.db #0x00	; 0
   4E67 00                 1781 	.db #0x00	; 0
   4E68 00                 1782 	.db #0x00	; 0
   4E69 00                 1783 	.db #0x00	; 0
   4E6A 00                 1784 	.db #0x00	; 0
   4E6B 00                 1785 	.db #0x00	; 0
   4E6C 00                 1786 	.db #0x00	; 0
   4E6D 00                 1787 	.db #0x00	; 0
   4E6E 00                 1788 	.db #0x00	; 0
   4E6F 00                 1789 	.db #0x00	; 0
   4E70 77                 1790 	.db #0x77	; 119	'w'
   4E71 77                 1791 	.db #0x77	; 119	'w'
   4E72 77                 1792 	.db #0x77	; 119	'w'
   4E73 77                 1793 	.db #0x77	; 119	'w'
   4E74 77                 1794 	.db #0x77	; 119	'w'
   4E75 77                 1795 	.db #0x77	; 119	'w'
   4E76 77                 1796 	.db #0x77	; 119	'w'
   4E77 77                 1797 	.db #0x77	; 119	'w'
   4E78 77                 1798 	.db #0x77	; 119	'w'
   4E79 77                 1799 	.db #0x77	; 119	'w'
   4E7A 77                 1800 	.db #0x77	; 119	'w'
   4E7B 77                 1801 	.db #0x77	; 119	'w'
   4E7C 00                 1802 	.db #0x00	; 0
   4E7D 00                 1803 	.db #0x00	; 0
   4E7E 00                 1804 	.db #0x00	; 0
   4E7F 00                 1805 	.db #0x00	; 0
   4E80 00                 1806 	.db #0x00	; 0
   4E81 00                 1807 	.db #0x00	; 0
   4E82 00                 1808 	.db #0x00	; 0
   4E83 00                 1809 	.db #0x00	; 0
   4E84 00                 1810 	.db #0x00	; 0
   4E85 00                 1811 	.db #0x00	; 0
   4E86 00                 1812 	.db #0x00	; 0
   4E87 00                 1813 	.db #0x00	; 0
   4E88 00                 1814 	.db #0x00	; 0
   4E89 00                 1815 	.db #0x00	; 0
   4E8A 00                 1816 	.db #0x00	; 0
   4E8B 00                 1817 	.db #0x00	; 0
   4E8C 00                 1818 	.db #0x00	; 0
   4E8D 00                 1819 	.db #0x00	; 0
   4E8E 00                 1820 	.db #0x00	; 0
   4E8F 00                 1821 	.db #0x00	; 0
   4E90 00                 1822 	.db #0x00	; 0
   4E91 00                 1823 	.db #0x00	; 0
   4E92 00                 1824 	.db #0x00	; 0
   4E93 00                 1825 	.db #0x00	; 0
   4E94                    1826 _train_v:
   4E94 00                 1827 	.db #0x00	; 0
   4E95 11                 1828 	.db #0x11	; 17
   4E96 88                 1829 	.db #0x88	; 136
   4E97 00                 1830 	.db #0x00	; 0
   4E98 00                 1831 	.db #0x00	; 0
   4E99 11                 1832 	.db #0x11	; 17
   4E9A 88                 1833 	.db #0x88	; 136
   4E9B 00                 1834 	.db #0x00	; 0
   4E9C 00                 1835 	.db #0x00	; 0
   4E9D 11                 1836 	.db #0x11	; 17
   4E9E 88                 1837 	.db #0x88	; 136
   4E9F 00                 1838 	.db #0x00	; 0
   4EA0 00                 1839 	.db #0x00	; 0
   4EA1 00                 1840 	.db #0x00	; 0
   4EA2 00                 1841 	.db #0x00	; 0
   4EA3 00                 1842 	.db #0x00	; 0
   4EA4 00                 1843 	.db #0x00	; 0
   4EA5 11                 1844 	.db #0x11	; 17
   4EA6 88                 1845 	.db #0x88	; 136
   4EA7 00                 1846 	.db #0x00	; 0
   4EA8 00                 1847 	.db #0x00	; 0
   4EA9 11                 1848 	.db #0x11	; 17
   4EAA 88                 1849 	.db #0x88	; 136
   4EAB 00                 1850 	.db #0x00	; 0
   4EAC 00                 1851 	.db #0x00	; 0
   4EAD 11                 1852 	.db #0x11	; 17
   4EAE 88                 1853 	.db #0x88	; 136
   4EAF 00                 1854 	.db #0x00	; 0
   4EB0 00                 1855 	.db #0x00	; 0
   4EB1 00                 1856 	.db #0x00	; 0
   4EB2 00                 1857 	.db #0x00	; 0
   4EB3 00                 1858 	.db #0x00	; 0
   4EB4 00                 1859 	.db #0x00	; 0
   4EB5 11                 1860 	.db #0x11	; 17
   4EB6 88                 1861 	.db #0x88	; 136
   4EB7 00                 1862 	.db #0x00	; 0
   4EB8 00                 1863 	.db #0x00	; 0
   4EB9 11                 1864 	.db #0x11	; 17
   4EBA 88                 1865 	.db #0x88	; 136
   4EBB 00                 1866 	.db #0x00	; 0
   4EBC 00                 1867 	.db #0x00	; 0
   4EBD 11                 1868 	.db #0x11	; 17
   4EBE 88                 1869 	.db #0x88	; 136
   4EBF 00                 1870 	.db #0x00	; 0
   4EC0 00                 1871 	.db #0x00	; 0
   4EC1 00                 1872 	.db #0x00	; 0
   4EC2 00                 1873 	.db #0x00	; 0
   4EC3 00                 1874 	.db #0x00	; 0
   4EC4 00                 1875 	.db #0x00	; 0
   4EC5 11                 1876 	.db #0x11	; 17
   4EC6 88                 1877 	.db #0x88	; 136
   4EC7 00                 1878 	.db #0x00	; 0
   4EC8 00                 1879 	.db #0x00	; 0
   4EC9 11                 1880 	.db #0x11	; 17
   4ECA 88                 1881 	.db #0x88	; 136
   4ECB 00                 1882 	.db #0x00	; 0
   4ECC 00                 1883 	.db #0x00	; 0
   4ECD 11                 1884 	.db #0x11	; 17
   4ECE 88                 1885 	.db #0x88	; 136
   4ECF 00                 1886 	.db #0x00	; 0
   4ED0 00                 1887 	.db #0x00	; 0
   4ED1 00                 1888 	.db #0x00	; 0
   4ED2 00                 1889 	.db #0x00	; 0
   4ED3 00                 1890 	.db #0x00	; 0
                           1891 	.area _INITIALIZER
                           1892 	.area _CABS (ABS)
