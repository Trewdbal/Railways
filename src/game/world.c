#include "world.h"

void drawCursor(u8 x, u8 y, u8 color)
{
	u8 *p_video;
	p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);

	switch(CURSOR_MODE)
	{
		case NONE:
			cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
			p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
			cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);


			p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
			cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
			p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
			cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
						p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;

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

	// Initialize random number generator;
	cpct_srand((u32)cpct_count2VSYNC());

	//	Grass();

	for(iy=0; iy<HEIGHT*WIDTH;iy++)
	{
		p_world[iy] = cpct_rand()%2;
	}

	// Forests
	for(ix=0; ix<NBFOREST; ix++)
	{
		iy = cpct_rand16()%(WIDTH*HEIGHT);

		switch(cpct_rand()%4)
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
				p_forest[0] = 0b11000000 , 
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
		iy = cpct_rand16()%(WIDTH*HEIGHT);
		p_world[iy] = cpct_rand()%2+5;
	}

	// Cities

	for(ix=0; ix<NBURBAN; ix++)
	{
		iy = cpct_rand16()%(WIDTH*HEIGHT);
		p_world[iy] = cpct_rand()%3+2;
	}

	for(ix=0; ix<NBURBAN; ix++)
	{
		iy = cpct_rand16()%(WIDTH*HEIGHT);

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
		iy = cpct_rand16()%(WIDTH*HEIGHT);
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

void drawScrolls(u8 x_, u8 y_)
{
	u8 scrollx;
	u8 scrolly;
	u8 *p_video;	
	
	scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
	scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);

	p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);

	p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
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

