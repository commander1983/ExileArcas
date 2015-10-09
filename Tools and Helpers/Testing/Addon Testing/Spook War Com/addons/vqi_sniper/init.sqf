//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//#include "\a3\editor_f\Data\Scripts\dikCodes.h"

waitUntil {!isNil "bis_fnc_init"};
sleep 1;

// Vanity Tag ----------------------------------------------------------------------------------
if (VQI_HINTS_SNIPER == 1) then { sleep 2;
hint "Von Quest Industries Presents: \n SpectreSniper v0.6 \n by: R. Von Quest aka 'Goblin'";};
//----------------------------------------------------------------------------------------------

// Target System functions
VQI_fn_sniper_data = compile preprocessFile "\vqi_sniper\VQI-SpectreSniper\SniperData\fn_sniper_data.sqf";
VQI_eh_hitlocation = compile preprocessFile "\vqi_sniper\VQI-SpectreSniper\SniperData\eh_hitlocation.sqf";
sleep 10; 

// Support for up to 5 Targets
VQI_TARGET_1 addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
publicVariable "VQI_TARGET_1";
VQI_TARGET_2 addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
publicVariable "VQI_TARGET_2";
VQI_TARGET_3 addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
publicVariable "VQI_TARGET_3";
VQI_TARGET_4 addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
publicVariable "VQI_TARGET_4";
VQI_TARGET_5 addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
publicVariable "VQI_TARGET_5";


sleep 2;

missionNamespace setVariable ["QuestrelKeyToggle", false];
missionNamespace setVariable ["DebugKeyToggle", false];


//User Custom KeyBinding ----> set config!
execVM "\vqi_sniper\XEH_postClientInit.sqf";