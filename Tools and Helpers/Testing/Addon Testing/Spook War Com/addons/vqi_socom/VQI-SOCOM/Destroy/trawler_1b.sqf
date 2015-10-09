//Original "Sink the Trawler" Script by Magirot - Modified slightly by Goblin
//--------------------------------------------------------------------------- 
//KABOOM!!!

private ["_ship", "_sinktime", "_sinkside", "_smokeloc", "_smoke_e", "_smoke", "_x", "_y", "_z", "_x1", "_y1", "_x2", "_y2", "_x3", "_y3", "_z1", "_z2", "_z3"];


// Fetch and validate the parameters
_ship		= [_this, 0, objNull] call BIS_fnc_param;
_sinkside 	= [_this, 1, "LEFT BACK"] call BIS_fnc_param;
_sinktime 	= [_this, 2, 120] call BIS_fnc_param;
smoke    	= [_this, 3, TRUE] call BIS_fnc_param;

// Although it would be nice to implement damage to multiple locations, not today
if (	_ship getVariable ["ShipIsSinking", FALSE] ) exitWith {};
	_ship setVariable ["ShipIsSinking", TRUE, TRUE];

// If _sinktime is 0, randomise the time between 3-30 minutes. _sinktime == 0
if (true) then { _sinktime = 180 + random 1800 };

// Get the default CenterOfMass of the trawler (which is [-0.17766, -1.72015, -8.49908])
_x = getCenterOfMass _ship select 0;
_y = getCenterOfMass _ship select 1;
_z = getCenterOfMass _ship select 2;

// Z values for sinking are the same for all sides
_z1 = _z + 1.0;
_z2 = _z + 4.0;
_z3 = _z + 8.5;

_smokeloc = [0, 0, -6];

// Convert the string in _sinkside to upper case
_sinkside = toUpper (_sinkside);

// If _sinkside is "RANDOM", choose a random side from the array
if (_sinkside == "RANDOM") then {
    _sinkside = ["LEFT", "RIGHT", "LEFT FRONT", "RIGHT FRONT", "LEFT BACK", "RIGHT BACK"] call BIS_fnc_selectRandom;
};

// Declare the variables for setCenterOfMass
switch (_sinkside) do
{
    case "LEFT": 
    {
        _x1 = _x - 1.0; _y1 = _y; 
        _x2 = _x - 1.7; _y2 = _y - 2.5;   
        _x3 = _x - 1.7; _y3 = _y;        
        _smokeloc = [-3, 0, -6];
    };

    case "RIGHT":
    {
        _x1 = _x + 1.0; _y1 = _y;
        _x2 = _x + 1.7; _y2 = _y - 2.5;  
        _x3 = _x + 1.7; _y3 = _y;        
        _smokeloc = [3, 0, -6];
    };

    case "LEFT FRONT": 
    {
        _x1 = _x - 0.6; _y1 = _y + 3.0; 
        _x2 = _x - 1.5; _y2 = _y + 5.0;   
        _x3 = _x - 1.7; _y3 = _y;        
        _smokeloc = [-3, 8, -6];
    };

    case "RIGHT FRONT":
    {
        _x1 = _x + 0.6; _y1 = _y + 3.0; 
        _x2 = _x + 1.5; _y2 = _y + 5.0;   
        _x3 = _x + 1.7; _y3 = _y;        
        _smokeloc = [3, 8, -6];
    };

    case "LEFT BACK": 
    {
        _x1 = _x - 0.4; _y1 = _y - 2.5; 
        _x2 = _x - 1.5; _y2 = _y - 5.0;   
        _x3 = _x - 1.7; _y3 = _y;        
        _smokeloc = [-3, -8, -6];
    };

    case "RIGHT BACK":
    {
        _x1 = _x + 0.4; _y1 = _y - 2.5; 
        _x2 = _x + 1.5; _y2 = _y - 5.0;   
        _x3 = _x + 1.7; _y3 = _y;        
        _smokeloc = [3, -8, -6];
    };
};


// Actual effect stuff begins here /////////////////////////////


// Create the smoke emitter
if (smoke) then {
    smoke_e = "#particleSource" createVehicle getPosATL _ship;
	publicVariableServer "smoke_e";
    smoke_e setParticleClass "BigDestructionSmoke";
    smoke_e attachTo [_ship, _smokeloc];
};

sleep 2;

// Slight tilt
_ship setCenterOfMass 	[[_x1, _y1, _z1], _sinktime * 0.33];
_ship setMass [1500000, _sinktime * 0.33]; // Normal mass of the trawler is around 1 270 000.

sleep (_sinktime * 0.33 + 0.5);

// Water reaches the deck, fire extinguished, tilt and mass increasing...
//re-do, check for ship depth?
if (smoke) then { smoke_e spawn { sleep 30; deleteVehicle _this } }; // Delete the smoke emitter after a few seconds.
_ship setCenterOfMass [[_x2, _y2, _z2], _sinktime * 0.66];
_ship setMass [3300000, _sinktime * 0.66];

sleep (_sinktime * 0.66 + 0.5);

// Make sure the ship sinks to the bottom instead of hanging halfway through.
_ship setCenterOfMass [[_x3, _y3, _z3], _sinktime];
_ship setMass [7000000, _sinktime];  // Required mass depends on depth.



// Wait until the ship has reached the bottom, then 
// disable simulation to save on performance.
waitUntil { getPosATL _ship select 2 < 7 };
sleep 20;
_ship enableSimulation FALSE;

TRUE

/* Notes:

*/