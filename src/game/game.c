#include "game.h"

void windowInfoTile(u8 x, u8 y)
{
	const char *txtWindowInfoTile[4];

	txtWindowInfoTile[1] = "";
	txtWindowInfoTile[2] = "Production: Nothing";
	txtWindowInfoTile[3] = "Demand: Nothing";

	switch(p_world[y*WIDTH+x])
	{
		case GRASS1:
		case GRASS2:
			txtWindowInfoTile[0] = "Grassland";
			break;
		case DWELLINGS1:
		case DWELLINGS2:
		case DWELLINGS3:
			txtWindowInfoTile[0] = "City";
			txtWindowInfoTile[2] = "Production: Passengers, mail";
			txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
			break;
		case FARM1:
		case FARM2:
			txtWindowInfoTile[0] = "Farm";
			txtWindowInfoTile[2] = "Production: Cereal";
			break;
		case WATER:
			txtWindowInfoTile[0] = "Water";
			break;
		case FOREST:
			txtWindowInfoTile[0] = "Forest";
			break;
		case LIVESTOCK:
			txtWindowInfoTile[0] = "Livestock farming";
			txtWindowInfoTile[2] = "Production: Livestock, wool";
			txtWindowInfoTile[3] = "Demand: Cereal";
			break;
		default:
			txtWindowInfoTile[0] = "Not yet implemented";
	}

	drawWindow(txtWindowInfoTile, 4, 0);
}

void menuStations()
{
	u8 result;

	const char *txtMenuSizeStation[] = { 
		"Small",
		"Medium",
		"Large",
	};

	result = drawMenu(txtMenuSizeStation,3);

	switch(result)
	{
		case 0:
			CURSOR_MODE=T_SSEW;
			break;

		case 1:
			CURSOR_MODE=T_SMEW;
			break;

		case 2:
			CURSOR_MODE=T_SLEW;
			break;
	}
}

void menuTile(u8 x, u8 y)
{
	u8 menuChoice;

	const char *txtMenuTile[] = { 
		"About this tile",
		"Build a railway",
		"Build a station",
		"Destroy",
		"Train management",
		"Accounting",
		"Resume",
	};

	const char *txtWindowDestroy[] = { 
		"Destroy this place will cost 100 $",
		"",
		"Continue ?",
	};


	putM2();

	do{
		menuChoice = drawMenu(txtMenuTile,7);

		if(menuChoice==0)
			windowInfoTile(x, y);
		else if(menuChoice==1)
		{
			CURSOR_MODE=T_REW;
			menuChoice=6;
		}
		else if(menuChoice==2)
		{
			menuStations();
			menuChoice=6;
		}
		else if(menuChoice==3)
		{
			if(	drawWindow(txtWindowDestroy,3,1) == 1)
				p_world[x+y*WIDTH] = GRASS1;

			menuChoice=6;
		}
		else if(menuChoice==4)
		{
			trainManagement();
			menuChoice=6;
		}

	}

	while(menuChoice!=6);

	putM1();

}

void game()
{

	int ulx = 0;
	int uly = 0;
	int xCursor = 10;
	int yCursor = 6;
	int i;
	u8 exit=0;
	u8 *p_video;
	nbTrainList=0;

	drawBoxM2(50, 50);
	p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
	cpct_drawStringM2 ("Generating world...", p_video, 0);	

	generateWorld();

	putM1();
	cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
	drawWorld(ulx, uly);


	do{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_CursorUp) )
		{
			drawTile(ulx, uly, xCursor, yCursor);

			yCursor-=1;

			// If cursor is out the screen
			if(yCursor<0)
			{
				yCursor=0;

				// Shift the view if needed and redraw it completely
				if(uly>0)
				{
					uly-=1;
					drawWorld(ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<5000; i++) {}
		}

		else if ( cpct_isKeyPressed(Key_CursorDown) )
		{
			drawTile(ulx, uly, xCursor, yCursor);
			yCursor+=1;
			if(yCursor>NBTILE_H-1)
			{
				yCursor=NBTILE_H-1;
				if(uly<HEIGHT-NBTILE_H)
				{
					uly+=1;
					drawWorld(ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<5000; i++) {}
		}

		else if ( cpct_isKeyPressed(Key_CursorLeft) )
		{
			drawTile(ulx, uly, xCursor, yCursor);
			xCursor-=1;
			if(xCursor<0)
			{
				xCursor=0;
				if(ulx>0)
				{
					ulx-=1;
					drawWorld(ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		else if ( cpct_isKeyPressed(Key_CursorRight) )
		{
			drawTile(ulx, uly, xCursor, yCursor);
			xCursor+=1;
			if(xCursor>NBTILE_W-1)
			{
				xCursor=NBTILE_W-1;
				if(ulx<WIDTH-NBTILE_W)
				{
					ulx+=1;
					drawWorld(ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}


		else if ( cpct_isKeyPressed(Key_Space) )
		{
			if(CURSOR_MODE==T_SSNS)
				CURSOR_MODE=T_SSEW;
			else if(CURSOR_MODE==T_SSEW)
				CURSOR_MODE=T_SSNS;
			else if(CURSOR_MODE==T_SMNS)
				CURSOR_MODE=T_SMEW;
			else if(CURSOR_MODE==T_SMEW)
				CURSOR_MODE=T_SMNS;
			else if(CURSOR_MODE==T_SLNS)
				CURSOR_MODE=T_SLEW;
			else if(CURSOR_MODE==T_SLEW)
				CURSOR_MODE=T_SLNS;
			else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
				CURSOR_MODE+=1;
			else if(CURSOR_MODE==T_RNSW)
				CURSOR_MODE=T_REW;
			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		else if ( cpct_isKeyPressed(Key_Esc) )
		{
			// if standard cursor, call menu Tile
			if(CURSOR_MODE==NONE)
			{

				const char *txtWindowQuit[] = { 
					"Really quit ?",
					"",
					"Press Return to quit or Esc to resume",
				};

				putM2();
				if(	drawWindow(txtWindowQuit,3,1) == 1)
					exit=1;
				else
				{
					putM1();
					cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
					drawWorld(ulx, uly);
				}
			}
			else
			{
				CURSOR_MODE=NONE;
				drawTile(ulx, uly, xCursor, yCursor);
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		else if ( cpct_isKeyPressed(Key_Return) )
		{
			// if standard cursor, call menu Tile
			if(CURSOR_MODE==NONE)
			{
				menuTile(ulx+xCursor, uly+yCursor);
				cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
				drawWorld(ulx, uly);
			}
			else if(CURSOR_MODE==PUTTRAIN)
			{
				// If the cursor is over a station
				if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
				{
					// Update position
					trainList[nbTrainList].posX = ulx+xCursor;
					trainList[nbTrainList].posY = uly+yCursor;

					// Update heading
					// Vertical tracks
					if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
							p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
							p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
					{
						trainList[nbTrainList].heading = 2;

					}
					// Horizontal tracks
					else
					{
						trainList[nbTrainList].heading = 0;

					}


					// Increment nb of trains in the list. Effect: will be considered for animation in DrawTrain
					nbTrainList++;

					CURSOR_MODE=NONE;
					drawTile(ulx, uly, xCursor, yCursor);

				}
			}
			// If station or rail cursor, apply the tile
			else if(CURSOR_MODE>=T_SSNS)
			{
				p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;

				// Back to standard cursor only for the stations, not for the rail mode
				if(CURSOR_MODE<=T_SLEW)
					CURSOR_MODE=NONE;
			}

			// Wait loop
			for(i=0; i<14000; i++) {}

		}

		drawTrains(ulx, uly);
		drawCursor(xCursor, yCursor, 0);
		drawScrolls(ulx, uly);

	} 
	while(!exit);

}
