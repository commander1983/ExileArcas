// SPECIAL: Bomb!
//
// BACKGROUND: Disarm the Explosive; need building intact
//------------------------------------------------------------------------------------
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


hint "DISARM EXPLOSIVE";

sleep 5; //Mark TARGET
_mkr1 = createMarker["mkr1", getPos _nearest1];
"mkr1" setMarkerShape "ICON";
"mkr1" setMarkerType "hd_warning";
"mkr1" setMarkerColor "ColorRed";
"mkr1" setMarkerText " Bomb: Disarm";
"mkr1" setMarkerAlpha 1;
	
	
//------------------------WIP-------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

//Create the "Special Explosive"
deleteVehicle VQI_EOD_1; 

sleep 2;

VQI_EOD_1 = "Land_Suitcase_F" createVehicle (position _nearest1);
publicVariable "VQI_EOD_1"; VQI_EOD_1 setDir (random 359);

sleep 1;

[] execVM "\vqi_eod\VQI-EerieEOD\vqi_eerieeod.sqf";


if (random 100 <= 10) then {
	//MarkerName & PatrolSize
	//example: _spawnSquad1 = ["markerName", patrol size] call VQI_fnc_Xinf;
	_spawnSquad1 = ["mkr1",111] call VQI_fnc_Xinf;
};
	
	
//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
Britain's Secret Intelligence Service, MI6; has an operation planned in the next day or two. This operation is highly classified, and on a need-to-know basis so details are sparse.
<br/><br/>
In recent times OPFOR has become more advance than previously suspected. Most directly do to key CSAT member North Korea.
<br/><br/>
OPFOR's highly advanced Defence, Research, and Communications Network (aka D.R.A.C.) is in part, a complex system of Towers, sub-surface Cables, and Satellites.
<br/><br/>
It has come to our attention that parts of this Network are rigged with Advanced Explosives. They're set to detonate in certain conditions that will sever the attached DRAC underground cable protecting the Intel passing through it and the DRAC Nodes.
<br/><br/>
MI6 absolutely NEEDS this section of cable intact for their operation.
<br/><br/>
Your Mission is to sneak into the area and Deactivate this Explosive. Maintain Stealth, but if the area is occupied by the enemy, you may have no choice but to engage.
<br/><br/>
DO NOT Blow-In-Place. You MUST DISARM this Device. Qualified Operatives ONLY. 
<br/><br/>
MI6 will wait to move pending the success of this Mission...
<br/><br/>
Good luck, Sir.</font>"]];

sleep 5;
hint "* BREIFING DOWNLOADED *";
//-------------------------------------------------------------------------------------------------------------//

	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};
	
	
	
/* NOTES:


*/