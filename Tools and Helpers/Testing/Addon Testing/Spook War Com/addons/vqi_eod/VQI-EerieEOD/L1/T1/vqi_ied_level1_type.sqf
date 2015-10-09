//Select Random IED Type
//
if (VQI_HINTS_EOD == 1) then {
hint "IED: Random Type";};
sleep 1;

private ["_rIEDtype"];

_rIEDtype = [1,2] call BIS_fnc_randomInt;
switch (_rIEDtype) do
{
   case 1 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_ied_l1_type1.sqf"; };
   case 2 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_ied_l1_type1.sqf"; };

};


/*

Ignore - NOT NEEDED NOW!


*/