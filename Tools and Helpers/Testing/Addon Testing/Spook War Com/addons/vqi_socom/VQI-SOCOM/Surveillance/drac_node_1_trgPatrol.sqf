// Q.R.F Team Patrol & Search Area...
//
private ["_alm","_qGoon"];
_qGoon = _this select 0;
_rTime = random 400;

sleep 400 + _rTime; //patrol around breach - search 100m area!
[group _qGoon, getPos dracMac1, 55] call bis_fnc_taskPatrol;