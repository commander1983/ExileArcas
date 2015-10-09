//
//
if (VQI_DARK_HINTS == 1) then {
hint "rogueunit.sqf"; };
sleep 1;

_countUnits = 1 + random 5;
  

for "_i" from 0 to _countUnits do {  

	if (VQI_DARK_SPAWN_RU == 1) then { // CSAT - RED - OPFOR
		_grpXX = createGroup EAST; sleep 1;
		_rUnit = ["O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F","O_G_officer_F",
				 "O_G_Soldier_GL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_M_F","O_G_Soldier_M_F"] call BIS_fnc_selectRandom;
				 if (VQI_DARK_HINTS == 1) then { RED1 = _grpXX createUnit [_rUnit, position player, [], 25, "NONE"]; } else { RED1 = _grpXX createUnit [_rUnit, position Dloc1, [], 50, "NONE"]; };
	};
	if (VQI_DARK_SPAWN_RU == 2) then { // AAF - GREEN - INDEPENDANT
		_grpXX = createGroup RESISTANCE; sleep 1;
		_rUnit = ["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F","I_G_officer_F",
				 "I_G_Soldier_GL_F","I_G_Soldier_GL_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_M_F","I_G_Soldier_M_F"] call BIS_fnc_selectRandom;
				 if (VQI_DARK_HINTS == 1) then { RED1 = _grpXX createUnit [_rUnit, position player, [], 25, "NONE"]; } else { RED1 = _grpXX createUnit [_rUnit, position Dloc1, [], 50, "NONE"]; };
	};
	if (VQI_DARK_SPAWN_RU == 3) then { // NATO - BLUE - BLUFOR
		_grpXX = createGroup WEST; sleep 1;
		_rUnit = ["B_G_Soldier_F","B_G_Soldier_lite_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_medic_F","B_G_engineer_F","B_G_Soldier_exp_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_LAT_F","B_G_Soldier_A_F","B_G_officer_F",
				 "B_G_Soldier_GL_F","B_G_Soldier_GL_F","B_G_Soldier_GL_F","B_G_Soldier_M_F","B_G_Soldier_M_F","B_G_Soldier_M_F"] call BIS_fnc_selectRandom;
				 if (VQI_DARK_HINTS == 1) then { RED1 = _grpXX createUnit [_rUnit, position player, [], 25, "NONE"]; } else { RED1 = _grpXX createUnit [_rUnit, position Dloc1, [], 50, "NONE"]; };
	};


	sleep 3;
	

	
	
	RED1 addMPEventHandler ["mpkilled", {_this execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_deadbody.sqf"}];	// rework as function?
	sleep 3;
	[RED1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";
	sleep 3;

	//near building, CQB, patrol, etc
	if (random 100 < 75) then {
		if (random 100 < 30) then {
			[RED1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_taskcqb.sqf";	// if-then x
		} else { 
			[group RED1, getPos player, 500] call BIS_fnc_taskPatrol; 
		};
	};
	
	
	sleep 1;
	[RED1] call VQI_dark_fnc_Xskill; 	// custom skills
	sleep 1;
	//[RED1] call VQI_dark_fnc_Xitems;	// random items
	
sleep 3;
};







sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "rogueunit.sqf -END-"; };