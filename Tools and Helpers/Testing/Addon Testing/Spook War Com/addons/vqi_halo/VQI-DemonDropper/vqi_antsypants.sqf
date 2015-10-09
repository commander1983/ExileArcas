////----WIP-----WIP------------WIP-----WIP-------------WIP----WIP---////
//// IF Jump too soon --- then OFF COURSE! ------> Wait for GREEN LIGHT!




private ["_antsy","_antsyPosNB","_antsyPosBL","_antsyPosR1","_antsyPosR2"];

_antsy = "Sign_Sphere25cm_F" createVehicle (position VQIHALO2);
hideObject _antsy;

_antsyPosNB = [getPos _antsy, (4444 + (random 3333)), random 360] call BIS_fnc_relPos; //4-6
_antsyPosBL = [getPos _antsy, (3333 + (random 2222)), random 360] call BIS_fnc_relPos; //3-5
_antsyPosR1 = [getPos _antsy, (2222 + (random 2222)), random 360] call BIS_fnc_relPos; //2-4
_antsyPosR2 = [getPos _antsy, (1111 + (random 2222)), random 360] call BIS_fnc_relPos; //1-3



if (!isNull lightBLUE) then {
	_antsy setPosASL _antsyPosBL;
	sleep 1;
	player setPosATL [(getPos _antsy) select 0, (getPos _antsy) select 1, 6666 + (random 2222)];
	if (VQI_HINTS_HALO == 1) then {
	hint "Jumped WAY too soon! \n WAY Off Course!";};
};
if (!isNull lightRED1) then {
	_antsy setPosASL _antsyPosR1;
	sleep 1;
	player setPosATL [(getPos _antsy) select 0, (getPos _antsy) select 1, 6666 + (random 2222)];
	if (VQI_HINTS_HALO == 1) then {
	hint "Jumped too soon! \n Off Course!";};
};
if (!isNull lightRED2) then {
	_antsy setPosASL _antsyPosR2;
	sleep 1;
	player setPosATL [(getPos _antsy) select 0, (getPos _antsy) select 1, 6666 + (random 2222)];
	if (VQI_HINTS_HALO == 1) then {
	hint "Jumped a little soon \n Slightly Off Course";};	
};



sleep 5;	
//hint "end";