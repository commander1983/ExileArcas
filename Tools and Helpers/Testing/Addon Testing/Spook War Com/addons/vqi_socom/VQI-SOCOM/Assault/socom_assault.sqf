//MISSION TYPE: Assault
//
hint "MISSION: ASSAULT";
sleep 5;

_rMission2 = [1,2] call BIS_fnc_randomInt;
switch (_rMission2) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Assault\village1.sqf"; };
   case 2 : { execVM "\vqi_socom\VQI-SOCOM\Assault\village1.sqf"; };
}; 