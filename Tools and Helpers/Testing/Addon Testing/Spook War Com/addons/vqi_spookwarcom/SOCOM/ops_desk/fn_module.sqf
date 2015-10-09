//get module variables
private ["_logic", "_units", "_activ", "_SOCOMopDesk"];
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_units = [_this, 1, [], [[]]] call BIS_fnc_param;
_activ = [_this, 2, true, [true]] call BIS_fnc_param;
if !(_activ) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};

sleep 1;

//---SOCOM Desk Module Setup-----------------------------------------------------
if (isServer) then {
	//SOCOM Desk Setup
	_SOCOMopDesk 	= _logic getVariable "vqi_socom_opdesk";

	if (_SOCOMopDesk == 1) then { // Create the Op Desk
		//VQI_SOCOM_DESK1 = "Land_TableDesk_F" createVehicle (position _logic);
		VQI_SOCOM_DESK1 = createVehicle ["Land_TableDesk_F", position _logic, [], 0, "CAN_COLLIDE"];
		publicVariable "VQI_SOCOM_DESK1"; VQI_SOCOM_DESK1 setDir (getDir _logic -180);
	
		VQI_SOCOM_1 = "Land_Laptop_Unfolded_F" createVehicle (position _logic);
		publicVariable "VQI_SOCOM_1";
	
		sleep 1;
		VQI_SOCOM_1 attachTo [VQI_SOCOM_DESK1,[0,0,0.56]];
	};
};