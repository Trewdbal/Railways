#include "train.h"

void trainManagement()
{
	const char *txtMenuChoice[] = { 
		"New train",
		"Manage existing"};

	u8 menuChoice = drawMenu(txtMenuChoice,2);

	if(menuChoice == 0)
		buyTrain();

	putM1();
}


u8 confirmBuyTrain(u8 iSelect)
{
	u8 returnChoice=0;
	const char *txtWindowLocomotive[6];

	// Prepare the display of informations about the selected locomotive

	putM2();

	txtWindowLocomotive[1] = "";	

	switch(iSelect)
	{
		case 0:
			txtWindowLocomotive[0] = "130 B";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1909";
			txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
			txtWindowLocomotive[5] = "Price: 1000$";
			break;
		case 1:
			txtWindowLocomotive[0] = "141 TA";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1911";
			txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
			txtWindowLocomotive[5] = "Price: 900$";
			break;
		case 2:
			txtWindowLocomotive[0] = "242 CT";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1930";
			txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
			txtWindowLocomotive[5] = "Price: 1500$";
			break;

		case 3:
			txtWindowLocomotive[0] = "141 P";
			txtWindowLocomotive[2] = "Propulsion: steam";
			txtWindowLocomotive[3] = "Entry of service: 1942";
			txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
			txtWindowLocomotive[5] = "Price: 2000$";
			break;
	}

	// Display window with informations about locomotive and ask for confirmation of purchase
	returnChoice = drawWindow(txtWindowLocomotive, 6, 1);

	// If confirm buy locomotive, add the locomotive to the train list
	if (returnChoice==1)
	{
		if(nbTrainList==0)
			trainList = (Train*)malloc(sizeof(Train));
		else
			realloc(trainList, (nbTrainList+1)*sizeof(Train));

		// Define locomotive
		trainList[nbTrainList].loco = iSelect;

		// Define wagons
		trainList[nbTrainList].wagon[0] = 0;
		trainList[nbTrainList].wagon[1] = 0;
		trainList[nbTrainList].wagon[2] = 0;

		CURSOR_MODE = PUTTRAIN;
	}

	return returnChoice;
}

void buyTrain()
{
	const char *txtMenuLoco[] = { 
		"130 B",
		"141 TA",
		"242 CT",
		"141 P",
		"BB 63000",
		"Re 4/4 II",
		"BB 67000",
		"BB 15000",
		"Re 460",
		"DB Class 101",
		"BB 27000",
		"ES 64F4"
		};

	confirmBuyTrain( drawMenu(txtMenuLoco,12) );
}
