// Alarm Triggered!
// MP compatible?
private ["_alarmDRAC","_rNum","_QRF1","_grp1","_rOPF"];

//ALARM!!!
alarmDRAC = createSoundSource ["Sound_Alarm", getPos dracMac1, [], 0];

_rNum = 1 + random 9;

//spawn OPFOR Alarm QRF response
for "_i" from 0 to _rNum do {
	_grp1 = createGroup East;
	_rOPF = ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_soldier_M_F","O_Soldier_TL_F","O_recon_F","O_recon_M_F","O_recon_LAT_F","O_soldierU_F","O_soldierU_AR_F","O_soldierU_M_F",
			"O_SoldierU_GL_F","O_soldierU_F","O_soldierU_F","O_soldierU_AR_F","O_soldierU_M_F","O_soldierU_F","O_soldierU_AR_F","O_soldierU_M_F","O_soldierU_exp_F","O_engineer_U_F","O_soldierU_repair_F"] call BIS_fnc_selectRandom;
	_QRF1 = _grp1 createUnit [_rOPF, position dracMac1, [], 888, "NONE"];
sleep 2;
 _QRF1 doMove (getPos dracMac1);
[_QRF1] execVM "\vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgPatrol.sqf";
};


//alarm off after x minutes
sleep 180;
deleteVehicle alarmDRAC;