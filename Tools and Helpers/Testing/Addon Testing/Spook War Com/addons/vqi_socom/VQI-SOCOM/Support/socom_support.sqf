//MISSION TYPE: Support
//
hint "MISSION: SUPPORT";
sleep 5;

_rMission1 = [1,2] call BIS_fnc_randomInt;
switch (_rMission1) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Support\mines_bay_bottom_1.sqf"; };
   case 2 : { execVM "\vqi_socom\VQI-SOCOM\Support\mines_bay_bottom_1.sqf"; };
}; 