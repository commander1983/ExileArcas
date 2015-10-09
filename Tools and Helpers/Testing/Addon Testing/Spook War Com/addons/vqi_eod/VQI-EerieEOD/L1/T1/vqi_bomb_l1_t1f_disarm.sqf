//---Improvised Explosive Device---Explosive Remnants of War---Explosive Ordnance Removal
//---Level 1---Disarmed
private ["_eodUser","_disarmed"];

deviceWire1 		= _this select 0;  // Object
_eodUser 		= _this select 1;  // Unit


if ("VQI_TOOLS_ESD_DSnips" in (assignedItems player)) then {

	_disarmed = createDialog "VQI_BOMB_L1_T1f_Disarmed";

	if (VQI_HINTS_EOD == 1) then {
	hint "BOMB: Disarmed \n Good Job!";};

	//remove menus from Object
	deviceWire1 removeAction 1;
	deviceWire1 removeAction 2;

	
	deleteVehicle deviceWire1;

	deviceWire1a = "Land_MetalWire_F" createVehicle (position VQI_EOD_1);
	publicVariable "deviceWire1a";
	
	deviceWire1a attachTo [VQI_EOD_1,[0,0,0]];
	detach deviceWire1a;	
	
	deviceWire1a setPosATL [getPosATL deviceWire1a select 0, getPosATL deviceWire1a select 1, 0];
	
} else {
	execVM "\vqi_eod\VQI-EerieEOD\L1\vqi_bomb_l1_t1_kaboom.sqf";
};
//notes: