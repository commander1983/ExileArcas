//
//

CrewMaster setGroupID ["CrewMaster"];

if (!isNil "VQIHALO2") then {

	if ((getPosASL VQIHALO2 select 2) < 5555) then { 	//under 18,000'
		
		if ("B_Parachute" == Backpack player) then {		// parachute
		33 cutText ["", "BLACK IN", 15];
		
		//Aircraft supported: MC130 ONLY
		if (!isNull(VQI_HALO_C130))	then { player switchCamera "INTERNAL"; player attachTo [VQIHALO2,[0,13,-4.2]]; };		// 2

		execVM "\vqi_halo\VQI-DemonDropper\vqi_efx_para.sqf";
		sleep 1;
		
		detach player;
		sleep 3;
		
		// W-I-P Visual Range, Better Immersion? FPS Lag???
		setViewDistance 9000;
		

		} else {
			CrewMaster sideChat "Forget something? Missing your parachute, pal...";
		};
		
	} else {
		CrewMaster sideChat "Flight Plan Too High! Gear-Up for HALO.";
	};
} else {
	CrewMaster sideChat "What? Go talk to the JumpMaster...";
};
		


		
//