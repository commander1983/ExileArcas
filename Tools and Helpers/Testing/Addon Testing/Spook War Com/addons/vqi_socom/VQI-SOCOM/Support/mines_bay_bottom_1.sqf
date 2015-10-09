// SUPPORT: Clear Mines!
//
// BACKGROUND: Clear bay of Bottom-Influence Water-Mines!
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_field","_range","_count","_type","_mkr1","_mine","_swimDepth","_countDivr","_side","_enemySquad1","_leader1"];

// *** Mission & Map Integrity Check ***
_mapGroup = 0;
_mapGroup = call VQI_fnc_WorldNameX;
//**************************************


if (_mapGroup == 1) then {

	// locations of the Objective/Target	/AO	
	_nearest1 = nearestLocation [getPos Loc1, "nameMarine"];
	
	
	hint "MINEFIELD: BAY";
	sleep 1;

	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_warning";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Clear Area: Mines";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

	_field = _this select 0; 	// "minefield"
	_range = 30 + random 75; 	// area in meters
	_count = 1 + random 6; 	// how many
	_type = "UnderwaterMineAB_Range_Ammo"; // ie "explosiveType_Range_Ammo"
	// UnderwaterMine, UnderwaterMineAB, UnderwaterMinePDM
	// APERSMine, APERSBoundingMine, APERSTripMine, ATMine 

	mineField = [];
	publicVariable "mineField";
	
	for "_i" from 1 to _count do {
		VQI_MFmine = createVehicle [_type, getMarkerPos "mkr1", [], _range, ""];
		publicVariable "VQI_MFMine";
		mineField = mineField + [VQI_MFmine];
		
		VQI_MFmine setposATL [getPosATL VQI_MFmine select 0, getPosATL VQI_MFmine select 1, 0];
	}; 


	//random 33% chance enemy activity in area
	if (random 1 <= 0.33) then {	

		_countDivr = 1 + random 5; 
		_swimDepth = -30 + random 29;   
	   
		for "_i" from 1 to _countDivr do {    
		_side = createCenter EAST;    
		_enemySquad1 = [getMarkerPos "mkr1", _side, ["O_diver_exp_F"], [], [], [0.1, 0.2]] call BIS_fnc_spawnGroup;    
		_leader1 = leader _enemySquad1;    
		[group _leader1, getMarkerPos "mkr1", 355] call BIS_fnc_taskPatrol;   
		_enemySquad1 setPosATL [getPosATL _enemySquad1 select 0, getPosATL _enemySquad1 select 1, 1];    
		_enemySquad1 swiminDepth _swimDepth;   
		};
	};



	//10% chance of ship still here 
	if (random 1 <= 0.1) then {
		Trawler1 = "C_Boat_Civil_04_F" createVehicle (getMarkerPos "mkr1");
		publicVariable "Trawler1";
		Trawler1 setDir random 360;


		//Trawler - MP addActions
		[[Trawler1, ["Charge Set - 2 Minutes",  "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a2.sqf';  [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 5 Minutes",  "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a5.sqf';  [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 10 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a10.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 20 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a20.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 30 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a30.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 60 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a60.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
	};

	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	You are being deployed for a maritime operation. It has come to our attention that the enemy has deployed several underwater MINES in a bay of interest to JSOC.
	<br/><br/>
	We are unable to conduct significant naval ops and virtually all submersible operations with these Mines in place.
	<br/><br/>
	These Mines are a smaller variation of the Chinese built EM-11 bottom-influence mines. Sitting on the sea-floor they are controlled by magnetic sensors set to detonate 
	with any larger hulls and virtually ALL submarines trying to pass near them not broadcasting the proper F/F Keynet.
	<br/><br/>
	A FORECON team has just returned sweeping the Bay and has detected the probable signature of between 1 and 7 Mines in the AO covering an area of about 100m.
	<br/><br/>
	These new low-profile Mines are always active with an aluminised PBX 75kg warhead. An small SDV option should be ok, ...but not advised near them.
	<br/><br/>
	There is a small chance of Enemy Divers and/or the Mine-Layer itself still working in the area, so prepare for possible underwater engagements.
	<br/><br/>
	If the ship is still on-site, bring it down via C4 Charge placed on its hull.
	<br/><br/>
	Gear up and disarm those Mines! 
	<br/><br/>
	Good luck.</font>"]];

	sleep 5;
	hint "* BREIFING DOWNLOADED *";
	//-------------------------------------------------------------------------------------------------------------//

		
		
	if (VQI_MKMISSION_SOCOM == 0) then {
	hint "Note: Markers are temporary";
		sleep 600;
		deleteMarker "mkr1";};
		
} else { //map check fail - try new mission
	hint "RE-TASK: NEW MISSION"; sleep 2;
	execVM "\vqi_socom\VQI-SOCOM\vqi_socom.sqf";
};
	
	
	
/* NOTES:


*/