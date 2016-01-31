void windowInfoTile(u8 *p_world, u8 x, u8 y)
{
	const char *txtWindowInfoTile[4];

	switch(p_world[y*WIDTH+x])
	{
		case GRASS1:
		case GRASS2:
			txtWindowInfoTile[0] = "Grassland";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: nothing";
			txtWindowInfoTile[3] = "Demand: nothing";
			break;
		case DWELLINGS1:
		case DWELLINGS2:
		case DWELLINGS3:
			txtWindowInfoTile[0] = "City";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: Passengers, mail";
			txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
			break;
		case FARM1:
		case FARM2:
			txtWindowInfoTile[0] = "Farm";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: Cereal";
			txtWindowInfoTile[3] = "Demand: Nothing";
			break;
		case WATER:
			txtWindowInfoTile[0] = "Water";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: Nothing";
			txtWindowInfoTile[3] = "Demand: Nothing";
			break;
		case FOREST:
			txtWindowInfoTile[0] = "Forest";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: Nothing";
			txtWindowInfoTile[3] = "Demand: Nothing";
			break;
		case LIVESTOCK:
			txtWindowInfoTile[0] = "Livestock farming";
			txtWindowInfoTile[1] = "";
			txtWindowInfoTile[2] = "Production: Livestock, wool";
			txtWindowInfoTile[3] = "Demand: Cereal";
			break;
	}

	drawWindow(txtWindowInfoTile, 4, 0);
}

void menuStations(u8* p_world, u8 x, u8 y)
{
	u8 result;
	
	const char *txtMenuSizeStation[] = { 
		"Small",
		"Medium",
		"Large",
	};
	
	const char *txtMenuOrientationStation[] = { 
		"East - West",
		"North - South",
	};
	
	result = drawMenu(txtMenuSizeStation,3);
	result = result + 100*drawMenu(txtMenuOrientationStation,2);

	switch(result)
	{
		case 0:
			p_world[y*WIDTH+x] = SSEW;
			break;
		case 100:
			p_world[y*WIDTH+x] = SSNS;
			break;
		case 1:
			p_world[y*WIDTH+x] = SMEW;
			break;
		case 101:
			p_world[y*WIDTH+x] = SMNS;
			break;
		case 2:
			p_world[y*WIDTH+x] = SLEW;
			break;
		case 102:
			p_world[y*WIDTH+x] = SLNS;
			break;
	}
}


void menuTile(u8* p_world, u8 x, u8 y)
{
	u8 menuChoice;

	const char *txtMenuTile[] = { 
		"About this tile",
		"Build a railway",
		"Build a station",
		"Railroad depot",
		"Accounting",
		"Resume",
	};

	putM2();

	do{
		menuChoice = drawMenu(txtMenuTile,6);

		if(menuChoice==0)
			windowInfoTile(p_world, x, y);
		else if(menuChoice==2)
		{
			menuStations(p_world, x, y);
			menuChoice=5;
		}

	}
	while(menuChoice!=5);

	putM1();

}

void game()
{
	u8 p_world[WIDTH*HEIGHT];
	u8 ulx = 0;
	u8 uly = 0;
	int xCursor = 10;
	int yCursor = 6;
	int i;
	u8 exit=0;

	cpct_clearScreen(cpct_px2byteM1(0,0,0,0));

	generateWorld(p_world);

	drawWorld(p_world, ulx, uly);

	do{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_CursorUp) )
		{
			drawTile(p_world, ulx, uly, xCursor, yCursor);

			yCursor-=1;

			// If cursor is out the screen
			if(yCursor<0)
			{
				yCursor=0;

				// Shift the view if needed and redraw it completely
				if(uly>0)
				{
					uly-=1;
					drawWorld(p_world, ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		if ( cpct_isKeyPressed(Key_CursorDown) )
		{
			drawTile(p_world, ulx, uly, xCursor, yCursor);
			yCursor+=1;
			if(yCursor>NBTILE_H-1)
			{
				yCursor=NBTILE_H-1;
				if(uly<HEIGHT-NBTILE_H)
				{
					uly+=1;
					drawWorld(p_world, ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		if ( cpct_isKeyPressed(Key_CursorLeft) )
		{
			drawTile(p_world, ulx, uly, xCursor, yCursor);
			xCursor-=1;
			if(xCursor<0)
			{
				xCursor=0;
				if(ulx>0)
				{
					ulx-=1;
					drawWorld(p_world, ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		if ( cpct_isKeyPressed(Key_CursorRight) )
		{
			drawTile(p_world, ulx, uly, xCursor, yCursor);
			xCursor+=1;
			if(xCursor>NBTILE_W-1)
			{
				xCursor=NBTILE_W-1;
				if(ulx<WIDTH-NBTILE_W)
				{
					ulx+=1;
					drawWorld(p_world, ulx, uly);
				}
			}

			// Wait loop
			for(i=0; i<14000; i++) {}
		}

		if ( cpct_isKeyPressed(Key_Esc) )
		{
			exit=1;
		}

		if ( cpct_isKeyPressed(Key_Return) )
		{
			menuTile(p_world, ulx+xCursor, uly+yCursor);
			cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
			drawWorld(p_world, ulx, uly);
		}

		drawCursor(xCursor, yCursor, 0);
	} 
	while(!exit);

}
