private ["_logic", "_units", "_activated", "_diverHints"];

// Argument 0 is module logic
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = [_this,1,[],[[]]] call BIS_fnc_param;
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = [_this,2,true,[true]] call BIS_fnc_param;





//Diver Setup
_diverHints	= _logic getVariable "vqi_diver_debughints";
_subMarker	= _logic getVariable "vqi_diver_tempmarker";

if (_diverHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_HINTS_DIVER", 1];};

if (_subMarker == 1) then { //Temp Marker
missionNamespace setVariable ["VQI_MKSUB_DIVER", 1];};

sleep 3;
[] spawn VQI_fnc_DIVERinit;