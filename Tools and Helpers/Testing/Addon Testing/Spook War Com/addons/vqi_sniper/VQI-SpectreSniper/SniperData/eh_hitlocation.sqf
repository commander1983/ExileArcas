disableSerialization;

private ["_target","_unit","_part","_posASL"];

_part = _this select 0;
_target = _part select 0;
_unit = _part select 1;
_posASL = _part select 3;

//copyToClipboard str _modelPos;
VQI_sniperTarget = "Sign_Sphere10cm_F" createVehicleLocal (getPos _target);  
VQI_sniperTarget attachTo [_target,_modelPos];

_worldHitPos = ASLtoATL _posASL;
_modelHitPos = _target worldToModel _worldHitPos;
_modelCenter = [0.0181885,0.142578,0.0996761]; // use center of the Target_PopUp_Moving_90deg_Acc2_F target as default (for testing).
_modelCenter = _target getVariable ["center", _modelCenter]; // if a "center" position has been specified, use that instead.
_modelX = [_modelCenter,[1,0,0]] call BIS_fnc_vectorAdd;
_modelY = [_modelCenter,[0,0,-1]] call BIS_fnc_vectorAdd;

_modelXAxis = [_modelCenter, _modelX] call BIS_fnc_vectorDiff;
_modelYAxis = [_modelCenter, _modelY] call BIS_fnc_vectorDiff;
_modelHitPos = [_modelCenter, _modelHitPos] call BIS_fnc_vectorDiff;

_hitX = [_modelHitPos, _modelXAxis] call BIS_fnc_dotProduct;
_hitY = [_modelHitPos, _modelYAxis] call BIS_fnc_dotProduct;


// Need Sniper Log Book?
if (VQI_SLBREQUIRED_SNIPER == 1) then {
	if ("VQI_SniperDataBook" in (assignedItems player)) then {
	[_hitX,_hitY] call VQI_fn_sniper_data;
	} else {
	hint "Logbook Required in Map Slot";};
};

if (VQI_SLBREQUIRED_SNIPER == 2) then {
	[_hitX,_hitY] call VQI_fn_sniper_data;};
	
	
sleep 1;
deleteVehicle VQI_sniperTarget;