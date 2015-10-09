// Garrison nearest Building, with RANDOM Positions; CQB, Single A.I.
//
//hint "taskCQB.sqf";
sleep 1;

_unitAI = _this select 0;
_nBldgE = nearestBuilding _unitAI; 
_nBldgP = nearestBuilding player;
_maxBldPos = 0;
_countPos = [];

//loop count positions, BIS_fnc_buildingPositions NOT WORK!
while {format ["%1", _nBldgE buildingPos _maxBldPos] != "[0,0,0]" } do {

	_pos = _nBldgE buildingPos _maxBldPos;		
	_countPos = _countPos + [_pos];				
	_maxBldPos = _maxBldPos + 1;

	sleep 0.5;
};



_rBldPos = [0,_maxBldPos] call BIS_fnc_randomInt;
sleep 1;

//random Enemy/Player Building? --> move to taskBehaviour file?
_r100 = random 100;

if (_r100 < 25) then {
	_unitAI move (_nBldgE buildingPos _rBldPos);	// 25% near Enemy
} else {
	_unitAI move (_nBldgP buildingPos _rBldPos);	// 75% near Player
};

sleep 1;
//hint "taskCQB.sqf -END-";
//