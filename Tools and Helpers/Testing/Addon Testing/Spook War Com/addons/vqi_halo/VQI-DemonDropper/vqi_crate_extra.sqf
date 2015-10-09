// BlackOps / Extra Crates / etc
////////////////////////////////////////////////
//hint "Xtra Crate";

sleep 10;

_start0 = [0,0,0];

if (isServer) then {


	if (VQI_XTRACRATE_GEN == 1) then {
		//BlackOps Crate
		if (!isNull(VQI_HALO_XHR1)) then {
			_sofCrate = "B_CargoNet_01_ammo_F" createVehicle _start0;
			_sofCrate attachTo [VQI_HALO_XHR1,[3,-10,-1]]; 	//
			_sofCrate allowDamage false;
		};
		
		
		if (!isNull(VQI_HALO_C130)) then {
			_sofCrate = "B_CargoNet_01_ammo_F" createVehicle _start0;
			_sofCrate attachTo [VQI_HALO_C130,[3,-2,-4.7]]; 	//
			_sofCrate allowDamage false;
		};
		
		
		if (!isNull(VQI_HALO_C17)) then {
			_sofCrate = "B_CargoNet_01_ammo_F" createVehicle _start0;
			_sofCrate attachTo [VQI_HALO_C17,[3, -30, -2.6]];
			_sofCrate allowDamage false;
		};

	
	
	

		ClearWeaponCargoGlobal _sofCrate; 
		ClearMagazineCargoGlobal _sofCrate;
		ClearItemCargoGlobal _sofCrate;
		ClearBackpackCargoGlobal _sofCrate;

		sleep 3;

		_sofCrate addItemCargoGlobal ["U_B_GhillieSuit",2];

		_sofCrate addItemCargoGlobal ["U_B_CombatUniform_mcam",4];
		_sofCrate addItemCargoGlobal ["V_PlateCarrier3_rgr",4];
		_sofCrate addItemCargoGlobal ["Vest_VQI_Rhino",2];
		_sofCrate addItemCargoGlobal ["V_Tacvest_blk",4];
		_sofCrate addItemCargoGlobal ["H_Booniehat_khk",6];

		_sofCrate addBackpackCargoGlobal ["B_Carryall_khk",6];
		_sofCrate addBackpackCargoGlobal ["B_Bergen_blk",6];

		_sofCrate addItemCargoGlobal ["SatchelCharge_Remote_Mag",4];
		_sofCrate addItemCargoGlobal ["DemoCharge_Remote_Mag",12];
		_sofCrate addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",24];
		_sofCrate addItemCargoGlobal ["APERSMine_Range_Mag",24];
		_sofCrate addItemCargoGlobal ["APERSBoundingMine_Range_Mag",24];
		_sofCrate addItemCargoGlobal ["APERSTripMine_Wire_Mag",24];
		_sofCrate addItemCargoGlobal ["SLAMDirectionalMine_Wire_Mag",12];
		_sofCrate addItemCargoGlobal ["ATMine_Range_Mag",6];
		_sofCrate addItemCargoGlobal ["HandGrenade",96];

		_sofCrate addItemCargoGlobal ["SmokeShell",48];
		_sofCrate addItemCargoGlobal ["SmokeShellRed",24];
		_sofCrate addItemCargoGlobal ["SmokeShellBlue",24];
		_sofCrate addItemCargoGlobal ["SmokeShellGreen",24];
		_sofCrate addItemCargoGlobal ["SmokeShellYellow",24];
		_sofCrate addItemCargoGlobal ["SmokeShellPurple",24];
		_sofCrate addItemCargoGlobal ["SmokeShellOrange",24];
		_sofCrate addItemCargoGlobal ["Chemlight_Red",48];
		_sofCrate addItemCargoGlobal ["Chemlight_Blue",48];
		_sofCrate addItemCargoGlobal ["Chemlight_Green",48];
		_sofCrate addItemCargoGlobal ["Chemlight_Yellow",48];
		sleep 1;
		_sofCrate addItemCargoGlobal ["arifle_MX_Black_F",4];
		_sofCrate addItemCargoGlobal ["arifle_MX_GL_Black_F",4];
		_sofCrate addItemCargoGlobal ["arifle_MX_SW_Black_F",2];
		_sofCrate addItemCargoGlobal ["arifle_MXC_Black_F",4];
		_sofCrate addItemCargoGlobal ["arifle_MXM_Black_F",4];
		_sofCrate addItemCargoGlobal ["srifle_EBR_F",2];
		_sofCrate addItemCargoGlobal ["srifle_LRR_F",1];
		_sofCrate addItemCargoGlobal ["hgun_PDW2000_F",6]; 
		_sofCrate addItemCargoGlobal ["hgun_ACPC2_F",6];

		_sofCrate addItemCargoGlobal ["launch_NLAW_F",2];
		_sofCrate addItemCargoGlobal ["NLAW_F",2];

		_sofCrate addItemCargoGlobal ["30Rnd_65x39_caseless_mag",96];
		_sofCrate addItemCargoGlobal ["100Rnd_65x39_caseless_mag",96];
		_sofCrate addItemCargoGlobal ["20Rnd_762x51_Mag",96];
		_sofCrate addItemCargoGlobal ["7Rnd_408_Mag",24];
		_sofCrate addItemCargoGlobal ["30Rnd_9x21_Mag",96];
		_sofCrate addItemCargoGlobal ["9Rnd_45ACP_Mag",36];
		_sofCrate addItemCargoGlobal ["3Rnd_HE_Grenade_shell",96];
		_sofCrate addItemCargoGlobal ["3Rnd_UGL_FlareWhite_F",96];

		_sofCrate addItemCargoGlobal ["muzzle_snds_H",6];
		_sofCrate addItemCargoGlobal ["muzzle_snds_L",6];
		_sofCrate addItemCargoGlobal ["muzzle_snds_ACP",6];

		_sofCrate additemCargoGlobal ["acc_pointer_IR",6];
		_sofCrate additemCargoGlobal ["acc_flashlight",6];
		_sofCrate additemCargoGlobal ["optic_Hamr",6];
		_sofCrate addItemCargoGlobal ["optic_ACO",6];
		_sofCrate addItemCargoGlobal ["optic_SOS",2];
		_sofCrate addItemCargoGlobal ["optic_DMS",6];
		_sofCrate addItemCargoGlobal ["optic_TWS",1];
		_sofCrate addItemCargoGlobal ["optic_NVS",2];
		_sofCrate addItemCargoGlobal ["optic_MRCO",6];
		sleep 1;
		_sofCrate additemCargoGlobal ["itemMap",6];
		_sofCrate additemCargoGlobal ["itemWatch",6];
		_sofCrate additemCargoGlobal ["itemCompass",6];
		_sofCrate additemCargoGlobal ["itemRadio",6];
		_sofCrate additemCargoGlobal ["itemGPS",16];

		_sofCrate additemCargoGlobal ["MineDetector",6];
		_sofCrate additemCargoGlobal ["NVGoggles_OPFOR",6];
		_sofCrate additemCargoGlobal ["LaserDesignator",1];
		_sofCrate addItemCargoGlobal ["LaserBatteries",1];
		_sofCrate additemCargoGlobal ["Binocular",4];

		_sofCrate additemCargoGlobal ["FirstAidKit",48];
		_sofCrate additemCargoGlobal ["MedKit",4];
		_sofCrate additemCargoGlobal ["ToolKit",4];
	};
	
	
	
	sleep 5;
	
	
	if (VQI_XTRACRATE_GEN == 1) then {
		//Virtual Arsenal Crate XHR-1
		if (!isNull(VQI_HALO_XHR1)) then {
			vaCrate = "Land_Pallet_MilBoxes_F" createVehicle _start0;
			vaCrate attachTo [VQI_HALO_XHR1,[-3, -10, -1.4]]; 	//
			vaCrate allowDamage false;
			//["AmmoboxInit",vaCrate] spawn BIS_fnc_arsenal;
			0 = ["AmmoboxInit",[vaCrate,true]] spawn BIS_fnc_arsenal;
		};
		
		
		//Virtual Arsenal Crate C-130
		if (!isNull(VQI_HALO_C130)) then {
			vaCrate = "Land_Pallet_MilBoxes_F" createVehicle _start0;
			vaCrate attachTo [VQI_HALO_C130,[-3, -2, -5.1]]; 	//
			vaCrate allowDamage false;
			//["AmmoboxInit",vaCrate] spawn BIS_fnc_arsenal;
			0 = ["AmmoboxInit",[vaCrate,true]] spawn BIS_fnc_arsenal;
		};
		
		
		//Virtual Arsenal Crate C-17
		if (!isNull(VQI_HALO_C17)) then {
			vaCrate = "Land_Pallet_MilBoxes_F" createVehicle _start0;
			vaCrate attachTo [VQI_HALO_C17,[-3, -30, -3]]; 	//
			vaCrate allowDamage false;
			//["AmmoboxInit",vaCrate] spawn BIS_fnc_arsenal;
			0 = ["AmmoboxInit",[vaCrate,true]] spawn BIS_fnc_arsenal;
		};
	};
	
};

/*
"arifle_MX_Black_F"
"arifle_MX_GL_Black_F"
"arifle_MX_SW_Black_F"
"arifle_MXC_Black_F"
"arifle_MXM_Black_F"
*/