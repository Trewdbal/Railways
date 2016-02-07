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
		switch(i)
		{
			case 0:
				cpct_drawSprite(l130B, p_video, 20, 20);
				break;
			case 1:
				cpct_drawSprite(l141TA, p_video, 20, 20);
				break;
			case 2:
				cpct_drawSprite(l142AT, p_video, 20, 20);
				break;
			case 3:
				cpct_drawSprite(l141P, p_video, 20, 20);
				break;
		}

	}

	else
	{
		cpct_drawSprite(lock, p_video, 20, 20);
	}
}

void drawAllLocomotives(u8 iSelect)
{
	u8 i;

	putM0();

	cpct_clearScreen(cpct_px2byteM0(9,9));
	for(i=0; i<12; i++)
		drawLocomotive(i, iSelect);
}

u8 confirmBuyLocomotive(u8 iSelect)
{
	const char *txtWindowLocomotive[6];

	putM2();

	switch(iSelect)
	{
		case 0:
			txtWindowLocomotive[0] = "130 B";
			txtWindowLocomotive[1] = "";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1909";
			txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
			txtWindowLocomotive[5] = "Price: 1000$";
			break;
		case 1:
			txtWindowLocomotive[0] = "141 TA";
			txtWindowLocomotive[1] = "";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1911";
			txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
			txtWindowLocomotive[5] = "Price: 900$";
			break;
		case 2:
			txtWindowLocomotive[0] = "142 AT";
			txtWindowLocomotive[1] = "";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1926";
			txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
			txtWindowLocomotive[5] = "Price: 1500$";
			break;

		case 3:
			txtWindowLocomotive[0] = "141 P";
			txtWindowLocomotive[1] = "";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1942";
			txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
			txtWindowLocomotive[5] = "Price: 2000$";
			break;
	}

	return drawWindow(txtWindowLocomotive, 6, 1);
}

void buyLocomotive()
{
	u8 exit=0;
	int i;
	u8 iSelect=0;

	drawAllLocomotives(iSelect);

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
		else if ( cpct_isKeyPressed(Key_Return) )
		{
			if(iSelect<locDelocked)
			{
				if(confirmBuyLocomotive(iSelect) == 1)
					exit=1;
				else
					drawAllLocomotives(iSelect);
			}

			for(i=0; i<14000; i++) {} // wait loop
		}
		else if ( cpct_isKeyPressed(Key_Esc) )
			exit=1;
	}
	while(!exit);

	putM2();
}
