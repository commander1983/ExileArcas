/*
 	Name: initNight.sqf

 	Author(s):
		WolfkillArcadia

 	Description:
        Nighttime ;)

	Parameters:
		Nothing

 	Returns:
		Nothing

 	Example:
		[] execVM core\night\initNight.sqf
*/

waitUntil { uiSleep 0.5;ExileClientPlayerIsSpawned;};

_firstWarning = 140;
_secondWarning = 120;

while {true} do
{
	_timeLeft = ceil(4 * 60 - serverTime / 60);

    _t1 = _firstWarning find _timeLeft;
    _t2 = _secondWarning find _timeLeft;

    if (_t1 > -1) then {
        ["...Prepare yourself...","...Nightime approaches..."] execVM "core\night\timeWarning.sqf";
    };

    if (_t2 > -1) then {
        playSound "watchbeep";

        ["...Good luck Survivor...","...See you in the morning..."] execVM "core\night\timeWarning.sqf";

        uiSleep 3;
        playSound "watchbeep";

        if (isServer) then {

            terminate tort_watcher;     //core\dynamicweather\watcher.sqf
            terminate tort_breakout;    //core\dynamicweather\tort_breakout.sqf

            //tort_overcast_now = 1;    //Instant change causes a lot of server lag similar to skipTime
            tort_overcast_min = 0.8;
            tort_overcast_max = 1;
            tort_overcast_weighting = 1;
            tort_overcast_turbulence = 1;
            tort_fog_now = 0.1 + random 0.1;
            tort_fog_min = 0.2;
            tort_fog_max = 0.6;
            tort_fog_weighting = 0;
            tort_fog_turbulence = 0;
            tort_wind_speed_now = 10;
            tort_wind_speed_min = 10;
            tort_wind_speed_max = 32;
            tort_wind_dir_min = 0;
            tort_wind_dir_max = 360;
            tort_wind_weighting = 1;
            tort_wind_turbulence = 1;
            tort_rain_now = 0.75;
            tort_rain_min = 0.5;
            tort_rain_max = 1;
            tort_rain_weighting = 1;
            tort_rain_turbulence = 1;
            tort_rain_threshold = 0.7;
            tort_breakout_p1 = 0.2;
            tort_breakout_p2 = 0.5;
            tort_breakout_s1 = 600;
            tort_breakout_s2 = 1800;
            tort_breakout_changenow = true;
            [] execVM "core\dynamicweather\init.sqf";

			[] execVM "core\custom\groundfog.sqf";

            [player,400,30] execVM "core\custom\SHPambientLightning.sqf";
        };

        uiSleep 3;

        playSound "roar";
        uiSleep 0.3;
        addCamShake [10, 8, 25];
    };

    sleep 0.5;
};
