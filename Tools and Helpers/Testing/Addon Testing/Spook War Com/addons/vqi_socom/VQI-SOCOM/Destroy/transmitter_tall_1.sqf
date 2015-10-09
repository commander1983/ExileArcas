// DESTROY: Transmitter; Tall
//
// BACKGROUND: Destroy OPFOR SIGNET Tower; Disrupt Communications
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1"];
		
//Search for nearest X objects
_nearest1 = nearestObjects [Loc1, ["Land_TTowerBig_2_F"], 15000];


//Have we found any?
if (count _nearest1 > 0) then {
	//The nearest object
	_nearest1 = _nearest1 select 0;


	hint "TRANSMITTER TOWER";
			
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_destroy";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Destroy: Tower";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	The NSA has detected a spike in Comms from OPFOR's highly secured Defence, Research, and Communications Network; aka D.R.A.C.
	<br/><br/>
	They have decrypted and pin-pointed a specific Transmitter Tower that appears to be a Key Hub in their daily traffic.
	<br/><br/>
	We believe taking out this tower will disrupt their logistics, and slow down their military build-up in the area.
	<br/><br/>
	Your Mission is to sneak into the area and Destroy this D.R.A.C. Tower any way you can.
	<br/><br/>
	No other Intel is available. These Towers are rarely guarded, but security should be light if any at all.
	<br/><br/>
	These are large, solid steel, industrial towers. Satchel Charges are recommended. Unconfirmed.
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