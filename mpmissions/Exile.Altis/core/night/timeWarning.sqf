/*
 	Name: timeWarning.sqf

 	Author(s):
		WolfkillArcadia

 	Description:
        Gives warning to player

	Parameters:
		Nothing

 	Returns:
		TEXT

 	Example:
		[] execVM core\night\timeWarning.sqf
*/

private["_a","_b"];

_a = _this select 0;
_b = _this select 1;

_warning =
[
    [
		[format ["%1",_a],"<t align = 'center' shadow = '1' size = '0.8' color ='#E44646' font='PuristaBold'>%1</t><br />"],
		[format ["%1",_b],"<t align = 'center' shadow = '1' size = '0.6'>%1</t><br/>"]
    ]
] spawn BIS_fnc_typeText;
