#ifndef _GUI_H_
#define _GUI_H_

#include <cpctelera.h>

#include "../data/defs.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

extern const u8 paletteMenusM1[];
extern const u8 paletteMenusM2[];
extern const u8 paletteTrains[];

void putM0(void);
void putM1(void);
void putM2(void);
void drawBoxM0(int, int);
void drawBoxM2(int, int);
void EraseMenuEntry(char**, u8, u8);
void drawMenuEntry(char**, u8, u8);
u8 drawMenu(char**, u8);
u8 drawWindow(char**, u8, u8);

#endif

