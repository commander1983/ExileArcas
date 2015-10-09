class CfgPatches 
{
	class VQI_Sniper_Gear
	{
		units[] = {"VQI_Sniper_Gear"};
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
	class ItemCompass;
	class ItemMap;
	class VQI_SniperBuddy_1: ItemCompass
	{
		displayName = "VQI SniperBuddy I";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_sniper\VQI-SpectreSniper\CrateGear\images\icon_sb1.paa";
		descriptionShort = "Questrel Weather Meter";
	};
	
	class VQI_SniperDataBook: ItemMap
	{
		displayName = "Sniper LogBook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_sniper\VQI-SpectreSniper\CrateGear\images\icon_logbook.paa";
		descriptionShort = "Maps, Charts, Tables, Cards";
	};
};


class CfgVehicles
{
	class NATO_Box_Base;
	class VQI_Sniper_Box: NATO_Box_Base
	{
		scope = 2;
		vehicleClass = "Von_Quest_Industries";
		displayName = "Sniper Box";
		model = "\A3\weapons_F\AmmoBoxes\WpnsBox_large_F";
		icon = "iconCrateWpns";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems
		{
			class _xx_VQI_SniperBuddy_1
			{
				name = "VQI_SniperBuddy_1";
				count = 4;
			};
			class _xx_VQI_BoonieHat_SE_Hathcock
			{
				name = "VQI_BoonieHat_SE_Hathcock";
				count = 1;
			};
			class _xx_VQI_SniperDataBook
			{
				name = "VQI_SniperDataBook";
				count = 4;
			};	
			class _xx_Rangefinder
			{
				name = "Rangefinder";
				count = 4;
			};			
			class _xx_srifle_LRR_F
			{
				name = "srifle_LRR_F";
				count = 1;
			};
			class _xx_srifle_GM6_F
			{
				name = "srifle_GM6_F";
				count = 1;
			};
			class _xx_srifle_EBR_F
			{
				name = "srifle_EBR_F";
				count = 1;
			};
			class _xx_arifle_MXM_F
			{
				name = "arifle_MXM_F";
				count = 1;
			};	
			class _xx_optic_LRPS
			{
				name = "optic_LRPS";
				count = 4;
			};
			class _xx_optic_SOS
			{
				name = "optic_SOS";
				count = 4;
			};
			class _xx_optic_DMS
			{
				name = "optic_DMS";
				count = 4;
			};
			class _xx_optic_MRCO
			{
				name = "optic_MRCO";
				count = 4;
			};
			class _xx_5Rnd_127x108_APDS_Mag
			{
				name = "5Rnd_127x108_APDS_Mag";
				count = 12;
			};
			class _xx_7Rnd_408_Mag
			{
				name = "7Rnd_408_Mag";
				count = 12;
			};	
			class _xx_20Rnd_762x51_Mag
			{
				name = "20Rnd_762x51_Mag";
				count = 24;
			};
			class _xx_30Rnd_65x39_caseless_mag
			{
				name = "30Rnd_65x39_caseless_mag";
				count = 24;
			};			
		};
	};
};