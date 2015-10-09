// Enemy Loot-Loop!
//
if (VQI_DARK_HINTS == 1) then { 
hint "Loot System Active!"; };




while {true} do {

	if (random 100 < 80) then {
		_nELoot = player findNearestEnemy player; sleep 2;
		[_nELoot] execVM "\vqi_dark\VQI-DeadDARK\Items\vqi_dark_items_x.sqf";
	};
sleep 100 + random 300;
};


// VQI_DARK_LOOTPROB
// VQI_DARK_LOOTLOOP