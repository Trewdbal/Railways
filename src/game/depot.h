#ifndef _DEPOT_H_
#define _DEPOT_H_

#include <cpctelera.h>
#include <math.h>
#include "../gui/gui.h"

extern const u8 lock[];
extern const u8 l130B[];
extern const u8 l141TA[];
extern const u8 l142AT[];
extern const u8 l141P[];
extern const u8 BB63000[];

extern const u8 l130B_M2[];
extern const u8 wagon_M2[];

extern u8 locDelocked;
extern Train* trainList;
extern u8 nbTrainList;

void railroadDepot();
void buyLocomotive();
void drawLocomotive(u8, u8);
void drawAllLocomotives(u8);
u8 confirmBuyLocomotive(u8);

#endif
