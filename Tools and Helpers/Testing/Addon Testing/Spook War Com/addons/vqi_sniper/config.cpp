// 
// 
// 

#define TEast		0
#define TWest		1
#define TGuerrila	2
#define TCivilian	3
#define TSideUnknown	4
#define TEnemy		5
#define TFriendly	6
#define TLogic		7

#define private		0
#define protected	1
#define public		2

#define ReadAndWrite	0
#define ReadAndCreate	1
#define ReadOnly	2
#define ReadOnlyVerified	3

#define true	1
#define false	0

enum {
	 //  = 2,	// Error parsing: Empty enum name
	DESTRUCTENGINE = 2,
	DESTRUCTDEFAULT = 6,
	DESTRUCTWRECK = 7,
	DESTRUCTTREE = 3,
	DESTRUCTTENT = 4,
	STABILIZEDINAXISX = 1,
	STABILIZEDINAXESXYZ = 4,
	STABILIZEDINAXISY = 2,
	STABILIZEDINAXESBOTH = 3,
	DESTRUCTNO = 0,
	STABILIZEDINAXESNONE = 0,
	DESTRUCTMAN = 5,
	DESTRUCTBUILDING = 1,
};

class CfgPatches {
	class VQI_SpectreSniper {
		units[] = {"Sniper_Blind"}; //Why needed? Forgot SAD and still worked...
		weapons[] = {"VQI_BoonieHat_SE_Hathcock"};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Anims_F","Extended_EventHandlers","A3_Characters_F_BLUFOR"};
	};
};

/*
class Extended_PostInit_EventHandlers {
  VQI_SNIPER_Post_Init = "VQI_SNIPER_Post_Init_Var = [] execVM ""\vqi_sniper\init.sqf""";
};
*/
//class Extended_PostInit_EventHandlers {
//	class VQI_SpectreSniper_Keybinding {
//		clientInit = "call compile preProcessFileLineNumbers '\vqi_sniper\XEH_postClientInit.sqf'";
//	};
//};


//SNIPER BLIND SYSTEM
class cfgVehicleClasses {
	class Sniper_Blind {
		displayName = "Sniper Blind";
	};
};


class cfgWeapons {
    class ItemCore;
    class HeadgearItem;
    
    class VQI_BoonieHat_SE_Hathcock : ItemCore {
        scope = 2;
        weaponPoolAvailable = 1;
        displayName = "1966 USMC BoonieHat";
		descriptionShort = "Special 'Hathcock' Edition";
		author = "R. Von Quest - aka 'Goblin'";
        picture = "\vqi_sniper\VQI-SpectreSniper\images\icon_h_booniehat_hathcock.paa";
        model = "\A3\Characters_F\Common\BoonieHat";
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"vqi_sniper\VQI-SpectreSniper\images\vqi_booniehat_se_hathcock.paa"};
        
        class ItemInfo : HeadgearItem {
            mass = 1;
            uniformModel = "\A3\Characters_F\Common\BoonieHat";
            modelSides[] = {6};
            armor = 0;
            passThrough = true;
            hiddenSelections[] = {"camo"};
        };
    };
};




class CfgVehicles {
	class Thing;		// External class reference
	class Building;		// External class reference
	class Strategic;	// External class reference

	class NonStrategic: Building {
		class DestructionEffects;// External class reference
	};
	class Fence;		// External class reference
	class Land_VASICore;// External class reference

	class Fence_Ind: Fence {
		class DestructionEffects;// External class reference
	};
	
	
	class Str_WeedBrown_Tall: Fence_Ind {
		scope = 1;
		model = "A3\plants_f\Clutter\c_StrWeedBrownTall_group.p3d";
		accuracy = 0.300000;
		vehicleClass = "Sniper_Blind";
	};
	
	class Str_WeedGreen_Tall: Fence_Ind {
		scope = 1;
		model = "A3\plants_f\Clutter\c_StrWeedGreenTall.p3d";
		accuracy = 0.300000;
		vehicleClass = "Sniper_Blind";
	};
	
	class Str_Grass_Dry: Fence_Ind {
		scope = 1;
		model = "A3\plants_f\Clutter\c_StrGrassDry.p3d";
		accuracy = 0.300000;
		vehicleClass = "Sniper_Blind";
	};
	
	class Plant_Germander_Group: Fence_Ind {
		scope = 1;
		model = "A3\plants_f\Clutter\c_StrPlantGermader_group.p3d";
		accuracy = 0.300000;
		vehicleClass = "Sniper_Blind";
	};

	class Plant_Green_Shrub: Fence_Ind {
		scope = 1;
		model = "A3\plants_f\Clutter\c_StrPlantGreenShrub.p3d";
		accuracy = 0.300000;
		vehicleClass = "Sniper_Blind";
	};	
};





//W-I-P Full System TBA --- Top Secret!


//UNITs/////////////////////////////////////////////////////////WIP


//GROUPS////////////////////////////////////////////////////////WIP




//X/////////////////////////////////////////////////////////////WIP
#include "\vqi_sniper\VQI-SpectreSniper\Questrel\gui_defines.hpp"


class VQI_RscText {
	idc = -1;
	type = CT_STATIC;
	style = ST_LEFT;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	font = "PuristaMedium";
	sizeEx = "1";
	x = -0.3; 
	y = -0.12;
	w = 0.1; 
	h = 0.1;
	text = "";
};

class VQI_RscPicture {
	idc = -1;
	type = CT_STATIC;
	style = ST_PICTURE;
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = {1, 1, 1, 1};
	font = "PuristaMedium";
	sizeEx = "1";
	x = 0; 
	y = 0;
	w = 0.1; 
	h = 0.1;
	text = "";
};

class VQI_HitMark: VQI_RscPicture {
	x = 0;
	y = 0;
	w = 0.02;
	h = 0.02 * 4 / 3;
	//text = "marker_ca.paa";
};

class RscTitles {
#include "\vqi_sniper\VQI-SpectreSniper\Questrel\gui_questrel.hpp"


	titles[] = {"VQI_RscHitMarker", "VQI_DATACARD_V1"};

	class VQI_RscHitMarker {
		idd = -1;
		enableSimulation=1;
		movingEnable=1;
		duration = 58;
		fadein = 0;
		fadeout = 1;
		onLoad = "uiNamespace setVariable ['VQI_RscHitMarker',_this select 0];";
		onUnload = "uiNamespace setVariable ['VQI_RscHitMarker',nil];";

		class ControlsBackground {
		
			class Background: VQI_RscPicture {
				idc = 3000;
				style = 48;
				
				x = "safezoneX + 0.393";
				y = "safezoneY + safezoneH - (0.4 * 4 / 3) + 0.015";
				w = "0.4";
				h = "0.4 * 4 / 3";

				text = "\vqi_sniper\VQI-SpectreSniper\SniperData\target_ca.paa";
				color[] = {1, 1, 1, 0.5};
				colorActive[] = {1, 1, 1, 0};
				colorBackground[] = {1,1,1,0.5};
				colorText[] = {1,1,1,0};
				colorSelection[] = {0,0,0,0.4};
				colorBar[] = {0,0,0,1};
				colorFrame[] = {0,0,0,1};
			};
		};
		//need to add multiple hit location?
		controls[] = {"Title", "Score", "Hit_1"};
		
		class Title: VQI_RscText {
			idc = 3022;
			colorText[] = {1,1,1,1};
			x = safezoneX + 0.04;
			y = safezoneY + safezoneH - (0.4 * 4 / 3) - 0.04;
			shadow = 1;
		};
		
		class Score: VQI_RscText {
			idc = 3023;
			colorText[] = {1,1,1,1};
			x = 0;
			y = 0;
			class Attributes
			{
				align = "left";
				font = "PuristaMedium";
				shadow = 1;
				size = 1;
			};
		};
		
		class Hit_1: VQI_HitMark {
			idc = 3024;
		};		
	};
	
	class VQI_DATACARD_V1 {				// UNIQUE MAIN-CLASSSNAME of this GUI/Project
	idd = -1;				          	// Display ID, can use -1 IF NO reference
	movingEnable = 0;					// Able to MOVE graphic (need in resource?)
	fadein = 0;							// How quick it goes away (seconds)
	duration = 60;						// Time it will be displayed (seconds)
	fadeout = 2;						// How quick it pops on (seconds)
	name = "VQI Data Card";				// Easy-To-Read 'Proper Name' in i.e. Trigger Menu
	onLoad = "uiNamespace setVariable ['VQI_Datacard_V1', _this select 0]";	// ????
  
	controls[] = {	"VQISDC1_BKGD","VQISDC1_DIST","VQISDC1_ASL","VQISDC1_TEMP","VQISDC1_HUM","VQISDC1_RAIN","VQISDC1_WINDDir","VQISDC1_WINDStr",
					"VQISDC1_WPN","VQISDC1_ZRO","VQISDC1_MAG","VQISDC1_OPTC","VQISDC1_MFG","VQISDC1_WDG","VQISDC1_TIME","VQISDC1_DATE"};	

		class VQISDC1_BKGD {			// SUB-CLASSNAME of specific section or element
		idc = -1;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 48;						// Control #: Picture, Border, Text Align, etc
		text = "\vqi_sniper\VQI-SpectreSniper\SniperData\VQI_DATACARD_V2.paa";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {1,1,1,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaMedium";			// Font Family
		sizeEx = 0.05;					// Font Size (0..1)
			x = "safezoneX + 0.01";
			y = "safezoneY + safezoneH - (0.75 * 4 / 3) - 0.01";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};
		
		class VQISDC1_DIST {			// SUB-CLASSNAME of specific section or element
		idc = 4000;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.04;					// Font Size (0..1)
			x = "0.0775 * safezoneW + safezoneX";
			y = "0.7190 * safezoneH + safezoneY";
			h = 1; 
			w = 1 * 0.745; 						
		};
		
		class VQISDC1_ASL {				// SUB-CLASSNAME of specific section or element
		idc = 4001;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.015 * safezoneW + safezoneX";
			y = "0.555 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};
		
		class VQISDC1_TEMP {			// SUB-CLASSNAME of specific section or element
		idc = 4002;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.04 * safezoneW + safezoneX";
			y = "0.555 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};
		
		class VQISDC1_HUM {				// SUB-CLASSNAME of specific section or element
		idc = 4003;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.062 * safezoneW + safezoneX";
			y = "0.555 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};
		
		class VQISDC1_RAIN {			// SUB-CLASSNAME of specific section or element
		idc = 4004;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.085 * safezoneW + safezoneX";
			y = "0.555 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};

		class VQISDC1_WINDDir {			// SUB-CLASSNAME of specific section or element
		idc = 4005;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.015 * safezoneW + safezoneX";
			y = "0.615 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};

		class VQISDC1_WINDStr {			// SUB-CLASSNAME of specific section or element
		idc = 4006;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.068 * safezoneW + safezoneX";
			y = "0.617 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};	

		class VQISDC1_WPN {				// SUB-CLASSNAME of specific section or element
		idc = 4007;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.040;					// Font Size (0..1)
			x = "0.071 * safezoneW + safezoneX";
			y = "0.500 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};

		class VQISDC1_ZRO {				// SUB-CLASSNAME of specific section or element
		idc = 4008;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.035;					// Font Size (0..1)
			x = "0.035 * safezoneW + safezoneX";
			y = "0.573 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};

		class VQISDC1_MAG {				// SUB-CLASSNAME of specific section or element
		idc = 4009;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "0.063 * safezoneW + safezoneX";
			y = "0.530 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};	

		class VQISDC1_OPTC {			// SUB-CLASSNAME of specific section or element
		idc = 4010;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "0.063 * safezoneW + safezoneX";
			y = "0.545 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};	

		class VQISDC1_MFG {			// SUB-CLASSNAME of specific section or element
		idc = 4011;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.055 * safezoneW + safezoneX";
			y = "0.530 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3"; 						
		};	

		class VQISDC1_WDG {			// SUB-CLASSNAME of specific section or element
		idc = 4012;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "0.120 * safezoneW + safezoneX";
			y = "0.573 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3";						
		};	

		class VQISDC1_TIME {			// SUB-CLASSNAME of specific section or element
		idc = 4013;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.108 * safezoneW + safezoneX";
			y = "0.555 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3";						
		};	

		class VQISDC1_DATE {			// SUB-CLASSNAME of specific section or element
		idc = 4014;						// Control ID, can use -1 IF NO reference
		type = 0;						// Control #: Static, Text, Button, Listbox, etc
		style = 2;						// Control #: Picture, Border, Text Align, etc
		text = "";	// text OR graphic to display (path)
		colorBackground[] = {0,0,0,0};	// Background Color (r,g,b,a)
		colorText[] = {0.20,0.30,0,1};		// Font Color or Foreground (r,g,b,a)
		font = "PuristaBold";			// Font Family
		sizeEx = 0.033;					// Font Size (0..1)
			x = "-0.108 * safezoneW + safezoneX";
			y = "0.530 * safezoneH + safezoneY";
			w = "0.75";
			h = "0.75 * 4 / 3";						
		};			
	};

	class Default 
	{
		idd = -1;
		fadein = 0;
		fadeout = 0;
		duration = 0;
	};
	
};




//Weapon Sway NEEDS to be ZERO when prone!
//Add Sniper Weapons and Bi-Pod Weapons???
/*
class VQI_Settings_Sniper {
#include "\userconfig\VQI_Settings\VQI_Settings_Sniper.hpp"
};
*/

class CfgMovesBasic
{
	class Default;
	class AgonyBase;
	class AgonyBaseRfl;
	class InjuredMovedBase;
};


class CfgMovesMaleSdr: CfgMovesBasic
{
	class States
	{ //prone
	class AmovPercMstpSrasWrflDnon;
	class AmovPpneMstpSrasWrflDnon: AmovPercMstpSrasWrflDnon {aimPrecision = __EVAL(0.2 * 1 * VQI_SS_PRONE_USER);};
	class AmovPincMstpSrasWrflDnon: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(0.3 * 1 * 1 * VQI_SS_PRONE_USER);};
	class AmovPercMstpSrasWrflDnon_AmovPpneMstpSrasWrflDnon: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(0.2 * 1 * VQI_SS_PRONE_USER);};
	class AmovPknlMstpSrasWrflDnon_AmovPpneMstpSrasWrflDnon: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(0.2 * 1 * VQI_SS_PRONE_USER);};
	class AmovPpneMstpSoptWbinDnon: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(0.05 * 1 * VQI_SS_PRONE_USER);};
	class AwopPpneMstpSoptWbinDnon_rfl: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(0.05 * 1 * VQI_SS_PRONE_USER);};
	class AfalPpneMstpSrasWrflDnon: AmovPpneMstpSrasWrflDnon {aimPrecision = __EVAL(7.0 * 1 * VQI_SS_PRONE_USER);};
	
	
	  //bone-bridge
	class AadjPpneMstpSrasWrflDup: AmovPercMstpSrasWrflDnon {aimPrecision = __EVAL(0.1 * 1 * VQI_SS_PRONE_USER);};
	};
};


/*
//AmovPpneMstpSrasWrflDnon
//{aimPrecision = __EVAL(0.01 * 1 * VQI_SS_BONEBRIDGE_DEFAULT);};
//class AadjPpneMstpSrasWrflDup_Steady;
*/




/*	   
//Needed?	cfgFunctions?  
class CfgFunctions
{
	class VQI
	{
		class functions
		{
			class keyBLIND {file="\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_sniper_build.sqf";};
		};
	};
};
*/


class cfgSounds {
	#include "\vqi_sniper\VQI-SpectreSniper\Sounds\cfgSounds.hpp"
	sounds[] = {};
}; 