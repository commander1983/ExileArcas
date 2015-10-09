/////////////////////////////////////////////////////////////////////////////
/*	ADDON: VQI-EERIEEOD-v1			BY: R.Von Quest  aka the "Goblin"
	------------------------------------------------------------------------
	DEPT.: Von Quest Industries		STATUS: WORK-IN-PROGRESS
	PROJECT: E.O.D. SYSTEM			SERIES: SPOOKWARCOM
	ADDON NAME: EerieEOD			VERSION: v0.1 - 27.SEPT.2014
	------------------------------------------------------------------------
	CREATOR: R. Von Quest - aka the "Goblin"
	CREDITS: n/a
	------------------------------------------------------------------------
	NOTES: Bomb disposal is the process by which hazardous explosive devices 
	are rendered safe. Bomb disposal is an all encompassing term to describe 
	the separate, but interrelated functions in the military fields of Explosive 
	Ordnance Disposal (EOD) and Improvised Explosive Device Disposal (IEDD), and 
	the public safety roles of Public Safety Bomb Disposal (PSBD) and the 
	Bomb Squad. This MOD will focus on more fictional "movie-style" gameplay.
*/
/////////////////////////////////////////////////////////////////////////////
waitUntil {!isNil "bis_fnc_init"};
sleep 3;

//Start IED System
execVM "\vqi_eod\VQI-EerieEOD\vqi_ied_1.sqf";
sleep 3;

//Start IMS Equipment
execVM "\vqi_eod\VQI-EerieEOD\IMS\vqi_ims.sqf";
sleep 3;

//IMS HotFix (temp fix until rewrite)
execVM "\vqi_eod\VQI-EerieEOD\IMS\vqi_ims_hotfix.sqf";





//Notes: