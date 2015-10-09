//MISSION TYPE: Special
//
hint "MISSION: CLASSIFIED";
sleep 5;

private ["_rMission1"];

_rMission1 = [1,2] call BIS_fnc_randomInt;
switch (_rMission1) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Special\bomb_1.sqf"; };
   case 2 : { execVM "\vqi_socom\VQI-SOCOM\Special\bomb_1.sqf"; };
}; 