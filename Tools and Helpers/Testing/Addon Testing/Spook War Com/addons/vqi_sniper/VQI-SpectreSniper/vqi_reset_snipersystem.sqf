//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//

//hint "vqi_reset_snipersystem";


player setCaptive false;
ScoutSniperStealth = false;

//sleep 1;
deleteVehicle trgGhillieYr;
deleteVehicle trgGhillieYg;
deleteVehicle trgGhillieNr;
deleteVehicle trgGhillieNg;

//sleep 1;
deleteVehicle trgNoiseYr;
deleteVehicle trgNoiseYg;


//sleep 1;
terminate SNIPER_SENSES;
terminate SNIPER_HEARING;


sleep 5;
missionNamespace setVariable ["SniperSenses", 10005];
missionNamespace setVariable ["ScoutSniperFiredxx", false];

//if (VQI_SENSES_SNIPER == 1) then {
//SNIPER_SENSES = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersenses.sqf";};