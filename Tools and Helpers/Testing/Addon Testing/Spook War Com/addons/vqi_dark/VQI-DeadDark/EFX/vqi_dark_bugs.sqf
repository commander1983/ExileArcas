// Spawn Bugs, Flies, etc on DeadBodies after X time
// Dark and eerie; o the horror of war...

//hint "bugs.sqf";
sleep 1;

if (VQI_DARK_DB_BUGS == 1) then {
	sleep 3600; // 30min? 60min?

	_deadBody = _this select 0;
	_darkBugs = [position _deadBody, 0.05, 1] call BIS_fnc_flies;	
	//location, interval (particle refresh rate), size


	sleep 3;
	//maggots = true;

	// sound; flies, bugs, buzzing, etc
	while {true} do { //needed?  FPS??
	_distBugs = _deadBody distance player;

		if (_distBugs < 10) then {
			//hint "flies sound loop";
			[_darkBugs,"VQI_DeadBody_Flies"] call CBA_fnc_globalSay3d;
			sleep 35;
		} else {
			//hint "flies sound too far";
		};
		
	sleep 5;
	};
};


sleep 1;
//hint "bugs.sqf -END-";
//