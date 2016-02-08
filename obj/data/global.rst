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
   7ADA                      27 _p_world::
   7ADA                      28 	.ds 3840
   89DA                      29 _trainList::
   89DA                      30 	.ds 2
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
   89DE                      35 _CURSOR_MODE::
   89DE                      36 	.ds 1
   89DF                      37 _locDelocked::
   89DF                      38 	.ds 1
   89E0                      39 _nbTrainList::
   89E0                      40 	.ds 1
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
   61E3                      62 _paletteTrains:
   61E3 00                   63 	.db #0x00	; 0
   61E4 1A                   64 	.db #0x1A	; 26
   61E5 0D                   65 	.db #0x0D	; 13
   61E6 03                   66 	.db #0x03	; 3
   61E7 0F                   67 	.db #0x0F	; 15
   61E8 06                   68 	.db #0x06	; 6
   61E9 10                   69 	.db #0x10	; 16
   61EA 09                   70 	.db #0x09	; 9
   61EB 0A                   71 	.db #0x0A	; 10
   61EC 14                   72 	.db #0x14	; 20
   61ED 02                   73 	.db #0x02	; 2
   61EE 01                   74 	.db #0x01	; 1
   61EF 13                   75 	.db #0x13	; 19
   61F0 18                   76 	.db #0x18	; 24
   61F1 0B                   77 	.db #0x0B	; 11
   61F2 19                   78 	.db #0x19	; 25
   61F3                      79 _paletteMenusM1:
   61F3 00                   80 	.db #0x00	; 0
   61F4 0F                   81 	.db #0x0F	; 15
   61F5 09                   82 	.db #0x09	; 9
   61F6 16                   83 	.db #0x16	; 22
   61F7                      84 _paletteMenusM2:
   61F7 00                   85 	.db #0x00	; 0
   61F8 14                   86 	.db #0x14	; 20
                             87 	.area _INITIALIZER
   9853                      88 __xinit__CURSOR_MODE:
   9853 00                   89 	.db #0x00	; 0
   9854                      90 __xinit__locDelocked:
   9854 01                   91 	.db #0x01	; 1
   9855                      92 __xinit__nbTrainList:
   9855 00                   93 	.db #0x00	; 0
                             94 	.area _CABS (ABS)
