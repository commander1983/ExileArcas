//Complex "FIRED" Weapon Detection System - SideArm/Rifle/Suppressor

//Firing a Weapon can/will ruin the stealth and/or keen senses state
VQI_fnc_suppressor = {
    private ["_weaponFired","_weaponItems","_suppressor"];
    _weaponFired 	= _this select 1;
    _weaponItems 	= weaponsItems player;
    _suppressor 	= false;

    {
        if ((_weaponFired == _x select 0) && !((_x select 1) == "")) then {
            _suppressor = true;
        };
    } forEach _weaponItems;

    _suppressor
};

player addEventHandler["Fired", {if ((_this call VQI_fnc_suppressor) && ((animationState player == "AmovPpneMstpSrasWpstDnon")	|| 	// Prone SideArm Silenced --- ADD OTHER SIDEARM STATES?
																(animationState player == "AmovPknlMstpSrasWpstDnon")	|| 	// Kneel SideArm Silenced --- ADD OTHER SIDEARM STATES?
																(animationState player == "AmovPercMstpSrasWpstDnon"))) 	// Stand SideArm Silenced --- ADD OTHER SIDEARM STATES?
																
					then {if (VQI_HINTS_SNIPER == 1) then {hint "SideArm Suppressed";};
					if ((animationState player == "AmovPpneMstpSrasWpstDnon") && (random 1 <= 0.05)) then { //IF Prone/SideArm; 5% chance of breaking out (long) Stealth/Sense
					
					missionNamespace setVariable ["ScoutSniperFiredxx", true];
					RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";}; //Not sure if I even want this...
					
					} else {
					
						if (_this call VQI_fnc_suppressor) then { // ADD % to 'suppressed' maybe?
						if (VQI_HINTS_SNIPER == 1) then {hint "Rifle Suppressed!";}; 
						if ((animationState player == "AmovPpneMstpSrasWpstDnon") && (random 1 <= 0.2)) then { //20%
						missionNamespace setVariable ["ScoutSniperFiredxx", true];
						RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";};
						} else {
						missionNamespace setVariable ["ScoutSniperFiredxx", true];
						if (VQI_HINTS_SNIPER == 1) then {hint "NOT Suppressed!!";}; 
						RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";}
					
					}}];
					
					
					
/*					
player addEventHandler["Fired", 
{if ((_this call VQI_fnc_suppressor) && ((animationState player == "AmovPpneMstpSrasWpstDnon")	|| 	// Prone SideArm Silenced --- ADD OTHER SIDEARM STATES?
									(animationState player == "AmovPknlMstpSrasWpstDnon")	|| 	// Kneel SideArm Silenced --- ADD OTHER SIDEARM STATES?
									(animationState player == "AmovPercMstpSrasWpstDnon"))) 	// Stand SideArm Silenced --- ADD OTHER SIDEARM STATES?
			then { if (VQI_HINTS_SNIPER == 1) then { hint "SideArm Suppressed"; };
			terminate SNIPER_SENSES;
			if (VQI_SENSES_SNIPER == 1) then {
			SNIPER_SENSES = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersenses.sqf"; }; //remove?
			//
			if ((animationState player == "AmovPpneMstpSrasWpstDnon") && (random 100 <= 5)) then { // Prone SideArm LOUD; 5% chance of break
				ScoutSniperStealth = false;}; //
			
		} else {
	
			//Rifle Suppressed
			if (_this call VQI_fnc_suppressor) then {
			terminate SNIPER_SENSES;
			if (VQI_SENSES_SNIPER == 1) then {
			SNIPER_SENSES = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersenses.sqf"; };
				if (random 100 <= 30) then { // 30%
					if (VQI_HINTS_SNIPER == 1) then { hint "Rifle Suppressed! \n Stealth\Senses: Ruined"; };
					ScoutSniperStealth = false;
					missionNamespace setVariable ["ScoutSniperFiredxx", true];
					} else { if (VQI_HINTS_SNIPER == 1) then { hint "Rifle Suppressed! \n Stealth\Senses: OK"; }; };
				
			} else {
				//Weapons NOT Suppressed
				if (VQI_HINTS_SNIPER == 1) then { hint "NOT Suppressed!! \n Stealth\Senses: Ruined"; };
				ScoutSniperStealth = false;
				missionNamespace setVariable ["ScoutSniperFiredxx", true];
			};
		};
	};
];
*/


if (VQI_HINTS_SNIPER == 1) then { sleep 35;
hint "SpectreSniper v0.5 \n Weapon-Fired-Penalty: ON";};


/* Notes:
W-I-P
Need to add more Modifiers (coming soon...)

Add: ScoutSniperFired = true; (add delays?)

*/