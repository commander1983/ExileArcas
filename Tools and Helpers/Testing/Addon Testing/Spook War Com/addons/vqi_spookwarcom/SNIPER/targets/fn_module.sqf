//get module variables
private ["_logic", "_units", "_activ", "_sniperTarget", "_targetSniper", "_sniperLogBook"];
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_units = [_this, 1, [], [[]]] call BIS_fnc_param;
_activ = [_this, 2, true, [true]] call BIS_fnc_param;
if !(_activ) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};

sleep 1;

//---Sniper Targets Module Setup-----------------------------------------------------

	//Sniper Settings
	_sniperTarget		= _logic getVariable "vqi_sniper_target";
	_sniperLogBook	= _logic getVariable "vqi_sniper_logbook";
	

	if (_sniperTarget == 1) then { //// Target Feedback
		_this = "VQI_Target_Black" createVehicle (position _logic);
		_this addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];
		_this setDir (getDir _logic);

	} else { //if NO then plain 'ol target
		_targetSniper = "VQI_Target_Black" createVehicle (position _logic);
		_targetSniper setDir (getDir _logic);
	};


	if (_sniperLogBook == 1) then { //Sniper LogBook
	missionNamespace setVariable ["VQI_SLBREQUIRED_SNIPER", 1];}; //fix? what??
	
	if (_sniperLogBook == 2) then { //Sniper LogBook
	missionNamespace setVariable ["VQI_SLBREQUIRED_SNIPER", 2];}; //fix? what??