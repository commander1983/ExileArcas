// SniperSense - SMELL - Keen sense of smell/detection/scent/chemicals/etc...
//


addCamShake [1,1,2]; //p,d,f
playSound "sniff1_quick2";


missionNamespace setVariable ["DebugPause", true];
sleep 2;

private ["_dxx","_pos","_n50","_grn","_red","_bad"];

if (SniperSenses == 10005) then { _dxx = 100; }; // 100m ~ 05%
if (SniperSenses == 10010) then { _dxx = 100; }; // 100m ~ 10%
if (SniperSenses == 10020) then { _dxx = 100; }; // 100m ~ 20%
if (SniperSenses == 20040) then { _dxx = 200; }; // 200m ~ 40%
if (SniperSenses == 30060) then { _dxx = 400; }; // 300m ~ 60%
if (SniperSenses == 40080) then { _dxx = 400; }; // 400m ~ 80%

_pos = getPos player;
_n50 = _pos nearEntities _dxx;
_grn = resistance countSide _n50;
_red = east countSide _n50; 
_bad = _grn + _red; //countEnemy?	




if (SniperSenses == 10005) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_0.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 5) then { // 100m ~ 05%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_0.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_0.sqf";
		};
	};
};

				
if (SniperSenses == 10010) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_1.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 10) then { // 100m ~ 10%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_1.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_1.sqf";
		};
	};
};


if (SniperSenses == 10020) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_1.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 20) then { // 100m ~ 20%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_1.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_1.sqf";
		};
	};
};


if (SniperSenses == 20040) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 40) then { // 200m ~ 40%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_2.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf";
		};
	};
};


if (SniperSenses == 30060) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 60) then { // 300m ~ 60%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_2.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf";
		};
	};
};


if (SniperSenses == 40080) then {
	
	if (_bad == 0) then { 
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf"; };
			
	if (_bad >= 1) then { 
		if (random 100 <= 80) then { // 400m ~ 80%
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_threat_2.sqf"; 
		} else { 
		execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_scent_environment_2.sqf";
		};
	};
};


sleep 5;
missionNamespace setVariable ["DebugPause", false];