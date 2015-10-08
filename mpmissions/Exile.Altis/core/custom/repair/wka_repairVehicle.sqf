/*

 	Name: wka_repairVehicle.sqf

 	Author(s): WolfkillArcadia
    Copyright (c) 2015 WolfkillArcadia

 	Description: Once triggered from a players XM8, this script will repair the corresponding parts and remove them from the players/vehicles inventory.

    Usage:
    [hitpoint, vehicle, player] call wka_repairVehicle;
*/


_hitpoint = _this select 0;
_veh = _this select 1;
_plr = _this select 2;
_plrInv = magazines _plr;
_vehInv = magazines _veh;

if ("Engine" in _hitpoint) then {
    _part = "PartEngine";
};

if ("Wheel" in _hitpoint) then {
    _part = "PartWheel";
};

if ("Glass" in _hitpoint) then {
    _part = "PartGlass";
};

if ("Fuel" in _hitpoint) then {
    _part = "PartFueltank";
};

if ("HRotor" in _hitpoint) then {
    _part = "PartVRotor";
};

if ("VRotor" in _hitpoint) then {
    _part = "PartVRotor";
};

if (_part in _plrInv) then {
    _plr removeMagazine _part;
    _veh setHitPointDamage [_hitpoint,0];
} else {
    if (_part in _vehInv) then {
        _veh removeMagazineGlobal _part;
        _veh setHitPointDamage [_hitpoint,0];
    } else {
        ["RepairFailedWarning", ["You need vehicle parts to do that!"]] call ExileClient_gui_notification_event_addNotification;
    };
};
