private ["_logic", "_units", "_activated","_eodHints","_eodSBomb","_eodBHints","_eodSBtime"];

// Argument 0 is module logic
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = [_this,1,[],[[]]] call BIS_fnc_param;
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = [_this,2,true,[true]] call BIS_fnc_param;

//EOD Setup
_eodHints	= _logic getVariable "vqi_eod_debughints";
_eodSBomb 	= _logic getVariable "vqi_eod_suicidebomber";
_eodBHints 	= _logic getVariable "vqi_eod_bomberhints";
_eodSBtime 	= _logic getVariable "vqi_eod_sb_triggertime";


if (_eodSBomb == 1) then { // Create Extremist
	[] execVM "\vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_suicidebomber1.sqf";};
if (_eodSBomb == 2) then { // Create Extremist
	[] execVM "\vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_suicidebomber2.sqf";};
if (_eodSBomb == 3) then { // Create Extremist
	[] execVM "\vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_suicidebomber3.sqf";};
if (_eodSBomb == 4) then { // Create Extremist
	[] execVM "\vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_suicidebomber4.sqf";};
if (_eodSBomb == 5) then { // Create Extremist
	[] execVM "\vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_suicidebomber5.sqf";};	
	
	
if (_eodHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_HINTS_EOD", 1];};


if (_eodBHints == 1) then { //Bomber Hints
missionNamespace setVariable ["VQI_EOD_BOMBERHINTS", 1];};


if (_eodSBtime == 0) then { //Suicide Bomber Trigger Time
missionNamespace setVariable ["VQI_SB_TRIGGERTIME", 0];};
if (_eodSBtime == 1) then { //Suicide Bomber Trigger Time
missionNamespace setVariable ["VQI_SB_TRIGGERTIME", 1];};
if (_eodSBtime == 2) then { //Suicide Bomber Trigger Time
missionNamespace setVariable ["VQI_SB_TRIGGERTIME", 2];};
if (_eodSBtime == 3) then { //Suicide Bomber Trigger Time
missionNamespace setVariable ["VQI_SB_TRIGGERTIME", 3];};
if (_eodSBtime == 4) then { //Suicide Bomber Trigger Time
missionNamespace setVariable ["VQI_SB_TRIGGERTIME", 4];};

sleep 3;
[] spawn VQI_fnc_EODinit;