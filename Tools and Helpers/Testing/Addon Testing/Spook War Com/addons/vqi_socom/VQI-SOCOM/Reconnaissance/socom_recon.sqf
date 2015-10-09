//MISSION TYPE: Recon
//
hint "MISSION: RECONNAISSANCE";
sleep 5;

_rMission1 = [1,2] call BIS_fnc_randomInt;
switch (_rMission1) do
{
   case 1 : { execVM "\vqi_socom\VQI-SOCOM\Reconnaissance\recon_land_1.sqf"; };
   case 2 : { execVM "\vqi_socom\VQI-SOCOM\Reconnaissance\recon_land_1.sqf"; };
}; 