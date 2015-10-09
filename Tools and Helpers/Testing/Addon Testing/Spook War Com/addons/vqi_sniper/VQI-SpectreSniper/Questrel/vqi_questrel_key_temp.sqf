//
//


if (VQIQUESTREL_DATA == 1) then {
	SNIPERBUDDY1 = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
};

if (VQIQUESTREL_DATA == 2) then {
	if (isClass(configFile >> "CfgPatches" >> "ace_common")) then {
		SNIPERBUDDY1 = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_ace.sqf";
	} else {
		SNIPERBUDDY1 = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
	};
};

//SNIPERBUDDY1 = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";

if (VQI_SB1COMPASS_SNIPER == 1) then { sleep 2;    terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };
if (VQI_SB1COMPASS_SNIPER == 2) then { sleep 10;   terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };
if (VQI_SB1COMPASS_SNIPER == 3) then { sleep 20;   terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };
if (VQI_SB1COMPASS_SNIPER == 4) then { sleep 30;   terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };
if (VQI_SB1COMPASS_SNIPER == 5) then { sleep 60;   terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };
if (VQI_SB1COMPASS_SNIPER == 6) then { sleep 120;  terminate VQIQUESTREL; terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; };