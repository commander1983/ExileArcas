//Inflate the Zodiac Craft
//
//hint "CRRC";

NOZZLE = "Land_MetalWire_F" createVehicle (position VQISUB1);
publicVariable "NOZZLE";
NOZZLE attachTo [VQISUB1,[0,5,3]]; sleep .03;

execVM "vqi_diver\VQI-DevilDiver\vqi_bubbles_crrc.sqf";

sleep 3;
CRRC = "B_Boat_Transport_01_F" createVehicle (position VQISUB1);
CRRC allowDamage false; CRRC attachTo [VQISUB1,[0,5,4.8]];