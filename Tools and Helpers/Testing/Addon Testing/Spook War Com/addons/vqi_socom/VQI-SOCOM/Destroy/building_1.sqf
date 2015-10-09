// DESTROY: Building/Structure
//
// BACKGROUND: Destroy ANY; generic
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1"];

// locations of the Objective/Target/AO		
_nearest1 = nearestBuilding Loc1;

// *** Mission & Map Integrity Check ***
//find named location above, else spawn x
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 1;
};
//**************************************


	hint "STRUCTURE";
			
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_destroy";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Destroy: Structure";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	The details of this Mission are quite vague. Intelligence sources have indicated a spike of enemy activity in and around this Structure.
	<br/><br/>
	JSOC has green-lit this thing as a viable objective. No other Intel is available.
	<br/><br/>
	Due to the lack of solid Intelligence, you are being tasked to go in and gather any Intel at the specific location, then DEMO that structure into a pile of rubble.
	<br/><br/>
	Make use of SATCOM and plan this one accordingly...
	<br/><br/>
	Gear-up and Move out!</font>"]];
	
	sleep 5;
	hint "* BREIFING DOWNLOADED *";
	//--------------------------------------------------------------------------------------------------------------//	
		
		
	if (VQI_MKMISSION_SOCOM == 0) then {
	hint "Note: Markers are temporary";
		sleep 600;
		deleteMarker "mkr1";};	
	
/* NOTES:

*/