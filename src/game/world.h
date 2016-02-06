#ifndef _WORLD_H_
#define _WORLD_H_

#include <cpctelera.h>
#include "../data/defs.h"
#include "game.h"

extern u8 pworld[];
extern u8 CURSOR_MODE;
extern u8 locDelocked;

extern const u8 paletteMenusM1[];
extern const u8 paletteMenusM2[];

extern const u8 grass1[];
extern const u8 grass2[];
extern const u8 forest[];
extern const u8 dwellings1[];
extern const u8 dwellings2[];
extern const u8 dwellings3[];
extern const u8 water[];
extern const u8 farm1[];
extern const u8 farm2[];
extern const u8 livestock[];
extern const u8 station_small_ns[];
extern const u8 station_small_ew[];
extern const u8 station_medium_ns[];
extern const u8 station_medium_ew[];
extern const u8 station_large_ns[];
extern const u8 station_large_ew[];
extern const u8 rail_ew[];
extern const u8 rail_ns[];
extern const u8 rail_en[];
extern const u8 rail_es[];
extern const u8 rail_wn[];
extern const u8 rail_ws[];
extern const u8 rail_ew_n[];
extern const u8 rail_ew_s[];
extern const u8 rail_ns_w[];
extern const u8 rail_ns_e[];

void drawCursor(u8, u8, u8);
void patternTile(u8, int, u8, u8, u8*);
void generateWorld();
void drawTile(u8, u8, u8, u8);
void drawScrolls(u8, u8);
void drawWorld(u8, u8);

#endif
