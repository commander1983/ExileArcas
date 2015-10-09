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
	class VQI_EerieEOD {
		units[] = {""}; //
		weapons[] = {""}; //BombBuddy?
		requiredVersion = 0.1;
		requiredAddons[] = {"Extended_EventHandlers"};
	};
};

//class Extended_PostInit_EventHandlers {
//  VQI_EOD_Post_Init = "VQI_EOD_Post_Init_Var = [] execVM ""\vqi_eod\init.sqf""";
//};
//class Extended_PostInit_EventHandlers {
//	class VQI_EerieEOD_Keybinding {
//		clientInit = "call compile preProcessFileLineNumbers '\vqi_eod\XEH_postClientInit.sqf'";
//	};
//};



//UNITs/////////////////////////////////////////////////////////WIP


//GROUPS////////////////////////////////////////////////////////WIP


//X/////////////////////////////////////////////////////////////WIP
//#include "\vqi_eod\VQI-EerieEOD\gui_includes.hpp"

#include "\vqi_eod\VQI-EerieEOD\L1\T1\gui_defines.hpp"
#include "\vqi_eod\VQI-EerieEOD\L1\T1\gui_bomb_l1_t1.hpp"

class RscTitles {
#include "\vqi_eod\VQI-EerieEOD\IMS\gui_ims.hpp"
#include "\vqi_eod\VQI-EerieEOD\Background\gui_bomb_background.hpp"
};

/*
class VQI_Settings_EOD {
#include "\userconfig\VQI_Settings\VQI_Settings_EOD.hpp"
};
*/

class cfgSounds{
#include "\vqi_eod\VQI-EerieEOD\Sounds\cfgSounds.hpp"
	sounds[] = {};
}; 