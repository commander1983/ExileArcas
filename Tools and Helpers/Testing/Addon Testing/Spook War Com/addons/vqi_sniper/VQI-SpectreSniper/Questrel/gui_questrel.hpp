class VQI_QUESTREL_1 {					// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 999;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI Questrel One";			// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_Questrel_1', _this select 0]";	// ????
  
	controls[] = {	"VQIQ1_BKGD","VQIQ1_WIND_DIRSPEED","VQIQ1_HDG_C","VQIQ1_HDG_L","VQIQ1_HDG_R","VQIQ1_HDG","VQIQ1_WIND_DIR","VQIQ1_WIND_STR",
					"VQIQ1_BARO","VQIQ1_HUMIDITY","VQIQ1_HYDRO","VQIQ1_TIME","VQIQ1_MAPGRID"};	

		class VQIQ1_BKGD {				// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "vqi_sniper\VQI-SpectreSniper\Questrel\graphics\VQI_QUESTREL_v1a.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x =  -0.4; //-0.7  
			y =  0.6;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIQ1_WIND_DIRSPEED {			
		idc = 2000;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.06; // 0.06				
			x =  -0.4; //Smaller = Left  -->  -0.7 
			y =  0.65; //Smaller = Up    -->   0.68
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_HDG_C {			
		idc = 2001;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.035; // 0.06				
			x =  -0.4; //Smaller = Right  -->  -0.7 
			y =  0.54; //Smaller = Up    -->   0.63, 0.55
			h = 1; 
			w = 1 * 3 / 4;
		};
		//Location:   -X     ---   0,0    --- X
		//Examples:   -0.74L ---  -0.70C  --- -0.66R
		class VQIQ1_HDG_L {			
		idc = 2002;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,0.3};		
		font = "PuristaLight";			
		sizeEx = 0.03; // 0.06				
			x =  -0.44; //Smaller = Right  -->  -0.7, -0.75 
			y =  0.54; //Smaller = Up    -->   0.63
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_HDG_R {			
		idc = 2003;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,0.3};		
		font = "PuristaLight";			
		sizeEx = 0.03; // 0.06				
			x =  -0.36; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.54; //Smaller = Up    -->   0.63
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_HDG {			
		idc = 2004;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.04; // 0.06				
			x =  -0.4; //Smaller = Right  -->  -0.7 
			y =  0.57; //Smaller = Up    -->   0.57
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_WIND_DIR {			
		idc = 2005;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaLight";			
		sizeEx = 0.03; // 0.035				
			x =  -0.4; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.62; //Smaller = Up    -->   0.65
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_WIND_STR {			
		idc = 2006;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,0.8};		
		font = "PuristaLight";			
		sizeEx = 0.026; // 0.030				
			x =  -0.4; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.685; //Smaller = Up    -->   0.73
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_BARO {			
		idc = 2007;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,0.5};		
		font = "PuristaBold";			
		sizeEx = 0.035; // 0.030				
			x =  -0.4; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.745; //Smaller = Up    -->   0.75
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_HUMIDITY {			
		idc = 2008;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.035; // 0.030				
			x =  -0.44; //Smaller = Right  -->  -0.7, -0.75 
			y =  0.775; //Smaller = Up    -->   0.78
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_HYDRO {			// ACE3 Temp in C*
		idc = 2009;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaBold";			
		sizeEx = 0.035; // 0.030				
			x =  -0.36; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.775; //Smaller = Up    -->   0.78
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_TIME {			
		idc = 2010;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,0.5};		
		font = "PuristaLight";			
		sizeEx = 0.028; // 0.030				
			x =  -0.4; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.86; //Smaller = Up    -->   0.86
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		class VQIQ1_MAPGRID {			
		idc = 2011;						
		type = 0;						
		style = 2;						
		text = "";						
		colorBackground[] = {0,0,0,0};	
		colorText[] = {0,0,0,1};		
		font = "PuristaLight";			
		sizeEx = 0.035; // 0.030				
			x =  -0.4; //Smaller = Right  -->  -0.7, -0.65 
			y =  0.83; //Smaller = Up    -->   0.86
			h = 1; 
			w = 1 * 3 / 4;
		};
		
		
		
};


// NOTES: