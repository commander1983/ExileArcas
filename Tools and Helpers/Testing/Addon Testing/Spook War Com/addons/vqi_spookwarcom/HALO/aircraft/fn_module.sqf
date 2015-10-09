//get module variables
private ["_logic", "_units", "_activ", "_HALOAircraft"];
_logic = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_units = [_this, 1, [], [[]]] call BIS_fnc_param;
_activ = [_this, 2, true, [true]] call BIS_fnc_param;
if !(_activ) exitWith{};

//usual init stuff
if !(hasInterface) exitWith{};

waitUntil {!isNull(findDisplay 46)};
waitUntil {!isNull player};

sleep 1;

//---HALO Module Setup-----------------------------------------------------


if (isServer) then {

	//HALO Jump Aircraft
	_HALOAircraft 	= _logic getVariable "vqi_halo_aircraft";
	_HALOAircraftALT 	= _logic getVariable "vqi_halo_aircraft_alt";
	_HALOAircraftCgen	= _logic getVariable "vqi_halo_aircraft_crate_gen";
	_HALOAircraftCva 	= _logic getVariable "vqi_halo_aircraft_crate_va";
	_HALOAircraftDEL 	= _logic getVariable "vqi_halo_aircraft_delete";
	
	if (_HALOAircraft == 1) then { // Create the XHR-1:Vampyre Ground Craft
		VQI_HALO_XHR1 = "VQI_XHR1_Vampyre" createVehicle (position _logic);
		publicVariable "VQI_HALO_XHR1"; VQI_HALO_XHR1 setDir (getDir _logic);
			if (_HALOAircraftALT == 2) then {VQI_HALO_XHR1 setPosASL [position VQI_HALO_XHR1 select 0, position VQI_HALO_XHR1 select 1, 18.3];}; //Nimitz
	};
	
	
	if (_HALOAircraft == 2) then { // Create MC-130J Commando II Ground Craft
		VQI_HALO_C130 = "USAF_MC130" createVehicle (position _logic);
		publicVariable "VQI_HALO_C130"; VQI_HALO_C130 setDir (getDir _logic);
			if (_HALOAircraftALT == 2) then {VQI_HALO_C130 setPosASL [position VQI_HALO_C130 select 0, position VQI_HALO_C130 select 1, 18.3];}; //Nimitz
	};
	
	
	if (_HALOAircraft == 3) then { // Create C-17 Globemaster III Ground Craft
		VQI_HALO_C17 = "USAF_C17" createVehicle (position _logic);
		publicVariable "VQI_HALO_C17"; VQI_HALO_C17 setDir (getDir _logic);
	};
	
	
	if (_HALOAircraft == 4) then { // Create IL-76 Ground Craft
		VQI_HALO_IL76 = "ivory_il76" createVehicle (position _logic);
		publicVariable "VQI_HALO_IL76"; VQI_HALO_IL76 setDir (getDir _logic);
	};
	
	
	
	if (_HALOAircraftCgen == 1) then { // Add Crate
	missionNamespace setVariable ["VQI_XTRACRATE_GEN", 1]; };
	
	if (_HALOAircraftCva == 1) then { // Add VA Crate
	missionNamespace setVariable ["VQI_XTRACRATE_VA", 1];};
	
	
	if (_HALOAircraftDEL == 1) then { // Delete PARA
	missionNamespace setVariable ["VQI_AIRCRAFT_DEL", 1];};
	if (_HALOAircraftDEL == 2) then { // Delete HALO
	missionNamespace setVariable ["VQI_AIRCRAFT_DEL", 2];};
	if (_HALOAircraftDEL == 3) then { // Delete BOTH
	missionNamespace setVariable ["VQI_AIRCRAFT_DEL", 3];};

};