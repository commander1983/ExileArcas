// Transport Player EXT Submarine - Outside LockoutChamber
//
cutText ["", "BLACK FADED", 999];
hint "* * * ears popping * * *";

playSound "VQI_SOUND_LOC_EnterExit";
sleep 3;
playSound "VQI_SOUND_SonarPingsAmb";

SDVLIGHT1 = "chemlight_red" createVehicle (position VQISUB1);
SDVLIGHT1 attachTo [VQISUB1,[0.05,-4.35,3.14]];

DDSLIGHT1 = "chemlight_red" createVehicle (position VQISUB1);  
DDSLIGHT1 attachTo [VQISUB1,[0.05,17,3.83]];


sleep 1;
execVM "vqi_diver\VQI-DevilDiver\vqi_bubbles_loc_ext.sqf";
execVM "vqi_diver\VQI-DevilDiver\Sounds\vqi_sound_subext.sqf";
//execVM "vqi_diver\VQI-DevilDiver\vqi_sub_extlight_red.sqf";

sleep 1;
player attachTo [VQISUB1,[0,17,5]];
player setDir 180; sleep 1;
detach player;

cutText ["", "BLACK IN", 20];

sleep 10;
player allowDamage true;