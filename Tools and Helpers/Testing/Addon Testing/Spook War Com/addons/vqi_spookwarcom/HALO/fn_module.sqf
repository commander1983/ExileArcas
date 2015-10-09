//get module variables
private ["_logic", "_activated"];
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_activated = [_this,2,true,[true]] call BIS_fnc_param;
if !(_activated) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};


sleep 5;

//---HALO Module Setup-----------------------------------------------------
_haloHints	= _logic getVariable "vqi_halo_debughints";
_haloMarker	= _logic getVariable "vqi_halo_tempmarker";
_haloMGC		= _logic getVariable "vqi_halo_mapgpscompass";
_haloJB1		= _logic getVariable "vqi_halo_jb1watch";
_haloAAD		= _logic getVariable "vqi_halo_aad";
_haloTAudio	= _logic getVariable "vqi_halo_trans_audio";
_haloTravel	= _logic getVariable "vqi_halo_plane_travel";
	
if (_haloHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_HINTS_HALO", 1];};

if (_haloMarker == 1) then { //Temp Marker
missionNamespace setVariable ["VQI_MKPLANE_HALO", 1];};

if (_haloMGC == 0) then { //MAP/GPS
missionNamespace setVariable ["VQI_MGC_HALO", 0];};

if (_haloJB1 == 1) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 1];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};

if (_haloJB1 == 2) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 2];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};

if (_haloJB1 == 3) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 3];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};

if (_haloJB1 == 4) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 4];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};

if (_haloJB1 == 5) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 5];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};

if (_haloJB1 == 6) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_JB1WATCH_HALO", 6];
execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_watch.sqf";};


if (_haloAAD == 0) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 0];};

if (_haloAAD == 2) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 2];};

if (_haloAAD == 3) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 3];};

if (_haloAAD == 5) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 5];};

if (_haloAAD == 6) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 6];};

if (_haloAAD == 8) then { //Auto Activation Device
missionNamespace setVariable ["VQI_AAD_HALO", 8];};


if (_haloTAudio == 1) then { //Audio
missionNamespace setVariable ["VQI_T_AUDIO_HALO", 1];};


if (_haloTravel == 1) then { //Auto Activation Device
missionNamespace setVariable ["VQI_TravelTime_HALO", 1];};

if (_haloTravel == 2) then { //Auto Activation Device
missionNamespace setVariable ["VQI_TravelTime_HALO", 2];};

if (_haloTravel == 3) then { //Auto Activation Device
missionNamespace setVariable ["VQI_TravelTime_HALO", 3];};




sleep 3;
[] spawn VQI_fnc_HALOinit;