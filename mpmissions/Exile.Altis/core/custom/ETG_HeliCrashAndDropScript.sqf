/*///////////////////////////////////////////
//Filename : ETG_HeliCrashAndDropScript.sqf//
//Author : Kellojo///////////////////////////
//Version : 1.3 /////////////////////////////
//Release : 1.10.2015 ///////////////////////
/////////////////////////////////////////////

execVM "ETG_HeliCrashAndDropScript.sqf";

*/

ETG_Cargo_Drop_Mission = 0;

//Do not edit this ;)
if (isServer) then {
	//Check if the script is already running
	if (ETG_Cargo_Drop_Mission != 1) then {
		ETG_Cargo_Drop_Mission = 1;
//Edit below me:

/////////////////
//Configuration//
/////////////////
//Be aware setting this to true and having only 1 weapon for example spawning it is possible that it will not spawn at all since it is possible to get an ammount of 0 and 1
_RandomMagezineAmmount = true;           					//Do you want the ammount of magazines to be random? use(true,false)- the max ammount of magazines will be the ammount you put behind the class name
_RandomItemAmmount = false;           						//Do you want the ammount of items to be random? use(true,false)- the max ammount of items will be the ammount you put behind the class name
_RandomWeaponAmmount = false;           					//Do you want the ammount of weapons to be random? use(true,false)- the max ammount of weapons will be the ammount you put behind the class name
_RandomBackpackAmmount = false;           					//Do you want the ammount of backpacks to be random? use(true,false)- the max ammount of backpack will be the ammount you put behind the class name

_SleepTime = 600;											//Time between every heli crash/supply drop in seconds (integer)
_SleepTimeRandom = true;									//If true will randomize your time between the drops/crashes
_AllowMarkers = true;										//Do you want markers at the helicrashes and supply drops? (true,false)
_MarkerType = "n_service";									//Type of marker? (https://community.bistudio.com/wiki/cfgMarkers) (string)
_LootOnGround = true;										//Do you want to spawn the loot at the heli crash on the ground or inside of the boxes? (true,false)
_FlyHeight = 200;											//Height the heli shoud fly at - altitude (in meters)
_LootSpawnRadius = 20;										//Radius around the crate/crates the loot will spawn in
_CrateSpawnRadius = 30;										//Radius around the crashsite the crates will spawn in
_FireAtCrashSite = true;									//Should fire be around the helicrashsite ? (true/false)
_AI_Crash = true;											//AI at crashes ? (true/false)
_AI_Drop = false;											//AI at supply drops ? (true/false)
_DeletionDelay = 7200;										//Time the helicrashes/supply drops will stay and be deleted after (time in seconds)

//Change this path,if you have moved the script in a special folder of your mission, its the one to the script itself
_ETG_ScriptPath = "core\custom\ETG_HeliCrashAndDropScript.sqf";

//Edit these coordinates, these are the spawn coordinates of the helis/planes choose coodrinates at the corners of the map (use coodrinates according to your map/likings - these are for Altis)
_ETG_StartionPositions = [[29.9291,30692.8,0],[30683.4,30681.3,0],[30628.1,98.2361,0],[6931.06,179.696,0]];

//Edit these coordinates (use coodrinates according to your map/likings - these are for Altis)
_ETG_MapCoordinates = [[19193.8,7735.77,0],[21054.4,6997.43,0],[22069.6,7242.03,0],[21623.3,8313.03,0],[20412.1,7905.03,0],[18614.4,8912.27,0],[19774.6,9192.77,0],[20845.6,9422.27,0],[20730.8,10442.3,0],[19124.4,10314.8,0],[17581.6,9957.77,0],[16574.4,10875.8,0],[18104.4,11538.8,0],[19825.6,11857.5,0],[19111.2,11644.9,0],[18344.5,12643.9,0],[17972.8,13433.8,0],[19366.7,13968.1,0],[20830.3,13944.9,0],[20528.3,13062.1,0],[22084.8,15873.1,0],[22688.9,16802.4,0],[21202,17964,0],[21713.1,16988.3,0],[20365.7,16244.8,0],[20551.5,15594.3,0],[18855.6,15036.8,0],[19064.7,16012.5,0],[18089,15269.1,0],[17299.1,16198.4,0],[18716.2,17150.9,0],[19808.1,17964,0],[21550.5,18916.5,0],[22479.8,18846.8,0],[23316.1,18033.7,0],[23780.8,18823.6,0],[22828.3,20217.5,0],[24454.5,20333.7,0],[25476.7,20937.7,0],[26870.6,22261.9,0],[26104,22982.1,0],[25197.9,22145.7,0],[23896.9,22610.4,0],[23339.4,22052.8,0],[24895.9,21309.4,0],[26475.7,21379.1,0],[23548.5,19450.8,0],[16383.4,18833.7,0],[16345.9,17632.2,0],[15895.3,16581,0],[14919.2,17632.2,0],[15106.9,18458.2,0],[14844.1,20147.7,0],[14618.8,21536.9,0],[13530,21574.4,0],[13642.7,19772.3,0],[13980.6,18833.7,0],[13379.9,17031.5,0],[12929.3,15942.7,0],[11615.3,17031.5,0],[11840.5,18721,0],[11577.7,20297.9,0],[9512.78,21461.8,0],[7785.74,21724.6,0],[6058.69,19922.5,0],[4857.27,18871.2,0],[5570.61,17331.9,0],[6208.87,17782.4,0],[6396.59,18758.6,0],[8011,18721,0],[8949.62,20035.1,0],[9813.14,20072.6,0],[10901.9,21236.5,0],[10601.6,19471.9,0],[10075.9,17932.6,0],[9062.25,18420.7,0],[8011,16806.3,0],[6847.12,17069.1,0],[6734.49,15492.2,0],[5758.33,14365.9,0],[5758.33,12901.6,0],[5195.17,11737.8,0],[4556.91,10986.9,0],[8499.08,11963,0],[10075.9,12263.4,0],[10038.4,13051.8,0],[10864.4,14553.6,0],[10263.7,15229.4,0],[9550.33,16581,0],[8686.8,15755,0],[9625.42,14253.2,0],[8799.44,13089.4,0],[7823.28,14478.5,0],[8461.54,14703.8,0],[8724.35,13952.9,0],[7522.93,15417.1,0],[6847.12,14253.2,0],[6884.67,12451.1,0],[10789.3,16280.6,0],[12629,20485.6,0],[6321.5,21123.9,0],[4707.09,16205.5,0],[4481.82,14853.9,0],[17284.5,15492.2,0],[18485.9,14403.4,0],[19612.2,17294.3,0],[21902.5,19584.6,0],[14994.3,17970.1,0],[11089.7,18120.3,0],[11014.6,15492.2,0],[9174.88,14403.4,0],[8536.63,18908.8,0],[13755.3,19021.4,0],[13830.4,16581,0],[12328.6,15642.4,0],[16834,16280.6,0],[19124.2,16468.4,0],[19049.1,13126.9,0],[19499.6,9785.44,0],[19837.5,8208.57,0],[19236.8,10423.7,0],[19274.3,14591.1,0],[21038.9,16618.5,0],[23592,20297.9,0],[23779.7,21011.2,0],[20550.9,16731.2,0],[19612.2,14290.8,0],[19274.3,10348.6,0],[20363.1,7983.31,0],[14844.1,15942.7,0],[11727.9,14516,0],[8836.98,12526.2,0],[8048.55,10911.8,0],[7973.46,13314.6,0],[7222.57,15229.4,0],[6922.21,18570.9,0],[7447.83,20448.1,0],[7785.74,18345.6,0],[10901.9,18233,0],[13717.8,19246.7,0],[12328.6,20823.5,0],[8724.35,20710.9,0],[6809.58,19434.4,0],[6922.21,16168,0],[6133.78,14778.9,0],[5533.07,15454.7,0],[7447.83,18495.8,0],[10151,17369.4,0],[10488.9,16505.9,0],[7410.29,16881.3,0],[7072.39,17031.5,0],[11164.7,17444.5,0],[13117.1,17707.3,0],[12891.8,19021.4,0],[10789.3,20335.4,0],[9550.33,17932.6,0],[8198.72,15867.6,0],[8912.07,14853.9,0],[9813.14,17144.2,0],[12478.8,17519.6,0],[12854.2,18946.3,0],[9587.87,19622.1,0],[8348.9,15304.5,0],[12551.8,18437.9,0],[15317.2,19269.2,0],[12568.8,7017.64,0],[12286,7707.44,0],[12037.3,8815.64,0],[11890.3,9448.9,0],[10669,9358.44,0],[11211.8,8487.71,0],[11743.3,7843.14,0],[10239.3,8250.23,0],[10047,7436.04,0],[10635.1,7209.88,0],[11731.9,7130.72,0],[10929.1,7831.83,0],[10284.5,9087.04,0],[10567.2,10014.3,0],[11324.9,9528.06,0],[11505.8,8928.72,0],[11290.9,11868.9,0],[11698,12423,0],[12116.4,12886.6,0],[9337.44,11615,0],[8679.19,11303.6,0],[19719.6,7174.37,0],[20715.9,7539.08,0],[24933.8,22662.8,0],[20529.5,18532.7,0],[20419.9,17582.4,0],[18300,17545.9,0],[18153.8,16376.3,0],[12009,16371.1,0],[14069.5,17566.1,0],[14007.7,20656.9,0],[12009,19503,0],[9907.35,18452.2,0],[4158.6,18514,0],[4055.57,20162.4,0],[5477.31,19358.8,0],[5456.7,18225.5,0],[4920.98,17875.2,0],[6095.45,16123.8,0],[4158.6,21316.2,0],[5889.4,22099.2,0],[4900.37,12291.3,0],[6651.78,11425.9,0],[7702.63,12126.5,0],[7888.07,12559.2,0],[4920.98,14042.7,0],[5024,13733.6,0],[4735.53,12621,0],[4137.99,12147.1,0],[4694.32,11487.7,0],[5044.61,11116.8,0],[5910.01,11735,0],[5250.65,12023.4,0],[5436.1,13507,0],[5415.49,14269.4,0],[5559.73,12435.5,0],[6198.48,12105.9,0],[19487.2,9959.23,0.00172424],[20029,6270.2,0.00136566],[21022.8,14753.6,0.00121915],[24141.9,15700.5,0.00172424],[20461,20045.6,0.00181961],[23553.5,21386.1,0.00135422],[27249.2,23637.4,0.00141239],[17332.7,17437.8,0.00151825],[15780,20504,0.00149345],[14547,16175.9,0.00143814],[12906.9,18913.8,0.00145149],[11958,22214.3,0.00166321],[11282.4,17642.1,0.00111389],[11811.2,15008.6,0.00144577],[11376.6,12691.5,0.00159264],[10922.7,10732.9,0.00160599],[9746.36,8870.44,0.00159073],[11027.9,7351.04,0.00128174],[13336.9,6821.83,0.00139618],[7446.36,11281.5,0.00148106],[12685.7,9016.04,0.00205612],[7118.35,13306.5,0.00125122],[7348.93,19652.1,0.00204468],[6456.14,22728.5,0.00310898],[4799.35,20951.6,0.0017395],[2830.67,19267.8,0.00239563],[4383.33,13314.9,0.00190735],[5411.58,15812.6,0.00166321],[5747.89,10497.3,0.00137711],[8350.94,10573.2,0.00146294],[24868.2,18917.4,0.00161982],[21423.9,21087.5,0.00176048],[23682.5,24527,0.000816345],[27789.1,21229.1,0.00132179],[28252.8,23901.5,0.00138283]];

//Available heli/plane types - add your own ones
_ETG_HeliTypes = ["I_Heli_light_03_unarmed_F","O_Heli_Transport_04_F","B_Heli_Transport_01_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_box_F","B_Heli_Transport_03_unarmed_F","I_Heli_Transport_02_F"];

//Add your types of cargo here (crate classnames)
_ETG_CargoTypes = ["I_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","Box_East_AmmoVeh_F","Box_NATO_AmmoVeh_F"];

//Lootboxes spawning at heli crashes (small boxes/crates look better)
_ETG_HeliCrashLootBoxes = ["Box_NATO_AmmoVeh_F","Box_East_AmmoVeh_F","Box_IND_AmmoVeh_F","I_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","Box_East_Support_F","Box_NATO_AmmoOrd_F","Box_East_AmmoOrd_F"];

//AI that will spawn at the crashsites/drops (use classnames of units)
_ETG_AIUnits = ["O_recon_medic_F", "O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_A_F","O_Soldier_lite_F"];

////////////////////////////////////////////////////////////////
//Only edit anything down here, if you know what you are doing//
////////////////////////////////////////////////////////////////

	//Set the starting position of the heli
		_startPos = _ETG_StartionPositions call BIS_fnc_selectRandom;

	//Get the position of the drop/crash
		_ETG_Main_Coordinates = _ETG_MapCoordinates call BIS_fnc_selectRandom;

	//Choose heli type
		_ETG_Heli_Type = _ETG_HeliTypes call BIS_fnc_selectRandom;

	//Choose between cargo drop or a heli crash
		_ETG_Mission_Type = ["Cargo_Drop","Heli_Crash"] call BIS_fnc_selectRandom;

	//Choose cargo
		_ETG_Cargo_Type = _ETG_CargoTypes call BIS_fnc_selectRandom;

	//Choose drop tier and loot
		_ETG_Mission_Tier = [1,2,3,4,5,6] call BIS_fnc_selectRandom;

	//set sleeptime if random is true
		if (_SleepTimeRandom) then {_SleepTime = round(random _SleepTime)};

	//////////////
	//Loottables//
	//////////////
	//Loot that will spawn inside the cargo drop/ or at the crates of the heli drop
	//If you want to edit the loottable please notice that in Arma 3 there are different types of 'loot' (weapons,backpacks,items,magazines)
	//Every tier in this "list" of the six tiers has 4 variables ETG_Mission_RandomLoot_B (for backpacks) ETG_Mission_RandomLoot_M (for magazines) ETG_Mission_RandomLoot_W (for weapons) ETG_Mission_RandomLoot_I (for items)
	//Edit the 4 variables like this:
	//			ETG_Mission_RandomLoot_B = [["Classnames",Ammount],["B_AssaultPack_khk",1]];

	if (_ETG_Mission_Tier == 1) then [ {
		//Edit the loot of tier one here
			ETG_Mission_RandomLoot_B = [["B_OutdoorPack_blu",1],["B_AssaultPack_khk",1],["B_Kitbag_cbr",2],["B_AssaultPack_khk",1]];
			ETG_Mission_RandomLoot_M = [["16Rnd_9x21_Mag",4],["30Rnd_556x45_Stanag_Tracer_Red",3],["30Rnd_556x45_Stanag",4],["Exile_Item_PlasticBottleEmpty",2],["Exile_Item_PlasticBottleFreshWater",2],["Exile_Item_Surstromming_Cooked",5],["Exile_Item_ChristmasTinner_Cooked",1],["Exile_Item_Beer",3],["Exile_Item_InstaDoc",2]];
			ETG_Mission_RandomLoot_W = [["hgun_Rook40_snds_F",1],["arifle_Mk20_MRCO_pointer_F",1],["arifle_TRG21_F",1]];
			ETG_Mission_RandomLoot_I = [["optic_Arco",1],["optic_Aco_smg",1],["NVGoggles",1],["optic_MRCO",1],["U_IG_Guerilla1_1",1],["V_TacVest_brn",1],["V_Chestrig_rgr",1],["V_PlateCarrier1_rgr",1],["U_B_SpecopsUniform_sgg",1],["U_O_GhillieSuit",1],["U_I_CombatUniform",1]];
		}, { } ];

		if (_ETG_Mission_Tier == 2) then [ {
		//Edit the loot of tier two here
			ETG_Mission_RandomLoot_B = [["B_Kitbag_cbr",2],["B_AssaultPack_khk",1],["B_OutdoorPack_blu",1],["B_AssaultPack_khk",1]];
			ETG_Mission_RandomLoot_M = [["Exile_Item_PlasticBottleEmpty",2],["Exile_Item_PlasticBottleFreshWater",2],["Exile_Item_Surstromming_Cooked",5],["Exile_Item_ChristmasTinner_Cooked",1],["Exile_Item_Beer",3],["Exile_Item_InstaDoc",2],["30Rnd_65x39_caseless_green",3],["30Rnd_65x39_caseless_mag",4],["30Rnd_556x45_Stanag_Tracer_Red",3]];
			ETG_Mission_RandomLoot_W = [["arifle_Katiba_F",1],["arifle_Katiba_F",1],["arifle_Mk20_GL_MRCO_pointer_F",1],["arifle_MX_GL_F",1]];
			ETG_Mission_RandomLoot_I = [["optic_Hamr",1],["optic_Arco",1],["optic_Hamr",1],["optic_Arco",1],["V_Chestrig_rgr",1],["V_PlateCarrier1_rgr",1],["U_B_SpecopsUniform_sgg",1],["U_O_GhillieSuit",1],["U_I_CombatUniform",1]];
		}, { } ];

		if (_ETG_Mission_Tier == 3) then [ {
		//Edit the loot of tier three here
			ETG_Mission_RandomLoot_B = [["B_AssaultPack_khk",1],["B_Kitbag_cbr",1],["B_OutdoorPack_blu",1],["B_AssaultPack_khk",1]];
			ETG_Mission_RandomLoot_M = [["Exile_Item_JunkMetal",1],["Exile_Item_JunkMetal",2],["Exile_Item_JunkMetal",3],["Exile_Item_MetalBoard",4],["Exile_Item_MetalBoard",4],["Exile_Item_MetalBoard",1],["Exile_Item_MetalPole",4],["Exile_Item_MetalPole",4],["Exile_Item_CamoTentKit",1],["Exile_Item_CamoTentKit",1],["Exile_Item_FortificationUpgrade",2],["Exile_Item_DuctTape",1],["Exile_Item_DuctTape",1],["Exile_Item_FuelCanisterFull",1],["Exile_Item_CamoTentKit",1],["Exile_Item_FortificationUpgrade",2],["Exile_Item_DuctTape",1],["Exile_Item_DuctTape",1],["Exile_Item_FuelCanisterFull",1],["30Rnd_65x39_caseless_green",3],["30Rnd_65x39_caseless_mag",4],["30Rnd_556x45_Stanag",3]];
			ETG_Mission_RandomLoot_W = [["hgun_Rook40_snds_F",1],["arifle_Katiba_F",1],["arifle_TRG20_Holo_F",1],["arifle_MXC_ACO_pointer_snds_F",1]];
			ETG_Mission_RandomLoot_I = [["V_Chestrig_rgr",1],["V_PlateCarrier1_rgr",1],["U_B_survival_uniform",1],["U_BG_Guerilla2_1",1],["U_I_HeliPilotCoveralls",1],["U_I_CombatUniform_tshirt",1]];
		}, { } ];

		if (_ETG_Mission_Tier == 4) then [ {
		//Edit the loot of tier four here
			ETG_Mission_RandomLoot_B = [["B_FieldPack_cbr",1],["B_OutdoorPack_blk",1],["B_FieldPack_cbr",1],["B_OutdoorPack_blk",1]];
			ETG_Mission_RandomLoot_M = [["30Rnd_65x39_caseless_green",3],["30Rnd_65x39_caseless_mag",2],["200Rnd_65x39_cased_Box",1],["Exile_Item_DuctTape",1],["Exile_Item_Energydrink",2],["Exile_Item_Catfood_Cooked",3],["Exile_Item_PlasticBottleFreshWater",1],["Exile_Item_PlasticBottleEmpty",2],["Exile_Item_PlasticBottleFreshWater",2],["Exile_Item_Surstromming_Cooked",5],["Exile_Item_ChristmasTinner_Cooked",1],["Exile_Item_Beer",3],["Exile_Item_InstaDoc",2]];
			ETG_Mission_RandomLoot_W = [["arifle_Katiba_ARCO_pointer_F",1],["arifle_MXM_F",1],["LMG_Mk200_F",1],["arifle_Katiba_F",1]];
			ETG_Mission_RandomLoot_I = [["U_IG_Guerilla1_1",1],["V_TacVest_brn",1],["U_IG_Guerilla1_1",1],["V_TacVest_brn",1],["U_BG_Guerilla2_1",1],["U_I_HeliPilotCoveralls",1],["U_I_CombatUniform_tshirt",1]];
		}, { } ];

		if (_ETG_Mission_Tier == 5) then [ {
		//Edit the loot of tier five here
			ETG_Mission_RandomLoot_B = [["B_Carryall_cbr",1],["B_Carryall_oucamo",1]];
			ETG_Mission_RandomLoot_M = [["30Rnd_65x39_caseless_green",3],["150Rnd_762x54_Box",2],["20Rnd_762x51_Mag",4],["20Rnd_762x51_Mag",3],["Exile_Item_GloriousKnakworst",4],["Exile_Item_DuctTape",3],["Exile_Item_Beer",1],["Exile_Item_FortificationUpgrade",1],["Exile_Item_GloriousKnakworst",4],["Exile_Item_DuctTape",3],["Exile_Item_Beer",1]];
			ETG_Mission_RandomLoot_W = [["arifle_Katiba_ARCO_pointer_snds_F",1],["LMG_Zafir_F",1],["srifle_EBR_ARCO_pointer_F",1]];
			ETG_Mission_RandomLoot_I = [["optic_Nightstalker",1],["optic_LRPS",1],["V_PlateCarrierSpec_blk",1],["V_PlateCarrierGL_blk",1],["U_B_FullGhillie_sard",1],["V_BandollierB_cbr",1],["V_PlateCarrier1_blk",1]];
		}, { } ];

		if (_ETG_Mission_Tier == 6) then [ {
		//Edit the loot of tier six here
			ETG_Mission_RandomLoot_B = [["B_Bergen_rgr",1],["B_FieldPack_oucamo",1]];
			ETG_Mission_RandomLoot_M = [["Exile_Item_FortificationUpgrade",2],["Exile_Item_InstaDoc",4],["30Rnd_65x39_caseless_mag",6],["11Rnd_45ACP_Mag",4],["10Rnd_762x54_Mag",5],["7Rnd_408_Mag",4],["Exile_Item_PlasticBottleEmpty",2],["Exile_Item_PlasticBottleFreshWater",2],["Exile_Item_Surstromming_Cooked",5],["Exile_Item_ChristmasTinner_Cooked",1],["Exile_Item_Beer",3],["Exile_Item_InstaDoc",2]];
			ETG_Mission_RandomLoot_W = [["arifle_MXC_Holo_pointer_snds_F",1],["hgun_Pistol_heavy_01_snds_F",1],["srifle_LRR_F",1],["srifle_DMR_01_F",1]];
			ETG_Mission_RandomLoot_I = [["B_Carryall_cbr",1],["B_Bergen_blk",3],["optic_LRPS",1],["V_PlateCarrierSpec_blk",1],["V_PlateCarrierGL_blk",1],["U_B_FullGhillie_sard",1],["U_IG_Guerilla1_1",1],["U_O_FullGhillie_ard",1],["U_B_FullGhillie_lsh",1]];
		}, { } ];

//if its a cargo drop do this
	if (_ETG_Mission_Type == "Cargo_Drop") then [ {
		//Create the heli and gives it a name
			_ETG_HeliCrew = createGroup East;
			[_startPos, 180,_ETG_Heli_Type, _ETG_HeliCrew] call bis_fnc_spawnvehicle;
			_ETG_Transport_Vehicle_selection = nearestObjects [_startPos, ["air"], 100];
			_ETG_Transport_Vehicle = _ETG_Transport_Vehicle_selection select 0;
			_ETG_Transport_Vehicle allowDamage false;

			ETG_TransportVehicle = _ETG_Transport_Vehicle;

		//Create cargo an clear its inventory
			_ETG_Cargo = _ETG_Cargo_Type createVehicle _startPos;
			clearMagazineCargoGlobal _ETG_Cargo;
			clearWeaponCargoGlobal _ETG_Cargo;
			clearItemCargoGlobal _ETG_Cargo;
			clearBackpackCargoGlobal _ETG_Cargo;

		//Attaches the cargo to the transport vehicle
			_ETG_Cargo attachTo [_ETG_Transport_Vehicle, [0, 2, 0]];
			ETG_Cargo = _ETG_Cargo;

		//Waypoint for the Helicopter
			_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [_ETG_Main_Coordinates, 0];
			_ETG_HeliWaypoint1 setWaypointType "move";
			_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;

		//sets the second waypoint
			_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [[0,0,0], 0];
			_ETG_HeliWaypoint1 setWaypointType "move";
			_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;

		//waits until the distance to the drop point is > 500
			waitUntil {_ETG_Transport_Vehicle distance _ETG_Main_Coordinates < 400};
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 1];
			deleteWaypoint [_ETG_HeliCrew, 0];
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 1];

		//Unloading the cargo
			_ETG_Cargo attachTo [_ETG_Transport_Vehicle, [0, -15, -2] ];
			_ETG_Cargo_Position = getPos _ETG_Cargo;
			detach _ETG_Cargo;
			_ETG_Parachute = "B_Parachute_02_F" createVehicle _ETG_Cargo_Position;
			_ETG_Parachute setPos _ETG_Cargo_Position;
			_ETG_Cargo attachTo [_ETG_Parachute, [0, 0, -1.2] ];

		//Attaching a smoke grenade to the cargo
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			sleep 10;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];

		//Waits until cargo is close to the ground and deletes the parachute
			waituntil {(getPos _ETG_Cargo select 2) < 4};
			detach _ETG_Cargo;
			sleep 4;
			deleteVehicle _ETG_Parachute;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];

		//Spawn AI if wanted
			if (_AI_Crash) then {
				_HelicrashUnits = [position _ETG_Cargo, EAST, _ETG_AIUnits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
				//Add waypoint for the AI
				_HeliCrashGroupLeader = leader _HelicrashUnits;
				_HeliCrashUnitsGroup = group _HeliCrashGroupLeader;
				_HeliCrashUnitsGroup addWaypoint [position _ETG_Cargo, 0];
				[_HeliCrashUnitsGroup, 0] setWaypointType "GUARD";
				[_HeliCrashUnitsGroup, 0] setWaypointBehaviour "AWARE";
			};

		//Spawn loot ;)
			if (_RandomMagezineAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addMagazineCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_M;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addMagazineCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_M;};
			if (_RandomItemAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addItemCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_I;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addItemCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_I;};
			if (_RandomWeaponAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addWeaponCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_W;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addWeaponCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_W;};
			if (_RandomBackpackAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addBackpackCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_B;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addBackpackCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_B;};

		//More Smoke
			sleep 10;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			_ETG_Cargo setVectorUp surfaceNormal position _ETG_Cargo;

		//Create markers if wanted
			if (_AllowMarkers) then {
				_marker = createMarker [(position _ETG_Cargo) joinString " ", position _ETG_Cargo];
				_marker setMarkerType "n_service";

				[_DeletionDelay,_marker] spawn {
					sleep (_this select 0);
					deleteMarker (_this select 1);
				};
			};

		//delete supply drop after x hours
			[_DeletionDelay,_ETG_Cargo] spawn {
				sleep (_this select 0);
				deleteVehicle (_this select 1);
			};

		//Delete the heli
			waituntil {_ETG_Transport_Vehicle distance [0,0,0] < 10000};
			deleteVehicle _ETG_Transport_Vehicle;

			ETG_Cargo_Drop_Mission = 0;

		//start a new cargo drop / heli crash
			sleep _SleepTime;
			_nul = execVM _ETG_ScriptPath;
	}, {} ];

//Run if its a heli crash
	if (_ETG_Mission_Type == "Heli_Crash") then [ {

		//Get two more positions
		_ETG_2cnd_Coordinates = _ETG_MapCoordinates call BIS_fnc_selectRandom;
		_ETG_3rd_Coordinates = _ETG_MapCoordinates call BIS_fnc_selectRandom;

			//Create the heli and gives it a name
				_ETG_HeliCrew = createGroup East;
				[_startPos, 180,_ETG_Heli_Type, _ETG_HeliCrew] call bis_fnc_spawnvehicle;
				_ETG_Transport_Vehicle_selection = nearestObjects [_startPos, ["air"], 100];
				_ETG_Transport_Vehicle = _ETG_Transport_Vehicle_selection select 0;
				ETG_TransportVehicle = _ETG_Transport_Vehicle;

			//Waypoint for the Helicopter
				_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [_ETG_Main_Coordinates, 0];
				_ETG_HeliWaypoint1 setWaypointType "move";
				_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
				_ETG_Transport_Vehicle flyInHeight _FlyHeight;

			//sets the second waypoint
				_ETG_HeliWaypoint2 = _ETG_HeliCrew addWaypoint [_ETG_2cnd_Coordinates, 0];
				_ETG_HeliWaypoint2 setWaypointType "move";
				_ETG_HeliWaypoint2 setWaypointBehaviour "CARELESS";
				_ETG_Transport_Vehicle flyInHeight _FlyHeight;

			//sets the third waypoint
				_ETG_HeliWaypoint3 = _ETG_HeliCrew addWaypoint [_ETG_3rd_Coordinates, 0];
				_ETG_HeliWaypoint3 setWaypointType "move";
				_ETG_HeliWaypoint3 setWaypointBehaviour "CARELESS";
				_ETG_Transport_Vehicle flyInHeight _FlyHeight;

			//sets the fourth waypoint
				_ETG_HeliWaypoint4 = _ETG_HeliCrew addWaypoint [[0,0,0], 0];
				_ETG_HeliWaypoint4 setWaypointType "move";
				_ETG_HeliWaypoint4 setWaypointBehaviour "CARELESS";
				_ETG_Transport_Vehicle flyInHeight _FlyHeight;

			//Wait until the heli is close to its crash point and or it is damaged to a certain point
				waitUntil {(position _ETG_Transport_Vehicle distance _ETG_3rd_Coordinates < 400) || (getDammage _ETG_Transport_Vehicle > 0.2)};

			//Set new waypoints
				_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 3];
				deleteWaypoint [_ETG_HeliCrew, 0];
				deleteWaypoint [_ETG_HeliCrew, 1];
				_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 2];

			//crash the chopper...
				_ETG_Transport_Vehicle setFuel 0;
				_ETG_Transport_Vehicle setDamage 1;

			//wait until the heli is close to the ground and delete it
				waituntil {(getPos _ETG_Transport_Vehicle select 2) < 1};
				sleep 10;
				_ETG_CrashPosition = position _ETG_Transport_Vehicle;
				_ETG_CrashRot = getDir _ETG_Transport_Vehicle;
				sleep 2;
				deleteVehicle _ETG_Transport_Vehicle;

				ETG_CrashPosition = _ETG_CrashPosition;

			//Create markers if wanted
				if (_AllowMarkers) then {
					_marker = createMarker [_ETG_CrashPosition joinString " ",_ETG_CrashPosition];
					_marker setMarkerType _MarkerType;
					[_DeletionDelay,_marker] spawn {
						sleep (_this select 0);
						deleteMarker (_this select 1);
					};
				};

			//create the heli crash
				_ETG_CrashedHeli = createVehicle ["Land_Wreck_Heli_Attack_01_F",_ETG_CrashPosition,[], 0, "can_collide"];
				_ETG_CrashedHeli setDir _ETG_CrashRot;
				_ETG_CrashedHeli setPos [position _ETG_CrashedHeli select 0,position _ETG_CrashedHeli select 1, 0.1];
				_ETG_CrashedHeli setVectorUp surfaceNormal position _ETG_CrashedHeli;
				_ETG_SmokeEffect = createVehicle ["test_EmptyObjectForSmoke",position _ETG_CrashedHeli,[], 0, "can_collide"];
				_ETG_SmokeEffect attachTo [_ETG_CrashedHeli, [0.5, -2, 1] ];
				//Create 2 campfires at the crashsite for the light/fire effects
				if (_FireAtCrashSite) then {_ETG_FireEffect2 = createVehicle ["Campfire_burning_F",position _ETG_CrashedHeli,[], 1, "can_collide"]; _ETG_FireEffect1 = createVehicle ["Campfire_burning_F",position _ETG_CrashedHeli,[], 1, "can_collide"];
					_ETG_FireEffect1 setPos [position _ETG_FireEffect1 select 0, position _ETG_FireEffect1 select 1, -0.1];
					_ETG_FireEffect2 setPos [position _ETG_FireEffect2 select 0, position _ETG_FireEffect2 select 1, -0.1];
					[_ETG_FireEffect1,_ETG_FireEffect2,_DeletionDelay] spawn {
						sleep (_this select 2);
						deleteVehicle (_this select 0);
						deleteVehicle (_this select 1);
					};


				};
				ETG_CrashedHeli = _ETG_CrashedHeli;

			//spawn crates around the crashsite, rotate them and add loot to them
				_ETG_HeliCrashLootBox1 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; _ETG_HeliCrashLootBoxes1 = createVehicle [_ETG_HeliCrashLootBox1,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes1 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes1;clearItemCargoGlobal _ETG_HeliCrashLootBoxes1;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes1;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes1; _ETG_HeliCrashLootBoxes1 setPos [position _ETG_HeliCrashLootBoxes1 select 0,position _ETG_HeliCrashLootBoxes1 select 1, 0.1]; _ETG_HeliCrashLootBoxes1 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes1;
				_ETG_HeliCrashLootBox2 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; _ETG_HeliCrashLootBoxes2 = createVehicle [_ETG_HeliCrashLootBox2,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes2 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes2;clearItemCargoGlobal _ETG_HeliCrashLootBoxes2;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes2;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes2; _ETG_HeliCrashLootBoxes2 setPos [position _ETG_HeliCrashLootBoxes2 select 0,position _ETG_HeliCrashLootBoxes2 select 1, 0.1]; _ETG_HeliCrashLootBoxes2 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes2;
				_ETG_HeliCrashLootBox3 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; _ETG_HeliCrashLootBoxes3 = createVehicle [_ETG_HeliCrashLootBox3,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes3 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes3;clearItemCargoGlobal _ETG_HeliCrashLootBoxes3;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes3;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes3; _ETG_HeliCrashLootBoxes3 setPos [position _ETG_HeliCrashLootBoxes3 select 0,position _ETG_HeliCrashLootBoxes3 select 1, 0.1]; _ETG_HeliCrashLootBoxes3 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes3;

				if (_LootOnGround) then {
					if (_RandomMagezineAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes1,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addMagazineCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_M;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes2,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addMagazineCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_M;};
					if (_RandomItemAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes3,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addItemCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_I;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes3,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addItemCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_I;};
					if (_RandomWeaponAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes2,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addWeaponCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_W;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes1,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addWeaponCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_W;};
					if (_RandomBackpackAmmount) then {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes3,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addBackpackCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_B;} else {{_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes3,[], _LootSpawnRadius, "can_collide"]; _WeaponHolder addBackpackCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_B;};
				} else {
					if (_RandomMagezineAmmount) then {{_ETG_HeliCrashLootBoxes2 addMagazineCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_M;} else {{_ETG_HeliCrashLootBoxes2 addMagazineCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_M;};
					if (_RandomWeaponAmmount) then {{_ETG_HeliCrashLootBoxes3 addWeaponCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_W;} else {{_ETG_HeliCrashLootBoxes3 addWeaponCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_W;};
					if (_RandomBackpackAmmount) then {{_ETG_HeliCrashLootBoxes3 addBackpackCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_B;} else {{_ETG_HeliCrashLootBoxes3 addBackpackCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_B;};
					if (_RandomItemAmmount) then {{_ETG_HeliCrashLootBoxes1 addItemCargoGlobal [_x select 0,round random (_x select 1)];} forEach ETG_Mission_RandomLoot_I;} else {{_ETG_HeliCrashLootBoxes1 addItemCargoGlobal _x ;} forEach ETG_Mission_RandomLoot_I;};
				};

				_ETG_HeliCrashLootBoxes1 allowDamage true;
				_ETG_HeliCrashLootBoxes2 allowDamage true;
				_ETG_HeliCrashLootBoxes3 allowDamage true;

			//Spawn AI if wanted
				if (_AI_Crash) then {
					_HelicrashUnits = [(position _ETG_HeliCrashLootBoxes1), EAST, _ETG_AIUnits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
					//Add waypoint for the AI
					_HeliCrashGroupLeader = leader _HelicrashUnits;
					_HeliCrashUnitsGroup = group _HeliCrashGroupLeader;
					_HeliCrashUnitsGroup addWaypoint [position _ETG_CrashedHeli, 0];
					_HeliCrashUnitsGroup addWaypoint [position _ETG_CrashedHeli, 0];
					[_HeliCrashUnitsGroup, 0] setWaypointType "GUARD";
					[_HeliCrashUnitsGroup, 0] setWaypointBehaviour "AWARE";
				};

			//delete heli after x hours
				[_ETG_CrashedHeli,_ETG_SmokeEffect,_ETG_HeliCrashLootBoxes1,_ETG_HeliCrashLootBoxes2,_ETG_HeliCrashLootBoxes3,_DeletionDelay] spawn {
					sleep (_this select 5);
					{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_ETG_CrashedHeli nearObjects 5);
					deleteVehicle (_this select 0);
					(_this select 1) setDamage 1;
					deleteVehicle (_this select 1);
					deleteVehicle (_this select 2);
					deleteVehicle (_this select 3);
					deleteVehicle (_this select 4);
				};

				ETG_Cargo_Drop_Mission = 0;

			//start a new cargo drop / heli crash
				sleep _SleepTime;
				_nul = execVM _ETG_ScriptPath;
		}, {} ];
	} else {sleep _SleepTime; _nul = execVM _ETG_ScriptPath;};
};
