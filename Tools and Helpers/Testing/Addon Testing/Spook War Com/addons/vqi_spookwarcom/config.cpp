// : : : SpookWarCom Module System : : :
// 
#define private		0
#define protected	1
#define public		2

class CfgPatches {
	class VQI_SpookWarCom {
		units[] = {"VQI_ModuleHALO","VQI_ModuleHALOaircraft","VQI_ModuleSNIPER","VQI_ModuleSNIPERtarget","VQI_ModuleDIVER","VQI_ModuleDIVERdesk","VQI_ModuleEOD","VQI_ModuleEODIED",
				   "VQI_ModuleSOCOM","VQI_ModuleSOCOMdesk","VQI_ModuleDARK"};
		requiredVersion = 1.0;
		requiredAddons[] = {"A3_Modules_F"};
		//directory = "SPOOKWARCOM\SPOOKWARCOM";
	};
};



class CfgFunctions 
{
	class VQI
	{
		class SpookWarComSystem
		{
			class Module1     { file = "\vqi_spookwarcom\halo\fn_module.sqf"; };
			class Module1a    { file = "\vqi_spookwarcom\halo\aircraft\fn_module.sqf"; };
			class HALOinit    { file = "\vqi_halo\init.sqf"; };

			class Module2     { file = "\vqi_spookwarcom\sniper\fn_module.sqf"; };
			class Module2a    { file = "\vqi_spookwarcom\sniper\targets\fn_module.sqf"; };
			class SNIPERinit  { file = "\vqi_sniper\init.sqf"; };
			
			class Module3     { file = "\vqi_spookwarcom\eod\fn_module.sqf"; };
			class Module3a    { file = "\vqi_spookwarcom\eod\bomb\fn_module.sqf"; };
			class EODinit  	  { file = "\vqi_eod\init.sqf"; };
			
			class Module4     { file = "\vqi_spookwarcom\diver\fn_module.sqf"; };
			class Module4a    { file = "\vqi_spookwarcom\diver\ops_desk\fn_module.sqf"; };
			class DIVERinit   { file = "\vqi_diver\init.sqf"; };
			
			class Module5     { file = "\vqi_spookwarcom\socom\fn_module.sqf"; };
			class Module5a    { file = "\vqi_spookwarcom\socom\ops_desk\fn_module.sqf"; };
			class SOCOMinit   { file = "\vqi_socom\init.sqf"; };
			
			class Module6     { file = "\vqi_spookwarcom\dark\fn_module.sqf"; };
			class DARKinit    { file = "\vqi_dark\init.sqf"; };
			
			//class Module7     { file = "\vqi_spookwarcom\core\fn_module.sqf"; };
			//class COREinit    { file = "\vqi_core\init.sqf"; };
		};
	};
};



class CfgFactionClasses {
	class NO_CATEGORY;
	class VQI_SpookWarCom: NO_CATEGORY
	{
		displayName = "=Q= SpookWarCom";
	};
};



class CfgVehicles {
	class Logic;	// internal game class reference
	
	class Module_F : Logic {
				class ArgumentsBaseUnits {
				 class Units; };
				class ModuleDescription {
				 class AnyBrain; };
	};
	
	class VQI_ModuleHALO : Module_F {
	icon = "\vqi_spookwarcom\halo\iconHALO.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "HALO - System ON";
		function = "VQI_fnc_Module1";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_halo_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF";
				typeName = NUMBER;
				
				class Values
				{
					class 0OFF	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1ON	{name = "ON";   value = 1; };
				};
			};
			class vqi_halo_tempmarker { //
				displayName = "HALO/Aircraft Marker";
				description = "Select Permanent or Temporary (20 min) displayed Marker";
				typeName = NUMBER;
				
				class Values
				{
					class 0HTMKR	{name = "Permanent - Marker stays ON";  value = 0; }; // ListBox Items
					class 1HTMKR	{name = "Temporary - Marker ON for 20 Minutes Only"; value = 1; default = 1;};
				};
			};
			class vqi_halo_mapgpscompass { //
				displayName = "Hide Map/GPS/etc";
				description = "Simulates they are packed away while geared-up for Jump. Better Immersion.";
				typeName = NUMBER;
				
				class Values
				{
					class 0HIDEMGC	{name = "YES - Hide Items during Jump";  value = 0; default = 0;}; // ListBox Items
					class 1HIDEMGC	{name = "NO - I can read Maps while flying!";   value = 1; };
				};
			};
			class vqi_halo_jb1watch { //
				displayName = "Altimeter (watch)";
				description = "Adds 'Watch' Key option, (3rd option) See Keybinding README for more info";
				typeName = NUMBER;
				
				class Values
				{
					class 0JB1	{name = "OFF - Not needed, Using other"; value = 0; }; // ListBox Items
					class 1JB1	{name = "Watch Key - Temp, Quick On/Off"; value = 1; };
					class 2JB1	{name = "Watch Key - Temp, 10sec"; value = 2; };
					class 3JB1	{name = "Watch Key - Temp, 20sec"; value = 3; default = 3;};
					class 4JB1	{name = "Watch Key - Temp, 30sec"; value = 4; };
					class 5JB1	{name = "Watch Key - Temp, 60sec"; value = 5; };
					class 6JB1	{name = "Watch Key - Temp, 120sec"; value = 6; };
				};
			};
			class vqi_halo_aad { //
				displayName = "Parachute A.A.D.";
				description = "Activates an Automatic Activation Device for ALL Players (auto, no device needed)";
				typeName = NUMBER;
				
				class Values
				{
					class 0AAD	{name = "OFF - None or Use In-Game AAD Device";  value = 0; default = 0;}; // ListBox Items
					class 2AAD	{name = "ON - Set AAD to 100m ASL (water)";  value = 2; };
					class 3AAD	{name = "ON - Set AAD to 150m ASL";  value = 3; };
					class 5AAD	{name = "ON - Set AAD to 200m ASL";  value = 5; };
					class 6AAD	{name = "ON - Set AAD to 400m ASL";  value = 6; };
					class 8AAD	{name = "ON - Set AAD to 600m ASL";  value = 8; };
				};
			};
			class vqi_halo_trans_audio { //
				displayName = "Transition Audio";
				description = "Set the Audio when teleporting into the airborne aircraft";
				typeName = NUMBER;
				
				class Values
				{
					class 0TA0	{name = "OFF - No Audio";  value = 0; }; // ListBox Items
					class 1TA1	{name = "ON - Short Music Clip 1";  value = 1; default = 1;};

				};
			};
			class vqi_halo_plane_travel { //
				displayName = "Aircraft Travel Time";
				description = "Simulates travel and climb of the JumpPlane BEFORE Jump Point (Advances Game Time)";
				typeName = NUMBER;
				
				class Values
				{
					class 0HTT	{name = "None, Teleport Instantly";  value = 0; }; // ListBox Items
					class 1HTT	{name = "Advance Game Time 1 Hour";  value = 1; };
					class 2HTT	{name = "Advance Game Time 1-3 Hours, Random";  value = 2; default = 2;};
					class 3HTT	{name = "Advance Game Time 2-6 Hours, Random";  value = 3; };

				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select Options as desired. Highly recommend you keep Map/GPS/Compass packed away during jump. Better Immersion. Plan your jump ahead of time and take notes! The Altimeter has a GPS built in. HOLD 'watch' Key to display Altimeter";
			//sync[] = {};
		};
	};
	
	class VQI_ModuleHALOaircraft : Module_F {
	icon = "\vqi_spookwarcom\halo\iconHALOaircraft.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "HALO - Jump Aircraft";
		function = "VQI_fnc_Module1a";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};;
			class vqi_halo_aircraft { //list of aircraft available
				displayName = "Select Aircraft";
				description = "Note: ONLY the XHR-1 Vampyre is INCLUDED in this Mod";
				typeName = NUMBER;
				
				class Values
				{
					class 1XHR1	{name = "XHR-1: Vampyre";  value = 1; default = 1;}; // ListBox Items
					class 2C130	{name = "MC-130J Commando II (by SGT Fuller)";  value = 2; };
					class 3C17	{name = "C-17 Globemaster III (by SGT Fuller)"; value = 3; };
					class 4IL76	{name = "Russian IL-76";   value = 4; };
				};
			};
			class vqi_halo_aircraft_alt { //set height, USS Nimitz, etc
				displayName = "Aircraft Height";
				description = "Sets the Ground Aircraft Spawn Height; C-130 & X-HR1 ONLY";
				typeName = NUMBER;
				
				class Values
				{
					class 1ASH	{name = "On Ground";  value = 1; default = 1;}; // ListBox Items
					class 2ASH	{name = "USS Nimitz Deck";  value = 2; };
				};
			};
			class vqi_halo_aircraft_crate_gen { //crate
				displayName = "Crate: General";
				description = "Adds Basic Weapons & Equipment to Ground Plane";
				typeName = NUMBER;
				
				class Values
				{
					class 0NXCG	{name = "NO";  value = 0;}; // ListBox Items
					class 1YXCG	{name = "YES - Add Weapons Crate";  value = 1; default = 1;};
				};
			};
			class vqi_halo_aircraft_crate_va { //crate
				displayName = "Crate: Virtual Arsenal";
				description = "Adds the 'Virtual Arsenal' Crate to Ground Plane";
				typeName = NUMBER;
				
				class Values
				{
					class 0NXCV	{name = "NO";  value = 0; }; // ListBox Items
					class 1YXCV	{name = "YES - Add Virtual Arsenal";  value = 1; default = 1;};
				};
			};
			class vqi_halo_aircraft_delete { //set height, USS Nimitz, etc
				displayName = "Delete JumpPlane";
				description = "Deletes the Airborne JumpPlane after Server/Player lands";
				typeName = NUMBER;
				
				class Values
				{
					class 0DJP	{name = "NO - Keep Aircraft Airborne";  value = 0; }; // ListBox Items
					class 1DJP	{name = "Delete ParaJump Plane ONLY";  value = 1; default = 1;};
					class 2DJP	{name = "Delete HALOJump Plane ONLY";  value = 2; };
					class 3DJP	{name = "Delete BOTH Aircraft";  value = 3; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Select Aircraft and Options. ONLY the 'Vampyre' Drone is included. IF using other supported aircraft, you must download that specific addon. ONLY 1 Aircraft supported at one time.";
			//sync[] = {};
		};
	};
	

	
	class VQI_ModuleSNIPER : Module_F {
	icon = "\vqi_spookwarcom\sniper\iconSNIPER.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "Sniper - System ON";
		function = "VQI_fnc_Module2";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_sniper_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF - For Testing & Experimentation ONLY";
				typeName = NUMBER;
				
				class Values
				{
					class 0SH	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1SH	{name = "ON";   value = 1; };
				};
			};
			class vqi_sniper_ballistics { //
				displayName = "Simple Ballistics";
				description = "Turn OFF if using OTHER Ballistics, i.e. Ruthberg's Advanced Ballistics, AGM, CSE, etc.";
				typeName = NUMBER;
				
				class Values
				{
					class 1BWF	{name = "ON - Ballistics (Prone ONLY)";  value = 1; default = 1;}; // ListBox Items
					class 2BWF	{name = "OFF - None/Default/Other";    value = 2; };
				};
			};
			
			class vqi_sniper_wind { //
				displayName = "Map-Wind Stabilize";
				description = "BIS default Wind is erratic and unrealistic. Stabilizes Wind for (random) 10min - 2hours";
				typeName = NUMBER;
				
				class Values
				{
					class 1MWS	{name = "ON - Stabilize Wind";  value = 1; default = 1;}; // ListBox Items
					class 2MWS	{name = "OFF - Default/Other";  value = 2; };
				};
			};
			class vqi_sniper_stealth { //
				displayName = "Scout/Sniper Stealth";
				description = "Building a Sniper Hide/Blind will make the player near invisible to the enemy";
				typeName = NUMBER;
				
				class Values
				{
					class 1SS	{name = "ON - SniperStealth active in Blind";  value = 1; default = 1;}; // ListBox Items
					class 2SS	{name = "OFF - Use default in-game only";  value = 2; };

				};
			};
			class vqi_sniper_fired { //
				displayName = "Weapon Fired";
				description = "Turns OFF 'System' IF Fired LOUD, Un-Suppressed Weapon; Senses Ruined, SniperSystem RESET!";
				typeName = NUMBER;
				
				class Values
				{
					class 1SF	{name = "ON - Probable Stealth & Senses penalty";  value = 1; default = 1;}; // ListBox Items
					class 2SF	{name = "OFF - No penalty for weapon discharge";  value = 2; };
				};
			};
			class vqi_sniper_senses { //
				displayName = "SniperSenses";
				description = "Acute sense of Smell (keypress), and Hearing (auto)";
				typeName = NUMBER;
				
				class Values
				{
					class 1SSS	{name = "ON - Keen Scout/Sniper Senses Active";  value = 1; default = 1;}; // ListBox Items
					class 2SSS	{name = "OFF - NO heightened senses";  value = 2; };
				};
			};
			class vqi_sniper_sb1compass { //
				displayName = "Questrel (compass)";
				description = "Adds 'Compass' Key option, (3rd option) See Keybinding README for more info";
				typeName = NUMBER;
				
				class Values
				{
					class 0SB1	{name = "OFF - Not needed, Using other";  value = 0; }; // ListBox Items
					class 1SB1	{name = "Compass Key - Temp, Quick On/Off";   value = 1; };
					class 2SB1	{name = "Compass Key - Temp, 10sec";   value = 2; };
					class 3SB1	{name = "Compass Key - Temp, 20sec";   value = 3; };
					class 4SB1	{name = "Compass Key - Temp, 30sec";   value = 4; default = 4;};
					class 5SB1	{name = "Compass Key - Temp, 60sec";   value = 5; };
					class 6SB1	{name = "Compass Key - Temp, 120sec";   value = 6; };
				};
			};
			class vqi_sniper_sb1_data { //
				displayName = "Questrel: ACE3";
				description = "Choose Default OR ACE3 Compatible Data, Advanced Ballistics, etc";
				typeName = NUMBER;
				
				class Values
				{
					class 1SB1D	{name = "Default: VQI, NO ACE3";  value = 1; }; // ListBox Items
					class 2SB1D	{name = "ACE3 Data; Autodetect";   value = 2; default = 2;};
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select options as desired. Ballistics are PRONE ONLY to allow 'normal' gameplay for other non-sniper roles and reduce CPU loads. You MUST carry the Questrel in its slot to activate the SniperStealth System.";
			//sync[] = {};
		};
	};
	
	class VQI_ModuleSNIPERtarget : Module_F {
	icon = "\vqi_spookwarcom\sniper\iconSNIPERtarget.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "Sniper - Target/Data";
		function = "VQI_fnc_Module2a";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_sniper_logbook { //
				displayName = "Sniper LogBook Required";
				description = "Makes Sniper LogBook REQUIRED in Document (Map) Slot";
				typeName = NUMBER;
				
				class Values
				{
					class 1SDB	{name = "YES - LogBook Required";  value = 1; default = 1;}; // ListBox Items
					class 2SDB	{name = "NO - Automatic, NO LogBook Needed";  value = 2; };
				};
			};
			class vqi_sniper_target { //
				displayName = "Sniper Target Feedback";
				description = "Displays Sniper/Marksman DataCard: Hit Location, Range, Zeroing, Ammo, etc.)";
				typeName = NUMBER;
				
				class Values
				{
					class 1STF	{name = "ON - Target w/ DataCard (if required)";  value = 1; default = 1;}; // ListBox Items
					class 2STF	{name = "OFF - Target Only - NO Feedback Data";  value = 2; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to set Sniper Targets. Unlimited Targets Supported. When shot, will display data on DataCard that will pop-up on screen. Sniper LogBook (note option) may be required.";
			//sync[] = {};
		};
	};
	
	
	
	class VQI_ModuleEOD : Module_F {
	icon = "\vqi_spookwarcom\eod\iconEOD.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "EOD - System ON";
		function = "VQI_fnc_Module3";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_eod_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF";
				typeName = NUMBER;
				
				class Values
				{
					class 0OFF	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1ON	{name = "ON";   value = 1; };
				};
			};
			class vqi_eod_suicidebomber { //
				displayName = "Suicide Bombers";
				description = "Creates Random CIVs Armed with 'Suicide Vests' that seek out Players";
				typeName = NUMBER;
				
				class Values
				{
					class 0SB	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1SB	{name = "MIN/NULL - 1% Every 30-90 Minutes";  value = 1; };
					class 2SB	{name = "VERY LOW - 5% Every 20-60 Minutes";  value = 2; };
					class 3SB	{name = "MEDIUM - 10% Every 10-30 Minutes";  value = 3; };
					class 4SB	{name = "INTENSE - 20% Every 5-20 Minutes";  value = 4; };
					class 5SB	{name = "SEVERE - 30% Every 1-10 Minutes";  value = 5; };
				};
			};
			class vqi_eod_bomberhints { //
				displayName = "Suicide Bomber Warning";
				description = "Displays Warning Intel IF suspected Terrorist spotted in area.";
				typeName = NUMBER;
				
				class Values
				{
					class 0SBW	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1SBW	{name = "ON - Display Intel Warning";  value = 1; };
				};
			};
			class vqi_eod_sb_triggertime { //
				displayName = "Suicide Bomber Dexterity";
				description = "How fast can he trigger his hidden explosive? Hardened Terrorist or Nervous Buffoon?";
				typeName = NUMBER;
				
				class Values
				{
					class 0SBTT	{name = "Quick, Near Instant, Deadly";  value = 0; }; // ListBox Items
					class 1SBTT	{name = "1 Second after shout-out";  value = 1; };
					class 2SBTT	{name = "2 Seconds after shout-out";  value = 2; default = 2;};
					class 3SBTT	{name = "3 Seconds after shout-out";  value = 3; };
					class 4SBTT	{name = "Random, Varied, 1-10 Seconds";  value = 4; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select Options as desired.";
			//sync[] = {};
		};
	};
	
	class VQI_ModuleEODIED : Module_F {
	icon = "\vqi_spookwarcom\eod\iconEODied.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "EOD - Explosive Device";
		function = "VQI_fnc_Module3a";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_eod_iedbomb {
				displayName = "EOD/IED Explosive Device";
				description = "Places an Explosive Device to Disarm (L1 Series)";
				typeName = NUMBER;
				
				class Values
				{
					class 0NOBOMB	{name = "OFF";  value = 0;}; // ListBox Items
					class 1ONBOMB	{name = "ON - Place IED Here";   value = 1; default = 1;};
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Places a 'movie-style' IED that players can then attempt to disarm. ONLY 1 Device supported at one time.";
			//sync[] = {};
		};
	};
	
	
	
	class VQI_ModuleDIVER : Module_F {
	icon = "\vqi_spookwarcom\diver\iconDIVER.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "Diver - System ON";
		function = "VQI_fnc_Module4";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_diver_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF";
				typeName = NUMBER;
				
				class Values
				{
					class 0OFF	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1ON	{name = "ON";   value = 1; };
				};
			};
			class vqi_diver_tempmarker { //
				displayName = "Submarine Marker";
				description = "Select Permanent or Temporary (10 min) displayed Marker";
				typeName = NUMBER;
				
				class Values
				{
					class 1ONPERM	{name = "Permanent - Marker stays ON";  value = 1; default = 1;}; // ListBox Items
					class 0OFTEMP	{name = "Temporary - Marker ON for 10 Minutes Only";   value = 0; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select Options as desired.";
			//sync[] = {};
		};
	};
	
	class VQI_ModuleDIVERdesk : Module_F {
	icon = "\vqi_spookwarcom\diver\iconDIVERdesk.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "Diver - Sub Ops Desk";
		function = "VQI_fnc_Module4a";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_diver_opdesk { //
				displayName = "Submarine Ops Desk";
				description = "Creates Submarine Operations Desk. MENU Options ADDED to Laptop.";
				typeName = NUMBER;
				
				class Values
				{
					class 1DOPD	{name = "YES - Place Diver/Sub Ops Desk";  value = 1; default = 1;}; // ListBox Items
					class 2DOPD	{name = "OFF - NO DESK";  value = 2; };
				};
			};
			class vqi_diver_opdesk_board { //
				displayName = "Board from Desk";
				description = "Allow Player Boarding Option (teleport) from DESK";
				typeName = NUMBER;
				
				class Values
				{
					class 1DOPDB	{name = "NO - Board from Surface Sub ONLY";  value = 1; default = 1;}; // ListBox Items
					class 2DOPDB	{name = "YES - Allow Teleport from DESK";  value = 2; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to place Desk and Laptop HERE. Select Options as desired. IF NO, name any Object: VQI_DIVER_HMSPROTEUS to add Menu Options to it.";
			//sync[] = {};
		};
	};
	
	
	class VQI_ModuleSOCOM : Module_F {
	icon = "\vqi_spookwarcom\socom\iconSOCOM.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "SOCOM - System ON";
		function = "VQI_fnc_Module5";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_socom_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF";
				typeName = NUMBER;
				
				class Values
				{
					class 0OFF	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1ON	{name = "ON";   value = 1; };
				};
			};
			class vqi_socom_tempmarker { //
				displayName = "Mission Markers";
				description = "Select Permanent or Temporary (10 min) displayed Marker";
				typeName = NUMBER;
				
				class Values
				{
					class 1ONPERMS	{name = "Permanent - Marker stays ON";  value = 1; default = 1;}; // ListBox Items
					class 0OFTEMPS	{name = "Temporary - Marker ON for 10 Minutes Only"; value = 0; };
				};
			};
			class vqi_socom_missiontype { //
				displayName = "Mission Types";
				description = "Select your Mission Category. Will still randomize details and locations.";
				typeName = NUMBER;
				
				class Values
				{
					class 0SMT	{name = "None - N/A"; value = 0; };
					class 1SMT	{name = "Any, All Types, Random Objectives";  value = 1; default = 1;}; // ListBox Items
					class 2SMT	{name = "Acquisition - Locate, Recover, Steal, Obtain"; value = 2; };
					class 3SMT	{name = "Assassination - Kill Target, Eliminate"; value = 3; };
					class 4SMT	{name = "Assault - Engage, Attack, Harass, Ambush"; value = 4; };
					class 5SMT	{name = "Destroy - Demo, Damage, Wreck, Sabotage"; value = 5; };
					class 6SMT	{name = "Reconnaissance - Explore, Scout, Observe"; value = 6; };
					class 7SMT	{name = "Support - Clear Mines, Mark, ID, FO, Misc."; value = 7; };
					class 8SMT	{name = "Surveillance - Monitor, SIGINT, Wire-Tap"; value = 8; };
					class 9SMT	{name = "Special - Advanced, Complex, Multi, Misc."; value = 9; };
				};
			};
			class vqi_socom_dasr { //
				displayName = "Generic Mission X";
				description = "Adds random non-specific Target Areas, Role-Play ANY, Mission X, etc.";
				typeName = NUMBER;
				
				class Values
				{
					class 0DASR	{name = "None";  value = 0; default = 0;}; // ListBox Items
					class 1DASR	{name = "1 Target Area"; value = 1; };
					class 2DASR	{name = "2 Target Areas"; value = 2; };
					class 3DASR	{name = "3 Target Areas"; value = 3; };
					class 4DASR	{name = "4 Target Areas"; value = 4; };
					class 5DASR	{name = "5 Target Areas"; value = 5; };
				};
			};
			class vqi_module_socom_enemy { //
				displayName = "Mission Enemy";
				description = "Select Enemy Faction to spawn (if any) for SOCOM Objective Areas";
				typeName = NUMBER;
				
				class Values
				{
					class 1MSE	{name = "CSAT / RED / OPFOR";  value = 1; default = 1;}; // ListBox Items
					class 2MSE	{name = "AAF / GREEN / INDEPENDANT"; value = 2; };
					class 3MSE	{name = "NATO / BLUE / BLUFOR"; value = 3; };

				};
			};
			class vqi_module_socom_enemy_skill { //
				displayName = "Enemy Skill";
				description = "Select Enemy Skill Level; Default is CUSTOM (great spotDistance, poor aimAccuracy, etc)";
				typeName = NUMBER;
				
				class Values
				{
					class 1MSES	{name = "Default; Pre-Set Customized [Custom]";  value = 1; default = 1;}; 	// Custom
					class 2MSES	{name = "Randomized; EACH Sub-Skill, (0-1) [Random]";  value = 2;};			// Random
					class 3MSES	{name = "NEW Recruits, FNGs, Poorly Trained [0.1]"; value = 3; };			// 0.1
					class 4MSES	{name = "Standard Soldiers, Average Training [0.4]"; value = 4; };			// 0.4
					class 5MSES	{name = "Advanced Soldiers, Highly Trained [0.6]"; value = 5; };			// 0.6
					class 6MSES	{name = "Elite Infantry, Specialized [0.6 + r0.4]"; value = 6; };			// 0.6 + r0.4
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select Options as desired. This SOCOM Module is a Mission Generator for Spec-Ops/Black-Ops gameplay. Numerous Mission types, and random locations. See docs folder for more info and supported maps.";
			//sync[] = {};
		};
	};
	
	class VQI_ModuleSOCOMdesk : Module_F {
	icon = "\vqi_spookwarcom\socom\ops_desk\iconSOCOMdesk.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "SOCOM - Ops Desk";
		function = "VQI_fnc_Module5a";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_socom_opdesk { //
				displayName = "Operations Desk";
				description = "Creates Special Operations Desk. MENU Options ADDED to Laptop.";
				typeName = NUMBER;
				
				class Values
				{
					class 1SOPD	{name = "YES - Place SOCOM Ops Desk";  value = 1; default = 1;}; // ListBox Items
					class 2SOPD	{name = "OFF - NO DESK";  value = 2; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to place Desk and Laptop HERE. Select Options as desired. IF NO, name any Object: VQI_SOCOM_1 to add Menu Options to it.";
			//sync[] = {};
		};
	};
	
	
	class VQI_ModuleDARK : Module_F {
	icon = "\vqi_spookwarcom\dark\iconDARK.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "D.A.R.K - System ON";
		function = "VQI_fnc_Module6";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_dark_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF - For Testing & Experimentation ONLY";
				typeName = NUMBER;
				
				class Values
				{
					class 0DKH	{name = "OFF"; value = 0; default = 0;}; // ListBox Items
					class 1DKH	{name = "ON"; value = 1; };
				};
			};
			
			class vqi_dark_system_starttime { //
				displayName = "System Start (Timed)";
				description = "Set the Start Timer (seconds) for when system Turns ON (plus a few extra minutes)";
				typeName = NUMBER;
				defaultValue = "600";
			};
			
			class vqi_dark_system_startdist { //
				displayName = "System Start (Distance)";
				description = "Set the Condition to Start Timer (above), AFTER Player moves from Starting Location";
				typeName = NUMBER;
				
				class Values
				{
					class 0DSD {name = "Default/None, Timer Only";  value = 0; };
					class 1DSD {name = "Player moves 100m";  value = 100; }; // ListBox Items
					class 2DSD {name = "Player moves 250m";  value = 250; default = 250;};
					class 3DSD {name = "Player moves 500m";  value = 500; };
					class 4DSD {name = "Player moves 1000m";  value = 1000; };
				};
			};
			
			class vqi_dark_faction_ru { //
				displayName = "Rogue Units =";
				description = "Spawns Random Black-Ops, Guerilla, Resistance, etc. Single-Type Movie-Style Units.";
				typeName = NUMBER;
				
				class Values
				{
					class 0FSRU	{name = "OFF";  value = 0; };
					class 1FSRU	{name = "OPFOR / RED / CSAT"; value = 1; default = 1;}; // ListBox Items
					class 2FSRU	{name = "INDP / GREEN / AAF"; value = 2; };
					class 3FSRU	{name = "NATO / BLUE / BLUFOR"; value = 3; };
				};
			};
			class vqi_dark_faction_inf { //
				displayName = "Infantry =";
				description = "Spawns Standard, Support, and Spec-Ops Infantry Squads.";
				typeName = NUMBER;
				
				class Values
				{
					class 0FSINF {name = "OFF";  value = 0; };
					class 1FSINF {name = "OPFOR / RED / CSAT"; value = 1; default = 1;}; // ListBox Items
					class 2FSINF {name = "INDP / GREEN / AAF"; value = 2; };
					class 3FSINF {name = "NATO / BLUE / BLUFOR"; value = 3; };
				};
			};
			class vqi_dark_faction_veh { //
				displayName = "Vehicles =";
				description = "Spawns Non/Low Armor Vehicles, emphasis on Transports w/ Troops.";
				typeName = NUMBER;
				
				class Values
				{
					class 0FSV {name = "OFF";  value = 0; };
					class 1FSV {name = "OPFOR / RED / CSAT"; value = 1; default = 1;}; // ListBox Items
					class 2FSV {name = "INDP / GREEN / AAF"; value = 2; };
					class 3FSV {name = "NATO / BLUE / BLUFOR"; value = 3; };
				};
			};
			class vqi_dark_faction_heli { //
				displayName = "Helicopters =";
				description = "Spawns Helicopters. RANDOM Patrols, Search, Land/TakeOff, SAD, etc.";
				typeName = NUMBER;
				
				class Values
				{
					class 0FSHELI {name = "OFF";  value = 0; };
					class 1FSHELI {name = "OPFOR / RED / CSAT";  value = 1; default = 1;}; // ListBox Items
					class 2FSHELI {name = "INDP / GREEN / AAF";  value = 2; };
					class 3FSHELI {name = "NATO / BLUE / BLUFOR";  value = 3; };
				};
			};
			class vqi_dark_faction_armor { //
				displayName = "Armor =";
				description = "Spawns Armor with emphasis on Stationary Patrol, or LONG Single Waypoint";
				typeName = NUMBER;
				
				class Values
				{
					class 0FSAMR {name = "OFF";  value = 0; };
					class 1FSAMR {name = "OPFOR / RED / CSAT";  value = 1; default = 1;}; // ListBox Items
					class 2FSAMR {name = "INDP / GREEN / AAF";  value = 2; };
					class 3FSAMR {name = "NATO / BLUE / BLUFOR";  value = 3; };
				};
			};
			
			class vqi_dark_faction_ru_prob { //
				displayName = "Rogue Units %";
				description = "Set PROBABLITY % (0-100) of Rogue Unit Spawn, per Loop Check.";
				typeName = NUMBER;
				defaultValue = "60";
			};
			class vqi_dark_faction_inf_prob { //
				displayName = "Infantry %";
				description = "Set PROBABLITY % (0-100) of Infantry Group Spawn, per Loop Check.";
				typeName = NUMBER;
				defaultValue = "30";
			};
			class vqi_dark_faction_veh_prob { //
				displayName = "Vehicle %";
				description = "Set PROBABLITY % (0-100) of Vehicle Spawn, per Loop Check.";
				typeName = NUMBER;
				defaultValue = "20";
			};
			class vqi_dark_faction_heli_prob { //
				displayName = "Helicopters %";
				description = "Set PROBABLITY % (0-100) of Combat Helicopter Spawn, per Loop Check.";
				typeName = NUMBER;
				defaultValue = "10";
			};
			class vqi_dark_faction_armor_prob { //
				displayName = "Armor %";
				description = "Set PROBABLITY % (0-100) of Armoured Vehicle Spawn, per Loop Check.";
				typeName = NUMBER;
				defaultValue = "5";
			};
			
			class vqi_dark_qrf_heliteam { //
				displayName = "Enemy Radio: Q.R.F.";
				description = "Quick Reaction Force, (HeliTeam w/ Troops) to LAND and TRACK Players!";
				typeName = NUMBER;
				
				class Values
				{
					class 0QRFH {name = "NO";  value = 0; };
					class 1QRFH {name = "YES - Enemy can Radio QRF Team";  value = 1; default = 1;}; // ListBox Items
				};
			};
			class vqi_dark_qrf_paratroops { //
				displayName = "Enemy Radio: ParaTroops";
				description = "Heli w/ ParaTroops dispatched to ParaJump and TRACK Players!";
				typeName = NUMBER;
				
				class Values
				{
					class 0QRFP {name = "NO";  value = 0; };
					class 1QRFP {name = "YES - Enemy can Radio ParaTroops";  value = 1; default = 1;}; // ListBox Items
				};
			};
			class vqi_dark_qrf_arty { //
				displayName = "Enemy Radio: Artillery";
				description = "2 Smokes FIRST, then RANDOM Timer, Shell Type, Area, etc. (Flares + Arty if Dark)";
				typeName = NUMBER;
				
				class Values
				{
					class 0QRFA {name = "NO";  value = 0; };
					class 1QRFA {name = "YES - Enemy can Radio Arty/Mortars";  value = 1; default = 1;}; // ListBox Items
				};
			};
			
			class vqi_dark_system_maxunits { //
				displayName = "Max Units";
				description = "Set MAXIMUM Units to Spawn in near player, distance-check is within 3km.";
				typeName = NUMBER;
				defaultValue = "100";
			};
			
			class vqi_dark_deadbodies_bugs { //
				displayName = "Dead Bodies: Flies";
				description = "Spawns Bugs/Flies on some Dead Bodies lying for over an Hour. Dark and Eerie!";
				typeName = NUMBER;
				
				class Values
				{
					class 0DBB {name = "OFF";  value = 0; };
					class 1DBB {name = "ON - Maggots lay Eggs";  value = 1; default = 1;}; // ListBox Items
				};
			};
			class vqi_dark_lootitems { //
				displayName = "Inventory Items";
				description = "Adds random misc Items to random units. Money, MREs, Intel, Gear, FMs, Notebooks, Dogtags, etc.";
				typeName = NUMBER;
				
				class Values
				{
					class 0LI {name = "OFF";  value = 0; };
					class 1LI {name = "ON - Items/Intel to Units";  value = 1; default = 1;}; // ListBox Items
				};
			};

			
			class vqi_dark_system_looptimer { //
				displayName = "Loop Master Timer";
				description = "Set the Sleep-Timer (pause) between Spawn Cycles (seconds). Lower is Faster of course.";
				typeName = NUMBER;
				defaultValue = "600";
			};
			
			class vqi_dark_amb_aircraft { //
				displayName = "Ambient Aircraft";
				description = "Adds TPW's Ambient Aircraft (TPW AIR); pulls from activated Mods.";
				typeName = NUMBER;
				
				class Values
				{
					class 0AA {name = "OFF";  value = 0; };
					class 1AA {name = "ON - Random Air Traffic";  value = 1; default = 1;}; // ListBox Items
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select options as desired. Will spawn and de-spawn enemy, items, effects, etc. around player.";
			//sync[] = {};
		};
	};
	/*
	class VQI_ModuleCORE : Module_F {
	icon = "\vqi_spookwarcom\core\iconCORE.paa";
		scope = public;
		author = "R.Von Quest aka 'Goblin'";
		category = "VQI_SpookWarCom";
		displayName = "CORE - System ON";
		function = "VQI_fnc_Module7";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		
		class Arguments: ArgumentsBaseUnits
		{
			class Units: Units {};
			class vqi_core_debughints { //Debug, Info, Hints
				displayName = "Debug/Hints/Info";
				description = "Recommend: OFF - For Testing & Experimentation ONLY";
				typeName = NUMBER;
				
				class Values
				{
					class 0CH	{name = "OFF";  value = 0; default = 0;}; // ListBox Items
					class 1CH	{name = "ON";   value = 1; };
				};
			};
			
			class vqi_core_datetime_sm { //season/moon
				displayName = "Start Season/FullMoon";
				description = "Select Time of Year (winter, spring, summer, fall), DAY will be set to a FULL MOON date";
				typeName = NUMBER;
				
				class Values
				{
					class 0CSM	{name = "Off";  value = 0; }; // ListBox Items
					class 1CSM	{name = "Winter";  value = 1; };
					class 2CSM	{name = "Spring";  value = 2; };
					class 3CSM	{name = "Summer";  value = 3; };
					class 4CSM	{name = "Autumn";  value = 4; default = 4;};

				};
			};
			
			class vqi_core_datetime_daylight { //daylight
				displayName = "Daytime or Random";
				description = "Random Start Time with HIGH probability of DAYTIME or completely RANDOM Day/Night";
				typeName = NUMBER;
				
				class Values
				{
					class 0CST	{name = "Off";  value = 0; }; // ListBox Items
					class 1CST	{name = "99% of DayTime Start";  value = 1; };
					class 2CST	{name = "90% of DayTime Start";  value = 2; default = 2;};
					class 3CST	{name = "80% of DayTime Start";  value = 3; };
					class 4CST	{name = "70% of DayTime Start";  value = 4; };
					class 5CST	{name = "Random StartTime; Day/Night";  value = 5; };
				};
			};
			
			class vqi_core_playerstart_location { //daylight
				displayName = "Start Location/Setup";
				description = "Select Start GameType/Location, see README in Docs for more Info";
				typeName = NUMBER;
				
				class Values
				{
					class 0CSL	{name = "Off";  value = 0; default = 0; }; // ListBox Items
					class 1CSL	{name = "CampSite: Small (random location)";  value = 1; };
					class 2CSL	{name = "OpsCenter: 'Black Site' (off map)";  value = 2; };
				};
			};
			
			class vqi_core_weaponsgear_player { //random single weapon, any
				displayName = "Player Weapons & Gear";
				description = "Starting Weapons/Gear for Players (P=Primary, S=Sidearm, L=Launcher); see README for Info/Mods";
				typeName = NUMBER;
				
				class Values
				{
					class 0CWGP	{name = "Off";  value = 0; default = 0; }; // ListBox Items
					class 1CWGP	{name = "1 Weapon, Random (P/S/L)";  value = 1; };
				};
			};
			
			class vqi_core_covert_unarmed { //Unarmed, Stealth
				displayName = "Stealth: Non-Combatant";
				description = "Viewed as a 'Non-Threat' when ALL conditions are met (see README for details); Black-Ops Gameplay.";
				typeName = NUMBER;
				
				class Values
				{
					class 0CNC	{name = "Off";  value = 0; default = 0; }; // ListBox Items
					class 1CNC	{name = "ON - Covert, Unarmed";  value = 1; };
				};
			};
		};
		
		// Module description. Must inherit from base class, otherwise pre-defined entities won't be available
		class ModuleDescription {
			description = "Place Module to turn ON System. Select STARTING options as desired.";
			//sync[] = {};
		};
	};
	*/
};




			