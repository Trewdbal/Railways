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

void generateWorld()
{
	int ix;
	int iy;
	int shift;

	//	Grass();

	cpct_setRandomSeedUniform_u8(0);

	for(iy=0; iy<HEIGHT*WIDTH;iy++)
	{
		p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
	}

	// Forests




	// Farms
	cpct_setRandomSeedUniform_u8(1);

	for(ix=0; ix<NBFARM; ix++)
	{
		iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;

		shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
		shift=iy-shift+5;

		if(shift>0 && shift<WIDTH*HEIGHT)
			p_world[shift] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%2+5;
	}

	// Cities

	cpct_setRandomSeedUniform_u8(2);

	for(ix=0; ix<NBURBAN; ix++)
	{
		iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;

		shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
		shift=iy-shift+5;

		if(shift>0 && shift<WIDTH*HEIGHT)
			p_world[shift] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
	}

	// Livestock

	cpct_setRandomSeedUniform_u8(3);

	for(ix=0; ix<NBLIVESTOCK; ix++)
	{
		iy = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)*15; // (WIDTH*HEIGHT)/255;

		shift = cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%10;
		shift=iy-shift+5;

		if(shift>0 && shift<WIDTH*HEIGHT)
			p_world[shift] = LIVESTOCK;
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

void drawWorld(u8 x_, u8 y_)
{
	u8 ix;
	u8 iy;
	u8 scrollx;
	u8 scrolly;
	u8 *p_video;

	for(iy=0; iy<NBTILE_H;iy++)
	{
		for(ix=0; ix<NBTILE_W;ix++)
		{
			drawTile(x_, y_, ix, iy);
		}
	}

	// Draw the scrolls

	scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
	scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);

	p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);

	p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);

	//  sprintf(buff, "%d", p_world[2] );
	//	cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);


}
