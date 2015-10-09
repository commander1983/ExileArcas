class CfgPatches 
{
	class VQI_HALO_Gear
	{
		units[] = {"VQI_HALO_Gear"};
		weapons[] = {};
		requiredVersion = 0.1;
	};
};


class CfgVehicleClasses {
	class Von_Quest_Industries {
		displayname = "VQI Crates";
	};
};


class CfgWeapons
{
	class ItemWatch;
	class ItemCompass;
	class VQI_JumpBuddy_1: ItemWatch
	{
		displayName = "VQI JumpBuddy I";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_halo\VQI-DemonDropper\CrateGear\images\icon_jb1.paa";
		descriptionShort = "Altimeter ASL";
	};
	class VQI_AAD: ItemCompass
	{
		displayName = "A.A.D. Icarus I";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_halo\VQI-DemonDropper\CrateGear\images\aad.paa";
		descriptionShort = "Automatic Activation Device";
	};
};


class CfgVehicles
{
	class NATO_Box_Base;
	class VQI_HALO_Crate: NATO_Box_Base
	{
		scope = 2;
		vehicleClass = "Von_Quest_Industries";
		displayName = "H.A.L.O. Crate";
		model = "\A3\weapons_F\AmmoBoxes\SupplyDrop";
		icon = "iconCrateWpns";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems
		{
			class _xx_VQI_JumpBuddy_1
			{
				name = "VQI_JumpBuddy_1";
				count = 6;
			};
			class _xx_Vest_VQI_Stingray
			{
				name = "Vest_VQI_Stingray";
				count = 6;
			};
			class _xx_Helmet_VQI_HALO
			{
				name = "Helmet_VQI_HALO";
				count = 6;
			};
			class _xx_Uniform_VQI_Slipstream
			{
				name = "Uniform_VQI_Slipstream";
				count = 6;
			};
			class _xx_U_B_Wetsuit
			{
				name = "U_B_Wetsuit";
				count = 6;
			};
			class _xx_G_Diving
			{
				name = "G_Diving";
				count = 6;
			};
			class _xx_VQI_AAD
			{
				name = "VQI_AAD";
				count = 6;
			};
		};
	};
};

//