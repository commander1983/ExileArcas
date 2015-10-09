//  Spawn Random Helicopters via User Module Setup
//
private ["_rNum","_rDir","_rDloc","_randomHeli","_positionXYZ"];

_rNum = random 100;
_rDir = random 360;

if (VQI_DARK_HINTS == 1) then {
	_rDloc = DlocP;
} else {
	_rDloc = [Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
};



if (VQI_DARK_HINTS == 1) then {
hint "helicopters.sqf"; };

sleep 1;

//weighted probability
if ((_rNum >= 0)  && (_rNum < 65))		then { enemySeed = 1; };	// 65% 
if ((_rNum >= 65) && (_rNum < 75))  	then { enemySeed = 2; };	// 10% 
if ((_rNum >= 75) && (_rNum <= 100)) 	then { enemySeed = 3; };	// 25% 

// Standard Helicopter Squads
if (VQI_DARK_SPAWN_HELI == 1) then { // CSAT - RED - OPFOR

	aircrew1 = createGroup EAST;
	
	if (enemySeed == 1) then {
		_randomHeli = ["O_Heli_Light_02_F","O_Heli_Light_02_v2_F","O_Heli_Light_02_unarmed_F"] call BIS_fnc_selectRandom; // 1.PO-30 Orca (multi)
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomHeli = ["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"] call BIS_fnc_selectRandom; // 1.MI-48 Kajman (attack)
			_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
			enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomHeli = ["O_Heli_Transport_04_F","O_Heli_Transport_04_medevac_F"] call BIS_fnc_selectRandom; // 1.MI-290 Taru (transport)
				_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
				enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
			}; // Place-holder -TBA- ELSE X
		};
	};
};

//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_HELI == 2) then { // AAF - GREEN - INDEPENDANT

	aircrew1 = createGroup RESISTANCE;
	
	if (enemySeed == 1) then {
		_randomHeli = ["I_Heli_Transport_02_F","I_Heli_light_03_F"] call BIS_fnc_selectRandom; // 1.CH-49 Mohawk (transport)   2.WY-55 Hellcat (attack)
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomHeli = ["I_Heli_light_03_F","I_Heli_light_03_F","I_Heli_light_03_F"] call BIS_fnc_selectRandom; // 2.WY-55 Hellcat (attack)
			_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
			enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomHeli = ["I_Heli_light_03_unarmed_F","I_Heli_light_03_unarmed_F","I_Heli_light_03_unarmed_F"] call BIS_fnc_selectRandom; // 3.WY-55 Hellcat (unarmed/multi)
				_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
				enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
			}; // Place-holder -TBA- ELSE X
		};
	};
};

//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_HELI == 3) then { // NATO / BLUE / BLUFOR

	aircrew1 = createGroup WEST;
	
	if (enemySeed == 1) then {
		_randomHeli = ["B_Heli_Transport_03_F","B_Heli_light_01_armed_F","B_Heli_Transport_01_camo_F"] call BIS_fnc_selectRandom; // 1.CH-67 Huron (transport)   2.AH-9 Pawnee (attack)    3.UH-80 Ghost Hawk (transport)
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomHeli = ["B_Heli_Attack_01_F","B_Heli_Attack_01_F"] call BIS_fnc_selectRandom; // 4.AH-99 Blackfoot (attack)
			_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
			enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomHeli = ["B_Heli_Light_01_F","B_Heli_Light_01_F","B_Heli_Light_01_F"] call BIS_fnc_selectRandom; // 5.MH-9 Hummingbird (unarmed/multi)
				_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
				enemyHeliX = [_positionXYZ, _rDir, _randomHeli, aircrew1] call BIS_fnc_spawnVehicle;
			}; // Place-holder -TBA- ELSE X
		};
	};
};





sleep 5;
[enemyHeliX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_helicopter_task.sqf";

sleep 5;
[aircrew1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";



sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "helicopters.sqf -END-"; };


//_positionX = _center findEmptyPosition [10,100,"UH60M_EP1"];
//[aircrew1, 2] setWaypointType "HOLD";