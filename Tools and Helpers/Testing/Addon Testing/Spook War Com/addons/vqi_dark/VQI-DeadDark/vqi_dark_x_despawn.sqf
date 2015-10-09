//
//
//if (VQI_DARK_HINTS == 1) then {
//hint "xDespawn.sqf"; //};
private ["_enemy","_maxDist"];

_enemy = _this select 0;



sleep 5;	// - EXPERIMENTAL -
waitUntil { sleep 15; player distance ((units _enemy) select 0) > 3500 }; //maxSpawn + 500m



{ if (vehicle _x != _x) then { deleteVehicle vehicle _x; };
	deleteVehicle _x;
} forEach units _enemy;






sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "xDespawn.sqf -END- \n Far X Deleted"; };