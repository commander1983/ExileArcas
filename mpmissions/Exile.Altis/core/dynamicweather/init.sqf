//_________________________________//
tort_dynamicweather_running = false;
tort_overcast_isrunning = false;
tort_fog_isrunning = false;
tort_wind_isrunning = false;
tort_rain_isrunning = false;
tort_dynamicweather2_watch = true;
//_________________________________//

tort_dynamicweather_running = true;

tort_process_overcast = true;
tort_process_fog = true;
tort_process_wind = true;
tort_process_rain = true;
tort_process_breakout = true;

// default breakout params
tort_breakout_p1 = tort_island_breakout select 0;  // probability of shifting extrema inside user defined range
tort_breakout_p2 = tort_island_breakout select 1;    // if above happens, probability of shifting extrema inside full range
tort_breakout_s1 = tort_island_breakout select 2;  // re-evaluate after somewhere between [s1..s2] seconds
tort_breakout_s2 = tort_island_breakout select 3;

tort_watcher = [] execVM "core\dynamicweather\watcher.sqf";
tort_breakout = [] execVM "core\dynamicweather\tort_breakout.sqf";
