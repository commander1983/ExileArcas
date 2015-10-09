//
//

//hint "DebugToggle?";
//sleep 1;

if (DebugKeyToggle) then {
	terminate DEBUGSTEALTH; sleep 0.3; hint "";
	missionNamespace setVariable ["DebugKeyToggle", false];
} else {
	DEBUGSTEALTH = [] execVM "\vqi_sniper\VQI-SpectreSniper\debug\vqi_debug_stealth.sqf";
};