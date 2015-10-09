// wind,turbulence,layers, etc
//	WIP		WIP		WIP


execVM "vqi_halo\VQI-DemonDropper\vqi_efx_atmo_terminate.sqf";
sleep 1;



while {((getPos player select 2) > 20)} do {

	waitUntil {animationState player == "HaloFreeFall_non"};
	efxFFn = [] execVM "vqi_halo\VQI-DemonDropper\vqi_efx_atmo_ff_n.sqf";
	
	sleep 1;
	
	waitUntil {animationState player == "HaloFreeFall_f"};
	efxFFf = [] execVM "vqi_halo\VQI-DemonDropper\vqi_efx_atmo_ff_f.sqf";

sleep 1;
};