                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:36:37 2016
                              5 ;--------------------------------------------------------
                              6 	.module global
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _paletteMenusM2
                             13 	.globl _paletteMenusM1
                             14 	.globl _paletteTrains
                             15 	.globl _nbTrainList
                             16 	.globl _locDelocked
                             17 	.globl _CURSOR_MODE
                             18 	.globl _trainList
                             19 	.globl _p_world
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DATA
   7AFB                      27 _p_world::
   7AFB                      28 	.ds 3840
   89FB                      29 _trainList::
   89FB                      30 	.ds 2
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
   89FF                      35 _CURSOR_MODE::
   89FF                      36 	.ds 1
   8A00                      37 _locDelocked::
   8A00                      38 	.ds 1
   8A01                      39 _nbTrainList::
   8A01                      40 	.ds 1
                             41 ;--------------------------------------------------------
                             42 ; absolute external ram data
                             43 ;--------------------------------------------------------
                             44 	.area _DABS (ABS)
                             45 ;--------------------------------------------------------
                             46 ; global & static initialisations
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _GSINIT
                             50 	.area _GSFINAL
                             51 	.area _GSINIT
                             52 ;--------------------------------------------------------
                             53 ; Home
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _HOME
                             57 ;--------------------------------------------------------
                             58 ; code
                             59 ;--------------------------------------------------------
                             60 	.area _CODE
                             61 	.area _CODE
   616E                      62 _paletteTrains:
   616E 00                   63 	.db #0x00	; 0
   616F 1A                   64 	.db #0x1A	; 26
   6170 0D                   65 	.db #0x0D	; 13
   6171 03                   66 	.db #0x03	; 3
   6172 0F                   67 	.db #0x0F	; 15
   6173 06                   68 	.db #0x06	; 6
   6174 10                   69 	.db #0x10	; 16
   6175 09                   70 	.db #0x09	; 9
   6176 0A                   71 	.db #0x0A	; 10
   6177 14                   72 	.db #0x14	; 20
   6178 02                   73 	.db #0x02	; 2
   6179 01                   74 	.db #0x01	; 1
   617A 13                   75 	.db #0x13	; 19
   617B 18                   76 	.db #0x18	; 24
   617C 0B                   77 	.db #0x0B	; 11
   617D 19                   78 	.db #0x19	; 25
   617E                      79 _paletteMenusM1:
   617E 00                   80 	.db #0x00	; 0
   617F 0F                   81 	.db #0x0F	; 15
   6180 09                   82 	.db #0x09	; 9
   6181 16                   83 	.db #0x16	; 22
   6182                      84 _paletteMenusM2:
   6182 00                   85 	.db #0x00	; 0
   6183 14                   86 	.db #0x14	; 20
                             87 	.area _INITIALIZER
   9874                      88 __xinit__CURSOR_MODE:
   9874 00                   89 	.db #0x00	; 0
   9875                      90 __xinit__locDelocked:
   9875 01                   91 	.db #0x01	; 1
   9876                      92 __xinit__nbTrainList:
   9876 00                   93 	.db #0x00	; 0
                             94 	.area _CABS (ABS)
