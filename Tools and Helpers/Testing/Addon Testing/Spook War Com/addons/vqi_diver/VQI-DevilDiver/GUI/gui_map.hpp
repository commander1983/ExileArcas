class WORLD_MAP_SUB
{
	idd = -1;
	movingEnable = 0;
	duration = 10;
	fadein = 0;
	fadeout = 10;
	name = "WORLD MAP SUB";
	controls[] = {"MAPSUB"};

	class MAPSUB
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_diver\vqi-devildiver\gui\world_map_1.jpg";
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