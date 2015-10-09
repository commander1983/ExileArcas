// RECONNAISSANCE: Standard RECON - 1 Location
//
// BACKGROUND: Gather Intel on area, ground, water, or enemy
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_reconChk","_reconAlt","_mkr1"];

// *** Mission & Map Integrity Check ***
//find named location above, else spawn x
if (mapUnsupported) then {
	hint "Decrypting Data..."; sleep 1;
};
//**************************************


_reconChk = true;

while {_reconChk} do {

	_reconAlt = round ((getPosASL Loc1) select 2);
	
	if (VQI_HINTS_SOCOM == 1) then {
	hint format ["Check: Loc1: %1",_reconAlt];};
	sleep 1;
	
	if (_reconAlt >= 5) then {
		hint "RECON: LAND-SINGLE";
		
		deleteMarker "mkr1";		
		_mkr1 = createMarker["mkr1", getPos Loc1];
		"mkr1" setMarkerShape "ICON";
		"mkr1" setMarkerType "mil_dot";
		"mkr1" setMarkerColor "ColorRed";
		"mkr1" setMarkerText " ";
		"mkr1" setMarkerAlpha 1;
		_reconChk = false;
		
	} else {
		call VQI_fnc_locX;
		
		hint "Stand by...";
		
		if (VQI_HINTS_SOCOM == 1) then {
			deleteMarker "mkr1";		
			_mkr1 = createMarker["mkr1", getPos Loc1];
			"mkr1" setMarkerShape "ICON";
			"mkr1" setMarkerType "mil_dot";
			"mkr1" setMarkerColor "ColorGreen";
			"mkr1" setMarkerText " ";
			"mkr1" setMarkerAlpha 0.5;
		};
	};
	sleep 0.5;
};	
	

	
//------------------------WIP-------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...

	
//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
Special Reconnaissance. Command needs boots-on-the-ground behinds enemy lines to survey the terrain and gather needed Intel.
<br/><br/>
You will enter the area covertly, and conduct primarily geographic reconnaissance at the marked location.
<br/><br/>
DO NOT engage the enemy unless fired upon in defence. RECON Missions should always be covert!
<br/><br/>
Find RECON Point and note all within visual range: Geographic Terrain, Enemy Troops and Movement, Military Assets, and Strategic Infrastructure.
<br/><br/>
EXFIL MUST be a MINIMUM of 1km away from ANY RECON points when complete. 
<br/><br/>
Good Luck!</font>"]];

sleep 5;
hint "* BREIFING DOWNLOADED *";
//-------------------------------------------------------------------------------------------------------------//	


deleteVehicle trgRecon1;
sleep 5;
	
trgRecon1 = createTrigger ["EmptyDetector", getPos Loc1];
sleep 2;
publicVariableServer "trgRecon1"; //use publicVariableClient?

trgRecon1 setTriggerArea[20,20,0,false];
trgRecon1 setTriggerActivation["WEST","PRESENT",false];
trgRecon1 setTriggerTimeout [10,20,60,false];
trgRecon1 setTriggerStatements["({_x in thisList} count (playableUnits + switchableUnits) > 0) && ((getposATL Player select 2) < 33);",  
"[] execVM 'vqi_socom\VQI-SOCOM\Reconnaissance\recon_trg_check.sqf';", "hint 'X';"];	


	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};

	
/* NOTES:  W-I-P
Need to find locations: Buildings, Roads, Land, Water, etc
--------------------------------------------------------------------------------
Pain in the ASS! Using Z (elevation) to find Land ONLY! Ugh!!


SYNTAX:
selectBestPlaces [_position, _radius, _expression, _precision, _sourcesCount];

EXAMPLE:
myPlaces = selectBestPlaces [position player, 50, "meadow + 2*hills", 1, 5];

-Expression-
forest, trees, meadow, hills, houses, sea, night, rain, windy and deadBody
*/