// taskBehaviour, Patrols, Hunt, etc...
//
if (VQI_DARK_HINTS == 1) then { 
hint "taskHeli.sqf"; };


//_heli = _this select 0;
_heli = enemyHeliX select 0;

_rWPX = DlocX;
_rWPP = DlocP; // player
_rWP1 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
_rWP2 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
_rWP3 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
_rWP4 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
_rWP5 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
_rWP6 = [DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;

_rType2 = ["MOVE","MOVE","MOVE","MOVE","LOITER","DESTROY","SAD","DISMISS"] call BIS_fnc_selectRandom; 

_rSpeed1 = ["LIMITED","NORMAL","FULL","FULL","FULL"] call BIS_fnc_selectRandom;
_rSpeed2 = ["LIMITED","NORMAL","FULL","FULL","FULL"] call BIS_fnc_selectRandom;
_rSpeed3 = ["LIMITED","NORMAL","FULL","FULL","FULL"] call BIS_fnc_selectRandom;
_rSpeed4 = ["LIMITED","NORMAL","FULL","FULL","FULL"] call BIS_fnc_selectRandom;
_rSpeed5 = ["LIMITED","NORMAL","FULL","FULL","FULL"] call BIS_fnc_selectRandom;

sleep 5;

if (random 100 < 99) then {	// waypoint system changed v1.5, inoperative - will adjust later

	//hint "WP1a";
	//_wp1 = _heli addWaypoint [getPos _rWP1, 0];
	//_wp1 setWaypointType "MOVE";
	//_wp1 setWaypointSpeed _rSpeed1;
	//_wp1 setWaypointStatements ["true","[group this, getPos this, 1555] call BIS_fnc_taskPatrol;"];
	[group _heli, getPos DlocP, 1555] call BIS_fnc_taskPatrol;
	
} else {

	//hint "WP1b";
	_wp1 = _heli addWaypoint [getPos _rWP1, 0];
	_wp1 setWaypointType "MOVE";
	_wp1 setWaypointSpeed _rSpeed1;
	
	sleep 60;
	
	//hint "WP2";
	_wp2 = _heli addWaypoint [getPos _rWP2, 0];
	_wp2 setWaypointType "MOVE";
	_wp2 setWaypointSpeed _rSpeed2;
	
	sleep 60;
	
	//hint "WP3";
	_wp3 = _heli addWaypoint [getPos _rWP3, 0];
	_wp3 setWaypointType "MOVE";
	_wp3 setWaypointSpeed _rSpeed2;
	
	sleep 60;
	
	//hint "WP4getout";
	_wp4a = _heli addWaypoint [getPos _rWP4, 0];
	_wp4a setWaypointType "GETOUT";
	_wp4a setWaypointSpeed _rSpeed3;
	
	sleep 30;
	
	//hint "WP4getin";
	_wp4b = _heli addWaypoint [getPos _rWP4, 0];
	_wp4b setWaypointType "GETIN";
	_wp4b setWaypointSpeed _rSpeed4;
	
	sleep 120; //very long pause...
	
	if (random 100 < 25) then {
		//hint "WPPplayer";
		_wp4 = _heli addWaypoint [getPos _rWPP, 0];	//near player
		_wp4 setWaypointType _rType2;
		_wp4 setWaypointSpeed _rSpeed5;
		sleep 3;
		//hint format ["WPPplayer \n %1",_rType2];
		
		sleep 120; //long pause?
		
		//hint "WP1cycle";
		_wpc = _heli addWaypoint [getPos _rWP1, 0];
		_wpc setWaypointType "CYCLE";
		_wpc setWaypointSpeed _rSpeed1;
	} else { 
		//land random
		//hint "WPdone: Heli Land?"; 
		_heliPad = createVehicle ["Land_HeliPadEmpty_F", _rWP5, [], 0, "NONE"];
		sleep 2;
		_wp5 = _heli addWaypoint [getPos _heliPad, 0];
		_wp5 setWaypointType "GETOUT";
		_wp5 setWaypointSpeed _rSpeed3;
	};

};


sleep 1;
//hint "taskHeli -END-";

/*
_heli setBehaviour "CARELESS"; //"SAFE", "AWARE", "COMBAT", "STEALTH"
_heli setCombatMode "BLUE"; (ROE)

BLUE ---	Never Fire
GREEN -- Hold Fire - Defend Only
WHITE --	Hold Fire - Engage at Will
YELLOW - Fire at Will
RED ---- Fire at Will, Engage at Will

*/