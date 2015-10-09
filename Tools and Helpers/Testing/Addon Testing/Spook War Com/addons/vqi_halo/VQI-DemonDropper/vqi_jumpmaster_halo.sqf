//
//

JumpMaster setGroupID ["JumpMaster"];

if (!isNil "VQIHALO2") then {

	if (("Helmet_VQI_HALO" == Headgear player) && (("Vest_VQI_Stingray" == Vest player) || ("V_RebreatherB" == Vest player)) && (("Uniform_VQI_Slipstream" == Uniform player) || ("U_B_Wetsuit" == Uniform player))) then {

		execVM "\vqi_halo\VQI-DemonDropper\VQI_HALO\vqi_fnc_halosystem.sqf"; //set-up as function?
		sleep 1;
		//holster weapon
		player action ["SwitchWeapon", player, player, 100];

	} else {
			JumpMaster SideChat "Equipment Check: FAIL. Repack!"; //how JumpMaster that says it?
	};
} else {
	JumpMaster sideChat "File a Flight Plan First.";
};


