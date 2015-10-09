// DESTROY: Lighthouse
//
// BACKGROUND: Destroy Lighthouses; standard/small
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1","_rDestroy"];

//select random object
_rDestroy = ["Land_LightHouse_F","Land_LightHouse_F","Land_LightHouse_small_F"] call BIS_fnc_selectRandom;
		
//Search for nearest X objects
_nearest1 = nearestObjects [Loc1, [_rDestroy], 15000];


//Have we found any?
if (count _nearest1 > 0) then {
	//The nearest object
	_nearest1 = _nearest1 select 0;


	hint "LIGHTHOUSE";
			
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_destroy";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Destroy: Lighthouse";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	Tensions run high in the wake of Russia's annexation of Crimea in Ukraine.
	<br/><br/>
	As Russia expands its power and influence in the area, the Pentagon has had numerous sleepless nights monitoring the situation.
	<br/><br/>
	As borders are being redrawn, OPFOR naval traffic has increased substantially throughout the world's seas.
	<br/><br/>
	It has come to our attention that an analyst at the CIA has suspected that the Russians are possibly supporting some recent CSAT activity. An operation is under-way to continue to gather intelligence and build a case that, although not a direct member of CSAT, may indicate that Russia is covertly funding, funnelling equipment, or even going as far as supplying troops and specialists to expand their brazen ambitions throughout the region.
	<br/><br/>
	These ships use navigational equipment that rely on Lighthouses, and radio nav-beacons wired into these Lighthouse structures.
	<br/><br/>
	CIA needs this Lighthouse taken out, with its nav-radio, so we can feed false data into the on-board naval nav computers to steer these vessels off-course and toward a non-descript island where we can better scan and evaluate these ships up-close from a hidden NSA outpost.
	<br/><br/>
	You Mission is to infiltrate the area, and bring down this Lighthouse and its navigational equipment inside.
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