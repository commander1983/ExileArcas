//Create Satellite OR Spy Plane/UAV System
//
hint "NSA SATCOM link...";
sleep 2;
//0 = [getMarkerPos "mkr1", "IKONOS IV - LIVE FEED - Standby...",450,nil,20,0] spawn BIS_fnc_establishingShot; 
sleep 2;




/*
cutText ["", "BLACK FADED"];
sleep 1.5;

cutText ["Fallen Angel", "BLACK FADED"];
sleep 1.8;

cutText ["Fallen Angel", "BLACK IN", 10];
*/


setViewDistance 10000;

_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 7000];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [0,0]; //distance,blur
_hndl = ppEffectCreate ["filmGrain", 1501];
_hndl ppEffectEnable true;
_hndl ppEffectAdjust [1.0, 1.0, 0.0, [1.0, 0.1, 1.0, 0.75], [0.0, 1.0, 1.0, 1.0],[0.199, 0.587, 0.114, 0.0]];
_hndl ppEffectCommit 0;
sleep 1;
ppEffectDestroy _hndl;
sleep 10;


// ALiVE Hot-fix
player allowDamage false;
player setCaptive true;
player setPos (getMarkerPos "mkr1");
player setOxygenRemaining 1;



_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 5000];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [0,0]; //distance,blur
camUseNVG true;
sleep 3;

player setOxygenRemaining 1;
_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 3000];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [0,0]; //distance,blur
sleep 3;

player setOxygenRemaining 1;
_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 1500];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [20,2];
sleep 10;

player setOxygenRemaining 1;
_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 1000];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [10,10];
sleep 15;

player setOxygenRemaining 1;
_camera = "camera" camCreate [(getMarkerPos "mkr1" select 0), (getMarkerPos "mkr1" select 1), (getMarkerPos "mkr1" select 2) + 500];
_camera cameraEffect ["internal", "back"];
[_camera,-90,0] call BIS_fnc_setPitchBank;
_camera camsetFocus [5,50];
sleep 15;

player setOxygenRemaining 1;
camUseNVG false;
sleep 1;

player setOxygenRemaining 1;
true setCamUseTi 6;
sleep 60;

player setOxygenRemaining 1;
false setCamUseTi 6;
sleep 1;

player setOxygenRemaining 1;
camUseNVG false;
sleep 60;




setViewDistance 2250;
/*
//Start Pos
//_spyTarget = mapGridPosition getMarkerPos "mkr1";
//_spy = _spyTarget;
_camera camPrepareTarget getPos Loc1;
_camera camPreparePos [(getPos Loc1 select 0), (getPos Loc1 select 1), (getPos Loc1 select 2) + 200];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 4;
waitUntil {camCommitted _camera};
//[_camera,-80,0] call BIS_fnc_setPitchBank;


sleep 5;
showCinemaBorder false;
*/
sleep 2;
player setPos (VQI_SOCOM_DESK1 modelToWorld [0,3,0]);
sleep 2;
player setPos (deskSOCOM modelToWorld [0,3,0]);
player allowDamage true;
player setCaptive false;
player setOxygenRemaining 1;



sleep 2;
player cameraEffect ["terminate","back"];
camDestroy _camera;


/*
_camera = "camera" camCreate [getPos player select 0, getPos player select 1,2];
_camera setDir (getDir player);
_camera cameraEffect ["INTERNAL","BACK"];
_camera camSetFocus [50, 0];
addCamShake [5, 2, 3]; //power, duration, frequency - NO
true setCamUseTi 7;
*/


sleep 2;
player cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 2;
player cameraEffect ["terminate","back"];
camDestroy _camera;

sleep 2;
player cameraEffect ["terminate","back"];
camDestroy _camera;