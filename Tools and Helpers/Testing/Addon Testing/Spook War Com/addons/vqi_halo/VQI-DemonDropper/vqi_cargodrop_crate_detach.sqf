//
//

detach CARGO_HALOCRATE;
//CARGO_HALOCRATE setVelocity [10, 0, 0];
CARGO_HALOCRATE setVelocity [10 * (sin (getDir jumpV)), 10 * (cos (getDir jumpV)), 0];

sleep 1;


////////////////////////////////////////
// Non-Steerable Parachute - Cargo Chute
waitUntil {(getPosATL CARGO_HALOCRATE select 2) < 200};
CARGO_HALOCHUTE = "B_parachute_02_F" createVehicle [0,0,0];
CARGO_HALOCHUTE setPosATL (getPosATL CARGO_HALOCRATE);

CARGO_HALOCRATE attachTo [CARGO_HALOCHUTE, [0,0,0]];



// Stupid Bouncing Crate?
waitUntil {((((position CARGO_HALOCRATE) select 2) < 1) || (isNil "CARGO_HALOCHUTE"))};
detach CARGO_HALOCRATE;
CARGO_HALOCRATE setVelocity [0,0,-5];
           
sleep 0.5;

CARGO_HALOCRATE setPos [(position CARGO_HALOCRATE) select 0, (position CARGO_HALOCRATE) select 1, 1];
CARGO_HALOCRATE setVelocity [0,0,0]; 

sleep 5;

CARGO_HALOCRATE allowDamage true;




/////////////////////////////////////////////////////////
//------------------------------------------------------
// Locate/Find - Smoke/Chem/IR - User set minute Timer - Beacon
//sleep 120;
if (beaconTimer == 1)  then { sleep 60; };
if (beaconTimer == 10) then { sleep 600; };
if (beaconTimer == 20) then { sleep 1200; };
if (beaconTimer == 30) then { sleep 1800; };

smokeBLUE = "SmokeShellBLUE" createVehicle (position CARGO_BEACONRADAR);
smokeBLUE attachTo [CARGO_BEACONRADAR, [0,0,0]];

chemBLUE = "Chemlight_Blue" createVehicle (position CARGO_BEACONRADAR);
chemBLUE attachTo [CARGO_BEACONRADAR, [0,0,0]];