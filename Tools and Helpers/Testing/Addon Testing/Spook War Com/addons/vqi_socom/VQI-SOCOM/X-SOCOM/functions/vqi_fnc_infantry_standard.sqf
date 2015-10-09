//---WIP-----------by Von Quest-----------WIP---//
//Spawn Random Infantry via User Module Setup
//
private ["_mkrX","_pRng"];
_mkrX = _this select 0;
_pRng = _this select 1;
_rNum = random 100;

//hint "fnc START";
sleep 1;

if ((_rNum >= 0)  && (_rNum < 50))		then { enemySeed = 1; };
if ((_rNum >= 50) && (_rNum < 75))  	then { enemySeed = 2; };
if ((_rNum >= 75) && (_rNum <= 100)) 	then { enemySeed = 3; };

// Standard Infantry Squads - Infantry, Support, UInfantry - NO SNIPER TEAMS!

if (VQI_SOCOM_ENEMY == 1) then { // CSAT - RED - OPFOR
	_side = createCenter EAST;
	if (enemySeed == 1) then {
		_randomSquad = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["OI_recon_EOD","OI_support_CLS","OI_support_ENG","OI_support_EOD","OI_support_GMG","OI_support_MG","OI_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["OI_AttackTeam_UAV","OI_AttackTeam_UGV","OI_ReconTeam_UAV","OI_ReconTeam_UGV","OI_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
	sleep 3;
	_leader1 = leader squadX;
	[group _leader1, getMarkerPos _mkrX, _pRng] call BIS_fnc_taskPatrol; // USE WP!!! +Sprinkled Units? ---> REPLACE with VQI SYSTEM!!!!
	[squadX] call VQI_fnc_Xskill; // custom Skills?
};

//////////////////////////////////////////////////////////////
if (VQI_SOCOM_ENEMY == 2) then { // AAF - GREEN - INDEPENDANT
	_side = createCenter RESISTANCE;
	if (enemySeed == 1) then {
		_randomSquad = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["HAF_support_CLS","HAF_support_ENG","HAF_support_EOD","HAF_support_GMG","HAF_support_MG","HAF_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["HAF_AttackTeam_UAV","HAF_AttackTeam_UGV","HAF_ReconTeam_UAV","HAF_ReconTeam_UGV","HAF_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "INDEP" >> "IND_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
	sleep 3;
	_leader1 = leader squadX;
	[group _leader1, getMarkerPos _mkrX, _pRng] call BIS_fnc_taskPatrol; // USE WP!!! +Sprinkled Units? ---> REPLACE with VQI SYSTEM!!!!
	[squadX] call VQI_fnc_Xskill; // custom Skills?
};

/////////////////////////////////////////////////////////
if (VQI_SOCOM_ENEMY == 3) then { // NATO - BLUE - BLUFOR
	_side = createCenter WEST;
	if (enemySeed == 1) then {
		_randomSquad = ["BUS_reconPatrol","BUS_reconSentry","BUS_reconTeam","BUS_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT"] call BIS_fnc_selectRandom;
		squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup; // Infantry
	} else {
		if (enemySeed == 2) then {
			_randomSquad = ["BUS_support_CLS","BUS_support_ENG","BUS_support_EOD","BUS_support_GMG","BUS_support_MG","BUS_support_Mort"] call BIS_fnc_selectRandom;
			squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "Support" >> _randomSquad)] call BIS_fnc_spawnGroup; // Support
		} else {
			if (enemySeed == 3) then {
				_randomSquad = ["BUS_AttackTeam_UAV","BUS_AttackTeam_UGV","BUS_ReconTeam_UAV","BUS_ReconTeam_UGV","BUS_SmallTeam_UAV"] call BIS_fnc_selectRandom;
				squadX = [getMarkerPos _mkrX, _side, (configFile >> "CfgGroups" >> "WEST" >> "BLU_F" >> "SpecOps" >> _randomSquad)] call BIS_fnc_spawnGroup; // Spec-Ops
			}; // Place-holder -TBA- ELSE X
		};
	};
	sleep 3;
	_leader1 = leader squadX;
	[group _leader1, getMarkerPos _mkrX, _pRng] call BIS_fnc_taskPatrol; // USE WP!!! +Sprinkled Units? ---> REPLACE with VQI SYSTEM!!!!
	[squadX] call VQI_fnc_Xskill; // custom Skills?
};

//



//INFANTRY, AIR, MECHANIZED, MOTORIZED, ARMORED:		https://community.bistudio.com/wiki/CfgGroups