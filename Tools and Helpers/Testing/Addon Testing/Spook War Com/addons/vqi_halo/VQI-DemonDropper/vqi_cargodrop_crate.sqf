deleteVehicle CARGO_HALOCRATE;
deleteVehicle CARGO_HALOCHUTE;
deleteVehicle CARGO_BEACONRADAR;
sleep 1;



// Create the Cargo
//CARGO_HALOCRATE = "B_CargoNet_01_ammo_F" createVehicle position VQIHALO2;
CARGO_HALOCRATE = "B_CargoNet_01_ammo_F" createVehicle position VQIHALO2;
CARGO_HALOCRATE attachTo [VQIHALO2,[0.7, 9,-3.7]];
CARGO_HALOCRATE allowDamage false;
sleep 1; // Menu Options
[[CARGO_HALOCRATE, ["CARGO - UNLOCK/DETACH", "execVM 'vqi_halo\VQI-DemonDropper\vqi_cargodrop_crate_detach.sqf'; [CARGO_HALOCRATE, 1]"]], "addAction", true, true] call BIS_fnc_MP;

sleep 5;

//Create Beacon/Smoke/Locator
CARGO_BEACONRADAR = "Land_GasCanister_F" createVehicle position CARGO_HALOCRATE;
CARGO_BEACONRADAR attachTo [CARGO_HALOCRATE,[0, 0.83, -0.5]];
sleep 1; // Menu Options
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - Timer: OFF", "missionNamespace setVariable ['beaconTimer', 0]; [CARGO_BEACONRADAR, 6]"]], "addAction", true, true] call BIS_fnc_MP;
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - Timer: 1 min", "missionNamespace setVariable ['beaconTimer', 1]; [CARGO_BEACONRADAR, 5]"]], "addAction", true, true] call BIS_fnc_MP;
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - Timer: 10min", "missionNamespace setVariable ['beaconTimer', 10]; [CARGO_BEACONRADAR, 4]"]], "addAction", true, true] call BIS_fnc_MP;
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - Timer: 20min", "missionNamespace setVariable ['beaconTimer', 20]; [CARGO_BEACONRADAR, 3]"]], "addAction", true, true] call BIS_fnc_MP;
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - Timer: 30min", "missionNamespace setVariable ['beaconTimer', 30]; [CARGO_BEACONRADAR, 2]"]], "addAction", true, true] call BIS_fnc_MP;
[[CARGO_BEACONRADAR, ["BEACON/LIGHT/SMOKE - REMOVE/OFF", "deleteVehicle chemBLUE; deleteVehicle smokeBLUE; deleteVehicle CARGO_BEACONRADAR; [CARGO_BEACONRADAR, 1]"]], "addAction", true, true] call BIS_fnc_MP;