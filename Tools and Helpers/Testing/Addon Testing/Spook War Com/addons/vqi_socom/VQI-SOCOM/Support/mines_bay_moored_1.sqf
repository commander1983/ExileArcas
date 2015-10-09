// SUPPORT: Clear Mines!
//
// BACKGROUND: Clear bay of Moored Water-Mines!
//-------------------------------------------------------------------------------------
hint "Mines; Moored!";
sleep 1;





	if (!(isNull player)) then {
	
	//};


	//if (isServer) then  { 

	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15></font>"]];
	//-------------------------------------------------------------------------------------------------------------//

	//find the C130 Jump Craft! <----OR----> find X object
	if (!isNull VQIHALO2) then { //temp Marker DEBUG
		_mkrC130 = createMarker["mkrC130", getPos VQIHALO2];
		"mkrC130" setMarkerShape "ICON";
		"mkrC130" setMarkerType "mil_end";
		"mkrC130" setMarkerColor "ColorGreen";
		"mkrC130" setMarkerText "C-130";
		"mkrC130" setMarkerAlpha 1;
		
		_nearestX = nearestLocation [getPos VQIHALO2, "nameMarine"];
		sleep 5;
		_mkr1 = createMarker["mkr1", getPos _nearestX];
		"mkr1" setMarkerShape "ICON";
		"mkr1" setMarkerType "mil_dot";
		"mkr1" setMarkerColor "ColorGreen";
		"mkr1" setMarkerText "Loc 1-H";
		"mkr1" setMarkerAlpha 1;
	};
	
	
		/*
		sleep 3; //temp Marker DEBUG
		_mkrLoc1 = createMarker["mkrLoc1", getPos Loc1];
		"mkrLoc1" setMarkerShape "ICON";
		"mkrLoc1" setMarkerType "mil_dot";
		"mkrLoc1" setMarkerColor "ColorGreen";
		"mkrLoc1" setMarkerText "1";
		"mkrLoc1" setMarkerAlpha 1;
		
		_mkrLoc2 = createMarker["mkrLoc2", getPos Loc2];
		"mkrLoc2" setMarkerShape "ICON";
		"mkrLoc2" setMarkerType "mil_dot";
		"mkrLoc2" setMarkerColor "ColorGreen";
		"mkrLoc2" setMarkerText "2";
		"mkrLoc2" setMarkerAlpha 1;
		
		_mkrLoc3 = createMarker["mkrLoc3", getPos Loc3];
		"mkrLoc3" setMarkerShape "ICON";
		"mkrLoc3" setMarkerType "mil_dot";
		"mkrLoc3" setMarkerColor "ColorGreen";
		"mkrLoc3" setMarkerText "3";
		"mkrLoc3" setMarkerAlpha 1;
		
		_mkrLoc4 = createMarker["mkrLoc4", getPos Loc4];
		"mkrLoc4" setMarkerShape "ICON";
		"mkrLoc4" setMarkerType "mil_dot";
		"mkrLoc4" setMarkerColor "ColorGreen";
		"mkrLoc4" setMarkerText "4";
		"mkrLoc4" setMarkerAlpha 1;
		
		_mkrLoc5 = createMarker["mkrLoc5", getPos Loc5];
		"mkrLoc5" setMarkerShape "ICON";
		"mkrLoc5" setMarkerType "mil_dot";
		"mkrLoc5" setMarkerColor "ColorGreen";
		"mkrLoc5" setMarkerText "5";
		"mkrLoc5" setMarkerAlpha 1;
		//end DEBUG Markers
		*/
		
		
		_nearest1 = nearestLocation [getPos Loc1, "nameMarine"];
		sleep 5; //Mark TARGET
		_mkr1 = createMarker["mkr1", getPos _nearest1];
		"mkr1" setMarkerShape "ICON";
		"mkr1" setMarkerType "hd_destroy"; //
		"mkr1" setMarkerColor "ColorRed";
		"mkr1" setMarkerText " Clear Area: Mines";
		"mkr1" setMarkerAlpha 1;
	
	
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...
	//MineField1 = "UnderwaterMine" createVehicle (getMarkerPos "mkrX");
	//publicVariableServer "MineField1";
	_xS = "Sign_Sphere25cm_F" createVehicle (getMarkerPos "mkrX");
	//_xS setPosASL [(getPos _this) select 0, (getPos _this) select 1, ((getPos _this) select 2) -16];
	_xS setPosASL [getPosASL _xS select 0, (getPosASL _xS select 1) - 22];
	sleep 3;
	
	_field = _this select 0; // "minefield"
	_range = 40; // area in meters
	_count = 3 + random 7; // how many
	_type = "UnderwaterMine_Range_Ammo"; // ie "explosiveType_Range_Ammo"
	// UnderwaterMine, UnderwaterMineAB, UnderwaterMinePDM
	// APERSMine, APERSBoundingMine, APERSTripMine, ATMine 

	mineField = [];

	for "_i" from 1 to _count do {
    _mine = createVehicle [_type, getPos _xS, [], _range, ""];
    mineField = mineField + [_mine];
	
	// Mines sit on surface; how underneath?
	//_mine setPos [(getPos this) select 0, (getPos this) select 1, ((getPos this) select 2) - 60];
}; 

	

	//try ---> en1 setPos [getPos en1 select 0, (getPos en1 select 1) + 500];
	
	//NOTES: n/a
	//

	
	
	
	
	
	
	
	
	
	hint "END";
	sleep 666;
	deleteMarker "mkrC130";
	deleteMarker "mkr1";
	};
	
	//Keep MARKERS Active? OR Delete after X minutes?
	
	
	
	//Working SPAWN GROUPS! Ugh! Always breaks!!
	//_enemySquad1 = [getMarkerPos "mkrX", _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
	//_enemySquad1 = [getMarkerPos "mkrX", _side, ["O_soldier_TL_F", "O_soldier_AA_F", "O_soldier_AA_F", "O_soldier_AA_F"], [], [], [0.1, 0.3]] call BIS_fnc_spawnGroup;
	
	//Need random AND/OR 1 random fnc?
	//INFANTRY, AIR, MECHANIZED, MOTORIZED, ARMORED:		https://community.bistudio.com/wiki/CfgGroups
	//_randomSquad = ["OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AT","OIA_InfTeam_AA"] call BIS_fnc_selectRandom;
	//_enemySquad1 = [getMarkerPos "mkrX", _side, (configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> _randomSquad)] call BIS_fnc_spawnGroup;