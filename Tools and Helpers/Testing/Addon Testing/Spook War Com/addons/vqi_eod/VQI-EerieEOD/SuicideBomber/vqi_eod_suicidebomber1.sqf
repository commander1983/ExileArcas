//Creates Suicide Bomber Terrorists - Randomized
//
private ["_randomCIV","_grp","_rCig"];


while {true} do {

	sleep 1800 + random 3600; // 30-90 minutes
	if (random 1 <= 0.01) then { // 1% probability

		if (VQI_EOD_BOMBERHINTS == 1) then {
		hint "WARNING: Extremists in Area. \n Radio Chatter indicates strong probability of Suicide Bombers.";};
		sleep 5 + random 666;

		//find & move out to 2500m from Player
		//_badDudePos = [getPos player, random 100, random 360] call BIS_fnc_relPos;


		//create CIV Terrorist
		//createCenter civilian;
		_grp = createGroup Civilian;
		_randomCIV = ["C_man_hunter_1_F","C_man_hunter_1_F","C_man_hunter_1_F","C_man_hunter_1_F","C_man_hunter_1_F","C_man_hunter_1_F","C_man_hunter_1_F",
					"C_man_hunter_1_F","C_man_w_worker_F","C_Orestes","C_man_shorts_4_F_euro","C_man_p_beggar_F_asia","C_man_polo_1_F_asia","C_man_1"] call BIS_fnc_selectRandom;
		Terrorist1 = _grp createUnit [_randomCIV, position player, [], 2500, "NONE"];
		sleep 1;
		
		_rCig = ["VQI_Cig_Camel","VQI_Cig_Marlboro","VQI_Cig_LuckyStrike","VQI_Cig_Mild7","VQI_Cig_PaulMall","VQI_Cig_Camel"] call BIS_fnc_selectRandom;
		Terrorist1 addItem "VQI_Cellphone1_silver";
		Terrorist1 addItem "VQI_EXP_PipeBomb";
		Terrorist1 addItem "VQI_EXP_Clacker";
		Terrorist1 addItem _rCig;
		
		
		
		//Create Trigger
		trgBomb1 = createTrigger ["EmptyDetector", getPos Terrorist1];
		sleep 2; publicVariable "trgBomb1"; //use publicVariableClient?

		trgBomb1 setTriggerArea [25, 25, 0, false];
		trgBomb1 setTriggerActivation ["WEST", "PRESENT", false];
		trgBomb1 setTriggerTimeout [1, 10, 20, false];
		trgBomb1 setTriggerStatements ["({_x in thisList} count (playableUnits + switchableUnits) > 0);", 
		"[] execVM 'vqi_eod\VQI-EerieEOD\SuicideBomber\vqi_eod_bomb1.sqf';", "hint 'X';"];

		sleep 1;
		trgBomb1 attachTo [Terrorist1,[0,0,0]];
		sleep 1;

		if (alive Terrorist1) then {
			//Bad guy will seek player randomly
			while {alive Terrorist1} do {
				(Terrorist1) doMove (getPos player);
				sleep 5 + random 666;
			};
		};
	};
};