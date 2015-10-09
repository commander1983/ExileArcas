//
//
if (VQI_DARK_HINTS == 1) then {
hint "heli w/ paratroops.sqf"; };
sleep 1;

private ["_dropZone","_rDir","_poA","_posB","_posZ","_mph","_heli","_heliVeh","_heliGrp","_wpP","_wp1","_paraTroops","_chute"];
 

 
 
if ("VQI_Notebook_Freq_QRF_ParaTroops" in (assignedItems player + Items player)) then {
hint "Enemy Radio Chatter: \n ParaTroops En Route"; sleep (30 + random 180);
};
 
  
_dropZone = getPos player; 

_rDir = random 360;
_posA = [_dropZone, 1500, _rDir] call bis_fnc_relPos;
_posB = [_dropZone, 3500, (_rDir - 180)] call bis_fnc_relPos;
_posZ = 300;
_mph  = "LIMITED";
  
 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // CSAT / RED / OPFOR
	_heli = [_posA, (_rDir - 180), "O_Heli_Transport_04_F", EAST] call BIS_fnc_spawnVehicle;
};
 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF / GREEN / INDEPENDANT
	_heli = [_posA, (_rDir - 180), "I_Heli_Transport_02_F", RESISTANCE] call BIS_fnc_spawnVehicle;
};
 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO / BLUE / BLUFOR
	_heli = [_posA, (_rDir - 180), "B_Heli_Transport_03_F", WEST] call BIS_fnc_spawnVehicle;
};


_heliVeh = _heli select 0;
_heliGrp = _heli select 2;

_heliVeh flyinHeight _posZ;
_heliGrp setSpeedMode _mph;
	
_wpP = _heliGrp addWaypoint [_dropZone, 1];
_wpP setWaypointSpeed "LIMITED";
_wpP setWaypointBehaviour "CARELESS";

_wp1 = _heliGrp addWaypoint [_posB, 0, 1];
_wp1 setWaypointSpeed "LIMITED";
_wp1 setWaypointBehaviour "CARELESS";

 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // CSAT / RED / OPFOR  
	_paraTroops = [_posA, EAST, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad_Weapons"),[],[],[0.25,0.4]] call bis_fnc_spawnGroup;
};
 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF - GREEN - INDEPENDANT  
	_paraTroops = [_posA, RESISTANCE, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> "HAF_InfSquad_Weapons"),[],[],[0.25,0.4]] call bis_fnc_spawnGroup;
};
 //////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO / BLUE / BLUFOR  
	_paraTroops = [_posA, WEST, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons"),[],[],[0.25,0.4]] call bis_fnc_spawnGroup;
};



{_x moveInCargo (_heli select 0); _x assignAsCargo (_heli select 0)} forEach units _paraTroops;
//_leader = leader _paraTroops;
//_onGround = getPosATL (_leader select 2);

waitUntil { sleep 5; (getPos (_heli select 0)) distance _dropZone < 600}; //???
  

// ParaDrop Enemy ParaTroops!  
{
	unassignVehicle _x; 
	_x allowDamage false; 
	moveOut _x; 
	sleep 1; //FreeFall Timer
	_chute = createVehicle ["B_parachute_02_F", (getPos _x), [], 0, "NONE"]; //cargo chute, static-line style
	_chute setPos (getPos _x);
	_x attachTo [_chute,[0,0,-1]];
	//_x moveInDriver _chute;
	sleep 0.1;
	_x switchMove "";
	_x allowDamage true;
	sleep 0.3; //Troop Interval
	
} forEach units _paraTroops;



sleep 20;


// deSpawn Helicopter and Crew
waitUntil { sleep 5; (getPos (_heli select 0)) distance player > 2000};

{deleteVehicle _x} forEach units _heliGrp;
deleteGroup _heliGrp;
deleteVehicle (_heli select 0);



sleep 120;



//hint "paraTroops hunting...";
_wpPT1 = _paraTroops addWaypoint [getPos player, 0];
_wpPT1 setWaypointType "SAD";
_wpPT1 setWaypointSpeed "FULL";
_wpPT1 setBehaviour "COMBAT";
_wpPT1 setCombatMode "RED";

sleep 1200;

//hint "paraTroops hunting...";
_wpPT2 = _paraTroops addWaypoint [getPos player, 0];
_wpPT2 setWaypointType "SAD";
_wpPT2 setWaypointSpeed "FULL";
_wpPT2 setBehaviour "COMBAT";
_wpPT2 setCombatMode "RED";



sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "heli w/ paratroops.sqf -END-"; };

//_veh = createVehicle [_randomVehicle, getMarkerPos "mkr1", [], 0, "NONE"];		// Empty Vehicles!

////waitUntil { sleep 1; _onGround < 5};
//waitUntil {sleep 2; isTouchingGround _leader || (getPos _leader select 2) < 5};
/*
{
	_x switchMove "";
	_x setPos [getPos _x select 0, getPos _x select 1, (getPos _x select 2) 1];
} forEach units _paraTroops;
*/

//{
//_x switchMove "";
//_x setPos [getPos _x select 0, getPos _x select 1, (getPos _x select 2) 0];
//} forEach units _paraTroops;