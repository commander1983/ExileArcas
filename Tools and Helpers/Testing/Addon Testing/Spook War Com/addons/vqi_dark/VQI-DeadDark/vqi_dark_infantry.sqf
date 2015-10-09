//---WIP-----------by Von Quest-----------WIP---//
//  Spawn Random Infantry via User Module Setup
//
private ["_cargo","_mkrX","_pRng","_rNum","_side","_randomSquad","_rDloc","_rPatrol","_leader1"];
_cargo = _this select 0;
_mkrX = "mkr1"; //_this select 0;
_pRng = 2000; //_this select 1;
_rNum = random 100;


//spawn locations
if (VQI_DARK_HINTS == 1) then { 
	_rDloc = DlocP; 
} else {
	_rDloc = [Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6] call BIS_fnc_selectRandom;
};


if (VQI_DARK_HINTS == 1) then {
hint "infantry.sqf"; };
sleep 1;

if ((_rNum >= 0)  && (_rNum < 50))		then { enemySeed = 1; };	// 50% Infantry
if ((_rNum >= 50) && (_rNum < 80))  	then { enemySeed = 2; };	// 30% Support (mortar)
if ((_rNum >= 80) && (_rNum <= 100)) 	then { enemySeed = 3; };	// 20% Spec-Ops (UAV)

// Standard Infantry Squads - Infantry, Support, UInfantry - NO SNIPER TEAMS!
//////////////////////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 1) then { // CSAT - RED - OPFOR

	_side = createCenter EAST;
	
	if (enemySeed == 1) then {
		_randomSquad = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["OI_recon_EOD","OI_support_CLS","OI_support_ENG","OI_support_EOD","OI_support_GMG","OI_support_MG","OI_support_Mort","OI_support_Mort","OI_support_Mort","OI_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["OI_AttackTeam_UAV","OI_AttackTeam_UGV","OI_ReconTeam_UAV","OI_ReconTeam_UGV","OI_SmallTeam_UAV","OI_SmallTeam_UAV","OI_SmallTeam_UAV","OI_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
};

//////////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 2) then { // AAF - GREEN - INDEPENDANT

	_side = createCenter RESISTANCE;
	
	if (enemySeed == 1) then {
		_randomSquad = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["HAF_support_CLS","HAF_support_ENG","HAF_support_EOD","HAF_support_GMG","HAF_support_MG","HAF_support_Mort","HAF_support_Mort","HAF_support_Mort","HAF_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["HAF_AttackTeam_UAV","HAF_AttackTeam_UGV","HAF_ReconTeam_UAV","HAF_ReconTeam_UGV","HAF_SmallTeam_UAV","HAF_SmallTeam_UAV","HAF_SmallTeam_UAV","HAF_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
};

/////////////////////////////////////////////////////////
if (VQI_DARK_SPAWN_INF == 3) then { // NATO - BLUE - BLUFOR

	_side = createCenter WEST;
	
	if (enemySeed == 1) then {
		_randomSquad = ["BUS_reconPatrol","BUS_reconSentry","BUS_reconTeam","BUS_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["BUS_support_CLS","BUS_support_ENG","BUS_support_EOD","BUS_support_GMG","BUS_support_MG","BUS_support_Mort","BUS_support_Mort","BUS_support_Mort","BUS_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["BUS_AttackTeam_UAV","BUS_AttackTeam_UGV","BUS_ReconTeam_UAV","BUS_ReconTeam_UGV","BUS_SmallTeam_UAV","BUS_SmallTeam_UAV","BUS_SmallTeam_UAV","BUS_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [position _rDloc, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
};

//patrol area, stacked player
if (VQI_DARK_HINTS == 1) then { 
	_rPatrol = DlocP;
} else {
	_rPatrol = [DlocP,DlocP,DlocP,Dloc1,Dloc2,Dloc3,Dloc4,Dloc5,Dloc6,Nloc1,Nloc2,Nloc3,Nloc1,Nloc2,Nloc3] call BIS_fnc_selectRandom;
};

//_rPatrol = DlocX;

sleep 10;

_leader1 = leader squadX;
[group _leader1, getPos _rPatrol, _pRng] call BIS_fnc_taskPatrol; // USE WP!!! +Sprinkled Units? ---> REPLACE with VQI SYSTEM!!!!
sleep 10;

[squadX] call VQI_dark_fnc_Xskill; 	// custom skills?
//[squadX] call VQI_dark_fnc_Xitems;	// random items
sleep 1;

//{_x assignAsCargo _cargo; moveInCargo _cargo;} forEach units squadX;

sleep 10;
[squadX] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_x_despawn.sqf";

sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "infantry.sqf -END-"; };
//