// SniperBuddy I
// W-I-P
waitUntil {sleep 5; "VQI_SniperBuddy_1" in (assignedItems player + UniformItems player + VestItems player + BackpackItems player)};
if (VQI_HINTS_SNIPER == 1) then {hint "Questrel: SniperBuddy I \n ON: HOLD Compass + Adjust \n MUST be in Item (compass) Slot";};

while {true} do { 
	//W-I-P Inventory Item? What else?
	//waitUntil {sleep 3; "U_B_GhillieSuit" == uniform player}; //add sleep inside? better CPU?
	
	if ((inputAction "Compass" > 0) && (inputAction "Adjust" > 0) && ("VQI_SniperBuddy_1" in (assignedItems player))) then {
		execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel.sqf"; //set-up as function?
			
		if (VQI_HINTS_SNIPER == 1) then {hint "Questrel: SniperBuddy I";};
		sleep 2;
	};
	
		
sleep 1;
};



// File is VOID //