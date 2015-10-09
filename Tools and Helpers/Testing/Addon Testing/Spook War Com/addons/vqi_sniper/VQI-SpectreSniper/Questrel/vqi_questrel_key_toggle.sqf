//
//

if (QuestrelKeyToggle) then {
	terminate SNIPERBUDDY1; 22 cutText ["","PLAIN"]; sleep 0.2;
	missionNamespace setVariable ["QuestrelKeyToggle", false];
} else {
	//SNIPERBUDDY1 = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
	
	if (VQIQUESTREL_DATA == 1) then {
	SNIPERBUDDY1 = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
	};

	if (VQIQUESTREL_DATA == 2) then {
		if (isClass(configFile >> "CfgPatches" >> "ace_common")) then {
			SNIPERBUDDY1 = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_ace.sqf";
		} else {
			SNIPERBUDDY1 = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
		};
	};
};