//Create Bomb/Explosion
//
private ["_demoCharge"];

hint "Death to Infidels!";
if (VQI_SB_TRIGGERTIME == 0) then {
sleep 0.1;};
if (VQI_SB_TRIGGERTIME == 1) then {
sleep 1;};
if (VQI_SB_TRIGGERTIME == 2) then {
sleep 2;};
if (VQI_SB_TRIGGERTIME == 3) then {
sleep 3;};
if (VQI_SB_TRIGGERTIME == 4) then {
sleep 1 + random 9;};


if (alive Terrorist1) then {

	_demoCharge = "DemoCharge_Remote_Ammo_Scripted" createVehicle getPos Terrorist1;
	_demoCharge setDamage 1;
	//VestBomb1 = "M_Mo_82mm_AT_LG" createVehicle [(getPos Terrorist1 select 0),(getPos Terrorist1 select 1), 0];
	//prettyPinkMist = "SmokeShellRed" createVehicle (position Terrorist1);
	
	sleep 1;
	
	//Dead Body Parts
	DEADHAJI = createVehicle ["Land_HumanSkeleton_F", getPos Terrorist1, [], 0, "CAN_COLLIDE"];
	deleteVehicle Terrorist1;
	
	//sleep 2;
	//deleteVehicle prettyPinkMist;
	
/*
prettyPinkMist = "#particleSource" createVehicle Position player;
prettyPinkMist setParticleCircle [3, [0, 0, 0]];
prettyPinkMist setParticleRandom [0.05, [0.25, 0.25, 0], [0.175, 0.175, 0.175], 0, 0.25, [0, 0, 0, 0], 0, 0];
prettyPinkMist setParticleParams [["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 1, 0, 1], "", "Billboard", 1, 0.15, [0, 0, 1], [0, 10, -0.25], 0, 10, 7.9, 0.075, [0.25, 0.5, 0.7], [[0.85, 0, 0, 1], [0.85, 0, 0, 0.5], [0.85, 0, 0, 0.25], [0.85, 0, 0, 0]], [0.08], 1, 0, "", "", player];
prettyPinkMist setDropInterval 0.1;

sleep 3;
deleteVehicle prettyPinkMist;
*/
};