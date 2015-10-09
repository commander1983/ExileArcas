// ADD Random Items/Intel/Misc
// NOTE: Can Not ADD to DeadBodies!?

if (VQI_DARK_HINTS == 1) then {
hint "fnc_Xitems"; };
sleep 1;



if (VQI_DARK_ITEMS_X == 1) then {

	VQI_dark_fnc_Xitems = {
		if (VQI_DARK_HINTS == 1) then { hint "fnc_Xitems -CALL-"; };
		_squadX = _this select 0;
		_squadX addItem "VQI_Dogtags";
		
				
			{
				if (random 100 < 99) then {
					if (VQI_DARK_HINTS == 1) then { hint "70% Hit"; };
				
					if (random 100 < 30) then {	//money small
						_moneyNum1 = 1 + random 5;
						for "_i" from 0 to _moneyNum1 do {
							_rMoney1 = ["VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_5","VQI_Money_US_10","VQI_Money_US_20"] call BIS_fnc_selectRandom;
							_x addItem _rMoney1;
						};
					};
					
					if (random 100 < 10) then {	//money large
						_moneyNum = 2 + random 10;
						for "_i" from 0 to _moneyNum do {
							_rMoney = ["VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1",
									  "VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_1",
									  "VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_5",
									  "VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_20","VQI_Money_US_20","VQI_Money_US_20","VQI_Money_US_20",
									  "VQI_Money_US_50","VQI_Money_US_50","VQI_Money_US_100","VQI_Money_US_1","VQI_Money_US_1","VQI_Money_US_5","VQI_Money_US_5","VQI_Money_US_10","VQI_Money_US_10","VQI_Money_US_20"] call BIS_fnc_selectRandom;
							_x addItem _rMoney;
						};
					};

					if (random 100 < 10) then {	//cellphone
						_x addItem "VQI_Cellphone1_silver";
					};
					
					if (random 100 < 30) then {	//cigarettes
						//_cigNum = 1 + random 3;
						//for "_i" from 1 to _cigNum do {
							_rCig = ["VQI_Cig_Camel","VQI_Cig_Marlboro","VQI_Cig_LuckyStrike","VQI_Cig_Mild7","VQI_Cig_PaulMall"] call BIS_fnc_selectRandom;
							_x addItem _rCig;
						//};
					};
					
					if (random 100 < 40) then {	//MRE
						_rMRE = ["VQI_MRE_Meatballs","VQI_MRE_PorkChops"] call BIS_fnc_selectRandom;
						_x addItem _rMRE;
					};
					
					if (random 100 < 5) then {		//men's mags
						_rMensmag = ["VQI_Magazine_Playboy1","VQI_Magazine_Playboy1"] call BIS_fnc_selectRandom;
						_x addItem _rMensmag;
					};
					
					if (random 100 < 10) then {	//comics
						_rComic = ["VQI_Comic_Superman1","VQI_Comic_Superman1"] call BIS_fnc_selectRandom;
						_x addItem _rComic;
					};
					
					if (random 100 < 20) then {	//insect repellent
						_rBugspray = ["VQI_BugSpray_Off","VQI_BugSpray_Off"] call BIS_fnc_selectRandom;
						_x addItem _rBugspray;
					};
					
					if (random 100 < 20) then {	//gun cleaning kit
						_rGunkit = ["VQI_Gun_CleaningKit","VQI_Gun_CleaningKit"] call BIS_fnc_selectRandom;
						_x addItem _rGunkit;
					};
					
					if (random 100 < 30) then {	//notebook/Intel
						_rNotebook1 = ["VQI_Notebook_Red","VQI_Notebook_Blue","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Green","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Purple",
									 "VQI_Notebook_Red","VQI_Notebook_Blue","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Green","VQI_Notebook_Orange","VQI_Notebook_Pink","VQI_Notebook_Teal","VQI_Notebook_Purple",
									 "VQI_Notebook_Blue","VQI_Notebook_Teal","VQI_Notebook_Orange","VQI_Notebook_Freq_Arty","VQI_Notebook_Freq_QRF_HeliCargo","VQI_Notebook_Freq_QRF_ParaTroops"] call BIS_fnc_selectRandom;
						_x addItem _rNotebook1;
					};
					
					if (random 100 < 30) then {	//FM
						_rFM1 = ["VQI_FM531_BoobyTraps","VQI_FM531_BoobyTraps"] call BIS_fnc_selectRandom;
						_x addItem _rFM1;
					};
					
				};
				
			sleep 1;
			} forEach Units _squadX;

		sleep 1;
		//hint "fnc_Xitems -END-";
	};
};