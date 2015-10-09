//
//

//hint "heli cargo";


sleep 3;
_enemyVehicleX = _this select 0;

_tech1  = _enemyVehicleX select 0;
_crew1  = _enemyVehicleX select 1;
_group1 = _enemyVehicleX select 2;

_DlocX = Dloc1;

/////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // // CSAT - RED - OPFOR

	if (true) then { //hint "h cargo 1";
		_randomSquad1 = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadH1 = [position _DlocX, EAST, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		{_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadH1);
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF - GREEN - INDEPENDANT

	if (true) then { //hint "h cargo 1";
		_randomSquad1 = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadH1 = [position _DlocX, RESISTANCE, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		{_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadH1);
	};
};

/////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO / BLUE / BLUFOR

	if (true) then { //hint "h cargo 1";
		_randomSquad1 = ["BUF_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT"] call BIS_fnc_selectRandom;	//
		squadH1 = [position _DlocX, WEST, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> _randomSquad1)] call BIS_fnc_spawnGroup; 	//
		{_x assignAsCargo _tech1; _x moveInCargo _tech1;} forEach (units squadH1);
	};
};




sleep 1;
[squadH1] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";


sleep 1;
[squadH1] call VQI_dark_fnc_Xskill; 	
[squadH1] call VQI_dark_fnc_Xitems;
sleep 1;

sleep 1;
//hint "heli cargo -END-";
//
//