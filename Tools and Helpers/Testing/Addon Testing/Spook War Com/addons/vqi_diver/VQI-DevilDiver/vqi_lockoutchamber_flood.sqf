//Flood the Lockout-Chamber!
//
hint "Stand By...";
sleep 1;

if ((DDSLC animationPhase 'AnimateLOCdoor1') == 0) then {
	sleep 1;
	locSystem enableSimulation true;
	locSystem setMass [3500,30];
	
	LIGHTLOC2 = "chemlight_red" createVehicle (position player);
	LIGHTLOC2 attachTo [LOCFLOOD,[0,0,0]];
	
	[LOCFLOOD,"VQI_Sound_Ahoooga"] call CBA_fnc_globalSay3d;
	[LOCFLOOD,"VQI_Sound_LOC_Flood"] call CBA_fnc_globalSay3d; 
	
	sleep 20;
	execVM "vqi_diver\VQI-DevilDiver\vqi_bubbles_loc_int.sqf";
	[LOCFLOOD,"VQI_Sound_LOC_System_Creek"] call CBA_fnc_globalSay3d;
	
	sleep 23;
	locSystem enableSimulation false;

} else {
	hint "ERROR: LOC Door Unsecured";
};