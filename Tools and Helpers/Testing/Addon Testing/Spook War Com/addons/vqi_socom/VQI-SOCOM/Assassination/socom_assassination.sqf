//MISSION TYPE: Assassination
//
hint "MISSION: ASSASSINATION";
sleep 5;

_rMission2 = [1,2] call BIS_fnc_randomInt;
switch (_rMission2) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Assassination\officer_iran1.sqf"; };
   case 2 : { execVM "\vqi_socom\VQI-SOCOM\Assassination\officer_iran1.sqf"; };
}; 