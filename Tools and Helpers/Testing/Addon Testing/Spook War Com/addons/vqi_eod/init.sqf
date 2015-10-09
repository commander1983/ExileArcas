waitUntil {!isNil "bis_fnc_init"};
sleep 1;

// User Settings
//VQI_HINTS_EOD = getNumber (configFile >> "VQI_Settings_EOD" >> "vqi_eod_hint_onoff");
sleep 1;
// Vanity Tag ------------------------------------------------------------------------------
if (VQI_HINTS_EOD == 1) then { sleep 3;
hint "Von Quest Industries Presents: \n EerieEOD v0.1 \n by: R. Von Quest aka 'Goblin'";};
//------------------------------------------------------------------------------------------


// Start EOD System
[] execVM "\vqi_eod\VQI-EerieEOD\vqi_eerieeod.sqf";


sleep 2;

//User Custom KeyBinding ----> set config?
execVM "\vqi_eod\XEH_postClientInit.sqf";


/* =======================================================================================
NOTES: n/a


*/