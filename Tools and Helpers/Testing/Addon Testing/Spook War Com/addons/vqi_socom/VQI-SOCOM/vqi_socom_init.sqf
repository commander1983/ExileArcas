//Start US-SOCOM System (Special Operations Command) and VQI World!
//-WIP-----WIP-----WIP-----WIP-----WIP-----WIP-----WIP-----WIP----
waitUntil {!isNil "bis_fnc_init"};
sleep 3;

//if (isServer) then {
	VQI_fnc_locX = compile preprocessFileLineNumbers "\vqi_socom\VQI-SOCOM\X-SOCOM\functions\vqi_fnc_locations.sqf";
	publicVariable "VQI_fnc_locX";
	VQI_fnc_WorldNameX = compile preprocessFileLineNumbers "\vqi_socom\VQI-SOCOM\X-SOCOM\functions\vqi_fnc_map_worldname.sqf";
	publicVariable "VQI_fnc_WorldNameX";
	VQI_fnc_xInf = compile preprocessFileLineNumbers "\vqi_socom\VQI-SOCOM\X-SOCOM\functions\vqi_fnc_infantry_standard.sqf";
	publicVariable "VQI_fnc_xInf";
	VQI_fnc_xSkill = compile preprocessFileLineNumbers "\vqi_socom\VQI-SOCOM\X-SOCOM\functions\vqi_fnc_setskills.sqf";
	publicVariable "VQI_fnc_xSkill";
	
	
	sleep 180;
	hint "You've Got Mail: \n SOCOM On-line";
	
	
	// find laptop/PC - Network SOCOM System...MP
	[[VQI_SOCOM_1, ["SOCOM - Request Mission", "execVM '\vqi_socom\VQI-SOCOM\vqi_socom.sqf'; [VQI_SOCOM_1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
	[[VQI_SOCOM_1, ["SATCOM - Optics: SD", "execVM '\vqi_socom\VQI-SOCOM\X-SOCOM\satcom\satcom_day.sqf'; [VQI_SOCOM_1, 2]"]], "addAction", true, true] call BIS_fnc_MP;
	[[VQI_SOCOM_1, ["SATCOM - Optics: NV", "execVM '\vqi_socom\VQI-SOCOM\X-SOCOM\satcom\satcom_night.sqf'; [VQI_SOCOM_1, 3]"]], "addAction", true, true] call BIS_fnc_MP;
	[[VQI_SOCOM_1, ["H.A.L.O. SITREP", "execVM '\vqi_halo\VQI-DemonDropper\vqi_mkrjumpplane.sqf'; [VQI_SOCOM_1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
//};


//sleep 5;
//World Building & Set-up:
//call VQI_fnc_enviroX;