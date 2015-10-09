// Experimental A.I.
//

/* Test 1
{_x playMove "HaloFreeFall_non";} forEach units group player;
sleep 1;
{_x setPos (player modelToWorld [0,0,-200]);} forEach units group player;
sleep 3;
{_x setVelocity [0,0,-10];} forEach units group player;
*/





// Test 2
{_x playMove "HaloFreeFall_non";} forEach units group player;
sleep 1;
{_x attachTo [player,[0,0,-1]];} forEach units group player;	// -1 works well, but underneath
{_x addBackpack "B_Parachute";} forEach units group player;
{_x allowDamage false;} forEach units group player;
sleep 3;
{detach _x} forEach units group player;

sleep 0.5;
{_x execVM "\vqi_halo\VQI-DemonDropper\vqi_ai_halo_ff.sqf";} forEach units group player;

sleep 30;
{_x allowDamage true;} forEach units group player;