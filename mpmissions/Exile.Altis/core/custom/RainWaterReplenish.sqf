/*

 	Name: RainWaterReplenish.sqf

 	Author(s): WolfkillArcadia
    Copyright (c) 2015 WolfkillArcadia

 	Description: Checks to see if a player is inside a building or not and then
    "replenishes" their thirst depending how hard it is raining.

*/
private ["_percent100","_percent90","_percent80","_percent70","_percent60",
"_percent50","_percent40","_percent30","_percent20","_percent10"];

/*
CONFIGURATION
Change the following values to be whatever you want added to the player thirst levels
At full rain, the player will +10 (default) thirst every 10 seconds. (Zero to full in 100 seconds)
_100percent being full rain (setRain 1)
*/

_percent100 = 10;
_percent90 = 9;
_percent80 = 8;
_percent70 = 7;
_percent60 = 6;
_percent50 = 5;
_percent40 = 4;
_percent30 = 3;
_percent20 = 2;
_percent10 = 1;

//This percent is when rain is between 0 and 0.1, so practically not raining.
//I suggest leaving this at zero
_percent0 = 0;




////////////////////////////////
// DO NOT TOUCH ANYTHING BELOW//
////////////////////////////////


waitUntil { uiSleep 0.1;ExileClientPlayerIsSpawned;};


private["_unit1","_building","_type","_relPos","_boundingBox","_min","_max",
"_myX","_myY","_myZ","_inside","_thirst","_amtRain","_isPlayerInside"];

while {alive player} do {

    fnc_checkPlayerInside = {
        //BoundingBox code from DayZ
        _unit1 = player;
        _building = nearestObject [player, "HouseBase"];

        _type = typeOf _building;

        _relPos = _building worldToModel (getPosATL _unit1);
        _boundingBox = boundingBox _building;

        _min = _boundingBox select 0;
        _max = _boundingBox select 1;

        _myX = _relPos select 0;
        _myY = _relPos select 1;
        _myZ = _relPos select 2;

        if ((_myX > (_min select 0)) && (_myX < (_max select 0))) then {
        	if ((_myY > (_min select 1)) && (_myY < (_max select 1))) then {
        		if ((_myZ > (_min select 2)) && (_myZ < (_max select 2))) then {
        			_inside = true;
        				} else { _inside = false; };
        		} else { _inside = false; };
        } else { _inside = false; };

        _inside
    };

    _isPlayerInside = [] spawn fnc_checkPlayerInside;

    while {!(_isPlayerInside)} do {
        _thirst = ExileThirst;
        _amtRain = rain;

        switch {_amtRain} do {
            case (_amtRain == 1): {
                _newThirst = _thirst + _percent100;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 1) && (_amtRain >= 0.9)): {
                _newThirst = _thirst + _percent90;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.9) && (_amtRain >= 0.8)): {
                _newThirst = _thirst + _percent80;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.8) && (_amtRain >= 0.7)): {
                _newThirst = _thirst + _percent70;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.7) && (_amtRain >= 0.6)): {
                _newThirst = _thirst + _percent60;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.6) && (_amtRain >= 0.5)): {
                _newThirst = _thirst + _percent50;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.5) && (_amtRain >= 0.4)): {
                _newThirst = _thirst + _percent40;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.4) && (_amtRain >= 0.3)): {
                _newThirst = _thirst + _percent30;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.3) && (_amtRain >= 0.2)): {
                _newThirst = _thirst + _percent20;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.2) && (_amtRain >= 0.1)): {
                _newThirst = _thirst + _percent10;
                ExileThirst = _newThirst;
            };
            case ((_amtRain < 0.1) && (_amtRain >= 0)): {
                _newThirst = _thirst + _percent0;
                ExileThirst = _newThirst;
            };
        };
        uiSleep 10;
    };
};
