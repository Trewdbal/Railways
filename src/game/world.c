#include "world.h"

cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);

void drawCursor(u8 x, u8 y)
{
	u8 *p_video;
	p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);


	switch(CURSOR_MODE)
	{
		case PUTTRAIN:
			//	cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
			break;
		case T_SSNS:
			cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_SSEW:
			cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_SMNS:
			cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_SMEW:
			cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_SLNS:
			cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_SLEW:
			cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case T_REW:
			cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RNS:
			cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_REN:
			cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RES:
			cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RWN:
			cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RWS:
			cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_REWN:
			cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_REWS:
			cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RNSE:
			cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case T_RNSW:
			cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
			break;
	}

	setPixel(x*TILESIZE_H, y*TILESIZE_H, 0);
	setPixel(x*TILESIZE_H+1, y*TILESIZE_H, 0);
	setPixel(x*TILESIZE_H, y*TILESIZE_H+1, 0);
	setPixel(x*TILESIZE_H+1, y*TILESIZE_H+1, 0);

	setPixel(x*TILESIZE_H+15, y*TILESIZE_H, 0);
	setPixel(x*TILESIZE_H+14, y*TILESIZE_H, 0);
	setPixel(x*TILESIZE_H+15, y*TILESIZE_H+1, 0);
	setPixel(x*TILESIZE_H+14, y*TILESIZE_H+1, 0);

	setPixel(x*TILESIZE_H, y*TILESIZE_H+15, 0);
	setPixel(x*TILESIZE_H, y*TILESIZE_H+14, 0);
	setPixel(x*TILESIZE_H+1, y*TILESIZE_H+14, 0);
	setPixel(x*TILESIZE_H+1, y*TILESIZE_H+15, 0);

	setPixel(x*TILESIZE_H+15, y*TILESIZE_H+15, 0);
	setPixel(x*TILESIZE_H+14, y*TILESIZE_H+15, 0);
	setPixel(x*TILESIZE_H+15, y*TILESIZE_H+14, 0);
	setPixel(x*TILESIZE_H+14, y*TILESIZE_H+14, 0);
}

void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
{
	u8 ix;
	u8 iy;

	for(iy=0; iy<nBitsY; iy++)
	{
		for(ix=0; ix<nBitsX; ix++)
		{
			if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
			{
				if(tileType == FOREST)
					p_world[index+iy*WIDTH+ix] = tileType;
				else if(tileType==DWELLINGS1)
					p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;

			}
		}
	}
}

void generateWorld()
{
	int ix;
	int iy;
	u8 p_forest[8];
	u8 p_cities[2];

	CURSOR_MODE = NONE;

	// Initialize random number generator;
	cpct_setSeed_mxor ((u32)cpct_count2VSYNC());

	//	Grass();

	for(iy=0; iy<HEIGHT*WIDTH;iy++)
	{
		p_world[iy] =  cpct_getRandom_mxor_u16()%2;

	}

	// Forests
	for(ix=0; ix<NBFOREST; ix++)
	{
		iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);

		switch(cpct_getRandom_mxor_u16()%4)
		{
			case 0:
				p_forest[0] = 0b10000100;
				p_forest[1] = 0b11000111;
				p_forest[2] = 0b11011110;
				p_forest[3] = 0b01111110;
				p_forest[4] = 0b11111110; 
				p_forest[5] = 0b01111111;
				p_forest[6] = 0b11101111;
				p_forest[7] = 0b11001111;
				break;
			case 1:
				p_forest[0] = 0b00001100;
				p_forest[1] = 0b11111000;
				p_forest[2] = 0b00111111;
				p_forest[3] = 0b01111110;
				p_forest[4] = 0b11111110; 
				p_forest[5] = 0b01011111;
				p_forest[6] = 0b11001111;
				p_forest[7] = 0b10001100;
				break;
			case 2:
				p_forest[0] = 0b00110000;
				p_forest[1] = 0b11110100;
				p_forest[2] = 0b11111111;
				p_forest[3] = 0b11111111;
				p_forest[4] = 0b01111100;
				p_forest[5] = 0b01111110;
				p_forest[6] = 0b00111110;
				p_forest[7] = 0b00011000;
				break;
			case 3:
				p_forest[0] = 0b11000000; 
				p_forest[1] = 0b11100111;
				p_forest[2] = 0b01111110;
				p_forest[3] = 0b01111110;
				p_forest[4] = 0b11111110;
				p_forest[5] = 0b11111100;
				p_forest[6] = 0b01111000;
				p_forest[7] = 0b00110000;
				break;
		}
		patternTile(FOREST, iy, 8, 8, p_forest);

	}

	// Farms

	for(ix=0; ix<NBFARM; ix++)
	{
		iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
		p_world[iy] = cpct_rand()%2+5;
	}

	// Cities

	for(ix=0; ix<NBURBAN; ix++)
	{
		iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
		p_world[iy] = cpct_rand()%3+2;
	}

	for(ix=0; ix<NBURBAN; ix++)
	{
		iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);

		switch(cpct_rand()%6)
		{
			case 0:
				p_cities[0] = 0b01110010; // 01001110;
				p_cities[1] = 0b01000110; // 01100010;
				break;

			case 1:
				p_cities[0] = 0b01100000; // 00000110;
				p_cities[1] = 0b00000110; // 01100000;
				break;

			case 2:
				p_cities[0] = 0b00010000; // 00001000;
				p_cities[1] = 0b00000110; // 01100000;
				break;

			case 3:
				p_cities[0] = 0b11000000; // 00000011;
				p_cities[1] = 0b00110001; // 10001100;
				break;

			case 4:
				p_cities[0] = 0b11000100; // 00100011;
				p_cities[1] = 0b00001110; // 01110000;
				break;

			case 5:
				p_cities[0] = 0b01000000; // 00000010;
				p_cities[1] = 0b01001110; // 01110010;
				break;
		}

		patternTile(DWELLINGS1, iy, 4, 4, p_cities);
	}

	// Livestock

	for(ix=0; ix<NBLIVESTOCK; ix++)
	{
		iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
		p_world[iy] = LIVESTOCK;
	}
}

void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
{
	u8 *p_video;
	int adress = (y_+iy)*WIDTH+x_+ix;

	p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);

	switch(p_world[adress])
	{
		case GRASS1:
			cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case GRASS2:
			cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case DWELLINGS1:
			cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case DWELLINGS2:
			cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case DWELLINGS3:
			cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case FARM1:
			cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case FARM2:
			cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case WATER:
			cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case FOREST:
			cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case LIVESTOCK:
			cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SSNS:
			cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SSEW:
			cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SMNS:
			cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SMEW:
			cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SLNS:
			cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case SLEW:
			cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
			break;
		case REW:
			cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RNS:
			cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case REN:
			cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RES:
			cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RWN:
			cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RWS:
			cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case REWN:
			cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case REWS:
			cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RNSE:
			cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
			break;
		case RNSW:
			cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
			break;
	}
}

void drawScrolls(u8 x, u8 y)
{
	int scrollx = x* (WIDTH-TILESIZE_W)*4/(WIDTH-NBTILE_W);
	int scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);

	setPixel(scrollx, 1, 0);
	setPixel(scrollx+1, 0, 0);
	setPixel(scrollx+1, 1, 0);
	setPixel(scrollx+1, 2, 0);

	setPixel(scrollx+15, 1, 0);
	setPixel(scrollx+14, 0, 0);
	setPixel(scrollx+14, 1, 0);
	setPixel(scrollx+14, 2, 0);

	setPixel(1, scrolly, 0);
	setPixel(0, scrolly+1, 0);
	setPixel(1, scrolly+1, 0);
	setPixel(2, scrolly+1, 0);

	setPixel(1, scrolly+15, 0);
	setPixel(0, scrolly+14, 0);
	setPixel(1, scrolly+14, 0);
	setPixel(2, scrolly+14, 0);

	//	u8 scrollx;
	//	u8 scrolly;
	/*
	   scrollx = x* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
	   scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);

	   p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	   cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);

	   p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	   cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
	 */

}

void drawWorld(u8 x_, u8 y_)
{
	u8 ix;
	u8 iy;

	for(iy=0; iy<NBTILE_H;iy++)
	{
		for(ix=0; ix<NBTILE_W;ix++)
		{
			drawTile(x_, y_, ix, iy);
		}
	}

	drawScrolls(x_, y_);

	//  sprintf(buff, "%d", p_world[2] );
	//	cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
}

void setTrainHeading(u8 i)
{
	// In case of curve, change the heading

	switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
	{
		case REN:
			if(trainList[i].heading==1) trainList[i].heading=2;
			else if(trainList[i].heading==3) trainList[i].heading=0;
			break;

		case RES:
			if(trainList[i].heading==1) trainList[i].heading=3;
			else if(trainList[i].heading==2) trainList[i].heading=0;
			break;

		case RWN:
			if(trainList[i].heading==0) trainList[i].heading=2;   
			else if(trainList[i].heading==3) trainList[i].heading=1;
			break;

		case RWS:
			if(trainList[i].heading==0) trainList[i].heading=3;
			else if(trainList[i].heading==2) trainList[i].heading=1;
			break;
	}
}

void setPixel(int nX, unsigned char nY, unsigned char nColor)
{

	// http://sitedesteph.free.fr/cpc/lec/index.php?page=sdcc&cour=desmd1

	int nPixel = nX % 4;
	unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));

	if(nPixel == 0)
	{
		*pAddress &= 119;

		if(nColor & 1)
			*pAddress |= 128;
		if(nColor & 2)
			*pAddress |= 8;
	}
	else if(nPixel == 1)
	{
		*pAddress &= 187;

		if(nColor & 1)
			*pAddress |= 64;
		if(nColor & 2)
			*pAddress |= 4;
	}
	else if(nPixel == 2)
	{
		*pAddress &= 221;

		if(nColor & 1)
			*pAddress |= 32;
		if(nColor & 2)
			*pAddress |= 2;
	}
	else //nPixel == 3
	{
		*pAddress &= 238;

		if(nColor & 1)
			*pAddress |= 16;
		if(nColor & 2)
			*pAddress |= 1;
	}
}

u8 isPixelBlack(int nX, unsigned char nY)
{
	// Get the rank of the pixel
	int nPixel = nX % 4;

	// Get the video address
	unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));


	if(nPixel == 0 && !(*pAddress & 136)) 
		return 1;
	else if(nPixel == 1 && !(*pAddress & 68))
		return 1;
	else if(nPixel == 2 && !(*pAddress & 34))
		return 1;
	else if(nPixel == 3 && !(*pAddress & 17))
		return 1;

	return 0;
}

void drawNewTrain(u8 i, u8 x_, u8 y_)
{
	switch(trainList[i].heading)
	{
		//right
		case 0:
			trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+1;
			trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
			trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H;
			trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
			break;

			// left
		case 1:
			trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+14;
			trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
			trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H+15;
			trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
			break;

			// up
		case 2:
			trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
			trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+14;
			trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
			trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H+15;
			break;

			// down
		case 3:
			trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
			trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+1;
			trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
			trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H;
			break;
	}

	setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
	setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
}

void drawTrains(u8 x_, u8 y_)
{
	u8 i;
	unsigned char *buff;
	int oldTrainX, oldTrainY;
	int actualPosX, actualPosY;
	int animPixX, animPixY;

	// Animation
	for(i=0; i<nbTrainList; i++)
	{
		// If the last position of the train is in the screen, clean it
		if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
		{
			// Restore pixels before calculation of new anim position. Useful if the screen was scrolled cause tiles were redrawn	
			animPixX = trainList[i].animX-x_*TILESIZE_H;
			animPixY = trainList[i].animY-y_*TILESIZE_H;

			setPixel(animPixX, animPixY, 3);
			setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);

			// Transfer actual position to "old"
			oldTrainX = trainList[i].animOldX;
			oldTrainY = trainList[i].animOldY;
			trainList[i].animOldX = trainList[i].animX;
			trainList[i].animOldY = trainList[i].animY;

			// Calculate new position. The idea is based on a cellular automata, Wireworld. There is 8 possible directions
			if( isPixelBlack(animPixX +1, animPixY) )
				trainList[i].animX+=1;
			else if( isPixelBlack(animPixX -1, animPixY) )
				trainList[i].animX-=1;
			else if( isPixelBlack(animPixX, animPixY + 1) )
				trainList[i].animY+=1;
			else if( isPixelBlack(animPixX, animPixY - 1) )
				trainList[i].animY-=1;
			else if( isPixelBlack(animPixX+1,animPixY+ 1) )
			{
				trainList[i].animX+=1;
				trainList[i].animY+=1;
			}
			else if( isPixelBlack(animPixX+1, animPixY - 1) )
			{
				trainList[i].animX+=1;
				trainList[i].animY-=1;
			}
			else if( isPixelBlack(animPixX-1, animPixY+ 1) )
			{
				trainList[i].animX-=1;
				trainList[i].animY+=1;
			}
			else if( isPixelBlack(animPixX-1, animPixY- 1) )
			{
				trainList[i].animX-=1;
				trainList[i].animY-=1;
			}

			// If train is on a new tile, update position
			actualPosX = (int)(trainList[i].animX/TILESIZE_H); // Update position in tiles coordinates
			actualPosY = (int)(trainList[i].animY/TILESIZE_H); 
			if( actualPosX != trainList[i].posX || actualPosY != trainList[i].posY )
			{
				trainList[i].posX = actualPosX; // Update position in tiles coordinates
				trainList[i].posY = actualPosY; // Update position in tiles coordinates

				setTrainHeading(i); // Calculate new heading
			}

			// Draw new position in pixel coordinates if the pixel is in screen

			animPixX = trainList[i].animX-x_*TILESIZE_H;
			animPixY = trainList[i].animY-y_*TILESIZE_H;

			if(animPixX>0 && animPixY>0 && animPixX<319 && animPixY<192)
			{
				setPixel(animPixX,animPixY, 3);
				setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
				setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
			}
			// Else, clean it because it is about to diseapear from the screen
			else
			{
				// Bye bye the train from the screen
				setPixel(animPixX,animPixY, 0);
				setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 0);
				setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);

				trainList[i].animOldX = 0;
				trainList[i].animOldY = 0;
				trainList[i].animX = 0;
				trainList[i].animY = 0;

				trainList[i].cycles = 0;

			}

			  sprintf(buff, "%d %d", trainList[i].posX, trainList[i].posY);
			  cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);

		}

		// If the train is not in the screen
		else
		{
		//	trainList[i].cycles++;

			// After 16 cycles, move 1 tile
		//	if(trainList[i].cycles>=TILESIZE_H)
		//	{

				// Reset counter
				trainList[i].cycles=0;

				// Move the train
				switch(trainList[i].heading)
				{
					case 0: // Right
						if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
							trainList[i].posX++;
						break;
					case 1: // Left
						if(trainList[i].posX >0 && p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS )
							trainList[i].posX--;
						break;
					case 2: // Up
						if(trainList[i].posY > 0 && p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS )
							trainList[i].posY--;
						break;
					case 3: // Down
						if(trainList[i].posY < HEIGHT && p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
							trainList[i].posY++;
						break;
				}

			  sprintf(buff, "%d %d %d", trainList[i].posX, trainList[i].posY, trainList[i].heading );
			  cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);

				
				setTrainHeading(i);

				// If now the train is in the screen, we have to restore the pixels
				if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
				{
					drawNewTrain(i, x_, y_);
				}

		//	}
		}

	}

}
