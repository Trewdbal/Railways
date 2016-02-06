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

void buyLocomotive()
{
	u8 exit=0;
	u8 *p_video;
	u8 i;

	putM0();

	cpct_clearScreen(cpct_px2byteM0(14,15));

	for(i=0; i<12; i++)
	{
		p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3), 30+40*(i%4));
		
		// Border
		cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);

		p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3)+1, 30+40*(i%4)+1);
		
		if(i<locDelocked)
		{
		cpct_drawSprite(l141P, p_video, 20, 20);
		}
		else
		{
		cpct_drawSprite(lock, p_video, 20, 20);
		}

	}

	do
	{
		cpct_scanKeyboard(); 

		if ( cpct_isKeyPressed(Key_Esc) )
			exit=1;
	}
	while(!exit);

	putM2();
}
