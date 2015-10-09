//
//
if (VQI_DARK_HINTS == 1) then {
hint "vehicle cargo"; };


sleep 3;
_enemyVehicleX = _this select 0;

_tech1  = _enemyVehicleX select 0;
_crew1  = _enemyVehicleX select 1;
_group1 = _enemyVehicleX select 2;

_DlocX = Dloc1;

/////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // // CSAT - RED - OPFOR

	if (random 100 < 80) then { //hint "v cargo 1";
		_randomSquad1 = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX1 = [position _DlocX, EAST, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX1);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 2";
		_randomSquad2 = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX2 = [position _DlocX, EAST, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad2)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX2);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 3";
		_randomSquad3 = ["OI_recon_EOD","OI_support_CLS","OI_support_ENG","OI_support_EOD","OI_support_GMG","OI_support_MG","OI_support_Mort"] call BIS_fnc_selectRandom;	//
		squadX3 = [position _DlocX, EAST, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Support" >> _randomSquad3)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX3);
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF - GREEN - INDEPENDANT

	if (random 100 < 80) then { //hint "v cargo 1";
		_randomSquad1 = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX1 = [position _DlocX, RESISTANCE, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX1);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 2";
		_randomSquad2 = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX2 = [position _DlocX, RESISTANCE, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> _randomSquad2)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX2);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 3";
		_randomSquad3 = ["HAF_support_CLS","HAF_support_ENG","HAF_support_EOD","HAF_support_GMG","HAF_support_MG","HAF_support_Mort"] call BIS_fnc_selectRandom;	//
		squadX3 = [position _DlocX, RESISTANCE, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Support" >> _randomSquad3)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX3);
	};
};

////////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO / BLUE / BLUFOR

	if (random 100 < 80) then { //hint "v cargo 1";
		_randomSquad1 = ["BUS_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX1 = [position _DlocX, WEST, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX1);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 2";
		_randomSquad2 = ["BUS_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadX2 = [position _DlocX, WEST, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> _randomSquad2)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX2);
	};
	sleep 2;
	if (random 100 < 80) then { //hint "v cargo 3";
		_randomSquad3 = ["BUS_support_CLS","BUS_support_ENG","BUS_support_EOD","BUS_support_GMG","BUS_support_MG","BUS_support_Mort"] call BIS_fnc_selectRandom;	//
		squadX3 = [position _DlocX, WEST, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Support" >> _randomSquad3)] call BIS_fnc_spawnGroup; 	//
		sleep 2; {_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadX3);
	};
};






sleep 1;
[squadX1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf"; sleep 1;
[squadX2] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf"; sleep 1;
[squadX3] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf"; sleep 1;
sleep 5;
[squadX1] call VQI_dark_fnc_Xskill; 	
[squadX1] call VQI_dark_fnc_Xitems;
sleep 5;
[squadX2] call VQI_dark_fnc_Xskill; 	
[squadX2] call VQI_dark_fnc_Xitems;
sleep 5;
[squadX3] call VQI_dark_fnc_Xskill; 	
[squadX3] call VQI_dark_fnc_Xitems;
sleep 1;



sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "vehicle cargo -END-"; };
//
//