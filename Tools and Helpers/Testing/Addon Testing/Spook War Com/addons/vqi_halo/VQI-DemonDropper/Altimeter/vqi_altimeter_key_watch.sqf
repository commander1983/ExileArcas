//
//




while {true} do { 

	if ((inputAction "Watch" > 0) && ("VQI_JumpBuddy_1" in (assignedItems player))) then {
	
		VQIALTIMETER = [] execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter.sqf"; 
		
		if (VQI_JB1WATCH_HALO == 1) then { sleep 2;  terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
		if (VQI_JB1WATCH_HALO == 2) then { sleep 10; terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
		if (VQI_JB1WATCH_HALO == 3) then { sleep 20; terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
		if (VQI_JB1WATCH_HALO == 4) then { sleep 30; terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
		if (VQI_JB1WATCH_HALO == 5) then { sleep 60; terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
		if (VQI_JB1WATCH_HALO == 6) then { sleep 120; terminate VQIALTIMETER; 2 cutText ["","PLAIN"]; };
	};
	
sleep .02;
};	