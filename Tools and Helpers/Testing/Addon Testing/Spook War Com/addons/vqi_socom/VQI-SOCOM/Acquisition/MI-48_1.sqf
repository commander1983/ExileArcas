// ACQUISITION: Intel
//
// BACKGROUND: Locate & Recover the I13 Data Recorder
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_locAlt","_mkr1"];

_locAlt = round ((getPosASL Loc1) select 2);

// *** Mission & Map Integrity Check ***
//ANY Map is good - small maps are iffy
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 2;
};
//**************************************

hint "DATABOX";

sleep 5; //Mark TARGET
_mkr1 = createMarker["mkr1", getPos Loc1];
"mkr1" setMarkerShape "ICON";
"mkr1" setMarkerType "selector_selectedMission";
"mkr1" setMarkerColor "ColorRed";
"mkr1" setMarkerText " Acquisition: INTEL";
"mkr1" setMarkerAlpha 1;
	
	
//-------------------------WIP------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

MI48 = "Land_UWreck_Heli_Attack_02_F" createVehicle (getMarkerPos "mkr1");
publicVariableServer "MI48"; 
MI48 setDir random 360;

//need to model custom Databox/Flight recorder/etc
//use SATPHONE until then?
BlackBox1 = "Land_Suitcase_F" createVehicle (getPos MI48);
publicVariableServer "BlackBox1";
BlackBox1 attachTo [MI48,[3,0,0]];

sleep 1; 

detach BlackBox1; 
BlackBox1 setPosATL [getPosATL BlackBox1 select 0, getPosATL BlackBox1 select 1, 0];
	
sleep 1;	
	
	
// Intel - MP addActions
[[BlackBox1, ["Grab MI-48 DATABOX", "execVM '\vqi_socom\VQI-SOCOM\Acquisition\MI-48_1a.sqf'; [BlackBox1, 1]"]], "addAction", true, true] call BIS_fnc_MP;

	




//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
Several days ago, SIGNET has on good authority, that a MI-48 Gunship has crashed in the area without successful recovery protocols.
<br/><br/>
We need that Intel. Locate the crash site and recover the Gunship's I13 Databox!
<br/><br/>
An undercover spook has been successful in decrypting the signal and triangulating the most probable position of the target.
<br/><br/>
It is unclear at this time why such high technology was left un-sanitized. Use caution and discretion when on-site...</font>"]];

sleep 5;
hint "* BREIFING DOWNLOADED *";
//-------------------------------------------------------------------------------------------------------------//	
	
	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};
	
	
	
/* NOTES:

*/