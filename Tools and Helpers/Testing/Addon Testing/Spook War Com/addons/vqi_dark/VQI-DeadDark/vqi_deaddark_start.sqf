//-----------VQI D.A.R.K. System 0.0.1-------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//

if (VQI_DARK_HINTS == 1) then {
hint "D.A.R.K System Starting..."; };


sleep 5;


if (isServer) then {
	execVM "\vqi_dark\VQI-DeadDARK\fnc\vqi_dark_fnc_setskills.sqf";		// function
		sleep 60;
	execVM "\vqi_dark\VQI-DeadDARK\vqi_deaddark_loop.sqf";				// 
};