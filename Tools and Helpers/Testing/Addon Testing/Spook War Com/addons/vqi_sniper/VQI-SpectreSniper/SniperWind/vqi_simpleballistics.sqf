//Bullet-Wind Trajectory Ballistics for Long Range SniperShots!
//Partially inspired by zooloo75

//private ["","",""];

//Need to UPDATE Code and DATA!!!! W-I-P
//ONLY Prone state ballistics applied
VQISB =
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
	
	
	if (_filter == 'magazine') then {_bullet setVelocity [(_velX+(_windX/90)), (_velY+(_windY/90)), (_velZ+(_windZ/90)) + _envZ];};
	
	sleep 0.02;
	};
};
";

VQISimpleBallistics = compile VQISB;






//run always? eat CPU? or set to prone/weapon-type/etc.?
//need environmental ballistics effect for Z

player addEventHandler ["Fired", "[_this] spawn VQISimpleBallistics;"];


sleep 5;

if (VQI_HINTS_SNIPER == 1) then { sleep 25;
hint "SpectreSniper v0.5 \n SimpleBallistics: ON";};




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