void putM0(void)
{
	cpct_setVideoMode(0);

	cpct_setPalette(paletteTrains, 16);
}

void putM1(void)
{
	cpct_setVideoMode(1);

	cpct_setPalette(paletteMenusM1, 4);
}

void putM2(void)
{
	cpct_setVideoMode(2);

	cpct_setPalette(paletteMenusM2, 2);
	cpct_clearScreen(0b11111111);
}

void drawBoxM0(int width_, int height_)
{
	u8 *pvid;
	// Screen center : 40, 100

	int left = (80-width_)/2;
	int top = (200-height_)/2;

	cpct_clearScreen(cpct_px2byteM0(9,9));

	// Shadow
	pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
	cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);

	// Border
	pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);

	// center
	pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
	cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
}


void drawBoxM2(int width_, int height_)
{	
	u8 *pvid;
	// Screen center : 40, 100

	int left = (80-width_)/2;
	int top = (200-height_)/2;

	// Shadow
	pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
	cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);

	// Border
	pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	cpct_drawSolidBox(pvid, 0b11111000, width_, height_);

	// center
	pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
	cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
}

void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
{
	u8 *p_video;

	// Erase selection bar
	p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
	cpct_drawSolidBox(p_video, 0b11111111, 17, 10);

	// Re-draw text
	p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
	cpct_drawStringM2 (menu[iSelect], p_video, 0);
}

void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
{
	int i;
	u8 *p_video;
	u8 penSelected = 0;
//	drawBoxM2(30,nbEntry*12);

	// Draw selection bar
	p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
	cpct_drawSolidBox(p_video, 0b00000000, 17, 10);

	// Wait loop
	for(i=0; i<14000; i++) {}

	// Draw text
	for(i=0; i<nbEntry; i++)
	{
		if(i==iSelect)
			penSelected = 1;
		else
			penSelected = 0;

		p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
		cpct_drawStringM2 (menu[i], p_video, penSelected);
	}
}

u8 drawMenu(char **menu, u8 nbEntry)
{
	int i;
	u8 iSelect=0;

	drawBoxM2(30,nbEntry*12);
	
	drawMenuEntry(menu, nbEntry, iSelect);

	do{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_CursorUp) )
		{
			EraseMenuEntry(menu, nbEntry, iSelect);

			if(iSelect ==0)
				iSelect = nbEntry-1;
			else
				iSelect--;

			drawMenuEntry(menu, nbEntry, iSelect);
		}

		if ( cpct_isKeyPressed(Key_CursorDown) )
		{
			EraseMenuEntry(menu, nbEntry, iSelect);

			if(iSelect == nbEntry-1)
				iSelect = 0;
			else
				iSelect++;

			drawMenuEntry(menu, nbEntry, iSelect);
		}
	} 
	while(!cpct_isKeyPressed(Key_Return));

	// Wait loop
	for(i=0; i<14000; i++) {}

	return iSelect;


	/*
	   char *buff;
	   sprintf(buff, "%d", sizeof(u8) );
	   cpct_drawStringM2 (buff, SCR_VMEM, 0);
	 */
}

u8 drawWindow(char **text, u8 nbLine, u8 button)
{
	u8 i;
	u8 *p_video;
	u8 valueReturn=0;
	const char *buttonTxt;

	if(button == 0)
		buttonTxt = "<OK>";
	else
		buttonTxt = "<OK>  <Cancel>";

	drawBoxM2(30,(nbLine+2)*12);

	for(i=0; i<nbLine; i++)
	{
		p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
		cpct_drawStringM2 (text[i], p_video, 0);
	}

	p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
	cpct_drawStringM2 (buttonTxt, p_video, 0);


	do{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_Return) )
			valueReturn=1;

		if ( cpct_isKeyPressed(Key_Esc) )
			valueReturn=0;
	} 
	while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));

	return valueReturn;
}

