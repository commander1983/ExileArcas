/* 	SYNTAX: 	[unitArray, radiationLevel, shieldedVehicleArray] execVM "radiationSource.sqf"


VARIABLES:	unitArray: Array - Array of units affected by the radiation source

radiationLevel: Number - damage each units will suffer while staying nearby the radiation source
(damage is added every second, so 0.1 means the unit will lose 0.1 of health each second, 1 means
instant death)

shieldedVehicleParam: Matrix - Matrix containing a couple of values [className, damageScale] which
represents the damage reduction in percentage for the units inside the given vehicle
(for example modern tanks are shielded against radiation sources, so you can use this to reduce
the damage for units inside a vehicle).
If you are not interested in vehicle damage reduction just pass the script an empty array [].


NOTES:	You should call this script from a trigger with a certain area, so you can pass the thisList array to the
script. For example a call could be

call{[thisList, 0.1, []] execVM "radiationSource.sqf"}

*/



//local function used to check how many units are alive in an array
_areAlive =
{
    _count = 0;
    {
        if (alive _x) then {_count = _count + 1};
    }
    forEach _this;

    _count
};


//initializing local variables
_unitArray = _this select 0;
_damage = _this select 1;
_vArray = _this select 2;

//number of units who activated the trigger
_currentAliveUnits = _unitArray call _areAlive;

while {_currentAliveUnits > 0} do
{

    //compute and apply the damage factor for each unit in unitArray
    {
        _damageRed = 0;

        //triggering unit is in a vehicle
        if (count crew vehicle _x > 0) then
        {
            _v = vehicle _x;
            //check if the vehicle	in which the unit is mounted is radiation shielded
            {
                if ((_x select 0) == (typeOf _v)) then {_damageRed = _x select 1};
            }
            forEach _vArray;
        };

        _totalDamage = _damage - (_damage / 100 * _damageRed);

        if (_x == player) then {
            _message = "<t align='right' size='1.25'>Warning! High levels of radiation detected!</t>";
            [
            	parseText _message,
            	[safezoneX, safezoneY + safeZoneH * 0.4, safezoneW * 0.3, safeZoneH * 0.25],
            	nil,
            	6,
            	0.7,
            	0
            ]
            spawn BIS_fnc_textTiles;
        };

        //set the current damage for the unit
        if (count crew _x > 0) then
        {
            {_x setDamage ((damage _x) + _totalDamage)}  forEach crew _x;
        }
        else {_x setDamage ((damage _x) + _totalDamage)};

        //DEBUG
        //player sidechat format["%1 health is %2", player, 1 - (damage player)];
    }
    forEach _unitArray;

    sleep(1);
    _currentAliveUnits = _unitArray call _areAlive;
};
