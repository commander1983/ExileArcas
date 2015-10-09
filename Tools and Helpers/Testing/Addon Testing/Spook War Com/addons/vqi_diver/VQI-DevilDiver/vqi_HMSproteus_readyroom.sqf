// HMS Proteus - Prep Ready Room & LOC
//
//hint "HMS Proteus: Ready Room";

//Main Table
LOCTABLE1 = "Land_WoodenTable_large_F" createVehicle (position DDSLC); //LOCTABLE1 setDir random 360;
LOCTABLE1 attachTo [DDSLC,[2.7,-0.5,0.1]];
LOCTABLE1 setDir -90;
//AuX Table
LOCTABLE2 = "Land_WoodenTable_large_F" createVehicle (position DDSLC);
LOCTABLE2 attachTo [LOCTABLE1,[-0.01,-2,0]];
//Laptop 1
LOCLAPTOP1 = "Land_Laptop_Unfolded_F" createVehicle (position DDSLC);
LOCLAPTOP1 attachTo [LOCTABLE1,[0.4,0.8,0.57]];
LOCLAPTOP1 setDir 90;
//Laptop 2
LOCLAPTOP2 = "Land_Laptop_Device_F" createVehicle (position DDSLC);
publicVariable "LOCLAPTOP2"; //SUB Transport for MP W-I-P
LOCLAPTOP2 attachTo [LOCTABLE1,[0.4,0,0.57]];
LOCLAPTOP2 setDir 90;
//Laptop 3
LOCLAPTOP3 = "Land_Laptop_F" createVehicle (position DDSLC);
LOCLAPTOP3 attachTo [LOCTABLE1,[-0.4,-2.4,0.44]];
LOCLAPTOP3 setDir 100;
//AmmoBox
LOCAMMOBOX = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX attachTo [LOCTABLE1,[0.4,-2.7,0.53]];
LOCAMMOBOX setDir 95;
//Map Sea
LOCMAP1 = "Land_Map_blank_F" createVehicle (position DDSLC);
LOCMAP1 attachTo [LOCTABLE1,[0.3,-1,0.43]];
LOCMAP1 setDir 10;
//Map Altis
LOCMAP2 = "Land_Map_blank_F" createVehicle (position DDSLC);
LOCMAP2 attachTo [LOCTABLE1,[0,-2.7,0.43]];
LOCMAP2 setDir 90;
//Map Sea
LOCMAP3 = "Land_Map_altis_F" createVehicle (position DDSLC);
LOCMAP3 attachTo [LOCTABLE1,[-0.2,0,0.43]];
LOCMAP3 setDir -180;
//Photos Pouch
LOCMAP4 = "Land_FilePhotos_F" createVehicle (position DDSLC);
LOCMAP4 attachTo [LOCTABLE1,[-0.48,-1.02,0.43]];
LOCMAP4 setDir 90;
//Top Secret
LOCDOC1 = "Land_Document_01_F" createVehicle (position DDSLC);
LOCDOC1 attachTo [LOCTABLE1,[0.4,0.4,0.43]];
LOCDOC1 setDir -90;
//TSResearch
LOCDOC3 = "Land_File_research_F" createVehicle (position DDSLC);
LOCDOC3 attachTo [LOCTABLE1,[-0.4,-2,0.43]];
LOCDOC3 setDir 90;
//Documents1
LOCDOC2 = "Land_File2_F" createVehicle (position DDSLC);
LOCDOC2 attachTo [LOCTABLE1,[0.3,-0.9,0.43]];
LOCDOC2 setDir 120;
//Documents2
LOCDOC5 = "Land_File2_F" createVehicle (position DDSLC);
LOCDOC5 attachTo [LOCTABLE1,[0.3,-1.1,0.43]];
LOCDOC5 setDir 90;
//Files (sm)
LOCDOC4 = "Land_File1_F" createVehicle (position DDSLC);
LOCDOC4 attachTo [LOCTABLE1,[0.4,-0.45,0.43]];
LOCDOC4 setDir 93;
//.45 Pistol
LOCGUN1 = "Weapon_hgun_Pistol_heavy_02_F" createVehicle (position DDSLC);
LOCGUN1 attachTo [LOCTABLE1,[0.35,-0.8,0.42]];
LOCGUN1 setDir 180;
//SMG1
LOCSMG1 = "Weapon_srifle_EBR_F" createVehicle (position DDSLC);
LOCSMG1 attachTo [LOCTABLE1,[0.35,-2,0.45]];	//1.07
LOCSMG1 setDir 90;
//SMG2
LOCMK20 = "Weapon_SMG_02_F" createVehicle (position DDSLC);
LOCMK20 attachTo [LOCTABLE1,[-0.2,0,0.45]];	//1.07
LOCMK20 setDir 75;
//Sniper Rifle
LOCM320 = "Weapon_srifle_LRR_F" createVehicle (position DDSLC);
LOCM320 attachTo [DDSLC,[4.5,2.9,1.23]];
LOCM320 setVectorDirAndUp [[0,0,1],[0,1,0]];
//MXC
LOCMXC = "Weapon_arifle_MXC_F" createVehicle (position DDSLC);
LOCMXC attachTo [DDSLC,[2.1,2.5,0.38]];
LOCMXC setDir 10;
//Magazine
LOCMag1 = "Land_Magazine_rifle_F" createVehicle (position DDSLC);
LOCMag1 attachTo [DDSLC,[2.7,2.15,0.48]];
LOCMag1 setDir 10;
//Magazine
LOCMag2 = "Land_Magazine_rifle_F" createVehicle (position DDSLC);
LOCMag2 attachTo [DDSLC,[2.55,2.15,0.48]];
LOCMag2 setDir 40;

//----------------

//Shelves
LOCRACK1 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK1 attachTo [DDSLC,[0.5,2.4,-0.5]];
LOCRACK1 setDir 0;
//Shelves
LOCRACK2 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK2 attachTo [DDSLC,[1.26,2.4,-0.5]];
LOCRACK2 setDir 0;
//Shelves
LOCRACK3 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK3 attachTo [DDSLC,[2.02,2.4,-0.5]];
LOCRACK3 setDir 0;
//ShelvesW
LOCRACK4 = "Land_ShelvesWooden_F" createVehicle (position DDSLC);
LOCRACK4 attachTo [DDSLC,[2.9,2.3,0]];
LOCRACK4 setDir 90;
//Shelves
LOCRACK5 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK5 attachTo [DDSLC,[3.78,2.4,-0.5]];
LOCRACK5 setDir 0;
//Shelves
LOCRACK6 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK6 attachTo [DDSLC,[4.54,2.4,-0.5]];
LOCRACK6 setDir 0;
//Shelves
LOCRACK7 = "Land_Metal_rack_Tall_F" createVehicle (position DDSLC);
LOCRACK7 attachTo [DDSLC,[5.3,2.4,-0.5]];
LOCRACK7 setDir 0;
//ShelvesW-LOC
LOCRACKL = "Land_ShelvesWooden_blue_F" createVehicle (position DDSLC);
LOCRACKL attachTo [DDSLC,[-1,2.3,-1.25]];
LOCRACKL setDir 90;
//Laptop 2LOC
LOCLAPTOPL = "Land_Laptop_Device_F" createVehicle (position DDSLC);
LOCLAPTOPL attachTo [DDSLC,[-1,2.3,-0.64]];
LOCLAPTOPL setDir 180;

//----------------

//BDUs Flippers
LOCBDU1 = "Item_U_B_Survival_Uniform" createVehicle (position DDSLC);
LOCBDU1 attachTo [DDSLC,[0.4,2.3,0.65]];
LOCBDU1 setDir 0;
//BDUs Flippers
LOCBDU2 = "Item_U_B_Survival_Uniform" createVehicle (position DDSLC);
LOCBDU2 attachTo [DDSLC,[0.95,2.3,0.65]];
LOCBDU2 setDir 0;
//BDUs Flippers
LOCBDU3 = "Item_U_B_Survival_Uniform" createVehicle (position DDSLC);
LOCBDU3 attachTo [DDSLC,[1.3,2.3,0.65]];
LOCBDU3 setDir 0;

//----------------

//Crate SCUBA
LOCCRATE1 = "Box_NATO_WpsSpecial_F" createVehicle (position DDSLC);
LOCCRATE1 attachTo [DDSLC,[0.2,1,-0.1]];
LOCCRATE1 setDir 90;
clearWeaponCargoGlobal LOCCRATE1;
clearMagazineCargoGlobal LOCCRATE1;
clearItemCargoGlobal LOCCRATE1;
LOCCRATE1 additemCargoGlobal ["V_RebreatherB",6];
LOCCRATE1 additemCargoGlobal ["U_B_Wetsuit",6];
LOCCRATE1 additemCargoGlobal ["G_Diving",6];
LOCCRATE1 additemCargoGlobal ["U_B_Survival_Uniform",6];
//Crate1
LOCCRATE2 = "Box_NATO_WpsSpecial_F" createVehicle (position DDSLC);
LOCCRATE2 attachTo [DDSLC,[5.4,1,-0.1]];
LOCCRATE2 setDir -90;

//------------------

//AmmoBox1
LOCAMMOBOX1 = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX1 attachTo [DDSLC,[5.5,2.4,1.23]];
LOCAMMOBOX1 setDir -90;
//AmmoBox2
LOCAMMOBOX2 = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX2 attachTo [DDSLC,[4,2.4,0.85]];
LOCAMMOBOX2 setDir -90;
//AmmoBox3
LOCAMMOBOX3 = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX3 attachTo [DDSLC,[3.7,2.4,0.85]];
LOCAMMOBOX3 setDir -90;
//AmmoBox4
LOCAMMOBOX4 = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX4 attachTo [DDSLC,[0.6,2.4,0.47]];
LOCAMMOBOX4 setDir -90;
//AmmoBox5
LOCAMMOBOX5 = "Land_Ammobox_Rounds_F" createVehicle (position DDSLC);
LOCAMMOBOX5 attachTo [DDSLC,[0.3,2.4,0.85]];
LOCAMMOBOX5 setDir -90;

//------------------

//Fire Extinguisher
LOCFIREX = "Land_FireExtinguisher_F" createVehicle (position DDSLC);
LOCFIREX attachTo [DDSLC,[0,2.5,0]];
LOCFIREX setDir -90;
//Vest Re-breather
//LOCVRB = "Vest_V_RebreatherB" createVehicle (position DDSLC);
//LOCVRB attachTo [DDSLC,[0.2,-0.5,0.2]];
//LOCVRB setDir 180;
//TV
LOCTV1 = "Land_FlatTV_01_F" createVehicle (position DDSLC);
LOCTV1 attachTo [DDSLC,[2.9,2.5,0.71]];
LOCTV1 setDir 0;


[[LOCLAPTOP2, ["HMS Proteus: Request Transport - Deep", "execVM 'vqi_diver\VQI-DevilDiver\vqi_request_subtransport_deep.sqf'; [LOCLAPTOP2, 2]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["HMS Proteus: Request Transport - Shallow", "execVM 'vqi_diver\VQI-DevilDiver\vqi_request_subtransport_shallow.sqf'; [LOCLAPTOP2, 2]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["Sub/Ops Desk: Disembark", "execVM 'vqi_diver\VQI-DevilDiver\vqi_opsdesk_return.sqf'; [LOCLAPTOP2, 2]"]], "addAction", true, true] call BIS_fnc_MP;
sleep 1;
[[LOCLAPTOP2, ["SDV L - Loadout: Standard", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_standard.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV R - Loadout: Standard", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_standard.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV L - Loadout: Demolition", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_demo.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV R - Loadout: Demolition", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_demo.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV L - Loadout: Explosives", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_explosives.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV R - Loadout: Explosives", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_explosives.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV L - Loadout: Anti-Vehicle", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_antivehicle.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV R - Loadout: Anti-Vehicle", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_antivehicle.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV L - Loadout: Scout/Sniper", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_scoutsniper.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCLAPTOP2, ["SDV R - Loadout: Scout/Sniper", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_scoutsniper.sqf'; [LOCLAPTOP2, 1]"]], "addAction", true, true] call BIS_fnc_MP;
/*
publicVariable "LOCLAPTOP2"; //SUB Transport for MP W-I-P
*/