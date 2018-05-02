#include <types.h>
#include "defs.h"

// **********
//  Palettes
// **********

const u8 paletteTrains[16] = {0,26,13,3,15,6,16,9,10,20,2,1,19,24,11,25};
const u8 paletteMenusM1[4] = {0,15,9,22};
const u8 paletteMenusM2[2] = {0,20};

// ******************
//  Global variables
// ******************

u8 p_world[WIDTH*HEIGHT];
u8 CURSOR_MODE=NONE;
Train* trainList;
u8 nbTrainList=0;
