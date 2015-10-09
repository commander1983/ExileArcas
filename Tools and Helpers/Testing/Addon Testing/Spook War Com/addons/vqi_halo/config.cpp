// config.bin - 03:23:01 03/30/14, generated in 0.11 seconds
// Generated by unRap v1.06 by Kegetys
// Separate rootclasses: Disabled, Automatic comments: Enabled

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
	class VQI_DemonDropper {
		units[] = {}; //Why needed? Forgot SAD and still worked...
		weapons[] = {"Uniform_VQI_Slipstream","Vest_VQI_Stingray","Helmet_VQI_HALO"};
		requiredVersion = 0.1;
		requiredAddons[] = {"Extended_EventHandlers"};
	};
};

//class Extended_PostInit_EventHandlers
//{
//  VQI_HALO_Post_Init = "VQI_HALO_Post_Init_Var = [] execVM ""\vqi_halo\init.sqf""";
//};
//class Extended_PostInit_EventHandlers {
//	class VQI_DemonDropper_Keybinding {
//		clientInit = "call compile preProcessFileLineNumbers '\vqi_halo\XEH_postClientInit.sqf'";
//	};
//};


//W-I-P Full System TBA --- Top Secret!
class cfgWeapons {
	class Uniform_Base;	// External class reference
	class UniformItem;	// External class reference
	class ItemInfo;		// External class reference
	class U_B_CombatUniform_mcam;		// External class reference
	class U_B_CombatUniform_mcam_tshirt;// External class reference
	class U_B_CombatUniform_mcam_vest;	// External class reference
	class U_B_HeliPilotCoveralls;		// External class reference
	class VestItem;		// External class reference
	class Vest_Base;	// External class reference
	class V_Rangemaster_belt;	// External class reference
	class V_BandollierB_khk;	// External class reference
	class V_BandollierB_rgr;	// External class reference
	class V_BandollierB_cbr;	// External class reference
	class V_PlateCarrier1_rgr;	// External class reference
	class V_PlateCarrier1_cbr;	// External class reference
	class V_PlateCarrier2_rgr;	// External class reference
	class V_PlateCarrierGL_rgr;	// External class reference
	class U_I_CombatUniform;	// External class reference
	class H_HelmetB;			// External class reference
	class H_HelmetB_paint;	// External class reference
	class H_HelmetB_light;	// External class reference
	class H_MilCap_mcamo;	// External class reference
	class U_I_GhillieSuit;	// External class reference
	
	
	class Uniform_VQI_Slipstream : Uniform_Base {
		displayName = "Slipstream Thermal Jumpsuit";
		descriptionShort = "Von Quest Industries, Onyx Leather, Adarga";
		author = "R. Von Quest - aka Goblin";
		scope = public;
		picture = "\vqi_halo\images\icon_uniform_vqi_slipstream.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-"; // ?
			uniformClass = "VQI_HALO_Cadet"; //Who wear? Assigned? A3 Default?
			containerClass = "Supply80"; //Cargo Space
			mass = 30;
		};
	};

	
	
	class Vest_Camo_Base;	// External Class Reference
	class Vest_VQI_Stingray : Vest_Camo_Base {
		displayName = "Stingray Rebreather";
		descriptionShort = "Von Quest Industries";
		author = "R. Von Quest - aka Goblin";
		access = ReadOnlyVerified;
		scope = public;
		canShootInWater = 1;
		disposableWeapon = 0;
		selectionFireAnim = "zasleh";
		type = 701;
		nameSound = "";
		picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
		model = "\A3\Characters_F\Common\equip_rebreather";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"vqi_halo\images\vqi_stingray_rebreather.paa", "\A3\characters_f\data\visors_ca.paa"};
		hiddenUnderwaterSelections[] = {"hide"};
		hiddenUnderwaterSelectionsTextures[] = {"vqi_halo\images\vqi_stingray_rebreather.paa", "\A3\characters_f\data\visors_ca.paa"};
		
		class ItemInfo : VestItem {
			uniformModel = "\A3\Characters_F\Common\equip_rebreather";
			vestType = "Rebreather";
			containerClass = "Supply30";
			mass = 80;
			armor = 80;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	

	
	class ItemCore;	// External class reference
	class HeadgearItem;	// External class reference
	class Helmet_VQI_HALO : ItemCore {
		displayName = "Class II H.A.L.O.";
		descriptionShort = "Von Quest Industries, Clips into Stingray Rebreather";
		author = "R. Von Quest - aka Goblin";
		scope = public;
		weaponPoolAvailable = 1;
		picture = "\A3\Characters_F\data\ui\icon_H_Crew_Helmet_Heli_B_CA.paa";
		model = "A3\Characters_F\Common\headgear_helmet_heli_shield";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3\characters_f\common\data\helmet_heli_blk_co.paa"};
		
		class ItemInfo : HeadgearItem {
			mass = 30;
			uniformModel = "A3\Characters_F\Common\headgear_helmet_heli_shield";
			modelSides[] = {3, 1};
			armor = 20;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
};



/* //fix
class CfgVehicles {

	//////UNITs
	class B_Soldier_base_F;	// External class reference
	
	class VQI_TEST_Cadet : B_Soldier_base_F {
		uniformClass = "Uniform_VQI_Slipstream";
		scope = private;
	};
	
};
*/



//TEST//////////////////////////////////////////////////////////WIP
class cfgVehicles {
//////UNITs -----> placeHolder fix
	class B_Soldier_04_F;	// External class reference
	class VQI_HALO_Cadet : B_Soldier_04_F {
		uniformClass = "Uniform_VQI_Slipstream";
		scope = 1; //1,2,public,private? 1 will hide Unit!
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\vqi_halo\VQI-DemonDropper\CrateGear\images\coveralls_halo_slipstream.paa"};
	};



class AllVehicles;
	class Air: AllVehicles
	{
		class NewTurret;
		class ViewPilot;
	};
	class Helicopter: Air
	{
		class NewTurret;
		class ViewPilot;
	};
	class ParachuteBase: Helicopter
	{
		mapSize = 20;
		class SpeechVariants
		{
			class Default
			{
				speechSingular[] = {"veh_air_parachute_s"};
				speechPlural[] = {"veh_air_parachute_p"};
			};
		};
		textSingular = "$STR_A3_nameSound_veh_air_parachute_s";
		textPlural = "$STR_A3_nameSound_veh_air_parachute_p";
		nameSound = "veh_air_parachute_s";
		author = "$STR_A3_Bohemia_Interactive";
		_generalMacro = "ParachuteBase";
		class TransportItems{};
		animationOpen = "A3\Air_F_Beta\Parachute_01\Data\Anim\para_opening.rtm";
		animationDrop = "A3\Air_F_Beta\Parachute_01\Data\Anim\para_landing.rtm";
		Icon = "iconParachute";
		displayName = "$STR_DN_PARACHUTE";
		getOutAction = "GetOutPara";
		camouflage = 2;
		audible = 0;
		castDriverShadow = 1;
		driverAction = "Para_Pilot";
		model = "\A3\air_f_beta\Parachute_01\Parachute_01_F.p3d";
		picture = "\A3\Air_F_Beta\Parachute_01\Data\UI\Portrait_Parachute_01_CA.paa";
		soundEnviron[] = {"A3\sounds_f\dummysound",0.31622776,1,80};
		soundGetIn[] = {"A3\sounds_f\dummysound",0.31622776,1,20};
		soundGetOut[] = {"A3\sounds_f\dummysound",0.31622776,1,20};
		soundCrash[] = {"A3\sounds_f\dummysound",0.031622775,1,50};
		soundLandCrash[] = {"A3\sounds_f\dummysound",0.031622775,1,50};
		soundWaterCrash[] = {"A3\sounds_f\dummysound",3.1622777,1,80};
		damageEffect = "";
		class ViewPilot: ViewPilot
		{
			initFov = 0.7;
			minFov = 0.25;
			maxFov = 1.1;
			initAngleX = 0;
			minAngleX = -65;
			maxAngleX = 85;
			initAngleY = 0;
			minAngleY = -150;
			maxAngleY = 150;
		};
		attenuationEffectType = "OpenHeliAttenuation";
		occludeSoundsWhenIn = 1.0;
		obstructSoundsWhenIn = 1.0;
		class Turrets{};
		class EventHandlers{};
		class Reflectors{};
		enableGPS = 0;
		threat[] = {0.0,0.0,0.0};
	};
};

//UNITs/////////////////////////////////////////////////////////WIP


//GROUPS////////////////////////////////////////////////////////WIP




//X/////////////////////////////////////////////////////////////WIP
#include "\vqi_halo\VQI-DemonDropper\Altimeter\gui_defines.hpp"


class RscTitles {
#include "\vqi_halo\VQI-DemonDropper\Altimeter\gui_altimeter.hpp"
};
	   
//Needed?	   
class cfgFunctions
{
	class VQI 
	{
		class functions 
		{
			class HALO {file = "\vqi_halo\VQI-DemonDropper\VQI_HALO\functions\fn_halo.sqf";};
			class PARA {file = "\vqi_halo\VQI-DemonDropper\VQI_HALO\functions\fn_para.sqf";};
		};  
	};
};


class cfgSounds {
#include "\vqi_halo\VQI-DemonDropper\Sounds\cfgSounds.hpp"
	sounds[] = {};
}; 