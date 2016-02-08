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
   7BBB                      27 _p_world::
   7BBB                      28 	.ds 3840
   8ABB                      29 _trainList::
   8ABB                      30 	.ds 2
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
   8ABF                      35 _CURSOR_MODE::
   8ABF                      36 	.ds 1
   8AC0                      37 _locDelocked::
   8AC0                      38 	.ds 1
   8AC1                      39 _nbTrainList::
   8AC1                      40 	.ds 1
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
   622E                      62 _paletteTrains:
   622E 00                   63 	.db #0x00	; 0
   622F 1A                   64 	.db #0x1A	; 26
   6230 0D                   65 	.db #0x0D	; 13
   6231 03                   66 	.db #0x03	; 3
   6232 0F                   67 	.db #0x0F	; 15
   6233 06                   68 	.db #0x06	; 6
   6234 10                   69 	.db #0x10	; 16
   6235 09                   70 	.db #0x09	; 9
   6236 0A                   71 	.db #0x0A	; 10
   6237 14                   72 	.db #0x14	; 20
   6238 02                   73 	.db #0x02	; 2
   6239 01                   74 	.db #0x01	; 1
   623A 13                   75 	.db #0x13	; 19
   623B 18                   76 	.db #0x18	; 24
   623C 0B                   77 	.db #0x0B	; 11
   623D 19                   78 	.db #0x19	; 25
   623E                      79 _paletteMenusM1:
   623E 00                   80 	.db #0x00	; 0
   623F 0F                   81 	.db #0x0F	; 15
   6240 09                   82 	.db #0x09	; 9
   6241 16                   83 	.db #0x16	; 22
   6242                      84 _paletteMenusM2:
   6242 00                   85 	.db #0x00	; 0
   6243 14                   86 	.db #0x14	; 20
                             87 	.area _INITIALIZER
   9934                      88 __xinit__CURSOR_MODE:
   9934 00                   89 	.db #0x00	; 0
   9935                      90 __xinit__locDelocked:
   9935 01                   91 	.db #0x01	; 1
   9936                      92 __xinit__nbTrainList:
   9936 00                   93 	.db #0x00	; 0
                             94 	.area _CABS (ABS)
