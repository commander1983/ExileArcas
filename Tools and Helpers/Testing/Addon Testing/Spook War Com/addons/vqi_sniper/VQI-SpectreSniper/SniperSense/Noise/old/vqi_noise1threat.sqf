// SniperSense - Keen sense of audio/noise/movement
//
if (VQI_HINTS_SNIPER == 1) then {
hint "1 Detect Noise...";};
sleep 2;

// 70% probability, limited
if (random 1 <= 0.70) then {
_rNoise = [1,7] call BIS_fnc_randomInt;
switch (_rNoise) do
	{
   case 1 : { playSound "animal_alarm4a"; };
   case 2 : { playSound "animal_alarm5a"; };
   case 3 : { playSound "animal_alarm7a"; };
   case 4 : { playSound "birds1a"; };
   case 5 : { playSound "coms_inter"; };
   case 6 : { playSound "radio_arabic7a"; };
   case 7 : { playSound "twig_snap11"; };
	};
};

