//////////////////////////////////////////////////////////////////
// BACKGROUNDs!


//titles[]={};
class VQI_EOD_BACKGROUND_01 {
	idd = -1;
	movingEnable = 0;
	duration = 9999;
	fadein = 0;
	fadeout = 10;
	name = "BACKGROUND 1";
	controls[] = {"BKG1"};

	class BKG1 {
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_eod\VQI-EerieEOD\Background\bkg_eod_metal_cor.jpg";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,1};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};

class VQI_EOD_BACKGROUND_02 {
	idd = -1;
	movingEnable = 0;
	duration = 9999;
	fadein = 0;
	fadeout = 10;
	name = "BACKGROUND 2";
	controls[] = {"BKG2"};

	class BKG2 {
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_eod\VQI-EerieEOD\Background\bkg_eod_metal_cor.jpg";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,1};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};



/* DIALOG
//////////////////////////////////////////////////////////////
class VQI_EOD_BACKGROUND_01
{
	idd=-1;
	movingenable=false;
	
	class controls
	{
		class VQI_EOD_BKG1: RscPicture
		{
		idc = 1199;
		text = "\vqi_eod\VQI-EerieEOD\Background\bkg_eod_stone1.jpg";
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH; 
		};

	};
};

class VQI_EOD_BACKGROUND_02
{
	idd=-1;
	movingenable=false;
	
	class controls
	{
		class VQI_EOD_BKG2: RscPicture
		{
		idc = 1199;
		text = "\vqi_eod\VQI-EerieEOD\Background\bkg_eod_stone1.jpg";
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH; 
		};

	};
};
*/