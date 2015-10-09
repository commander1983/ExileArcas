// SniperSense - HEARING - Keen sense of audio/noise/movement
//

//vqi_noise_threat_0

private ["_rngSkill","_rNoise"];

if (SniperSenses == 10005) then { _rngSkill =  5; }; //  25m ~  5%
if (SniperSenses == 10010) then { _rngSkill = 10; }; //  50m ~ 10%
if (SniperSenses == 10020) then { _rngSkill = 20; }; //  75m ~ 20%
if (SniperSenses == 20040) then { _rngSkill = 30; }; // 100m ~ 30%
if (SniperSenses == 30060) then { _rngSkill = 40; }; // 125m ~ 40%
if (SniperSenses == 40080) then { _rngSkill = 80; }; // 150m ~ 80%


if (random 100 <= _rngSkill) then {

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




/* Notes:

*/