// --- VQI-SpookySpooks W-I-P ---
//  CIA: Special Activities Division
//  	 Special Operations Group

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
	class VQI_Spooks {
		units[] = {"VQI_SOG_Operative"}; //Why needed? Forgot SAD and still worked...
		weapons[] = {"Uniform_VQI_EVO_Gecko","Vest_VQI_Rhino"};
		requiredVersion = 0.1;
		requiredAddons[] = {"Extended_EventHandlers"};
	};
};

/*
class Extended_PostInit_EventHandlers
{
  VQI_HALO_Post_Init = "VQI_SAD_Post_Init_Var = [] execVM ""\vqi_sad\init.sqf""";
};
*/

//Faction
class CfgFactionClasses {
	class VQI_SAD {
		icon = "\vqi_spooks\images\icon_config_cia.paa";
		displayName = "Special Activities Division"; // CIA - S.A.D.
		side = TWest;
		priority = 2;
	};
};

//Class
class CfgVehicleClasses {
	class VQI_SOG {
		displayName = "Special Operations Group"; 	// Special Activities Division
	};												// Task Force Q
};


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
	
	

	//WIP TEST - General/Jungle/Temp Ops, Custom BDUs - WIP TEST
	class Uniform_VQI_SOG_Basic1 : U_B_CombatUniform_mcam_vest {
		displayName = "Basic: Black/Grey";
		author = "R. Von Quest - aka 'Goblin'";
		scope = public;
		picture = "\A3\characters_f\data\ui\icon_U_B_CombatUniform_mcam_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "VQI_SOG_Operative";
			containerClass = "Supply60";
			mass = 20;
		};
	};
	/*
	class Uniform_VQI_EVO_Gecko2 : U_B_CombatUniform_mcam_vest {
		displayName = "EVO Gecko II";
		author = "R. Von Quest - aka Goblin";
		scope = public;
		picture = "\vqi_spooks\images\icon_uniform_vqi_gecko.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		
		class ItemInfo : UniformItem {
			uniformModel = "-";
			uniformClass = "VQI_SAD_Operative2";
			containerClass = "Supply60";
			mass = 20;
		};
	*/

	
	//////VESTs
	class Vest_Camo_Base;	// External Class Reference
	class Vest_VQI_Rhino : Vest_Camo_Base {
	displayName = "VQI Rhino X";
	author = "R. Von Quest - aka 'Goblin'";
	access = ReadOnlyVerified;
	scope = public;
	canShootInWater = 1;
	disposableWeapon = 0;
	selectionFireAnim = "zasleh";
	type = 131072;
	nameSound = "";
	picture = "\A3\characters_f\Data\UI\icon_V_plate_carrier_2_CA.paa";
	model = "A3\Characters_F\BLUFOR\equip_b_vest01";
	//hiddenSelections[] = {"camo"};
	//hiddenSelectionsTextures[] = {"\A3\Characters_F\Common\Data\tacticalvest_black_co.paa"};
		
	class ItemInfo : VestItem {
		uniformModel = "A3\Characters_F\BLUFOR\equip_b_vest01";
		containerClass = "Supply140";
		mass = 80;
		armor = 130;
		passThrough = 0.3;
		//hiddenSelections[] = {"camo"};
		};
	};
	
};	


//UNITs//////////////////////////////////////////////////////////WIP
class CfgVehicles {

	//////UNITs
	class B_Soldier_base_F;	// External class reference
	class B_Soldier_02_F;	// External class reference
	class B_Soldier_03_F;	// External class reference
	class I_Soldier_base_F;	// External class reference
	class I_soldier_F;		// External class reference
	
	
	class VQI_SOG_Operative : B_Soldier_base_F {
		author = "R. Von Quest - aka 'Goblin'";
		scope = public;
		faction = VQI_SAD;
		vehicleClass = "VQI_SOG";
		displayName = "Operative";
		engineer = 1;
		detectSkill = 5;	// ?
		canDeactivateMines = true;	//trained, EOD school, Spec-ops
		airCapacity = 60;	//lungs; ex-navy SEAL, Spec-Ops, well trained and conditioned
		accuracy = 3.5; 		//how hard to ID detail/type by enemy (3.5 sniper, 0.5 small vehicle)
		audible = .03; 		//how loud is unit (.05 man, 6 tank)
		camouflage = 0.5;	//how easy to spot (1 man, 0.6 snipers)
		cost = 1;			//priority (1 grunt, 4 officer, 10000000 aircraft)
		threat[] = {1, 0.3, 0.1}; //how threatening you are to enemy {soft,armour,air}
		nakedUniform = "U_BasicBody";
		uniformClass = "Uniform_VQI_SOG_Basic1";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\vqi_spooks\images\u1_co_ls_sog_basic1.paa"};
		linkedItems[] = {"itemWatch","itemMap","itemRadio","itemCompass","muzzle_snds_acp","H_Watchcap_blk"};
		respawnLinkedItems[] = {};
		Weapons[] = {"hgun_ACPC2_F","Throw","Put"};
		respawnWeapons[] = {"Throw","Put"};
		Magazines[] = {"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"};
		respawnMagazines[] = {};
	};
	/*
	class VQI_SAD_Operative2 : VQI_SAD_Operative {
		uniformClass = "Uniform_VQI_EVO_Gecko2";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\vqi_spooks\images\u1_co_ls_evo_gecko2.paa"};

	};
	
	class VQI_SAD_Cadet : B_Soldier_base_F {
		scope = public;
		airCapacity = 40;
		displayName = "Cadet";
		author = "R. Von Quest - aka Goblin";
		nakedUniform = "U_BasicBody";
		uniformClass = "Uniform_VQI_Slipstream";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\A3\characters_f\common\data\coveralls_black_co.paa"};
		faction = VQI_SAD;
		vehicleClass = "VQI_SOG";
		linkedItems[] = {"itemWatch","itemMap"};
		respawnLinkedItems[] = {};
		Weapons[] = {};
		respawnWeapons[] = {};
		Magazines[] = {};
		respawnMagazines[] = {};
	};
	*/

};

//GROUPS////////////////////////////////////////////////////////WIP
/*
class CfgGroups {
	//SIDE
	class West {
		name = "$STR_A3_CfgGroups_West0";
		//FACTION
		class VQI_SAD {
			name = "Special Activities Division";
			//CLASS
			class VQI_SOG {
				name = "Special Operations Group";
				//UNIT (Main Group) NEW????
				class VQI_SAD_TFQ {
					name = "Task Force Q";
					side = TWest;
					faction = VQI_SAD;
					//Individual Unit/Soldier/Man/etc
					class Unit0 {
						side = TWest;
						vehicle = VQI_SAD_Operative;
						rank = SERGEANT;
						position[] = {0, 5, 0};
					};
										
				};
			};
		};
	};
};
*/



/////////////////////////////////////////////////////////////////
// NOTES: