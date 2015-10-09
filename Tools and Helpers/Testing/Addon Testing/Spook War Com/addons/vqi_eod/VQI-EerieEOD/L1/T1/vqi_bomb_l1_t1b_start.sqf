//START: BOMB Device L1:T1:B
//
if (VQI_HINTS_EOD == 1) then {
sleep 2; hint "BOMB: Level 1";};
sleep 2;

//Inspection Details, Notes, Observations, etc
//execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_inspection.sqf";


[[deviceWire1, ["O P E N", "execVM '\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1b.sqf'; [deviceWire1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[deviceWire1, ["T A K E", "execVM '\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf'; [deviceWire1, 2]"]], "addAction", true, true] call BIS_fnc_MP;



/* Notes:

*/