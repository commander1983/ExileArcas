// SPECIAL: Direct Action / Special Reconnaissance
//
// BACKGROUND: generic, role-play, misc, etc.
//-------------------------------------------------------------------------------------
//delete Marker
	deleteMarker "mkrDASR1";
	deleteMarker "mkrDASR2";
	deleteMarker "mkrDASR3";
	deleteMarker "mkrDASR4";
	deleteMarker "mkrDASR5";

private ["_nearest1","_nearest2","_nearest3","_mkrDASR1","_mkrDASR2","_mkrDASR3"];

// locations of the Objective/Target/AO		
_nearest1 = nearestBuilding Loc6;
_nearest2 = nearestBuilding Loc2;
_nearest3 = nearestBuilding Loc3;

// *** Mission & Map Integrity Check ***
//find named location above, else spawn x
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 1;
};
//**************************************


//hint "CLEAR AREA";

sleep 5; //Mark TARGET
_mkrDASR1 = createMarker["mkrDASR1", getPos _nearest1];
"mkrDASR1" setMarkerShape "ICON";
"mkrDASR1" setMarkerType "hd_objective";
"mkrDASR1" setMarkerColor "ColorRed";
"mkrDASR1" setMarkerText " I";
"mkrDASR1" setMarkerAlpha 1;

sleep 1;

_mkrDASR2 = createMarker["mkrDASR2", getPos _nearest2];
"mkrDASR2" setMarkerShape "ICON";
"mkrDASR2" setMarkerType "hd_objective";
"mkrDASR2" setMarkerColor "ColorRed";
"mkrDASR2" setMarkerText " II";
"mkrDASR2" setMarkerAlpha 1;

sleep 1;

_mkrDASR3 = createMarker["mkrDASR3", getPos _nearest3];
"mkrDASR3" setMarkerShape "ICON";
"mkrDASR3" setMarkerType "hd_objective";
"mkrDASR3" setMarkerColor "ColorRed";
"mkrDASR3" setMarkerText " III";
"mkrDASR3" setMarkerAlpha 1;
	
	
//------------------------WIP-------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	
	
//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
CLASSIFIED</font>"]];


//-------------------------------------------------------------------------------------------------------------//

	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkrDASR1";
	deleteMarker "mkrDASR2";
	deleteMarker "mkrDASR3";
};
	
	
	
/* NOTES:


*/