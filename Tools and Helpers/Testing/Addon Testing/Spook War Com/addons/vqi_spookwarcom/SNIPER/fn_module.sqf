//module variables
private ["_logic", "_activated"];
_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_activated = [_this,2,true,[true]] call BIS_fnc_param;
if !(_activated) exitWith{};

//init
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};


sleep 5;

//---SNIPER Module Setup-----------------------------------------------------
//Debug/Hints
//
//

//Sniper Settings
_sniperBallistics	= _logic getVariable "vqi_sniper_ballistics";
_sniperWind		= _logic getVariable "vqi_sniper_wind";
_sniperHints		= _logic getVariable "vqi_sniper_debughints";
_sniperSenses		= _logic getVariable "vqi_sniper_senses";
_sniperStealth	= _logic getVariable "vqi_sniper_stealth";
_sniperFired		= _logic getVariable "vqi_sniper_fired";
_sniperSB1		= _logic getVariable "vqi_sniper_sb1compass";
_sniperSB1data	= _logic getVariable "vqi_sniper_sb1_data";

if (_sniperBallistics == 1) then { //Bullet Ballistics
SNIPERWIND = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperWind\vqi_simpleballistics.sqf";};

//if (_sniperBallistics == 1) then { //Bullet Ballistics
//SNIPERWIND = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperWind\old_bulletfiredwind.sqf";};

sleep 2;

if (_sniperWind == 1) then { //Set Map Wind
MAPWIND = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperWind\vqi_mapwind.sqf";};


if (_sniperHints == 1) then { //Debug/Hints
missionNamespace setVariable ["VQI_HINTS_SNIPER", 1];};
	
sleep 1;

if (_sniperSenses == 1) then { //SniperSenses
missionNamespace setVariable ["VQI_SENSES_SNIPER", 1];};

if (_sniperStealth == 1) then { //SniperStealth
missionNamespace setVariable ["VQI_STEALTH_SNIPER", 1];};


if (_sniperFired == 1) then { //ScoutSniper Fired Weapon
STEALTHFIRED = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_fired_sniperstealth.sqf";};

//

if (_sniperSB1 == 1) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 1];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

if (_sniperSB1 == 2) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 2];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

if (_sniperSB1 == 3) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 3];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

if (_sniperSB1 == 4) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 4];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

if (_sniperSB1 == 5) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 5];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

if (_sniperSB1 == 6) then { //JB1 Keypressed
missionNamespace setVariable ["VQI_SB1COMPASS_SNIPER", 6];
execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_compass.sqf";
};

//

if (_sniperSB1data == 1) then { //Questrel VQI or ACE3
missionNamespace setVariable ["VQIQUESTREL_DATA", 1];
};
if (_sniperSB1data == 2) then { //Questrel VQI or ACE3
missionNamespace setVariable ["VQIQUESTREL_DATA", 2];
};



sleep 3;
[] spawn VQI_fnc_SNIPERinit;