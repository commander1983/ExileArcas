class ARMED_LIGHT_1ON
{
	idd = -1;
	movingEnable = 0;
	duration = 3;
	fadein = 0;
	fadeout = 10;
	name = "ARMED LIGHT 1 ON";
	controls[] = {"LIGHT1ON"};

	class LIGHT1ON
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "EOD\T1\graphics\WIP_Bomb_L1a.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,1};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;  
	};
};

class ARMED_LIGHT_1OFF
{
	idd = -1;
	movingEnable = 0;
	duration = 3;
	fadein = 0;
	fadeout = 10;
	name = "ARMED LIGHT 1 OFF";
	controls[] = {"LIGHT1OFF"};

	class LIGHT1OFF
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "EOD\T1\graphics\WIP_Bomb_L1a_Disarmed.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,1};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;  
	};
};

/*
class WORLD_MAP_1
{
	idd = -1;
	movingEnable = 0;
	duration = 3;
	fadein = 0;
	fadeout = 10;
	name = "WORLD MAP 1";
	controls[] = {"MAP1"};

	class MAP1
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "EOD\T1\graphics\world_map_1.jpg";
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
*/