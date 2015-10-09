waitUntil {!isNil "bis_fnc_init"};
sleep 1;
// User Settings
//VQI_HINTS_DIVER = getNumber (configFile >> "VQI_Settings_Diver" >> "vqi_diver_hint_onoff");
//VQI_MKSUB_DIVER = getNumber (configFile >> "VQI_Settings_Diver" >> "vqi_diver_mksub_temp");
sleep 1;
// Vanity Tag ------------------------------------------------------------------------------
if (VQI_HINTS_DIVER == 1) then { sleep 4;
hint "Von Quest Industries Presents: \n DevilDiver v0.1 \n by: R. Von Quest aka 'Goblin'";};
//------------------------------------------------------------------------------------------

// Diver System
if (!isNull(VQI_DIVER_HMSPROTEUS)) then { execVM "\vqi_diver\VQI-DevilDiver\vqi_devildiver.sqf"; }; // was init.sqf file in WIP Mission


sleep 2;


//User Custom KeyBinding ----> set config?
execVM "\vqi_diver\XEH_postClientInit.sqf";




//hint "module DIVER TEST";
//-------------------------------------------------------------------------------------------