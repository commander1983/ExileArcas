// ADD Random Items/Intel/Misc
// 

if (VQI_DARK_HINTS == 1) then {
hint "items_x.sqf"; };
sleep 1;




_unitX = _this select 0;
_lootX = _unitX getVariable "VQI_itemsX";

if (isNil "_lootX") then { _lootX = 0; };



if (_lootX == 0) then {

	if (random 100 < 20) then {	//money small
		_moneyNum1 = 1 + random 5;
		for "_i" from 0 to _moneyNum1 do {
			_rMoney1 = ["VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_5","VQI_Money_US_10","VQI_Money_US_20"] call BIS_fnc_selectRandom;
			_unitX addItem _rMoney1;
		};
	};

	if (random 100 < 5) then {		//money large
		_moneyNum2 = 2 + random 10;
		for "_i" from 0 to _moneyNum2 do {
			_rMoney = ["VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1",
					  "VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1",
					  "VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5",
					  "VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_20","VQI_Money_US_20","VQI_Money_US_20","VQI_Money_US_20",
					  "VQI_Money_US_50","VQI_Money_US_50","VQI_Money_US_100","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_20"] call BIS_fnc_selectRandom;
			_unitX addItem _rMoney;
		};
	};

	if (random 100 < 10) then {	//cellphone
		_unitX addItem "VQI_Cellphone1_silver";
	};

	if (random 100 < 30) then {	//cigarettes
		_rCig = ["VQI_Cig_Camel","VQI_Cig_Marlboro","VQI_Cig_LuckyStrike","VQI_Cig_Mild7","VQI_Cig_PaulMall"] call BIS_fnc_selectRandom;
		_unitX addItem _rCig;
	};

	if (random 100 < 40) then {	//MRE
		_rMRE = ["VQI_MRE_Meatballs","VQI_MRE_PorkChops"] call BIS_fnc_selectRandom;
		_unitX addItem _rMRE;
	};

	if (random 100 < 5) then {		//men's mags
		_rMensmag = ["VQI_Magazine_Playboy1","VQI_Magazine_Playboy1"] call BIS_fnc_selectRandom;
		_unitX addItem _rMensmag;
	};

sleep 1;

	if (random 100 < 10) then {	//comics
		_rComic = ["VQI_Comic_Superman1","VQI_Comic_Superman1"] call BIS_fnc_selectRandom;
		_unitX addItem _rComic;
	};

	if (random 100 < 20) then {	//insect repellent
		_rBugspray = ["VQI_BugSpray_Off","VQI_BugSpray_Off"] call BIS_fnc_selectRandom;
		_unitX addItem _rBugspray;
	};

	if (random 100 < 20) then {	//gun cleaning kit
		_rGunkit = ["VQI_Gun_CleaningKit","VQI_Gun_CleaningKit"] call BIS_fnc_selectRandom;
		_unitX addItem _rGunkit;
	};

	if (random 100 < 10) then {	//notebook/Intel
		_rNotebook1 = ["VQI_Notebook_Red","VQI_Notebook_Blue","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Green","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Purple",
					 "VQI_Notebook_Red","VQI_Notebook_Blue","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Green","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Purple",
					 "VQI_Notebook_Blue","VQI_Notebook_Teal","VQI_Notebook_Orange","VQI_Notebook_Freq_Arty","VQI_Notebook_Freq_QRF_HeliCargo","VQI_Notebook_Freq_QRF_ParaTroops"] call BIS_fnc_selectRandom;
		_unitX addItem _rNotebook1;
	};

	if (random 100 < 30) then {	//FM
		_rFM1 = ["VQI_FM531_BoobyTraps","VQI_FM531_BoobyTraps"] call BIS_fnc_selectRandom;
		_unitX addItem _rFM1;
	};
	
	if (random 100 < 5) then {	//EOD
		_rEOD = ["VQI_BombBuddy_1","VQI_TOOLS_ESD_Tweezers_R","VQI_TOOLS_ESD_Tweezers_F","VQI_TOOLS_ESD_Tweezers_C","VQI_TOOLS_DSNIPS","VQI_TOOLS_ESD_DSNIPS","VQI_TOOLS_NNPliers","VQI_TOOLS_Screwdriver_Phillips","VQI_TOOLS_Screwdriver_Flathead","VQI_TOOLS_Ceramic_Knife","VQI_TOOLS_Hex_Keys",
				 "VQI_TOOLS_Alligator_Clips","VQI_TOOLS_Jumper_Wires","VQI_TOOLS_Multi_Tool","VQI_TOOLS_MultiMeter","VQI_TOOLS_Spudger_Set","VQI_TOOLS_Mini_inspection_Mirror","VQI_TOOLS_Fuse_CrimperCutter","VQI_TOOLS_PryBar","VQI_TOOLS_Reamer","VQI_TOOLS_Shock_Initiator","VQI_BombBuddy_1",
				 "VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1","VQI_BombBuddy_1"] call BIS_fnc_selectRandom;
		_unitX addItem _rEOD;
	};

	//////////////////////////////////////  ?
	if (random 100 < 25) then {	//Misc
		_rMisc = ["VQI_Food_JuiceBox1","VQI_Food_JuiceBox2","VQI_Food_JuiceBox3","VQI_Food_JuiceBox4","VQI_Food_JuiceBox5","VQI_Food_JuiceBox6","VQI_Food_JuiceBox7","VQI_Lighter_Blue","VQI_Lighter_Green","VQI_Lighter_Metal","VQI_Matchbook1","VQI_Matchbook2","VQI_Matchbook3","VQI_Matchbook4",
				  "VQI_Medical_Band_Aid","VQI_Radio_Weather","VQI_Schematic1","VQI_Schematic2","VQI_Schematic3","VQI_Schematic_X1"] call BIS_fnc_selectRandom;
		_unitX addItem _rMisc;
	};
};


sleep 1;
_unitX setVariable ["VQI_itemsX", 1, true];




//////////////////////////////////////////
/* NOTES:



*/