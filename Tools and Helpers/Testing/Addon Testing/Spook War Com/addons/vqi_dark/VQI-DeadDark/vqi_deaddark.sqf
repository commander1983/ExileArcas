/////////////////////////////////////////////////////////////////////////////
/*	ADDON: VQI-DEADDARK-v0			BY: R.Von Quest  aka the "Goblin"
	------------------------------------------------------------------------
	DEPT.: Von Quest Industries		STATUS: WORK-IN-PROGRESS
	PROJECT: ENEMY SPAWN SYSTEM		SERIES: SPOOKWARCOM
	ADDON NAME: DeadDARK			VERSION: v0.0 - 21.AUG.2015
	------------------------------------------------------------------------
	CREATOR: R. Von Quest - aka the "Goblin"
	CREDITS: n/a
	------------------------------------------------------------------------
	NOTES: W-I-P
*/
/////////////////////////////////////////////////////////////////////////////
waitUntil {!isNil "bis_fnc_init"};
sleep 20;

if (VQI_DARK_HINTS == 1) then {
hint "D.A.R.K System Starting..."; };


sleep 10;

//Start DARK System
if (isServer) then {
	execVM "\vqi_dark\VQI-DeadDARK\fnc\vqi_dark_fnc_setskills.sqf";		// function
		sleep 60;
	execVM "\vqi_dark\VQI-DeadDARK\vqi_deaddark_loop.sqf";				// 
};


sleep 2;


if (VQI_DARK_ITEMS_X == 1) then {
	execVM "\vqi_dark\VQI-DeadDARK\items\vqi_dark_lootitems.sqf";
};

sleep 600;
execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_reinforcements.sqf";

//Notes: