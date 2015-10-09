private ["_logic","_units","_activated"];

// Argument 0 is module logic
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = [_this,1,[],[[]]] call BIS_fnc_param;
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = [_this,2,true,[true]] call BIS_fnc_param;




//DARK Module Setup Player Options
_darkHints	= _logic getVariable "vqi_dark_debughints";
_factionRU	= _logic getVariable "vqi_dark_faction_ru";
_factionINF	= _logic getVariable "vqi_dark_faction_inf";
_factionVEH	= _logic getVariable "vqi_dark_faction_veh";
_factionHELI	= _logic getVariable "vqi_dark_faction_heli";
_factionARMOR	= _logic getVariable "vqi_dark_faction_armor";
_radioQRFH	= _logic getVariable "vqi_dark_qrf_heliteam";
_radioQRFP	= _logic getVariable "vqi_dark_qrf_paratroops";
_radioQRFA	= _logic getVariable "vqi_dark_qrf_arty";
_deadBodyBugs	= _logic getVariable "vqi_dark_deadbodies_bugs";
_randomItemsX	= _logic getVariable "vqi_dark_lootitems";
_ambAircraft	= _logic getVariable "vqi_dark_amb_aircraft";

sleep 1;

_startTime = _logic getVariable "vqi_dark_system_starttime";
missionNamespace setVariable ["VQI_DARK_STARTTIME", _startTime];	

_startDist = _logic getVariable "vqi_dark_system_startdist";
missionNamespace setVariable ["VQI_DARK_STARTDIST", _startDist];

_probRU = _logic getVariable "vqi_dark_faction_ru_prob";
missionNamespace setVariable ["VQI_DARK_SPAWN_RU_PROB", _probRU];

_probINF	= _logic getVariable "vqi_dark_faction_inf_prob";
missionNamespace setVariable ["VQI_DARK_SPAWN_INF_PROB", _probINF];

_probVEH	= _logic getVariable "vqi_dark_faction_veh_prob";
missionNamespace setVariable ["VQI_DARK_SPAWN_VEH_PROB", _probVEH];

_probHELI = _logic getVariable "vqi_dark_faction_heli_prob";
missionNamespace setVariable ["VQI_DARK_SPAWN_HELI_PROB", _probHELI];

_probARMOR = _logic getVariable "vqi_dark_faction_armor_prob";
missionNamespace setVariable ["VQI_DARK_SPAWN_ARMOR_PROB", _probARMOR];


_maxUnits = _logic getVariable "vqi_dark_system_maxunits";
missionNamespace setVariable ["VQI_DARK_MAXUNITS", _maxUnits];

_loopTimer = _logic getVariable "vqi_dark_system_looptimer";
missionNamespace setVariable ["VQI_DARK_LOOPTIMER", _loopTimer];
	
	
sleep 1;	

if (_darkHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_DARK_HINTS", 1]; };

//----------------------------------------------------
if (_factionRU == 1) then { //Rogue Units
missionNamespace setVariable ["VQI_DARK_SPAWN_RU", 1]; };

if (_factionRU == 2) then { //Rogue Units
missionNamespace setVariable ["VQI_DARK_SPAWN_RU", 2]; };

if (_factionRU == 3) then { //Rogue Units
missionNamespace setVariable ["VQI_DARK_SPAWN_RU", 3]; };


//----------------------------------------------------
if (_factionINF == 1) then { //Infantry
missionNamespace setVariable ["VQI_DARK_SPAWN_INF", 1]; };

if (_factionINF == 2) then { //Infantry
missionNamespace setVariable ["VQI_DARK_SPAWN_INF", 2]; };

if (_factionINF == 3) then { //Infantry
missionNamespace setVariable ["VQI_DARK_SPAWN_INF", 3]; };


//----------------------------------------------------
if (_factionVEH == 1) then { //Vehicles
missionNamespace setVariable ["VQI_DARK_SPAWN_VEH", 1]; };

if (_factionVEH == 2) then { //Vehicles
missionNamespace setVariable ["VQI_DARK_SPAWN_VEH", 2]; };

if (_factionVEH == 3) then { //Vehicles
missionNamespace setVariable ["VQI_DARK_SPAWN_VEH", 3]; };


//----------------------------------------------------
if (_factionHELI == 1) then { //Helicopters
missionNamespace setVariable ["VQI_DARK_SPAWN_HELI", 1]; };

if (_factionHELI == 2) then { //Helicopters
missionNamespace setVariable ["VQI_DARK_SPAWN_HELI", 2]; };

if (_factionHELI == 3) then { //Helicopters
missionNamespace setVariable ["VQI_DARK_SPAWN_HELI", 3]; };


//----------------------------------------------------
if (_factionARMOR == 1) then { //Armor
missionNamespace setVariable ["VQI_DARK_SPAWN_ARMOR", 1]; };

if (_factionARMOR == 2) then { //Armor
missionNamespace setVariable ["VQI_DARK_SPAWN_ARMOR", 2]; };

if (_factionARMOR == 3) then { //Armor
missionNamespace setVariable ["VQI_DARK_SPAWN_ARMOR", 3]; };

sleep 1;

//----------------------------------------------------
if (_radioQRFH == 1) then { //QRF HeliTeam
missionNamespace setVariable ["VQI_DARK_RADIO_QRFH", 1]; };

if (_radioQRFP == 1) then { //QRF ParaTroops
missionNamespace setVariable ["VQI_DARK_RADIO_QRFP", 1]; };

if (_radioQRFA == 1) then { //QRF Arty
missionNamespace setVariable ["VQI_DARK_RADIO_QRFA", 1]; };


//----------------------------------------------------
if (_deadBodyBugs == 1) then { //DeadBodies spawn BUGS!
missionNamespace setVariable ["VQI_DARK_DB_BUGS", 1]; };



//----------------------------------------------------
if (_randomItemsX == 1) then { //Random Intel/Items
missionNamespace setVariable ["VQI_DARK_ITEMS_X", 1]; };


//----------------------------------------------------
_ambAircraft = _logic getVariable "vqi_dark_amb_aircraft";
missionNamespace setVariable ["VQI_DARK_AMB_AIRCRAFT", _ambAircraft];



















sleep 5;
[] spawn VQI_fnc_DARKinit;