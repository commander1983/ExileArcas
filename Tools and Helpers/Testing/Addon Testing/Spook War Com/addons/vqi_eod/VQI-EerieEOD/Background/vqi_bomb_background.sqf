//Random Background
//



_rBkg = [1,2] call BIS_fnc_randomInt;
switch (_rBkg) do
{
   case 1 :  { 1 cutRsc ["VQI_EOD_BACKGROUND_01", "PLAIN"]; };
   case 2 :  { 1 cutRsc ["VQI_EOD_BACKGROUND_02", "PLAIN"]; };
};


//sleep 1;
//SFXIED = [] execVM "\vqi_eod\VQI-EerieEOD\T1\L1\soundIED_Armed.sqf";


/*
_rBkg = [1,2] call BIS_fnc_randomInt;
switch (_rBkg) do
{
   case 1 :  { _bkg = createDialog "VQI_EOD_BACKGROUND_01"; };
   case 2 :  { _bkg = createDialog "VQI_EOD_BACKGROUND_02"; };
};
*/