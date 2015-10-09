// IMS HotFix
//
//hint "IMS START";
private ["_hotfix"];


if (isServer) then {

	if (isNil "VQI_EOD_1") then { //if NOT exist
		//hint "NO Bomb - Set Bomb"; sleep 2;
	
		_hotfix = getPos player nearestObject "Building";
		VQI_EOD_1 = "Land_MultiMeter_F" createVehicle (getPos _hotfix);
		publicVariable "VQI_EOD_1"; VQI_EOD_1 setDir random 359;
		/*
		_mkr1 = createMarker["mkr1", getPos VQI_EOD_1];
		"mkr1" setMarkerShape "ICON";
		"mkr1" setMarkerType "mil_dot";
		"mkr1" setMarkerColor "ColorRed";
		"mkr1" setMarkerText "X";
		"mkr1" setMarkerAlpha 1;
		*/
		} else {
			//hint "Bomb does Exist!";
			sleep 2;
		};


	sleep 1;
	//hint "IMS END";
};