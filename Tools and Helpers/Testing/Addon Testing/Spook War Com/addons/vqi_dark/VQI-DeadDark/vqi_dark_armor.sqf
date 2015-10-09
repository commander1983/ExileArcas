//  Spawn Random Amored Vehicles
//
private ["_mkrX","_pRng","_rNum","_rDir","_rDloc"];
_mkrX = "mkr1"; //_this select 0;
_pRng = 1000; //_this select 1;
_rNum = random 100;
_rDir = random 360;

if (VQI_DARK_HINTS == 1) then {
	_rDloc = DlocP;
} else {
	_rDloc = [Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
};



if (VQI_DARK_HINTS == 1) then {
hint "armor.sqf"; };

sleep 1;

//weighted probability
if ((_rNum >= 0)  && (_rNum < 65))		then { enemySeed = 1; };	// 65% wheeled (100)
if ((_rNum >= 65) && (_rNum < 75))  	then { enemySeed = 2; };	// 10% tracked (25/75)
if ((_rNum >= 75) && (_rNum <= 100)) 	then { enemySeed = 3; };	// 25% tank (25/75)

// Standard Vehicle Squads
if (VQI_DARK_SPAWN_ARMOR == 1) then { // CSAT - RED - OPFOR

	crew1 = createGroup EAST;
	
	if (enemySeed == 1) then {
		_randomArmor = ["O_APC_Wheeled_02_rcws_F","O_APC_Wheeled_02_rcws_F","O_APC_Wheeled_02_rcws_F","O_APC_Wheeled_02_rcws_F"] call BIS_fnc_selectRandom; // 1.MSE-3 Marid (wheeled)
		_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
		_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomArmor = ["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_cannon_F"] call BIS_fnc_selectRandom; // 2.ZSU-39 Tigris (AA/track),   3.BTR-K Kamysh (track)
			_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
			_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomArmor = ["O_MBT_02_arty_F","O_MBT_02_cannon_F","O_MBT_02_cannon_F","O_MBT_02_cannon_F","O_MBT_02_cannon_F"] call BIS_fnc_selectRandom; // 4.2S9 Sochor (arty),   5.T-100 Varsuk (tank)
				_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
				_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_ARMOR == 2) then { // AAF - GREEN - INDEPENDANT

	crew1 = createGroup RESISTANCE;
	
	if (enemySeed == 1) then {
		_randomArmor = ["I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F","I_APC_Wheeled_03_cannon_F"] call BIS_fnc_selectRandom; // 1.APC AFV-4 Gorgon (wheeled)
		_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
		_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomArmor = ["I_APC_tracked_03_cannon_F","I_APC_tracked_03_cannon_F","I_APC_tracked_03_cannon_F"] call BIS_fnc_selectRandom; // 2.APC FV-720 Mora (track)
			_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
			_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomArmor = ["I_MBT_03_cannon_F","I_MBT_03_cannon_F","I_MBT_03_cannon_F"] call BIS_fnc_selectRandom; // 3.MBT-52 Kuma (tank)
				_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
				_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_ARMOR == 3) then { // NATO / BLUE / BLUFOR

	crew1 = createGroup WEST;
	
	if (enemySeed == 1) then {
		_randomArmor = ["B_APC_Wheeled_01_cannon_F","B_APC_Wheeled_01_cannon_F","B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F"] call BIS_fnc_selectRandom; // 1.AMV-7 Marshall (wheeled)    2.IFV-6c Panther (track)    3.CRV-6e Bobcat (track/work)
		_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
		_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
	} else {
		if (enemySeed == 2) then {
			_randomArmor = ["B_APC_Tracked_01_AA_F","B_APC_Tracked_01_AA_F","B_MBT_01_TUSK_F"] call BIS_fnc_selectRandom; // 4.IFV-6a Cheetah (AA/track)    5.M2A4 Slammer UP (tank,urban)
			_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
			_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;
		} else {
			if (enemySeed == 3) then {
				_randomArmor = ["B_MBT_01_cannon_F","B_MBT_01_cannon_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"] call BIS_fnc_selectRandom; // 6.M2A1 Slammer (tank)    7.M4 Scorcher (arty)    8.M5 Sandstorm MLRS (arty)
				_positionXYZ = position _rDloc findEmptyPosition [10,300]; sleep 5;
				_enemyArmorX = [_positionXYZ, _rDir, _randomArmor, crew1] call BIS_fnc_spawnVehicle;		
			}; // Place-holder -TBA- ELSE X
		};
	};
};



sleep 5;
[crew1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";


sleep 1;
	
//taskBehaviour, Patrols, Hunt, etc...
_rWP1 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6,Nloc1,Nloc2,Nloc3] call BIS_fnc_selectRandom;
//_rWP1 = DlocX;



sleep (30 + random 1800);

if (random 100 < 75) then {
	_wp1 = crew1 addWaypoint [getPos _rWP1, 0];
	_wp1 setWaypointType "MOVE";
	_wp1 setWaypointSpeed "LIMITED";
};
	
	



sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "armor.sqf -END-"; };


//_positionX = _center findEmptyPosition [10,100,"UH60M_EP1"];