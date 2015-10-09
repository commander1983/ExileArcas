// Transport Player INTERIOR Submarine - Inside LockoutChamber
// subTransport == true

private ["_lightLOC"];


if (true) then {
	999 cutRsc ["WORLD_MAP_SUB", "PLAIN"];
	playSound "VQI_Sound_SonarPingAtmo";
	
	player attachTo [DDSLC,[3,-2,0.5]]; 
	player allowDamage false;
	sleep 1;  detach player;
	cutText ["", "BLACK IN", 10];
	
	_lightLOC = "chemlight_red" createVehicle (position player);
	_lightLOC attachTo [DDSLC,[0,0,4]];
	//sound
	execVM "vqi_diver\VQI-DevilDiver\Sounds\vqi_sound_subint.sqf";

} else {
	hint "HMS Proteus NOT in Position. Must Plot Approved Course!";
};





//test flood chamber