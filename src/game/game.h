#ifndef _GAME_H_
#define _GAME_H_

#include <cpctelera.h>
#include "../data/defs.h"
#include "../gui/gui.h"
#include "world.h"
#include "train.h"

extern u8 p_world[];
extern u8 CURSOR_MODE;
extern Train* trainList;
extern u8 nbTrainList;

void windowInfoTile(u8, u8);
void menuStations();
void menuTile(u8, u8);
void game();

#endif
