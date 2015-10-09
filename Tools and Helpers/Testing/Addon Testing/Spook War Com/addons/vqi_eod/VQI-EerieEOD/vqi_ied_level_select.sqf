//Select Random BOMB DEVICE Level
//
if (VQI_HINTS_EOD == 1) then {
sleep 2; hint "BOMB: Random Level";};
sleep 2;

private ["_eodUser","_rBOMBlevel"];

//VQI_EOD_1 		= _this select 0;  // Object
//eodUser 		= _this select 1;  // Unit

//removes "Inspect Object" from Briefcase -WIP-
VQI_EOD_1 removeAction 1;

//Need 10 'TYPES' for each I.E.D. Level (difficulty)
_rBOMBlevel = [1,2] call BIS_fnc_randomInt;
switch (_rBOMBlevel) do
{
   case 1 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_ied_level1_type_device.sqf"; };
   case 2 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_ied_level1_type_device.sqf"; };
   //case 3 :  { execVM "\vqi_eod\VQI-EerieEOD\L3\vqi_ied_level3_type_device.sqf"; };
};

/* NOTES:
User Options for LEVEL here! ONLY 1 Level available currently. W-I-P!


System is VERY VERY VERY WIP!
*/