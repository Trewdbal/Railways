#ifndef _DEFS_H_
#define _DEFS_H_

#define SCR_VMEM  (u8*)0xC000

#define NBTILE_W 20
#define NBTILE_H 12
#define TILESIZE_W 4
#define TILESIZE_H 16
#define NBSCREEN_W 4
#define NBSCREEN_H 4
#define WIDTH 80
#define HEIGHT 48
#define NBFARM 60
#define NBURBAN 20
#define NBFOREST 50
#define NBLIVESTOCK 19

// *************
//  Enumerations
// *************

enum {GRASS1, GRASS2, DWELLINGS1, DWELLINGS2, DWELLINGS3, FARM1, FARM2, WATER, FOREST, LIVESTOCK, SSNS, SSEW, SMNS, SMEW, SLNS, SLEW, REW, RNS, REN, RES, RWN, RWS, REWN, REWS, RNSE, RNSW};
enum {NONE, PUTTRAIN, T_SSNS, T_SSEW, T_SMNS, T_SMEW, T_SLNS, T_SLEW, T_REW, T_RNS, T_REN, T_RES, T_RWN, T_RWS, T_REWN, T_REWS, T_RNSE, T_RNSW};

// **********
// Structures
// **********

typedef struct Train Train;
struct Train
{
	u8 loco;	// Locomotive type
	u8 wagon[3];	// Wagon type
	u8 posX;	// X position in tiles coordinates
	u8 posY;	// Y position in tiles coordinates
	u8 heading;	// Heading of the train
	int animX;	// X position of the head in pixel coordinates, if the train is in the screen
	int animY;	// Y position of the head in pixel coordinates, if the train is in the screen
	int animOldX;	// X position of the tail in pixel coordinates, if the train is in the screen
	int animOldY;	// Y position of the tail in pixel coordinates, if the train is in the screen
	u8 cycles; 	// Number of shift in pixel coordinates. When TILESIZE_H is reach, move X/Y in tiles coordinates 
}; 

#endif
