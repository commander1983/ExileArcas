//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//
	
//hint "vqi_triggers_sniperstealth";	

deleteVehicle trgGhillieYr;
deleteVehicle trgGhillieYg;
deleteVehicle trgGhillieNr;
deleteVehicle trgGhillieNg;
sleep 2;	


//OPFOR + GUER
if ("U_B_GhillieSuit" == uniform player) then {
	//Ghillie: YES-RED
	trgGhillieYr = createTrigger["EmptyDetector", getPos player];
	sleep 2;
	trgGhillieYr setTriggerArea[30,30,0,false]; //30m
	trgGhillieYr setTriggerActivation["EAST","PRESENT",false]; //repeat?
	trgGhillieYr setTriggerTimeout [5,120,1200,true]; //10,120,1200
	trgGhillieYr setTriggerStatements["this", "[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_triggers_stealthcheck.sqf';", ""]; //
	
	if (VQI_HINTS_SNIPER == 1) then { hint "triggerGhille: YES Ghillie"; };
	sleep 2;
	
	//Ghillie: YES-GREEN
	trgGhillieYg = createTrigger["EmptyDetector", getPos player];
	sleep 2;
	trgGhillieYg setTriggerArea[30,30,0,false]; //30m
	trgGhillieYg setTriggerActivation["GUER","PRESENT",false]; //repeat?
	trgGhillieYg setTriggerTimeout [5,120,1200,true]; //10,120,1200
	trgGhillieYg setTriggerStatements["this", "[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_triggers_stealthcheck.sqf';", ""]; //
} else {
	//Ghillie: NO-RED
	trgGhillieNr = createTrigger["EmptyDetector", getPos player];
	sleep 2;
	trgGhillieNr setTriggerArea[90,90,0,false]; //90m (3x than Ghillie)
	trgGhillieNr setTriggerActivation["EAST","PRESENT",false]; //repeat?
	trgGhillieNr setTriggerTimeout [5,60,600,true]; //5,60,600
	trgGhillieNr setTriggerStatements["this", "[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_triggers_stealthcheck.sqf';", ""]; //
	
	if (VQI_HINTS_SNIPER == 1) then { hint "triggerGhille: NO Ghillie"; };
	sleep 2;
	
	//Ghillie: NO-GREEN
	trgGhillieNg = createTrigger["EmptyDetector", getPos player];
	sleep 2;
	trgGhillieNg setTriggerArea[90,90,0,false]; //90m (3x than Ghillie)
	trgGhillieNg setTriggerActivation["GUER","PRESENT",false]; //repeat?
	trgGhillieNg setTriggerTimeout [5,60,600,true]; //5,60,600
	trgGhillieNg setTriggerStatements["this", "[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_triggers_stealthcheck.sqf';", ""]; //
};


/* Notes:
W-I-P
Need to update/optimise


*/