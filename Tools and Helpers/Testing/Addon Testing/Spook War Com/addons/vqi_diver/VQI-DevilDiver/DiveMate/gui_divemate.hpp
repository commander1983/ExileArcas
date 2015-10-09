class VQI_ALTIMETER_1 {					// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 20;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI Altimeter One";			// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_Altimeter_1', _this select 0]";	// ????
  
	controls[] = {	"VQIA1_BKGD","VQIA1_ALTITUDE_FT","VQIA1_MAPGRID","VQIA1_HDG",// List ALL SUB-CLASSNAMES (in foreground) below
					"VQIA1_ALTITUDE_M","VQIA1_TIME","VQIA1_TEMP","VQIA1_SAO2_A",
					"VQIA1_METAR","VQIA1_COMPASS1"};	

		class VQIA1_BKGD {				// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\VQI_ALTIMETER_1.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x =  -0.5;  
			y =  0.6;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIA1_ALTITUDE_FT {			
		idc = 1000;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,0.5,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.08;					
			x =  -0.5;  
			y =  0.605;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_MAPGRID {			
		idc = 1001;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.5};		
		font = "PuristaLight";			
		sizeEx = 0.04;					
			x =  -0.4;  
			y =  0.536;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_HDG {			
		idc = 1002;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.7};		
		font = "PuristaBold";			
		sizeEx = 0.06;					
			x =  -0.5;  
			y =  0.445;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_ALTITUDE_M {			
		idc = 1003;						
		type = 0;						
		style = ST_LEFT;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.5};		
		font = "PuristaLight";			
		sizeEx = 0.04;					
			x =  -0.275;  
			y =  0.536;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_TIME {			
		idc = 1004;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.8};		
		font = "PuristaLight";			
		sizeEx = 0.04;					
			x =  -0.5;  
			y =  0.736;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_TEMP {			
		idc = 1005;						
		type = 0;						
		style = ST_RIGHT;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.5};		
		font = "PuristaBold";			
		sizeEx = 0.045;					
			x =  -0.935;  
			y =  0.7;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_SAO2_A {			
		idc = 1006;						
		type = 0;						
		style = ST_RIGHT;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.5};		
		font = "PuristaBold";			
		sizeEx = 0.045;					
			x =  -0.75;  
			y =  0.7;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_METAR {			
		idc = 1007;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {1,1,1,0.5};		
		font = "EtelkaMonospaceProBold";			
		sizeEx = 0.04;					
			x =  -0.5;  
			y =  0.68;
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIA1_COMPASS1 {			
		idc = 1008;
		type = 0;
		style = 48;
		text = "";
		colorBackground[] = {0,0,0,0};
		colorText[] = {1,1,1,0.8};		
		font = "EtelkaMonospaceProBold";			
		sizeEx = 0.04;					
			x =  -0.06;  
			y =  0.95;
			h = 0.05; 
			w = 0.05 * 3 / 4;
		};
		
};




//HALO-HELMET-SYSTEMS-GRAPHICS-and-EFFECTS
class VQI_HALO_HELMET_CLASSII
{
	idd = -1;
	movingEnable = 0;
	duration = 99999;
	fadein = 0;
	fadeout = 5;
	name = "HALO HELMET";
	controls[] = {"VQI_HALO_HELMET","VQI_HALO_HELMET_VISOR"};

		class VQI_HALO_HELMET {			
		idc = -1;						
		type = 0;						
		style = 48;						
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_x1.paa";						
		colorBackground[] = {1,1,1,1};	
		colorText[] = {1,1,1,1};		
		font = "EtelkaMonospaceProBold";			
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;
		};
		class VQI_HALO_HELMET_VISOR
		{
		Idc=1111;
		type=0;
		style = 48;
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.1};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
		};
};


class VQI_HALO_HELMET_FOGGED0_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 1;
	fadeout = 3;
	name = "HALO HELMET FOG0";
	controls[] = {"FOGGED0"};

	class FOGGED0
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.6};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};


class VQI_HALO_HELMET_FOGGED1_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 5;
	fadeout = 25;
	name = "HALO HELMET FOG1";
	controls[] = {"FOGGED1"};

	class FOGGED1
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.5};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};

class VQI_HALO_HELMET_FOGGED2_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 5;
	fadeout = 65;
	name = "HALO HELMET FOG2";
	controls[] = {"FOGGED2"};

	class FOGGED2
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.7};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};

class VQI_HALO_HELMET_ICE1_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 30;
	fadein = 15;
	fadeout = 30;
	name = "HALO HELMET ICE1";
	controls[] = {"ICED1"};

	class ICED1
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "\vqi_halo\VQI-DemonDropper\Altimeter\graphics\HALO_GOGGLES_ice1.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.2};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;  
	};
};



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
		text = "\vqi_halo\images\world_map_1.jpg";
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