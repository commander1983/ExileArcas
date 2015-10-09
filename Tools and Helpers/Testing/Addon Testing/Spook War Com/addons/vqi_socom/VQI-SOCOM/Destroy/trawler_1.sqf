// DESTROY: Fishing Trawler
//
// BACKGROUND: Scuttle (destroy) Mine-Layer disguised as Fishing Trawler
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1","_shipDepth","_shipLoc"];


// *** Mission & Map Integrity Check ***
_mapGroup = 0;
_mapGroup = call VQI_fnc_WorldNameX;
//**************************************



if (_mapGroup == 1) then {		

	// locations of the Objective/Target	/AO	
	_nearest1 = nearestLocation [getPos Loc1, "nameMarine"];
	
	//Check if Bay is deep enough
	_shipDepth = round ((getPosASLW Loc1) select 2);
	
	
	if (_shipDepth <= -10) then {
		hint "FISHING TRAWLER";

		sleep 5; //Mark TARGET
		_mkr1 = createMarker["mkr1", getPos _nearest1];
		"mkr1" setMarkerShape "ICON";
		"mkr1" setMarkerType "hd_destroy";
		"mkr1" setMarkerColor "ColorRed";
		"mkr1" setMarkerText " Scuttle: Trawler";
		"mkr1" setMarkerAlpha 1;
			
			
		//------------------------WIP-------------------------------//
		sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

		Trawler1 = "C_Boat_Civil_04_F" createVehicle (getMarkerPos "mkr1");
		publicVariableServer "Trawler1";
		Trawler1 setDir random 360;


		//Trawler - MP addActions
		[[Trawler1, ["Charge Set - 2 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a2.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 5 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a5.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 10 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a10.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 20 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a20.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 30 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a30.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
		[[Trawler1, ["Charge Set - 60 Minutes", "execVM '\vqi_socom\VQI-SOCOM\Destroy\trawler_1a60.sqf'; [Trawler1, 1]"]], "addAction", true, true] call BIS_fnc_MP;

			
		//--Briefing---------------------------------------------------------------------------------------------------//
		player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
		After weeks of surveillance on a suspicious Fishing Trawler, it has been determined that this vessel is an enemy ship manoeuvring under the guise of a commercial operation.
		<br/><br/>
		This Fishing Trawler is believed to be a covert Mine-Layer; likely under the command of OPFOR.
		<br/><br/>
		Due to the sensitive nature of this op, NATO cannot be seen sinking what the general public will perceive as an innocent civilian craft.
		<br/><br/>
		Using clandestine techniques, sneak into the Bay, and SINK THIS SHIP! 
		<br/><br/>
		The preferred method should be an underwater C4 Explosive attached to the hull of the target and activated via long timer.
		<br/><br/>
		Then if possible, quietly work your way at least 1 full KM away before Exfil.</font>"]];
		
		sleep 5;
		hint "* BREIFING DOWNLOADED *";
		//-------------------------------------------------------------------------------------------------------------//	
			
			
		if (VQI_MKMISSION_SOCOM == 0) then {
		hint "Note: Markers are temporary";
			sleep 600;
			deleteMarker "mkr1";};
	
	} else {
	call VQI_fnc_locX; sleep 3; //re-try again
	execVM "\vqi_socom\VQI-SOCOM\Destroy\trawler_1.sqf"
	};
	
	
} else { //map check fail - try new mission
	hint "RE-TASK: NEW MISSION"; sleep 2;
	execVM "\vqi_socom\VQI-SOCOM\vqi_socom.sqf";
};	

/* NOTES:


*/