// ASSASSINATION: Officer; Iran
//
// BACKGROUND: Eliminate an Iranian Officer
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_locAlt","_mkr1","_randomLocation","_nearest1"];

// locations of the Objective/Target/AO - higher probability for low-key areas
_nearest1 = nearestBuilding Loc1;

// *** Mission & Map Integrity Check ***
//find named location above, else spawn x
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 1;
};
//**************************************

hint "OFFICER: MAJOR";

sleep 5; //Mark TARGET
_mkr1 = createMarker["mkr1", getPos _nearest1];
"mkr1" setMarkerShape "ICON";
"mkr1" setMarkerType "hd_flag";
"mkr1" setMarkerColor "ColorRed";
"mkr1" setMarkerText " Assassination: Officer";
"mkr1" setMarkerAlpha 1;
	
	
//-------------------------WIP------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

_side = createCenter EAST;
_enemySquad1 = [getMarkerPos "mkr1", _side, ["O_officer_F"], [], [], [0.1, 0.2]] call BIS_fnc_spawnGroup;
_leader1 = leader _enemySquad1;
[group _leader1, getMarkerPos "mkr1",111] call BIS_fnc_taskPatrol; //Random WP instead? Better control/realism!!!!
	
if (random 1 <= 0.4) then {	
	_rCig = ["VQI_Cig_Camel","VQI_Cig_Marlboro","VQI_Cig_LuckyStrike","VQI_Cig_Mild7","VQI_Cig_PaulMall","VQI_Cig_Camel"] call BIS_fnc_selectRandom;
	_leader1 addItem _rCig;
};

if (random 1 <= 0.8) then {
	_leader1 addItem "VQI_Cellphone1_silver";
};




//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
A top Iranian Officer has been green-lit for elimination. 
<br/><br/>
Not too much is known about this op. Most details are classified.
<br/><br/>
The top brass has tagged this Iranian Major as a 'thorn' in their paw and are requesting our special expertise.
<br/><br/>
Sneak into the area and take him out any way you can. Avoid collateral damage at all costs. No Intel on the target area, so expect anything.
<br/><br/>
You can I.D. the Target by his Officer's Uniform and Black Beret. Being only a major, protection should be minimal, and access fairly good.</font>"]];

sleep 5;
hint "* BREIFING DOWNLOADED *";
//-------------------------------------------------------------------------------------------------------------//

	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};
	
	
	
/* NOTES:
_randomLocation = ["NameCityCapital","NameCity","NameVillage","NameLocal","NameVillage","NameLocal","NameVillage","NameLocal"] call BIS_fnc_selectRandom;
_nearest1 = nearestLocation [getPos Loc1, _randomLocation];
*/