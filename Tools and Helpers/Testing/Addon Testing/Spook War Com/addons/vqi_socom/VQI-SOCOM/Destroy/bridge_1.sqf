// DESTROY: Bridge; Altis/Stratis
//
// BACKGROUND: Destroy Standard Bridge (Altis); Concrete, Asphalt, Highway, 01
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

private ["_nearest1","_mkr1","_rDestroy"];

//select random object
_rDestroy = ["Land_Bridge_HighWay_PathLod_F","Land_Bridge_Concrete_PathLod_F","Land_Bridge_Asphalt_PathLod_F","Land_Bridge_01_PathLod_F"] call BIS_fnc_selectRandom;
		
//Search for nearest X objects
_nearest1 = nearestObjects [Loc1, [_rDestroy], 15000];


//Have we found any?
if (count _nearest1 > 0) then {
	//The nearest object
	_nearest1 = _nearest1 select 0;


	hint "BRIDGE";
			
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "hd_destroy";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Destroy: Bridge";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 5; //MISSION: Create Target/Objectives/Intel/AO/ECT...


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	British Intelligence has been observing and plotting OPFOR supply routes in the area for a few weeks now. We have been tasked to take out a Bridge along one of their main routes.
	<br/><br/>
	These supply trucks are difficult to identify, as they often use civilian trucks in disguise to avoid detection.
	<br/><br/>
	Due to the unique geographic nature of the area, the soft-sandy soil will be an issue to the heavy enemy equipment if attempting to cross off-road near the target Bridge in this area.
	<br/><br/>
	One of two things are predicted to happened if the Bridge is taken out:
	<br/><br/>
	1. Either they will attempt to cross the ravine and get stuck, (as civilian trucks should be too light) therefore identifying themselves as probable OPFOR hauling military equipment. 
	<br/><br/>
	Drones will be on stand-by to engage after we get an ID on the stuck vehicles when they get out to assess their predicament.
	<br/><br/>
	2. Or they will re-route, along a predictable route, where a team of British SAS will be hidden a few miles away waiting to get a close eyes-on ID of the suspected targets, and then engage if a solid confirm is made at that point.
	<br/><br/>
	In either case, it will be a positive movement forward for NATO as OPFOR needs this Bridge intact to keep supplies and heavy equipment moving.
	<br/><br/>
	For reasons undisclosed, the SAS must stay hidden and can not be tasked to dispatch the Bridge themselves.
	<br/><br/>
	Your mission is to get into the area anyway you can and Destroy that BRIDGE!
	<br/><br/>
	Structural integrity and construction specifics are unknown. SATCHELS WILL BE REQUIRED. Its unclear how much explosives are needed. Army Engineers suggest at least 2 and upto possibly 10 Satchels.
	<br/><br/>
	More than one Op into the area may be required to bring this thing down.
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