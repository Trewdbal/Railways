                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:09:18 2016
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
                             15 	.globl _locDelocked
                             16 	.globl _CURSOR_MODE
                             17 	.globl _p_world
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _DATA
   6E99                      25 _p_world::
   6E99                      26 	.ds 3840
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
   7D99                      31 _CURSOR_MODE::
   7D99                      32 	.ds 1
   7D9A                      33 _locDelocked::
   7D9A                      34 	.ds 1
                             35 ;--------------------------------------------------------
                             36 ; absolute external ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DABS (ABS)
                             39 ;--------------------------------------------------------
                             40 ; global & static initialisations
                             41 ;--------------------------------------------------------
                             42 	.area _HOME
                             43 	.area _GSINIT
                             44 	.area _GSFINAL
                             45 	.area _GSINIT
                             46 ;--------------------------------------------------------
                             47 ; Home
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _HOME
                             51 ;--------------------------------------------------------
                             52 ; code
                             53 ;--------------------------------------------------------
                             54 	.area _CODE
                             55 	.area _CODE
   5DF7                      56 _paletteTrains:
   5DF7 00                   57 	.db #0x00	; 0
   5DF8 1A                   58 	.db #0x1A	; 26
   5DF9 0D                   59 	.db #0x0D	; 13
   5DFA 03                   60 	.db #0x03	; 3
   5DFB 0F                   61 	.db #0x0F	; 15
   5DFC 06                   62 	.db #0x06	; 6
   5DFD 10                   63 	.db #0x10	; 16
   5DFE 09                   64 	.db #0x09	; 9
   5DFF 0A                   65 	.db #0x0A	; 10
   5E00 14                   66 	.db #0x14	; 20
   5E01 02                   67 	.db #0x02	; 2
   5E02 01                   68 	.db #0x01	; 1
   5E03 13                   69 	.db #0x13	; 19
   5E04 18                   70 	.db #0x18	; 24
   5E05 0B                   71 	.db #0x0B	; 11
   5E06 19                   72 	.db #0x19	; 25
   5E07                      73 _paletteMenusM1:
   5E07 00                   74 	.db #0x00	; 0
   5E08 0F                   75 	.db #0x0F	; 15
   5E09 09                   76 	.db #0x09	; 9
   5E0A 16                   77 	.db #0x16	; 22
   5E0B                      78 _paletteMenusM2:
   5E0B 00                   79 	.db #0x00	; 0
   5E0C 14                   80 	.db #0x14	; 20
                             81 	.area _INITIALIZER
   8C0A                      82 __xinit__CURSOR_MODE:
   8C0A 00                   83 	.db #0x00	; 0
   8C0B                      84 __xinit__locDelocked:
   8C0B 01                   85 	.db #0x01	; 1
                             86 	.area _CABS (ABS)
