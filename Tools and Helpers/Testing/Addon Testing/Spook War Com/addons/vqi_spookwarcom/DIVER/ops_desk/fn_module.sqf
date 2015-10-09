//get module variables
private ["_logic", "_units", "_activ", "_DIVERopDesk"];
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_units = [_this, 1, [], [[]]] call BIS_fnc_param;
_activ = [_this, 2, true, [true]] call BIS_fnc_param;
if !(_activ) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};

sleep 1;

//---Diver/Sub Module Setup-----------------------------------------------------
if (isServer) then {
	//Diver Setup
	_DIVERopDesk 	= _logic getVariable "vqi_diver_opdesk";
	_DIVERboard	= _logic getVariable "vqi_diver_opdesk_board";
	
	if (_DIVERopDesk == 1) then { // Create the Op Desk
		//VQI_DIVER_DESK1 = "Land_TableDesk_F" createVehicle (position _logic);
		VQI_DIVER_DESK1 = createVehicle ["Land_TableDesk_F", position _logic, [], 0, "CAN_COLLIDE"];
		publicVariable "VQI_DIVER_DESK1"; VQI_DIVER_DESK1 setDir (getDir _logic -180);
		
		VQI_DIVER_HMSPROTEUS = "Land_Laptop_Unfolded_F" createVehicle (position _logic);
		publicVariable "VQI_DIVER_HMSPROTEUS";
		
		sleep 1;
		VQI_DIVER_HMSPROTEUS attachTo [VQI_DIVER_DESK1,[0,0,0.56]];
	};
	
	
	
	if (_DIVERboard == 2) then { //allow desk boarding
		missionNamespace setVariable ["VQI_DIVER_BOARDING", 2];
	};
	
};