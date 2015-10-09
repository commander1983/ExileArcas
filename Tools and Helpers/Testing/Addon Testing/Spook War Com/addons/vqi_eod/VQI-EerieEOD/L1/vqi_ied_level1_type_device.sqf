//Select Random specific IED Device
//LevelDifficulty_GraphicType_DetailLayout
if (VQI_HINTS_EOD == 1) then {
sleep 2; hint "BOMB: Random Device";};
sleep 2;

private ["_rIEDdevice"];

_rIEDdevice = [1,10] call BIS_fnc_randomInt;
switch (_rIEDdevice) do
			//file format: bomb_level_type_letter
{			//bomb_l1_T1a, bomb_l1_T1b, bomb_l1_T2a, bomb_l1_T2b, etc.
   case 1 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1a_start.sqf"; };
   case 2 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1b_start.sqf"; };
   case 3 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1c_start.sqf"; };
   case 4 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1d_start.sqf"; };
   case 5 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1e_start.sqf"; };
   case 6 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1f_start.sqf"; };
   case 7 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1g_start.sqf"; };
   case 8 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1h_start.sqf"; };
   case 9 :  { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1i_start.sqf"; };
   case 10 : { execVM "\vqi_eod\VQI-EerieEOD\L1\T1\vqi_bomb_l1_t1j_start.sqf"; };
};