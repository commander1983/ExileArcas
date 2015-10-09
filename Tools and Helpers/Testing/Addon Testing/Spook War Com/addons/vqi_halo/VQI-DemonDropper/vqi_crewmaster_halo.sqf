//
//

CrewMaster setGroupID ["CrewMaster"];

if (("Helmet_VQI_HALO" == Headgear player) && (("Vest_VQI_Stingray" == Vest player) || ("V_RebreatherB" == Vest player)) && (("Uniform_VQI_Slipstream" == Uniform player) || ("U_B_Wetsuit" == Uniform player)) && ("B_parachute" == Backpack player)) then {
	
	33 cutText ["", "BLACK IN", 15];
	
	
	//Aircraft supported: MC130, C17, IL76, X-HR1:Vampyre		--		setVariable instead?
	if (!isNull(VQI_HALO_XHR1))	then { player switchCamera "INTERNAL"; player attachTo [VQIHALO2,[0,-2,-1]]; };
	if (!isNull(VQI_HALO_C130))	then { player switchCamera "INTERNAL"; player attachTo [VQIHALO2,[0,13,-4.2]]; };		// 2
	if (!isNull(VQI_HALO_C17))		then { player switchCamera "INTERNAL"; player attachTo [VQIHALO2,[0,5,-1]]; };			// 2
	if (!isNull(VQI_HALO_IL76))	then { player switchCamera "EXTERNAL"; player moveInCargo VQIHALO2; };
	

	execVM "\vqi_halo\VQI-DemonDropper\vqi_efx_halo.sqf";
	sleep 1;
	
	detach player;
	sleep 3;
	
	// W-I-P Visual Range, Better Immersion? FPS Lag???
	setViewDistance 9000;
	
	
} else {
	CrewMaster sideChat "Equipment or Paperwork Missing! See the JumpMaster first.";
};
		
		


		
