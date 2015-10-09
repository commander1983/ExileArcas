//
//
if (VQI_DARK_HINTS == 1) then {
hint "heli w/ cargotroops.sqf"; };
sleep 1;

//_mapCorner = [0,0,0];
//aircrew1 doMove _mapCorner;

if ("VQI_Notebook_Freq_QRF_HeliCargo" in (assignedItems player + Items player)) then {
hint "Enemy Radio Chatter: \n QRF Heli Dispatched"; sleep 60 + random 300;
};

sleep 5;


_rDir = random 360;
_rDloc = [Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;


//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // CSAT / RED / OPFOR

	aircrew1 = createGroup EAST;
	
	if (true) then {
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		_enemyHeliX = [_positionXYZ, _rDir, "O_Heli_Transport_04_F", aircrew1] call BIS_fnc_spawnVehicle; // 1.Mi-290 Taru (transport)
		[_enemyHeliX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_heli_cargo.sqf";
	};
};

//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF - GREEN - INDEPENDANT

	aircrew1 = createGroup RESISTANCE;
	
	if (true) then {
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		_enemyHeliX = [_positionXYZ, _rDir, "I_Heli_Transport_02_F", aircrew1] call BIS_fnc_spawnVehicle; // 1.CH-49 Mohawk (transport)
		[_enemyHeliX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_heli_cargo.sqf";
	};
};

//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO / BLUE / BLUFOR

	aircrew1 = createGroup WEST;
	
	if (true) then {
		_positionXYZ = position _rDloc findEmptyPosition [10,500]; sleep 5;
		_enemyHeliX = [_positionXYZ, _rDir, "B_Heli_Transport_03_F", aircrew1] call BIS_fnc_spawnVehicle; // 1.CH-67 Huron (transport)
		[_enemyHeliX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_heli_cargo.sqf";
	};
};

sleep 5;
_tech1  = _enemyHeliX select 0;
_crew1  = _enemyHeliX select 1;
_group1 = _enemyHeliX select 2;

[aircrew1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";
sleep 2;

_wpH1 = aircrew1 addWaypoint [getPos player, 0];
_wpH1 setWaypointType "TR UNLOAD";
_wpH1 setWaypointSpeed "NORMAL";
_wpH1 setWaypointStatements ["true","(vehicle this) land 'land';"];
_wpH1 setWaypointBehaviour "CARELESS";


sleep 5; //cargo unload...


//_leader = leader squadH1;
//_landed = (getPosATL _leader) select 2;
//waitUntil {sleep 10; _landed <= 2; };
//sleep 20;

_wpS1 = squadH1 addWaypoint [getPos player, 0];
_wpS1 setWaypointType "GETOUT";
_wpS1 synchronizeWaypoint [aircrew1, 0];

sleep 120;

//hint "landed...";
_wpH2 = aircrew1 addWaypoint [getPos player, 1];
_wpH2 setWaypointType "MOVE";
_wpH2 setWaypointSpeed "FULL";
_wpH2 setWaypointStatements ["true","[group this, getPos this, 2555] call BIS_fnc_taskPatrol;"]; //getPos player?

sleep 120;

//hint "hunting...";
_wpS2 = squadH1 addWaypoint [getPos player, 0];
_wpS2 setWaypointType "SAD";
_wpS2 setWaypointSpeed "LIMITED";
_wpS2 setBehaviour "COMBAT";
_wpS2 setCombatMode "RED";

sleep (600 + random 1200);

//hint "still hunting...";
_wpS3 = squadH1 addWaypoint [getPos player, 0];
_wpS3 setWaypointType "SAD";
_wpS3 setWaypointSpeed "LIMITED";
_wpS3 setBehaviour "COMBAT";
_wpS3 setCombatMode "RED";

sleep 5;
terminate _wpH2;
sleep 5;

//hint "heli, break contact"; ??????????????????
_wpH3 = aircrew1 addWaypoint [getPos _rDloc, 1];
_wpH3 setWaypointType "GETOUT";
_wpH3 setWaypointSpeed "LIMITED";
_wpH3 setWaypointStatements ["true","(vehicle this) land 'land';"];
_wpH3 setWaypointBehaviour "CARELESS";




sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "heli w/ cargotroops.sqf -END-"; };