//IMS Detect & Display Explosive/Chemical/Info Data
// --- W-I-P --- --- W-I-P --- --- W-I-P ---
if (VQI_HINTS_EOD == 1) then {
waitUntil {sleep 5; ("VQI_BombBuddy_1" in (assignedItems player + UniformItems player + VestItems player + BackpackItems player))};
hint "IMS: BombBuddy 1 \n ON: Automatic Detection \n NOT in Backpack or Uniform";};

private ["display","_expM","_rngM","_expT","_rngT","_rngI","_imsX","imsThreat"];

while {true} do {
	
	if ("VQI_BombBuddy_1" in (assignedItems player + VestItems player)) then {

				
		
		//"VQI_BombBuddy_1"
		while {("VQI_BombBuddy_1" in (assignedItems player + VestItems player))} do {
			
	
			_expM = getPos player nearestObject "MineBase";
			_rngM = round (player distance getPos _expM);


			_expT = getPos player nearestObject "TimeBombCore";
			_rngT = round (player distance getPos _expT);

			_rngI = round (player distance getPos VQI_EOD_1);
			//_rngF = round (player distance getPos _exp2); //temp HotFix?

			_imsX = [_rngM,_rngT,_rngI] call BIS_fnc_lowestNum;


			if  (_imsX > 50) then { imsThreat = 51; };
			if ((_imsX <= 50) && (_imsX >= 40)) then { imsThreat = 50; };
			if ((_imsX <= 40) && (_imsX >= 30)) then { imsThreat = 40; };
			if ((_imsX <= 30) && (_imsX >= 20)) then { imsThreat = 30; };
			if ((_imsX <= 20) && (_imsX >= 15)) then { imsThreat = 20; };
			if ((_imsX <= 15) && (_imsX >= 10)) then { imsThreat = 15; };
			if ((_imsX <= 10) && (_imsX >= 5))  then { imsThreat = 10; };
			if ((_imsX <= 5)  && (_imsX >= 0))  then { imsThreat = 5; };

			if (imsThreat == 50) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1a", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1a";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_30"; sleep 10;
			};
			
			
			if (imsThreat == 40) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1b", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1b";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_30"; sleep 5;
			};
			
			if (imsThreat == 30) then {  
			disableSerialization;
				33 cutRsc ["VQI_IMS_1c", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1c";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_30"; sleep 5;
			};
			
			if (imsThreat == 20) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1d", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1d";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_20"; sleep 3;
			};
			
			if (imsThreat == 15) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1e", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1e";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_20"; sleep 3;
			};
			
			if (imsThreat == 10) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1f", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1f";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_10"; sleep 1;
			};
			
			if (imsThreat == 5) then { 
			disableSerialization;
				33 cutRsc ["VQI_IMS_1g", "PLAIN"];
				_display = uiNamespace getVariable "VQI_IMS_1g";
				(_display displayCtrl 1000) ctrlSetText format["<r%1m",_imsX];
				playSound "IMS_Gen_Beep_10"; sleep 0.3;
			};
			
		sleep 0.1;
		//hint "test_ims";
		};

	} else {
	33 cutText ["","PLAIN"]; 
	};
	
sleep 5;
//hint "test_ims.sqf";
};

/*
// Sound????
while (_imsX < 20) do {
	//if (_imsX < 50) then {playSound "IMS_Gen_D40"; sleep 30;};
	playSound "IMS_Gen_D40"; sleep 30;
sleep 2;
};
*/




/* NOTES:
=======================================================================
ClaymoreDirectionalMine_Remote_Ammo
player globalChat format["%1 TEST %2",_rngM,_rngT];

DOES NOT Detect IF just 1 Explosive Type!?? Why?
*/