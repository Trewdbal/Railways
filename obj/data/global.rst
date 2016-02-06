                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 21:45:30 2016
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
   6C7C                      25 _p_world::
   6C7C                      26 	.ds 3840
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
   7B7C                      31 _CURSOR_MODE::
   7B7C                      32 	.ds 1
   7B7D                      33 _locDelocked::
   7B7D                      34 	.ds 1
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
   5CC7                      56 _paletteTrains:
   5CC7 00                   57 	.db #0x00	; 0
   5CC8 1A                   58 	.db #0x1A	; 26
   5CC9 0D                   59 	.db #0x0D	; 13
   5CCA 03                   60 	.db #0x03	; 3
   5CCB 0F                   61 	.db #0x0F	; 15
   5CCC 06                   62 	.db #0x06	; 6
   5CCD 10                   63 	.db #0x10	; 16
   5CCE 09                   64 	.db #0x09	; 9
   5CCF 0A                   65 	.db #0x0A	; 10
   5CD0 14                   66 	.db #0x14	; 20
   5CD1 02                   67 	.db #0x02	; 2
   5CD2 01                   68 	.db #0x01	; 1
   5CD3 13                   69 	.db #0x13	; 19
   5CD4 18                   70 	.db #0x18	; 24
   5CD5 0B                   71 	.db #0x0B	; 11
   5CD6 19                   72 	.db #0x19	; 25
   5CD7                      73 _paletteMenusM1:
   5CD7 00                   74 	.db #0x00	; 0
   5CD8 0F                   75 	.db #0x0F	; 15
   5CD9 09                   76 	.db #0x09	; 9
   5CDA 16                   77 	.db #0x16	; 22
   5CDB                      78 _paletteMenusM2:
   5CDB 00                   79 	.db #0x00	; 0
   5CDC 14                   80 	.db #0x14	; 20
                             81 	.area _INITIALIZER
   7B7E                      82 __xinit__CURSOR_MODE:
   7B7E 00                   83 	.db #0x00	; 0
   7B7F                      84 __xinit__locDelocked:
   7B7F 01                   85 	.db #0x01	; 1
                             86 	.area _CABS (ABS)
