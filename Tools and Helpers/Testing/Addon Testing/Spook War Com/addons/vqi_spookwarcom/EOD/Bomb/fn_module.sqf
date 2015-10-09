//get module variables
private ["_logic", "_units", "_activ", "_eodIEDbomb"];
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_units = [_this, 1, [], [[]]] call BIS_fnc_param;
_activ = [_this, 2, true, [true]] call BIS_fnc_param;
if !(_activ) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};

sleep 1;

//---Bomb-Device Module Setup-----------------------------------------------------
if (isServer) then {
	//Bomb Setup
	_eodIEDbomb = _logic getVariable "vqi_eod_iedbomb";

	if (_eodIEDbomb == 1) then { // Create Explosive Device
		VQI_EOD_1 = "Land_Suitcase_F" createVehicle (position _logic);
		publicVariable "VQI_EOD_1"; VQI_EOD_1 setDir (getDir _logic);
	};
};