
#include <cpctelera.h>
#include "data/defs.h"
#include "gui/gui.h"
#include "game/game.h"

extern const u8 paletteMenusM1[];
extern const u8 paletteMenusM2[];
extern const u8 paletteTrains[];

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

	putM0();
	drawTrain();

	putM2();

	do{
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
