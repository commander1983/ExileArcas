//MASTER LIST: Mission types
//
//hint "MASTER LIST";
private ["_socomUser","_rLocations","_rMission"];

VQI_SOCOM_1 	= _this select 0;  // Object
_socomUser 	= _this select 1;  // Unit
socomMission 	= _this select 2;  // ID

hint "USER: ******** PASS: *****";
sleep 2;

hint "SPECIAL OPERATIONS COMMAND";
openMap true;
sleep 2;

hint "[ CLASSIFIED - EYES-ONLY ]";

///////////////////////////////////////////////////////////
// set-up the reference objects   <--sync-->   HALO system!
_socomSet = missionNamespace getVariable "HALO_SOCOM";
if (isNil "_socomSet") then {_socomSet = 0;};


if (_socomSet == 0) then {
	_rLocations = call VQI_fnc_locX;
} else {
	if (_socomSet == 1) then {
	missionNamespace setVariable ["HALO_SOCOM", 0];
	hint "Note: HALO Flight Plan Pre-Filed";
	};
};
///////////////////////////////////////////////////////////


sleep 2;

if (VQI_MISSION_SOCOM == 1) then {
	_rMission = [1,8] call BIS_fnc_randomInt;
	switch (_rMission) do
	{
		case 1 : { execVM "\vqi_socom\VQI-SOCOM\Acquisition\socom_acquisition.sqf"; };
		case 2 : { execVM "\vqi_socom\VQI-SOCOM\Assassination\socom_assassination.sqf"; };
		case 3 : { execVM "\vqi_socom\VQI-SOCOM\Assault\socom_assault.sqf"; };
		case 4 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\socom_destroy.sqf"; };
		case 5 : { execVM "\vqi_socom\VQI-SOCOM\Reconnaissance\socom_recon.sqf"; };
		case 6 : { execVM "\vqi_socom\VQI-SOCOM\Support\socom_support.sqf"; };
		case 7 : { execVM "\vqi_socom\VQI-SOCOM\Surveillance\socom_surveillance.sqf"; };
		case 8 : { execVM "\vqi_socom\VQI-SOCOM\Special\socom_special.sqf"; };
	};
};

if (VQI_MISSION_SOCOM == 2) then {
	execVM "\vqi_socom\VQI-SOCOM\Acquisition\socom_acquisition.sqf";
};
if (VQI_MISSION_SOCOM == 3) then {
	execVM "\vqi_socom\VQI-SOCOM\Assassination\socom_assassination.sqf";
};
if (VQI_MISSION_SOCOM == 4) then {
	execVM "\vqi_socom\VQI-SOCOM\Assault\socom_assault.sqf";
};
if (VQI_MISSION_SOCOM == 5) then {
	execVM "\vqi_socom\VQI-SOCOM\Destroy\socom_destroy.sqf";
};
if (VQI_MISSION_SOCOM == 6) then {
	execVM "\vqi_socom\VQI-SOCOM\Reconnaissance\socom_recon.sqf";
};
if (VQI_MISSION_SOCOM == 7) then {
	execVM "\vqi_socom\VQI-SOCOM\Support\socom_support.sqf";
};
if (VQI_MISSION_SOCOM == 8) then {
	execVM "\vqi_socom\VQI-SOCOM\Surveillance\socom_surveillance.sqf";
};
if (VQI_MISSION_SOCOM == 9) then {
	execVM "\vqi_socom\VQI-SOCOM\Special\socom_special.sqf";
};


if (VQI_DASR_SOCOM == 1) then { //User DASR Mission
execVM "\vqi_socom\VQI-SOCOM\Special\dasr_1.sqf"; };
if (VQI_DASR_SOCOM == 2) then { //User DASR Mission
execVM "\vqi_socom\VQI-SOCOM\Special\dasr_2.sqf"; };
if (VQI_DASR_SOCOM == 3) then { //User DASR Mission
execVM "\vqi_socom\VQI-SOCOM\Special\dasr_3.sqf"; };
if (VQI_DASR_SOCOM == 4) then { //User DASR Mission
execVM "\vqi_socom\VQI-SOCOM\Special\dasr_4.sqf"; };
if (VQI_DASR_SOCOM == 5) then { //User DASR Mission
execVM "\vqi_socom\VQI-SOCOM\Special\dasr_5.sqf"; };







//sleep 10; 
//VQI_SOCOM_1 removeAction 1;
//hint "removed Action?";