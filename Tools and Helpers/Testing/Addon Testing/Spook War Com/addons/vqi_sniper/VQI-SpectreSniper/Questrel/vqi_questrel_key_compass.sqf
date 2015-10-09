//
//


while {true} do { 

	if ((inputAction "Compass" > 0) && ("VQI_SniperBuddy_1" in (assignedItems player))) then {
	
	
		if (VQIQUESTREL_DATA == 1) then {
			VQIQUESTREL = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
		};
		
		if (VQIQUESTREL_DATA == 2) then {
			if (isClass(configFile >> "CfgPatches" >> "ace_common")) then {
				VQIQUESTREL = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_ace.sqf";
			} else {
				VQIQUESTREL = [] execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf";
			};
		};
		
		
		if (VQI_SB1COMPASS_SNIPER == 1) then { sleep 2;    terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };
		if (VQI_SB1COMPASS_SNIPER == 2) then { sleep 10;   terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };
		if (VQI_SB1COMPASS_SNIPER == 3) then { sleep 20;   terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };
		if (VQI_SB1COMPASS_SNIPER == 4) then { sleep 30;   terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };
		if (VQI_SB1COMPASS_SNIPER == 5) then { sleep 60;   terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };
		if (VQI_SB1COMPASS_SNIPER == 6) then { sleep 120;  terminate VQIQUESTREL; 22 cutText ["","PLAIN"]; };

	};
	
sleep .02;
};



// if (isClass(configFile >> "CfgPatches" >> "ace_main")) then { hint "ACE is available"} else {hint "You don't have ACE"};