//
//
if (VQI_DARK_HINTS == 1) then {
hint "arty.sqf"; };
sleep 1;


if ("VQI_Notebook_Freq_Arty" in (assignedItems player + Items player)) then {
hint "Enemy Radio Chatter: \n Incoming Artillery"; sleep (60 + random 180);
};


// Mark Target Area with Smoke
_zeroDLoc = [0,0,0];

artySmoke1 = "Sign_Sphere25cm_F" createVehicle _zeroDLoc;
_smokeLoc1 = [getPos player, (20 + (random 150)), random 360] call BIS_fnc_relPos;
artySmoke1 setPos _smokeLoc1; 
hideObjectGlobal artySmoke1;

artySmoke2 = "Sign_Sphere25cm_F" createVehicle _zeroDLoc;
_smokeLoc2 = [getPos player, (10 + (random 75)), random 360] call BIS_fnc_relPos;
artySmoke2 setPos _smokeLoc2; 
hideObjectGlobal artySmoke2;

//Smoke 1
_smokeType1 = ["SmokeShellRED","SmokeShellBLUE","SmokeShellGREEN","SmokeShellYELLOW","SmokeShellPUPLE","SmokeShellORANGE"] call BIS_fnc_selectRandom;
_artySmoke1 = _smokeType1 createVehicle [(getPos artySmoke1 select 0), (getPos artySmoke1 select 1), 0];

sleep (30 + random 120); //30 + random 120 seconds???????

//Smoke 2  ???
_smokeType2 = ["SmokeShellRED","SmokeShellBLUE","SmokeShellGREEN","SmokeShellYELLOW","SmokeShellPUPLE","SmokeShellORANGE"] call BIS_fnc_selectRandom;
_artySmoke2 = _smokeType2 createVehicle [(getPos artySmoke2 select 0), (getPos artySmoke2 select 1), 0];
sleep 10;






// Launch Artillery Barrage!
_artyRnds = (round(random 10));
_artyType = ["Sh_82mm_AMOS","Sh_82mm_AMOS","Sh_82mm_AMOS","Sh_155mm_AMOS","Cluster_155mm_AMOS","Mine_155mm_AMOS_range"] call BIS_fnc_selectRandom; //A3 cfgMagazines
//_artyType = "Cluster_155mm_AMOS"; //test round
_artyNite = "F_40mm_White";
_artyDark = sunOrMoon;
_artyArea = [100,200,300] call BIS_fnc_selectRandom;

_newP = getPos artySmoke2;
_posX = _newP select 0;
_posY = _newP select 1;

sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint format ["Shell: %1 \n Rounds: %2+3 - Area: %3",_artyType,_artyRnds,_artyArea]; };

// NightTime Flares...
if (_artyDark <= 0.3) then {

	for "_i" from 0 to _artyRnds + 5 do {
		_artyN = _artyNite createVehicle [(_posX + random _artyArea) - _artyArea/2, (_posY + random _artyArea) - _artyArea/2, 200];
		//[_artyN, -90, 0] call BIS_fnc_setPitchBank; sleep 1;
		_artyN setVelocity [0, 0, -10];
		
	sleep 8;
	};
};

sleep 10;

// Explosive/Mine Rounds
for "_i" from 0 to _artyRnds + 3 do {

	_artyX = _artyType createVehicle [(_posX + random _artyArea) - _artyArea/2, (_posY + random _artyArea) - _artyArea/2, 400];
	//[_artyX, -90, 0] call BIS_fnc_setPitchBank; sleep 1;    Note: APERS will stack in column if PitchBank ;)
	_artyX setVelocity [0, 0, -10];

sleep 3 + random 10;
};






sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "arty.sqf -END-"; };