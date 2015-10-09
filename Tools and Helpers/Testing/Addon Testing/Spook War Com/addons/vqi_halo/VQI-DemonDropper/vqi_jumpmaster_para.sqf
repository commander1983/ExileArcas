//
//

JumpMaster setGroupID ["JumpMaster"];

if (!isNil "VQIHALO2") then {

		if ((getPosASL VQIHALO2 select 2) < 5555) then { //

		execVM "\vqi_halo\VQI-DemonDropper\VQI_HALO\vqi_fnc_parasystem.sqf"; //set-up as function?
		sleep 1;
		//holster weapon
		player action ["SwitchWeapon", player, player, 100];

	} else {
		JumpMaster SideChat "Flight Plan Too High! Gear-Up for HALO."; //how JumpMaster that says it?
	};

} else {
	JumpMaster sideChat "File a Flight Plan First.";
};



//