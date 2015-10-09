// DESTROY: Bridge; Altis/Stratis
//
// BACKGROUND: Destroy Chapel; standard
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1","_rDestroy"];

//select random object
_rDestroy = ["Land_Chapel_V1_F","Land_Chapel_V2_F","Land_Chapel_Small_V1_F","Land_Chapel_Small_V2_F"] call BIS_fnc_selectRandom;
		
//Search for nearest X objects
_nearest1 = nearestObjects [Loc1, [_rDestroy], 15000];


//Have we found any?
if (count _nearest1 > 0) then {
	//The nearest object
	_nearest1 = _nearest1 select 0;


	hint "CHAPEL";
			
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_destroy";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Destroy: Chapel";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	The National Security Agency has had a recent breakthrough in decrypting some SATCOMs from North Korea that appear to be sending and receiving data through some hidden Relay Stations built into plain non-descript Chapels.
	<br/><br/>
	The equipment is likely built into a section of false wall, and the cross on top is hiding the antenna array. Underground cables then connect these Chapels to the nearest DRAC Node. (Defence, Research, and Communications Network)
	<br/><br/>
	Due to the sensitive nature of this target, the best option is to send in a small team of operatives. C4 Explosives should be enough since these buildings are old and left in their original state to maintain the guise.
	<br/><br/>
	Work your way to the target, clear out any OPFOR guards (if any), make sure there are no CIVs in the Chapel, then DEMO that building and its SATCOMs.
	<br/><br/>
	Good Luck!</font>"]];
	
	sleep 5;
	hint "* BREIFING DOWNLOADED *";
	//--------------------------------------------------------------------------------------------------------------//	
		
		
	if (VQI_MKMISSION_SOCOM == 0) then {
	hint "Note: Markers are temporary";
		sleep 600;
		deleteMarker "mkr1";};
	
} else {
	hint "RE-TASK: NEW MISSION"; sleep 2;
	execVM "\vqi_socom\VQI-SOCOM\vqi_socom.sqf";
};	
	
/* NOTES:

*/