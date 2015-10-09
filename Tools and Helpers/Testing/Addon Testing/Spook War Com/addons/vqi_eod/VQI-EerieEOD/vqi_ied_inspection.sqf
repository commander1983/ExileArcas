//Inspection Details & Observations
//

//-----W-I-P---W-I-P---W-I-P---W-I-P-----
//Briefcase, nondescript, little details
if (!isNull(deviceWire)) then {
	hint "Suspicious Object...";
	sleep 5;
	hint "Newer Metal Briefcase, corroded and slightly abused. Faint beeping coming from inside...";
	sleep 5;
	hint "Wire cable attached to bottom of case and ground.";
};
sleep 1;
//removes "Inspect Object" since addAction NOT working
deleteVehicle deviceWire;


//add NEW object for NEW addActions
deviceWire1 = "Land_MetalWire_F" createVehicle (position VQI_EOD_1);
publicVariable "deviceWire1";
	
deviceWire1 attachTo [VQI_EOD_1,[0,0,0]];
detach deviceWire1;	
	
deviceWire1 setPosATL [getPosATL deviceWire1 select 0, getPosATL deviceWire1 select 1, 0];
sleep 1;

//continue with system...
execVM "\vqi_eod\VQI-EerieEOD\vqi_ied_level_select.sqf";

//addAction NEW MP --- unable to REMOVE ACTION?
//[[deviceWire1, ["Inspect Object", "execVM '\vqi_eod\VQI-EerieEOD\vqi_ied_level_select.sqf'; [VQI_EOD_1, 1]"]], "addAction", true, true] call BIS_fnc_MP;