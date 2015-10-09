_unit = _this select 0;
UnitSayings = ["Stay Back %1, I'll kill you!","I will shoot you, %1!","Best fuck off someplace else Pal!","I'm warning you %1, I will shoot!"];
timeOut = false;
while{alive _unit} do
{
	waitUntil{player distance _unit < 8};
	_saying =  UnitSayings call BIS_fnc_selectRandom;
	_unit directSay format [_saying,name player];
	[] spawn
	{
		for "_i" from 0 to 5 do
		{
			sleep 1;
			if(_i == 5) then {timeOut = true;};
		};
	};
	waitUntil{player distance _unit < 3 || timeOut};
	if(player distance _unit < 3) then
	{
		player setCaptive false;
		_unit reveal player;
		_unit doTarget player;
		for "_i" from 0 to 8 do
		{
			_unit forceWeaponFire[CurrentWeapon _unit,"fullauto"];
		};
		waitUntil{!alive player};
		_unit directSay "Target down. Dumbass should've listened";
	};
	sleep 2;
};
