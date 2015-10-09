//Set Triggers to detect possible Enemy nearby...
//
missionNamespace setVariable ["DebugPause", true];

private ["_rngNoise","_rngSkill","_blindPos"];

_blindPos = round ((player distance sniperVeg5) * 100) / 100; //

if (SniperSenses == 10005) then { _rngNoise =  50; _rngSkill =  5; }; //  50m ~  5%
if (SniperSenses == 10010) then { _rngNoise =  75; _rngSkill = 10; }; //  75m ~ 10%
if (SniperSenses == 10020) then { _rngNoise = 100; _rngSkill = 20; }; // 100m ~ 20%
if (SniperSenses == 20040) then { _rngNoise = 125; _rngSkill = 30; }; // 125m ~ 30%
if (SniperSenses == 30060) then { _rngNoise = 150; _rngSkill = 40; }; // 150m ~ 40%
if (SniperSenses == 40080) then { _rngNoise = 200; _rngSkill = 80; }; // 200m ~ 80%


// OPFOR/RED/EAST
trgNoiseYr = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoiseYr setTriggerArea[ _rngNoise, _rngNoise, 0, false];
trgNoiseYr setTriggerActivation["EAST", "PRESENT", false];
trgNoiseYr setTriggerTimeout [ 1, 1, 1, false];
trgNoisYr setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise_threat_0.sqf';", 
""];


sleep 1;

// GUER/GREEN/OTHER
trgNoiseYg = createTrigger["EmptyDetector", getPos player];
sleep 3;
trgNoiseYg setTriggerArea[ _rngNoise, _rngNoise, 0, false];
trgNoiseYg setTriggerActivation["GUER", "PRESENT", false];
trgNoiseYg setTriggerTimeout [ 1, 1, 1, false];
trgNoiseYg setTriggerStatements["this", 
"[] execVM 'vqi_sniper\VQI-SpectreSniper\SniperSense\Noise\vqi_noise_threat_0.sqf';", 
""];


sleep 1;

if (VQI_HINTS_SNIPER == 1) then { sleep 5;
hint format ["SniperHearing: ON \n Range: %1m \n Skill: %2 %", _rngNoise, _rngSkill];};


sleep 5;
missionNamespace setVariable ["DebugPause", false];




/* Notes:

*/