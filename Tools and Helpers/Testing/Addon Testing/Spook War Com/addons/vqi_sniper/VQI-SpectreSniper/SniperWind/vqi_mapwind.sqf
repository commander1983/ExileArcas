//setWind???? BIS wind is kinda funky and erratic!
//may conflict with MP and other systems?


if (VQI_HINTS_SNIPER == 1) then {
hint "VQI-SpectreSniper \n Sniper: New Wind Set";};



if (isServer) then {

	while {true} do {
		if (VQI_HINTS_SNIPER == 1) then {
		hint "Sniper: New Wind Set";};
		
		20 setWindDir random 359;
		
		
		if (random 100 >= 80) then {
			30 setWindStr random 1;
		} else {
			30 setWindStr ((random 1) - 0.7));};
	
	sleep 600 + random 7200;
	};
	
};



/* Notes:


*/