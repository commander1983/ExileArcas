//Create 6 OBJECTS, then MOVE out to RANDOM locations
//-WIP-----WIP-----WIP-----WIP-----WIP-----WIP-----WIP

private ["_half","_mapSizeF","_centerPos","_loc1","_loc2","_loc3","_loc4","_loc5","_loc6"];

//if (isServer) then  { 
//hint "Locations: 5X";

	deleteVehicle Loc1;
	deleteVehicle Loc2;
	deleteVehicle Loc3;
	deleteVehicle Loc4;
	deleteVehicle Loc5;
	deleteVehicle Loc6;

	sleep 1;

_mapSize = call BIS_fnc_mapSize;
_half = _mapSize / 2;

	//create start-reference object
	MapCentre = "Sign_Sphere25cm_F" createVehicle (position player); //Name Desk/PC?
	hideObjectGlobal MapCentre;

	//Create '0' OBJECT
	_Loc0 = [0,0,0];
	Loc0  = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc0 setPos _Loc0;
	
	//Create 5 OBJECTS
	Loc1 = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc2 = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc3 = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc4 = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc5 = "Sign_Sphere25cm_F" createVehicle (position player);
	Loc6 = "Sign_Sphere25cm_F" createVehicle (position player);
	hideObjectGlobal Loc1; hideObjectGlobal Loc2; hideObjectGlobal Loc3; 
	hideObjectGlobal Loc4; hideObjectGlobal Loc5; hideObjectGlobal Loc6;

	//find centre of the Map, MOVE MapCentre to the Map Centre location
	_centerPos = [_half, _half, 0];
	MapCentre setPos _centerPos;

	//find & move out to random 95% of map + 360*, 6 random locations
	_loc1 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;
	_loc2 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;
	_loc3 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;
	_loc4 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;
	_loc5 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;
	_loc6 = [getPos MapCentre, (random (_half*0.95)), random 359] call BIS_fnc_relPos;

	//move Objects to NEW random location
	Loc1 setPos _loc1;
	Loc2 setPos _loc2;
	Loc3 setPos _loc3;
	Loc4 setPos _loc4;
	Loc5 setPos _loc5;
	Loc6 setPos _loc6;
//};