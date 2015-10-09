// ASSAULT: Area
//
// BACKGROUND: Engage Enemy Forces, Clear-out the Area!
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1","_spawnSquad1"];

// locations of the Objective/Target/AO		
_nearest1 = nearestBuilding Loc1;

// *** Mission & Map Integrity Check ***
//find named location above, else spawn x
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 1;
};
//**************************************


hint "CLEAR AREA";

sleep 5; //Mark TARGET
_mkr1 = createMarker["mkr1", getPos _nearest1];
"mkr1" setMarkerShape "ICON";
"mkr1" setMarkerType "hd_objective";
"mkr1" setMarkerColor "ColorRed";
"mkr1" setMarkerText " Assault: Clear Area";
"mkr1" setMarkerAlpha 1;
	
	
//------------------------WIP-------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

//MarkerName & PatrolSize
//example: _spawnSquad1 = ["markerName", patrol size] call VQI_fnc_Xinf;
_spawnSquad1 = ["mkr1",111] call VQI_fnc_Xinf;
	
	
//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
A Marine Recon Team has reported an enemy Infantry Team is conducting operations in or near a small key settlement of interest.
<br/><br/>
JSOC has denied the movement of full NATO forces in an official capacity. Although unconfirmed, it is believed SOCOM is setting up a type of listening post there in the next several hours.
<br/><br/>
We need that area cleared of any and ALL hostile forces! 
<br/><br/>
If enemy saturation is too thick; RECON the area and RTB with all necessary intelligence.
<br/><br/>
This one is pretty straightforward. Get in, clear the area, get out!</font>"]];

sleep 5;
hint "* BREIFING DOWNLOADED *";
//-------------------------------------------------------------------------------------------------------------//

	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};
	
	
	
/* NOTES:
Upgrade to WP! And add a possible few other that may be sprinkled about. Better immersion/realism

*/