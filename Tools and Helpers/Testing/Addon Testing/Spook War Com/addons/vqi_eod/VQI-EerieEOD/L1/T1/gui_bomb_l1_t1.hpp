////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Goblin, v1.063, #Ciwyca)
////////////////////////////////////////////////////////

// No PEEKING AT MY STUFF!!! TOP SECRET =) W-I-P
//#include gui_defines.hpp

//#define COLOR_TRANSPARENT { 0, 0, 0, 0 }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  A
class VQI_BOMB_L1_T1a
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1a_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1a.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1a_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.481192 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1a_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* A Disarm AREA: 2RT

*/
class VQI_BOMB_L1_T1a_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";	
	
	class controls
	{
		class VQI_BOMB_L1_T1a_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1a_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

////////////////////////////////////////////////////////////////////
//Blinking Light W-I-P
/*
class VQI_EOD_L1a_Light_Armed
{
	idd=-1;
	movingenable=false;
	
	class controls
	{
		class VQI_EOD_L1a_Light_ON: RscPicture
		{
		idc = 1201;
		text = "EOD\L1\WIP_Light_Micro_On.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH; 
		};

	};
};

class VQI_EOD_L1a_Light_Disarmed
{
	idd=-1;
	movingenable=false;
	
	class controls
	{
		class VQI_EOD_L1a_Light_OFF: RscPicture
		{
		idc = 1201;
		text = "EOD\L1\WIP_Light_Micro_Off.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH; 
		};

	};
};
*/
//---------------------------------------------------------------------------------------
//["0.639969 * safezoneW + safezoneX","0.59009 * safezoneH + safezoneY","0.0132213 * safezoneW","0.00940393 * safezoneH"]


//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  B
class VQI_BOMB_L1_T1b
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";	
	
	class controls
	{
		class VQI_BOMB_L1_T1b_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1b.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1b_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.59009 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1b_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* B Disarm AREA: 1RB

*/
class VQI_BOMB_L1_T1b_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";	
	
	class controls
	{
		class VQI_BOMB_L1_T1b_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1b_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  C
class VQI_BOMB_L1_T1c
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1c_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1c.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1c_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.439627 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1c_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* C Disarm AREA: 1GT

*/
class VQI_BOMB_L1_T1c_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1c_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1c_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  D
class VQI_BOMB_L1_T1d
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1d_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1d.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1d_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.439627 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1d_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* D Disarm AREA: 1GT
0.584635 * safezoneH + safezoneY
*/
class VQI_BOMB_L1_T1d_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1d_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1d_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  E
class VQI_BOMB_L1_T1e
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1e_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1e.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1e_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.584635 * safezoneH + safezoneY
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1e_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* E Disarm AREA: 1RB
0.584635 * safezoneH + safezoneY
*/
class VQI_BOMB_L1_T1e_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1e_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1e_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  F
class VQI_BOMB_L1_T1f
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1f_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1f.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1f_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.537051 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0188079 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1f_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* F Disarm AREA: 1gB (g=Grey)
0.0188079 * safezoneH
*/
class VQI_BOMB_L1_T1f_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1f_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1f_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  G
class VQI_BOMB_L1_T1g
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1g_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1g.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1g_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.548478 * safezoneW + safezoneX;
		y = 0.641059 * safezoneH + safezoneY;
		w = 0.0308497 * safezoneW;
		h = 0.0188079 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1g_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* G Disarm AREA: Battery
["0.548478 * safezoneW + safezoneX","0.641059 * safezoneH + safezoneY","0.0308497 * safezoneW","0.0188079 * safezoneH"]
*/
class VQI_BOMB_L1_T1g_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1g_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1g_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  H
class VQI_BOMB_L1_T1h
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1h_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1h.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1h_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.584256 * safezoneW + safezoneX;
		y = 0.616552 * safezoneH + safezoneY;
		w = 0.0220355 * safezoneW;
		h = 0.0188079 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1h_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* H Disarm AREA: 3WB
["0.584256 * safezoneW + safezoneX","0.616552 * safezoneH + safezoneY","0.0220355 * safezoneW","0.0188079 * safezoneH"]
*/
class VQI_BOMB_L1_T1h_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1h_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1h_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  I
class VQI_BOMB_L1_T1i
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1h_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1i.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1h_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.565828 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1i_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* I Disarm AREA: 2RB
0.565828 * safezoneH + safezoneY
*/
class VQI_BOMB_L1_T1i_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1i_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1i_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  J
class VQI_BOMB_L1_T1j
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1j_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1j.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; //h = 0.573639 * safezoneH;
		};
		class VQI_BOMB_L1_T1h_Disarm: QeeRscButton_EOD
		{
		idc = 1600;
		text = ""; //--- ToDo: Localize;
		x = 0.63662 * safezoneW + safezoneX;
		y = 0.584635 * safezoneH + safezoneY;
		w = 0.0176284 * safezoneW;
		h = 0.0099999 * safezoneH;
		action = "closeDialog 0; hint 'Yes'; playSound 'IED_Cut'; playSound 'IED_Disarmed'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\T1\vqi_BOMB_L1_T1j_disarm.sqf""";
		};
		class VQI_BOMB_T1_kaboom: QeeRscButton_EOD
		{
		idc = 1601;
		text = ""; //--- ToDo: Localize;
		x = 0.328123 * safezoneW + safezoneX;
		y = 0.274306 * safezoneH + safezoneY;
		w = 0.343753 * safezoneW;
		h = 0.451388 * safezoneH;
		action = "closeDialog 0; hint 'No'; _nil=[]execVM""\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf""";
		};


	};
};
/* J Disarm AREA: 1BB
same as E
*/
class VQI_BOMB_L1_T1j_Disarmed
{
	idd=-1;
	movingenable=false;
	onLoad = "execVM '\vqi_eod\VQI-EerieEOD\Background\vqi_bomb_background.sqf'";
	onUnload = "1 cutText ['', 'PLAIN']";
	
	class controls
	{
		class VQI_BOMB_L1_T1j_Disarmed_BKGD: QeeRscPicture
		{
		idc = 1200;
		text = "\vqi_eod\VQI-EerieEOD\L1\graphics\BOMB_C4_T1j_Disarmed.paa";
		x = 0.266424 * safezoneW + safezoneX;
		y = 0.208478 * safezoneH + safezoneY;
		w = 0.467152 * safezoneW; 
		h = 0.745 * safezoneH; 
		};

	};
};