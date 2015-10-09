//
//


if (!isServer) exitWith {};

if (VQI_DARK_AMB_AIRCRAFT == 1) then {
execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_amb_aircraft.sqf"; };		// TPW's (w/ Larrow) Ambient Aircraft System
sleep 1;

execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_locations.sqf";
sleep 1;


//Player START OPTIONS
if (VQI_DARK_STARTDIST == 0) then {
	sleep VQI_DARK_STARTTIME;
} else {
	waitUntil { _startDist = player distance DlocP; sleep 1; _startDist > VQI_DARK_STARTDIST; };
	if (VQI_DARK_HINTS == 1) then { hint "Start Distance: CHECK!"; };
	sleep VQI_DARK_STARTTIME;
};





_dxx = 3000;
_max = VQI_DARK_MAXUNITS;

while {true} do {

	_pos = getPos player;
	_n50 = _pos nearEntities _dxx;
	_grn = resistance countSide _n50;
	_red = east countSide _n50;
	_blu = west countSide _n50;
	_bad = _grn + _red + _blu;
	
	if (VQI_DARK_HINTS == 1) then {
		hint format ["Units within 3km: %1",_bad];
	};

	if (_bad <= _max) then {
		execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_locations.sqf"; 
			sleep 10;
		
		if (random 100 <= VQI_DARK_SPAWN_RU_PROB) then { execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_rogueunit.sqf"; };
			sleep 10;
		
		
		if (random 100 <= VQI_DARK_SPAWN_INF_PROB) then { execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_infantry.sqf"; };
			sleep 10; 
		
		
		if (random 100 <= VQI_DARK_SPAWN_VEH_PROB) then { execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_vehicle.sqf"; };
			sleep 10; 
		
		
		if (random 100 <= VQI_DARK_SPAWN_HELI_PROB) then { execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_helicopter.sqf"; };
			sleep 10;
			
			
		if (random 100 <= VQI_DARK_SPAWN_ARMOR_PROB) then { execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_armor.sqf"; };
			sleep 10; 
		
		
		
		
	} else { 
		if (VQI_DARK_HINTS == 1) then { sleep 3; hint "Too many Enemy..."; }; 
		sleep 666;
	};
	
	
sleep VQI_DARK_LOOPTIMER; //loop timer
};