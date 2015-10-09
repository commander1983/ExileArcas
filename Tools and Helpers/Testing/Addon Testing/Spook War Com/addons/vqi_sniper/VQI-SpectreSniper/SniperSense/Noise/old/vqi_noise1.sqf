//Set Triggers to detect possible Enemy nearby...
//
if (VQI_HINTS_SNIPER == 1) then {
hint "trgNoise 1 \n Range: 100m \n Prob: 70%";};
sleep 1;

// OPFOR/RED/EAST
trgNoise1o = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise1o setTriggerArea[100,100,0,false];
trgNoise1o setTriggerActivation["EAST","PRESENT",false];
trgNoise1o setTriggerTimeout [1,1,1,false];
trgNoise1o setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise1threat.sqf';", 
"hint 'X';"];


sleep 1;

// GUER/GREEN/OTHER
trgNoise1g = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoise1g setTriggerArea[100,100,0,false];
trgNoise1g setTriggerActivation["GUER","PRESENT",false];
trgNoise1g setTriggerTimeout [1,1,1,false];
trgNoise1g setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise1threat.sqf';", 
"hint 'X';"];