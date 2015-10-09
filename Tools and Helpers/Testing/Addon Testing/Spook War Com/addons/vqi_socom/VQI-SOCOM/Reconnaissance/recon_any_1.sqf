// RECONNAISSANCE: Standard RECON - 1 Location
//
// BACKGROUND: Gather Intel on area, ground, water, or enemy
//-------------------------------------------------------------------------------------
hint "Reconnaissance: ANY";
sleep 1;

	 

//--Briefing---------------------------------------------------------------------------------------------------//
player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
Special Reconnaissance. Command needs boots-on-the-ground behinds enemy lines to survey the terrain and gather needed Intel.
<br/><br/>
You will enter the area covertly, and conduct primarily geographic reconnaissance at any and all marked locations.
<br/><br/>
DO NOT engage the enemy unless fired upon in defence. RECON Missions should always be covert!
<br/><br/>
Find RECON Point and note all within visual range: Geographic Terrain, Enemy Troops and Movement, Military Assets, and  Strategic Infrastructure.
<br/><br/>
EXFIL MUST be a MINIMUM of 1km away from ANY RECON points when complete. Good Luck!</font>"]];
//-------------------------------------------------------------------------------------------------------------//
//delete Marker
deleteMarker "mkr1";


sleep 5; //Mark TARGET	
_mkr1 = createMarker["mkr1", getPos Loc1];
"mkr1" setMarkerShape "ICON";
"mkr1" setMarkerType "mil_dot";
"mkr1" setMarkerColor "ColorRed";
"mkr1" setMarkerText " ";
"mkr1" setMarkerAlpha 1;	
	

	
//------------------------WIP-------------------------------//
sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	
trgRecon1 = createTrigger["EmptyDetector",getPos Loc1];
sleep 2;

publicVariableServer "trgRecon1"; //use publicVariableClient?
trgRecon1 setTriggerArea[50,50,0,false];
trgRecon1 setTriggerActivation["WEST","PRESENT",false];
trgREcon1 setTriggerTimeout [2,22,222,false];
trgRecon1 setTriggerStatements["({_x in thisList} count (playableUnits + switchableUnits) > 0) && ((getposASL Player select 2) < 33);",  
"[] execVM 'vqi_socom\VQI-SOCOM\Reconnaissance\recon_trg_check.sqf';", "hint 'X';"];
	
	
	
	
	
if (VQI_MKMISSION_SOCOM == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkr1";};

	
/* NOTES:  W-I-P
Need to find locations: Buildings, Roads, Land, Water, etc
--------------------------------------------------------------------------------

SYNTAX:
selectBestPlaces [_position, _radius, _expression, _precision, _sourcesCount];

EXAMPLE:
myPlaces = selectBestPlaces [position player, 50, "meadow + 2*hills", 1, 5];

-Expression-
forest, trees, meadow, hills, houses, sea, night, rain, windy and deadBody
*/