//
//

private ["_haloAAD2","_haloAAD3","_haloAAD5","_haloAAD6","_haloAAD8"];

sleep 10;

if ("VQI_AAD" in assignedItems player) then {
	playSound "aad_beeping";
	
	if (VQI_HINTS_HALO == 1) then { 
		hint "A.A.D. Ready... \n Set Altitude ASL"; };
};






//AAD (Meters ABOVE SEA LEVEL)
if (VQI_AAD_HALO == 2) then { //330ft
waitUntil {getPosASL player select 2 < 400}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 100}; player action ["openParachute"]; };

if (VQI_AAD_HALO == 3) then { //495ft
waitUntil {getPosASL player select 2 < 450}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 150}; player action ["openParachute"]; };

if (VQI_AAD_HALO == 5) then { //660ft
waitUntil {getPosASL player select 2 < 500}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 200}; player action ["openParachute"]; };

if (VQI_AAD_HALO == 6) then { //1320ft
waitUntil {getPosASL player select 2 < 700}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 400}; player action ["openParachute"]; };

if (VQI_AAD_HALO == 8) then { //1980ft
waitUntil {getPosASL player select 2 < 900}; playSound "aad_beeping";
waitUntil {getPosASL player select 2 < 600}; player action ["openParachute"]; };



if ("VQI_AAD" in assignedItems player) then {
	
	if (VQI_AAD_HALO == 0) then {
		_haloAAD2 = player addAction ["A.A.D. Set: 330ft/100m ASL (water halo only!)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set1.sqf"];
		_haloAAD3 = player addAction ["A.A.D. Set: 495ft/150m ASL (halo/danger low!)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set2.sqf"];
		_haloAAD5 = player addAction ["A.A.D. Set: 660ft/200m ASL (halo/extreme low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set3.sqf"];
		_haloAAD6 = player addAction ["A.A.D. Set: 1320ft/400m ASL (halo/very low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set4.sqf"];
		_haloAAD8 = player addAction ["A.A.D. Set: 1980ft/600m ASL (halo/norm low)","\vqi_halo\VQI-DemonDropper\Altimeter\vqi_aad_set5.sqf"];

		sleep 10;

		player removeAction _haloAAD2;
		player removeAction _haloAAD3;
		player removeAction _haloAAD5;
		player removeAction _haloAAD6;
		player removeAction _haloAAD8;
	};
};


/*
player setPos [getPos player select 0, getPos player select 1, (getPos player select 2) +1000];
sleep 2;
waitUntil {getPosATL player select 2 < 152}; player action ["openParachute"];
*/