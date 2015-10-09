//Bullet-Wind Trajectory Ballistics for Long Range SniperShots!
//Partially inspired by zooloo75

//Need to UPDATE Code and DATA!!!! W-I-P
//ONLY Prone state ballistics applied
BFW =
"
_data = _this;
_bullet = (_data select 0) select 6;
_filter = getText (configFile >> 'CfgMagazines' >> (((_data select 0) select 5)) >> 'nameSound');


sleep 0.05;

if (animationState player == 'AmovPpneMstpSrasWrflDnon') then {
while {alive _bullet} do
{
	_windX = wind select 0;
	_windY = wind select 1;
	_windZ = wind select 2;
	_velX = velocity _bullet select 0;
	_velY = velocity _bullet select 1;
	_velZ = velocity _bullet select 2;
	_clicks = 0;
	_envZ = 0;
	
	
	if (_filter == 'magazine') then {_bullet setVelocity [(_velX+(_windX/30)), (_velY+(_windY/30)), (_velZ+(_windZ/30)) + _envZ];};
	
	sleep 0.02;
	};
};
";

BulletFiredWind = compile BFW;



//Complex "FIRED" Weapon Detection System - SideArm/Rifle/Suppressor

//Firing a Weapon can/will ruin the stealth and/or keen senses state
VQI_fnc_suppressor = {
    private ["_suppressor","_weaponItems","_weaponFired"];
    _weaponFired 	= _this select 1;
    _weaponItems 	= weaponsItems player;
    _suppressor 	= false;

    {
        if ((_weaponFired == _x select 0) && !((_x select 1) == "")) then {
            _suppressor = true;
        };
    } forEach _weaponItems;

    _suppressor
};
//re-write like spawn bullet-wind above? Or is this OK?   W-I-P
player addEventHandler["Fired", {if ((_this call VQI_fnc_suppressor) && ((animationState player == "AmovPpneMstpSrasWpstDnon")	|| 	// Prone SideArm Silenced --- ADD OTHER SIDEARM STATES?
																(animationState player == "AmovPknlMstpSrasWpstDnon")	|| 	// Kneel SideArm Silenced --- ADD OTHER SIDEARM STATES?
																(animationState player == "AmovPercMstpSrasWpstDnon"))) 	// Stand SideArm Silenced --- ADD OTHER SIDEARM STATES?
					then {if (VQI_HINTS_SNIPER == 1) then {hint "SideArm Suppressed";};
					if ((animationState player == "AmovPpneMstpSrasWpstDnon") && (random 1 <= 0.05)) then {terminate SNIPERBREAK; terminate SNIPERBREAK_NS; //IF Prone/SideArm; 5% chance of breaking out (long) Stealth/Sense
					SNIPERBREAK_NS = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense_fired_nosup.sqf";}; //Not sure if I even want this...
					} else {
					
						if (_this call VQI_fnc_suppressor) then { // ADD % to 'suppressed' maybe?
						if (VQI_HINTS_SNIPER == 1) then {hint "Rifle Suppressed!";}; terminate SNIPERBREAK; SNIPERBREAK = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense.sqf";
						} else {
						terminate SNIPERBREAK; terminate SNIPERBREAK_NS;
						if (VQI_HINTS_SNIPER == 1) then {hint "NOT Suppressed!!";}; SNIPERBREAK_NS = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense_fired_nosup.sqf";}
					
					}}];
					


//run always? eat CPU? or set to prone/weapon-type/etc.?
//need environmental ballistics effect for Z

player addEventHandler ["Fired", "[_this] spawn BulletFiredWind;"];


if (VQI_HINTS_SNIPER == 1) then {
hint "Bullet-Fired-Wind: ON";};




//============================================================================================
//NOTES:
// Need more data on Sniper Ballistics/Trajectory


/*
_humZ = fog * 0;
_hydZ = rain * 0;
_eleZ = round (((getPosASL player) select 2)*3.2808) * 0;
_envZ = humZ + hydZ + eleZ;
_scpE = ?
_scpW = ?

_clicks = _windage getVariable ['ScopeClick', 0];
_scpL = _x getVariable "ScopeClickL1";
===============================================================================================
*/