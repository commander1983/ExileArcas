//Drain the Lockout Chamber!
//



locSystem enableSimulation true;
sleep 2;
locSystem setMass [1000,30]; sleep 1;
locSystem setVelocity [0,0,3];
[LOCFLOOD,"VQI_Sound_Buzzer"] call CBA_fnc_globalSay3d;
execVM "vqi_diver\VQI-DevilDiver\vqi_bubbles_loc_int.sqf";
sleep 15;
[LOCFLOOD,"VQI_Sound_LOC_Drain"] call CBA_fnc_globalSay3d;
sleep 15;
[LOCFLOOD,"VQI_Sound_LOC_System_Creek"] call CBA_fnc_globalSay3d;
locSystem enableSimulation false;



sleep 5;
locSystem enableSimulation true;
locSystem setMass [2500,10];