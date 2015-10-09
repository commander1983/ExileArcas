// Create X OBJECTS, then MOVE out to RANDOM locations
//-WIP-----WIP-----WIP-----WIP-----WIP-----WIP-----WIP

if (!isServer) exitWith {};



private ["_dloc0","_dlocP","_dloc1","_dloc2","_dloc3","_dloc4","_dloc5","_dloc6","_nloc1","_nloc2","_nloc3"];


if (isServer) then  { 
//hint "Locations: X";


	deleteVehicle DLocP;
	deleteVehicle DLoc1;
	deleteVehicle DLoc2;
	deleteVehicle DLoc3;
	deleteVehicle DLoc4;
	deleteVehicle DLoc5;
	deleteVehicle DLoc6;
	deleteVehicle NLoc1;
	deleteVehicle NLoc2;
	deleteVehicle NLoc3;
	
	sleep 2;




	//Create '0' OBJECT
	_dloc0 = [0,0,0];
	//DLoc0  = "Sign_Sphere25cm_F" createVehicle (position player);
	//DLoc0 setPos _dloc0;
	
	//Create D.A.R.K. OBJECTS
	DLoc0 = "Sign_Sphere25cm_F" createVehicle _dloc0; //zero
	DLocP = "Sign_Sphere25cm_F" createVehicle _dloc0; //player
	DLoc1 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	DLoc2 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	DLoc3 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	DLoc4 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	DLoc5 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	DLoc6 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	NLoc1 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	NLoc2 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	NLoc3 = "Sign_Sphere25cm_F" createVehicle _dloc0;
	
	hideObjectGlobal DlocP;
	hideObjectGlobal DLoc1; hideObjectGlobal DLoc2; hideObjectGlobal DLoc3; 
	hideObjectGlobal DLoc4; hideObjectGlobal DLoc5; hideObjectGlobal DLoc6;
	hideObjectGlobal NLoc1; hideObjectGlobal NLoc2; hideObjectGlobal NLoc3;

	//find & move out to random X distance from player + 360*
	_dlocP = getPos player;
	_dloc1 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	_dloc2 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	_dloc3 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	_dloc4 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	_dloc5 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	_dloc6 = [getPos player, (1500 + (random 1500)), random 360] call BIS_fnc_relPos;
	
	_nloc1 = [getPos player, (50 + (random 500)), random 360] call BIS_fnc_relPos;
	_nloc2 = [getPos player, (50 + (random 500)), random 360] call BIS_fnc_relPos;
	_nloc3 = [getPos player, (50 + (random 500)), random 360] call BIS_fnc_relPos;
	
	//move Objects to NEW random location
	DlocP setPos _dlocP;
	DLoc1 setPos _dloc1;
	DLoc2 setPos _dloc2;
	DLoc3 setPos _dloc3;
	DLoc4 setPos _dloc4;
	DLoc5 setPos _dloc5;
	DLoc6 setPos _dloc6;
	
	NLoc1 setPos _nloc1;
	NLoc2 setPos _nloc2;
	NLoc3 setPos _nloc3;
};