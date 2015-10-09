//-------------VQI HALOSystem 0.5---------------//
//		  by R. Von Quest aka "Goblin"
//----------------------------------------------//
//All-In-One MENU Setup...Only 1 Key to memorize!

//hint "vqi_addAction _halomenu";


private ["_haloMenuA","_haloAADa","_haloAADb","_haloAADc","_haloAADd","_haloAADe","_jumpLightRedA","_jumpLightRedD"];

_haloMenuA = player addAction ["HALO/Para: Altimeter - Toggle ON/OFF","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_toggle.sqf"];

if ("VQI_AAD" in assignedItems player) then {
	_haloAADa = player addAction ["A.A.D. Set: 330ft/100m ASL (water halo only!)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set250.sqf"];
	_haloAADb = player addAction ["A.A.D. Set: 495ft/150m ASL (halo/danger low!)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set350.sqf"];
	_haloAADc = player addAction ["A.A.D. Set: 660ft/200m ASL (halo/extreme low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set500.sqf"];
	_haloAADd = player addAction ["A.A.D. Set: 1320ft/400m ASL (halo/very low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set650.sqf"];
	_haloAADe = player addAction ["A.A.D. Set: 1980ft/600m ASL (halo/norm low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set800.sqf"];
};
//if ("Chemlight_Red" in (VestItems player + UniformItems player + BackpackItems player)) then {
	_jumpLightRedA = player addAction ["JumpLight - Attach RED Chemlight - Boot","\vqi_halo\VQI-DemonDropper\vqi_jumplight_red_attach.sqf"];
	_jumpLightRedD = player addAction ["JumpLight - Detach RED Chemlight - Boot","\vqi_halo\VQI-DemonDropper\vqi_jumplight_red_detach.sqf"];
//};

	_smokeBLUEA = player addAction ["SmokeShell - Attach BLUE Grenade - Boot","\vqi_halo\VQI-DemonDropper\vqi_attach_smoke_blue.sqf"];

sleep 20;

player removeAction _haloMenuA;
player removeAction _haloAADa;
player removeAction _haloAADb;
player removeAction _haloAADc;
player removeAction _haloAADd;
player removeAction _haloAADe;
player removeAction _jumpLightRedA;
player removeAction _jumpLightRedD;
player removeAction _smokeBLUEA









//hint "addActionHALOMenu END";