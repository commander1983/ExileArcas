//Set Triggers to detect possible Enemy nearby...
//
if (VQI_HINTS_SNIPER == 1) then {
hint "trgNoise 2 \n Range: 150m \n Prob: 80%";};
sleep 1;

// OPFOR/RED/EAST
trgNoise2o = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise2o setTriggerArea[150,150,0,false];
trgNoise2o setTriggerActivation["EAST","PRESENT",false];
trgNoise2o setTriggerTimeout [1,1,1,false];
trgNoise2o setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise2threat.sqf';", 
"hint 'X';"];


sleep 1;

// GUER/GREEN/OTHER
trgNoise2g = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise2g setTriggerArea[150,150,0,false];
trgNoise2g setTriggerActivation["GUER","PRESENT",false];
trgNoise2g setTriggerTimeout [1,1,1,false];
trgNoise2g setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise2threat.sqf';", 
"hint 'X';"];


