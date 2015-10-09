waitUntil {!isNil "bis_fnc_init"};
sleep 1;
// User Settings
//
sleep 1;
// Vanity Tag ------------------------------------------------------------------------------
if (VQI_HINTS_SOCOM == 1) then { sleep 5;
hint "Von Quest Industries Presents: \n SOCOM v0.1 \n by: R. Von Quest aka 'Goblin'";};
//------------------------------------------------------------------------------------------

// SOCOM System ---> checks if Laptop exists
//if (!isNull(VQI_SOCOM_1)) then { execVM "\vqi_socom\VQI-SOCOM\vqi_socom_init.sqf"; }; // was init.sqf file in WIP Mission

execVM "\vqi_socom\VQI-SOCOM\vqi_socom_init.sqf";




//hint "module SOCOM TEST";
//-------------------------------------------------------------------------------------------