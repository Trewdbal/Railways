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
   7BA6                      27 _p_world::
   7BA6                      28 	.ds 3840
   8AA6                      29 _trainList::
   8AA6                      30 	.ds 2
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
   8AAA                      35 _CURSOR_MODE::
   8AAA                      36 	.ds 1
   8AAB                      37 _locDelocked::
   8AAB                      38 	.ds 1
   8AAC                      39 _nbTrainList::
   8AAC                      40 	.ds 1
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
   6219                      62 _paletteTrains:
   6219 00                   63 	.db #0x00	; 0
   621A 1A                   64 	.db #0x1A	; 26
   621B 0D                   65 	.db #0x0D	; 13
   621C 03                   66 	.db #0x03	; 3
   621D 0F                   67 	.db #0x0F	; 15
   621E 06                   68 	.db #0x06	; 6
   621F 10                   69 	.db #0x10	; 16
   6220 09                   70 	.db #0x09	; 9
   6221 0A                   71 	.db #0x0A	; 10
   6222 14                   72 	.db #0x14	; 20
   6223 02                   73 	.db #0x02	; 2
   6224 01                   74 	.db #0x01	; 1
   6225 13                   75 	.db #0x13	; 19
   6226 18                   76 	.db #0x18	; 24
   6227 0B                   77 	.db #0x0B	; 11
   6228 19                   78 	.db #0x19	; 25
   6229                      79 _paletteMenusM1:
   6229 00                   80 	.db #0x00	; 0
   622A 0F                   81 	.db #0x0F	; 15
   622B 09                   82 	.db #0x09	; 9
   622C 16                   83 	.db #0x16	; 22
   622D                      84 _paletteMenusM2:
   622D 00                   85 	.db #0x00	; 0
   622E 14                   86 	.db #0x14	; 20
                             87 	.area _INITIALIZER
   991F                      88 __xinit__CURSOR_MODE:
   991F 00                   89 	.db #0x00	; 0
   9920                      90 __xinit__locDelocked:
   9920 01                   91 	.db #0x01	; 1
   9921                      92 __xinit__nbTrainList:
   9921 00                   93 	.db #0x00	; 0
                             94 	.area _CABS (ABS)
