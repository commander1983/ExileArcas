waitUntil {!isNil "bis_fnc_init"};
sleep 1;

// User Settings
//VQI_HINTS_DIVER = getNumber (configFile >> "VQI_Settings_Diver" >> "vqi_diver_hint_onoff");
sleep 1;
// Vanity Tag ------------------------------------------------------------------------------
if (VQI_DARK_HINTS == 1) then { sleep 10;
hint "Von Quest Industries Presents: \n D.A.R.K. v0.0.1 \n by: R. Von Quest aka 'Goblin'";};
//------------------------------------------------------------------------------------------

if (isServer) then {
	// Initialize D.A.R.K. Addon
	execVM "\vqi_dark\VQI-DeadDARK\vqi_deaddark.sqf";
};



//User Custom KeyBinding ----> set config?
//execVM "\vqi_dark\XEH_postClientInit.sqf";


/* =======================================================================================
NOTES: n/a


*/