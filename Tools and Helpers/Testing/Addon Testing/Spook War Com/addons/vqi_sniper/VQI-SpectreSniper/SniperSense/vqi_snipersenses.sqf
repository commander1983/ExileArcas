//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//

//hint "vqi_snipersenses";


sleep 1;
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 100m \n Skill: 5 %";};
missionNamespace setVariable ["SniperSenses", 10005];
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";


sleep 300; //5min
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 100m \n Skill: 10 %";};
missionNamespace setVariable ["SniperSenses", 10010];
terminate SNIPER_HEARING; sleep 1; deleteVehicle trgNoiseYr; sleep 1; deleteVehicle trgNoiseYg;
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";


sleep 600; //10min
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 100m \n Skill: 20 %";};
missionNamespace setVariable ["SniperSenses", 10020];
terminate SNIPER_HEARING; sleep 1; deleteVehicle trgNoiseYr; sleep 1; deleteVehicle trgNoiseYg;
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";


sleep 1200; //20min
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 200m \n Skill: 40 %";};
missionNamespace setVariable ["SniperSenses", 20040];
terminate SNIPER_HEARING; sleep 1; deleteVehicle trgNoiseYr; sleep 1; deleteVehicle trgNoiseYg;
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";


sleep 1200; //20min
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 300m \n Skill: 60 %";};
missionNamespace setVariable ["SniperSenses", 30060];
terminate SNIPER_HEARING; sleep 1; deleteVehicle trgNoiseYr; sleep 1; deleteVehicle trgNoiseYg;
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";


sleep 1800; //30min
if (VQI_HINTS_SNIPER == 1) then {
hint "SniperSmell: ON \n Range: 400m \n Skill: 80 %";};
missionNamespace setVariable ["SniperSenses", 40080];
terminate SNIPER_HEARING; sleep 1; deleteVehicle trgNoiseYr; sleep 1; deleteVehicle trgNoiseYg;
SNIPER_HEARING = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_triggers_noisecheck.sqf";
