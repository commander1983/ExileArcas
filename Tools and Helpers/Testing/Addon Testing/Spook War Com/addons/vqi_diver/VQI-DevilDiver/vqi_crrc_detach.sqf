//Detach the Zodiac Craft
//
NOZZLE = "Land_MetalWire_F" createVehicle (position VQISUB1);
NOZZLE attachTo [VQISUB1,[0,5,3]]; sleep .02;

execVM "vqi_diver\VQI-DevilDiver\vqi_bubbles_crrc.sqf";
sleep 2; deleteVehicle NOZZLE;


detach CRRC; 
CRRC setMass [2000,3]; 
sleep 3;
CRRC setVectorUp [0,0,1];
sleep 3;
CRRC setMass [200,15];
CRRC setVectorUp [0,0,1];





sleep 20;
CRRC allowDamage true;