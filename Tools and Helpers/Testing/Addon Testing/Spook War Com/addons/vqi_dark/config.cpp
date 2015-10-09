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
	class VQI_DARK {
		units[] = {}; //
		weapons[] = {}; //
		requiredVersion = 0.1; //
		requiredAddons[] = {"Extended_EventHandlers"}; //
	};
};

//class Extended_PostInit_EventHandlers {
//  VQI_DIVER_Post_Init = "VQI_DIVER_Post_Init_Var = [] execVM ""\vqi_diver\init.sqf""";
//};
//class Extended_PostInit_EventHandlers {
//	class VQI_DevilDiver_Keybinding {
//		clientInit = "call compile preProcessFileLineNumbers '\vqi_diver\XEH_postClientInit.sqf'";
//	};
//};





//TEST//////////////////////////////////////////////////////////WIP


//UNITs/////////////////////////////////////////////////////////WIP


//GROUPS////////////////////////////////////////////////////////WIP




//X/////////////////////////////////////////////////////////////WIP
//#include "\vqi_diver\VQI-DevilDiver\GUI\gui_defines.hpp"


//class RscTitles {
//#include "\vqi_diver\VQI-DevilDiver\GUI\gui_map.hpp"
//};


/*	   
class cfgFunctions {
	class VQI {
		class functions {
			class HALO {file = "\vqi_halo\VQI-DemonDropper\VQI_HALO\functions\fn_halo.sqf";};
			class PARA {file = "\vqi_halo\VQI-DemonDropper\VQI_HALO\functions\fn_para.sqf";};
		};  
	};
};
*/

class cfgSounds {
	#include "\vqi_dark\VQI-DeadDark\Sounds\cfgSounds.hpp"
		sounds[] = {};
}; 

/*
class VQI_Settings_Diver {
#include "\userconfig\VQI_Settings\VQI_Settings_Diver.hpp"
};
*/