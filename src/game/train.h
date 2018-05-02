#ifndef _TRAIN_H_
#define _TRAIN_H_

#include <cpctelera.h>
#include <math.h>
#include "../gui/gui.h"

extern Train* trainList;
extern u8 nbTrainList;
extern u8 CURSOR_MODE;

void trainManagement();
void buyLocomotive();
u8 confirmBuyLocomotive(u8);

#endif
