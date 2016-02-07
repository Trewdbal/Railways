#include "depot.h"

void railroadDepot()
{
	u8 exit=0;

	cpct_clearScreen(0b11111111);

	do
	{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_Esc) )
			exit=1;
		else if(cpct_isKeyPressed(Key_Return) )
		{
			const char *txtMenuChoice[] = { 
				"Buy a locomotive",
				"Back to depot"};

			u8 menuChoice = drawMenu(txtMenuChoice,2);

			if(menuChoice == 0)
				buyLocomotive();
		}

	}
	while(!exit);
}

void drawLocomotive(u8 i, u8 iSelect)
{
	u8 *p_video;
	p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));

	// Border
	if(i==iSelect)
		cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	else
		cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);

	p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);

	if(i<locDelocked)
	{
		cpct_drawSprite(l141P, p_video, 20, 20);
	}
	else
	{
		cpct_drawSprite(lock, p_video, 20, 20);
	}
}


void buyLocomotive()
{
	u8 exit=0;
	int i;
	u8 iSelect=0;

	putM0();

	cpct_clearScreen(cpct_px2byteM0(9,9));

	for(i=0; i<12; i++)
		drawLocomotive(i, iSelect);

	do
	{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_CursorUp) )
		{
			if (iSelect>0)
			{
				iSelect--;
				drawLocomotive(iSelect, iSelect);
				drawLocomotive(iSelect+1, iSelect);
			}
			for(i=0; i<14000; i++) {} // wait loop
		}
		else if ( cpct_isKeyPressed(Key_CursorDown) )
		{
			if (iSelect<11)
			{
				iSelect++;
				drawLocomotive(iSelect, iSelect);
				drawLocomotive(iSelect-1, iSelect);
			}
			for(i=0; i<14000; i++) {} // wait loop
		}

		if ( cpct_isKeyPressed(Key_Esc) )
			exit=1;
	}
	while(!exit);

	putM2();
}
