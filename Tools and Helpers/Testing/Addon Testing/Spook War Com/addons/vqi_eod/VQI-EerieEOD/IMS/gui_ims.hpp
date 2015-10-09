/*
class VQI_IMS_1a {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1a', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE","VQIIMS1_EXP_FRQ","VQIIMS1_EXP_PPM"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1a.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
				
		class VQIIMS1_EXP_FRQ {		// SUB-CLASSNAME of specific section or element
		idc = 1001;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.04;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.5255 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_PPM {		// SUB-CLASSNAME of specific section or element
		idc = 1002;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaLight";			// Font Family
		sizeEx = 0.03;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.5150 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};
*/
	
	
	
	
	
	
class VQI_IMS_1a {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1a', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1a.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};
	
	class VQI_IMS_1b {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1b', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1b.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};
	
	class VQI_IMS_1c {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1c', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1c.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};
	
class VQI_IMS_1d {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1d', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1d.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};	
	
class VQI_IMS_1e {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1e', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1e.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};	
	
class VQI_IMS_1f {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1f', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};	

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1f.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};
	
class VQI_IMS_1g {						// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it pops on (seconds)
	duration = 10;						// Time it will be displayed (seconds)
	fadeout = 1;						// How quick it goes away (seconds)
	name = "VQI IMS One";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_IMS_1g', _this select 0]";	// ????
  
	controls[] = {	"VQIIMS1_BKGD","VQIIMS1_EXP_RANGE"};

		class VQIIMS1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_eod\VQI-EerieEOD\IMS\graphics\VQI_IMS_1g.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;  				//["0.707133 * safezoneW + safezoneX","0.575231 * safezoneH + safezoneY","0.123399 * safezoneW","0.394965 * safezoneH"]
			y = 0.53 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQIIMS1_EXP_RANGE {		// SUB-CLASSNAME of specific section or element
		idc = 1000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";						// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0,0,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = 0.70 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			h = 1; 
			w = 1 * 0.745; 						
		};
	};