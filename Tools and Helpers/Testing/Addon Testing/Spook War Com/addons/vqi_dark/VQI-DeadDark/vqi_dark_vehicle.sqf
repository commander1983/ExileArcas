//
//
//---WIP-----------by Von Quest-----------WIP---//
//  Spawn Random Vehicles via User Module Setup
//
private ["_mkrX","_pRng","_rNum","_rDir","_rDloc"];
_mkrX = "mkr1"; //_this select 0;
_pRng = 3000; //_this select 1;
_rNum = random 100;
_rDir = random 360;

if (VQI_DARK_HINTS == 1) then {
	_rDloc = DlocP;
} else {
	_rDloc = [Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
};



if (VQI_DARK_HINTS == 1) then {
hint "vehicle.sqf"; };
sleep 1;

//weighted probability
if ((_rNum >= 0)  && (_rNum < 65))		then { enemySeed = 1; };	// 65% Transports
if ((_rNum >= 65) && (_rNum < 75))  	then { enemySeed = 2; };	// 10% MRAP G/HMG
if ((_rNum >= 75) && (_rNum <= 100)) 	then { enemySeed = 3; };	// 25% MRAP, Quad, Misc

// Standard Vehicle Squads
//////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_VEH == 1) then { // CSAT - RED - OPFOR

	vehicle1 = createGroup EAST;
	
	if (enemySeed == 1) then {
		_randomVehicle = ["O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_02_transport_F","O_Truck_02_covered_F"] call BIS_fnc_selectRandom; // 1.Tempest (transport)     2.Zamak (transport)
		_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
		_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		[_enemyVehicleX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_vehicle_cargo.sqf";
	} else {
		if (enemySeed == 2) then {
			_randomVehicle = ["O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_MRAP_02_hmg_F","O_MRAP_02_hmg_F"] call BIS_fnc_selectRandom; // 3.Ifrit GMG (MRAP),   4.Ifrit HMG (MRAP)
			_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
			_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomVehicle = ["O_MRAP_02_F","O_MRAP_02_F","O_MRAP_02_F","O_Quadbike_01_F","O_Truck_03_device_F"] call BIS_fnc_selectRandom; // 5.Ifrit (MRAP),   6.4-Wheeler    7.Transport (device)
				_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
				_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_VEH == 2) then { // AAF - GREEN - INDEPENDANT

	vehicle1 = createGroup RESISTANCE;
	
	if (enemySeed == 1) then {
		_randomVehicle = ["I_Truck_02_transport_F","I_Truck_02_covered_F"] call BIS_fnc_selectRandom; // 1.Zamak (transport)
		_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
		_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		[_enemyVehicleX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_vehicle_cargo.sqf";
	} else {
		if (enemySeed == 2) then {
			_randomVehicle = ["I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_MRAP_03_hmg_F","I_MRAP_03_hmg_F"] call BIS_fnc_selectRandom; // 2.Strider GMG (MRAP),   3.Strider HMG (MRAP)
			_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
			_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomVehicle = ["I_MRAP_03_F","I_MRAP_03_F","I_MRAP_03_F","I_Quadbike_01_F"] call BIS_fnc_selectRandom; // 4.Strider (MRAP),   5.4-Wheeler
				_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
				_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_VEH == 3) then { // NATO / BLUE / BLUFOR

	vehicle1 = createGroup WEST;
	
	if (enemySeed == 1) then {
		_randomVehicle = ["B_Truck_01_transport_F","B_Truck_01_covered_F"] call BIS_fnc_selectRandom; // 1.HEMTT (transport)
		_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
		_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		[_enemyVehicleX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_vehicle_cargo.sqf";
	} else {
		if (enemySeed == 2) then {
			_randomVehicle = ["B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_MRAP_01_hmg_F","B_MRAP_01_hmg_F"] call BIS_fnc_selectRandom; // 2.Hunter GMG (MRAP),   3.Hunter HMG (MRAP)
			_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
			_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomVehicle = ["B_MRAP_01_F","B_MRAP_01_F","B_MRAP_01_F","B_Quadbike_01_F","B_Truck_01_mover_F"] call BIS_fnc_selectRandom; // 4.Hunter (MRAP),   5.4-Wheeler
				_positionXYZ = position _rDloc findEmptyPosition [20,300]; sleep 5;
				_enemyVehicleX = [_positionXYZ, _rDir, _randomVehicle, vehicle1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};

sleep 30;
	
//taskBehaviour, Patrols, Hunt, etc...
_rWP1 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6,Nloc1,Nloc2,Nloc3,Nloc1,Nloc2,Nloc3] call BIS_fnc_selectRandom;
//_rWP1 = DlocX;

_wp1 = vehicle1 addWaypoint [getPos _rWP1, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "LIMITED";
	
	

sleep 10;
[vehicle1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";

sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "vehicle.sqf -END-"; };


//_positionX = _center findEmptyPosition [10,100,"UH60M_EP1"];