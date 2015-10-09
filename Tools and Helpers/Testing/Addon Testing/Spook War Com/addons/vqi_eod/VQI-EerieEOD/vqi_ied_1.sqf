//IED No.1 START
//
waitUntil {!isNil "bis_fnc_init"};
sleep 5;

//spawn X object --WIP-- Still Testing! Re-Do????
deviceWire = "Land_MetalWire_F" createVehicle (position VQI_EOD_1);
publicVariable "deviceWire";

deviceWire attachTo [VQI_EOD_1,[0,0,0]];
detach deviceWire;	

deviceWire setPosATL [getPosATL deviceWire select 0, getPosATL deviceWire select 1, 0];
sleep 1;



//addAction NEW MP --- unable to REMOVE ACTION?
[[deviceWire, ["Inspect Object", "execVM '\vqi_eod\VQI-EerieEOD\vqi_ied_inspection.sqf'; [VQI_EOD_1, 1]"]], "addAction", true, true] call BIS_fnc_MP;


/* Notes:

*/