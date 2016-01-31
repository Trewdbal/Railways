#define SCR_VMEM  (u8*)0xC000

#define BANNER_W 40
#define BANNER_H 40

#include <cpctelera.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "includes/img.h"
#include "includes/gui.h"
#include "includes/world.h"
#include "includes/game.h"

void drawTrain() 
{
	/*
	// Video memory pointers
	u8 *pvideo_s1;

	//    cpct_clearScreen_f64(0);

	pvideo_s1 = cpct_getScreenPtr(SCR_VMEM, 20, 80);

	cpct_drawSprite(BB15000, pvideo_s1, BANNER_W, BANNER_H);

	cpct_scanKeyboard_f();

	do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );

	cpct_drawSprite(BB27000, pvideo_s1, BANNER_W, BANNER_H);

	do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );

	cpct_drawSprite(BB63000, pvideo_s1, BANNER_W, BANNER_H);

	do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );

	cpct_drawSprite(BB67000, pvideo_s1, BANNER_W, BANNER_H);

	do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );

	cpct_drawSprite(RE44II, pvideo_s1, BANNER_W, BANNER_H);

	do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );

	cpct_drawStringM0 ("BB15000", SCR_VMEM, 0, 1);
	while(1)
	{
	}

*/
}

void putM0(void)
{
	cpct_setVideoMode(0);

	cpct_setPalette(paletteTrains, 16);
}

void putM2(void)
{
	cpct_setVideoMode(2);

	cpct_setPalette(paletteMenusM2, 2);
}

void main(void)
{
	u16 firmware;
	u8 menuChoice;

	const char *menuMain[] = { 
		"New game",
		"Credits",
		"Quit",
	};

	const char *windowCredit[] = { 
		"Railways",
		"",
		"Trewdbal  Productions 2016",
	};

	firmware = cpct_disableFirmware();

	cpct_fw2hw(paletteTrains, 16);
	cpct_fw2hw(paletteMenusM2, 2);
	cpct_fw2hw(paletteMenusM1, 4);

	cpct_setBorder(paletteTrains[12]);

	putM2();

	do{
		cpct_clearScreen(0b11111111);

		menuChoice = drawMenu(menuMain,3);

		if(menuChoice==0)
		{
			game();

			putM2();
		}

		if(menuChoice==1)
			drawWindow(windowCredit,3,0);
	}
	while(menuChoice!=2);

	cpct_setVideoMode(0);
	cpct_reenableFirmware(firmware);

}
