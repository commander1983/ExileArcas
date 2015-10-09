//MISSION TYPE: Surveillance
//
hint "MISSION: SURVEILLANCE";
sleep 5;

_rMission2 = [1,2] call BIS_fnc_randomInt;
switch (_rMission2) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Surveillance\drac_node_1.sqf"; };
   Case 2 : { execVM "\vqi_socom\VQI-SOCOM\Surveillance\drac_node_1.sqf"; };
}; 