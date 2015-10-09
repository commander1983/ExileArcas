private ["_logic", "_units", "_activated"];

// Argument 0 is module logic
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = [_this,1,[],[[]]] call BIS_fnc_param;
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = [_this,2,true,[true]] call BIS_fnc_param;




//CORE Module Setup Player Options
_coreHints	= _logic getVariable "vqi_core_debughints";
_seasonMoon	= _logic getVariable "vqi_core_datetime_sm";
_daylight	= _logic getVariable "vqi_core_datetime_daylight";
_gearPlayer	= _logic getVariable "vqi_core_weaponsgear_player";

_covertUnArm	= _logic getVariable "vqi_core_covert_unarmed";
missionNamespace setVariable ["VQI_CORE_UNARMED", _covertUnArm];
	
	
if (_coreHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_CORE_HINTS", 1]; };

//----------------------------------------------------
if (_seasonMoon == 1) then { //Season/Moon
missionNamespace setVariable ["VQI_CORE_SEASONMOON", 1]; };

if (_seasonMoon == 2) then { //Season/Moon
missionNamespace setVariable ["VQI_CORE_SEASONMOON", 2]; };

if (_seasonMoon == 3) then { //Season/Moon
missionNamespace setVariable ["VQI_CORE_SEASONMOON", 3]; };

if (_seasonMoon == 4) then { //Season/Moon
missionNamespace setVariable ["VQI_CORE_SEASONMOON", 4]; };


//----------------------------------------------------
if (_daylight == 1) then { //DayLight
missionNamespace setVariable ["VQI_CORE_DAYLIGHT", 1]; };

if (_daylight == 2) then { //DayLight
missionNamespace setVariable ["VQI_CORE_DAYLIGHT", 2]; };

if (_daylight == 3) then { //DayLight
missionNamespace setVariable ["VQI_CORE_DAYLIGHT", 3]; };

if (_daylight == 4) then { //DayLight
missionNamespace setVariable ["VQI_CORE_DAYLIGHT", 4]; };

if (_daylight == 5) then { //DayLight
missionNamespace setVariable ["VQI_CORE_DAYLIGHT", 5]; };


//----------------------------------------------------
_startLoc = _logic getVariable "vqi_core_playerstart_location";
missionNamespace setVariable ["VQI_CORE_STARTTYPE", _startLoc];


//----------------------------------------------------
if (_gearPlayer == 1) then { //Weapons & Gear - Player
missionNamespace setVariable ["VQI_CORE_STARTGEAR_P", 1]; };















//sleep 3;
[] spawn VQI_fnc_COREinit;