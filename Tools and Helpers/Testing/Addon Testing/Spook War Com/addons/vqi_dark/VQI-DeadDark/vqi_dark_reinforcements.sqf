//
//
if (VQI_DARK_HINTS == 1) then {
hint "reinforcements.sqf"; };
sleep 1;


_enemyMin = (6 + random 10);	//minimum enemy left to warrant the call
_enemyRng = 1000;  			//enemy within x range

while {true} do {

	_onAlertR = round ((east knowsAbout player) * 100) / 100; 		// 
	_onAlertG = round ((resistance knowsAbout player) * 100) / 100; 	//
	_onAlertX = _onAlertR + _onAlertG;
	

	if (_onAlertX == 4) then {		//by being a sneaky bastard, sir!
		
		sleep (30 + random 300); 	//radio-call, random .5-5min
	
		_pos = getPos player;
		_n50 = _pos nearEntities _enemyRng;
		_grn = resistance countSide _n50;
		_red = east countSide _n50;
		_bad = _grn + _red;
		
		if ((_bad < _enemyMin) && (_bad > 0)) then {		//less than x AND more than 0 ?
			if (random 100 < 60) then { 				//60%
				[] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_reinforcements_radio.sqf"
			};
		};
	};
sleep (300 + random 600);	//sleep loop, long random!  5-15min
};









sleep 1;
//hint "reinforcements.sqf -END-";


/*
/////////////////////////////////////////////////////////
if (VQI_DARK_ENEMY == 1) then { // // CSAT - RED - OPFOR
	
	trgQRF = createTrigger ["EmptyDetector", getPos player];
	sleep 2;

	trgQRF setTriggerArea [250, 250, 0, false];
	trgQRF setTriggerActivation ["EAST", "PRESENT", true];
	trgQRF setTriggerTimeout [3, 5, 7, true];
	trgQRF setTriggerStatements ["(_onAlertX > 2);", 
	"[] execVM 'test_dark_reinforcements_radio.sqf';", "hint 'X';"];

	sleep 1;
	trgQRF attachTo [player,[0,0,0]];
};
*/