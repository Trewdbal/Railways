void menuTile(u8* p_world, u8 x, u8 y)
{
	u8 menuChoice;

	const char *txtMenuTile[] = { 
		"About this tile",
		"Begin a railway",
		"Railroad depot",
		"Accounting",
		"Resume",
	};

	putM2();


	do{
		menuChoice = drawMenu(txtMenuTile,5);

		if(menuChoice==0)
		{


		}

	}
	while(menuChoice!=4);

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
			for(i=0; i<5000; i++) {}
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
