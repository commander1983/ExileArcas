//Set Triggers to detect possible Enemy nearby...
//
if (VQI_HINTS_SNIPER == 1) then {
hint "trgNoise 3 \n Range: 200m \n Prob: 90%";};
sleep 1;

// OPFOR/RED/EAST
trgNoise3o = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise3o setTriggerArea[200,200,0,false];
trgNoise3o setTriggerActivation["EAST","PRESENT",false];
trgNoise3o setTriggerTimeout [1,1,1,false];
trgNoise3o setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise3threat.sqf';", 
"hint 'X';"];


sleep 1;

// GUER/GREEN/OTHER
trgNoise3g = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise3g setTriggerArea[200,200,0,false];
trgNoise3g setTriggerActivation["GUER","PRESENT",false];
trgNoise3g setTriggerTimeout [1,1,1,false];
trgNoise3g setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise3threat.sqf';", 
"hint 'X';"];


