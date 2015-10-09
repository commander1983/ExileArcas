class CfgPatches 
{
	class VQI_Bomb_Gear
	{
		units[] = {"VQI_Bomb_Gear"};
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
	class ItemWatch;
	class ItemMap;
	class ItemRadio;
	class ItemGPS;
	class VQI_BombBuddy_1: ItemCompass
	{
		displayName = "VQI BombBuddy I";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\images\icon_bb1.paa";
		descriptionShort = "IMS: Ion-Mobility-Spectrometer";
	};
	
	class VQI_TOOLS_DSnips: ItemWatch
	{
		displayName = "Diagonal Snips";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_diagonal_snips.paa";
		descriptionShort = "Standard Diagonal Snips; Metal, 5in";
	};
	
	class VQI_TOOLS_ESD_DSnips: ItemCompass
	{
		displayName = "Diagonal Snips; ESD";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_esd_diagonal_snips.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 5in";
	};

	class VQI_TOOLS_NNPliers: ItemWatch
	{
		displayName = "Long-Nose Pliers";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_needlenose_pliers.paa";
		descriptionShort = "Standard Long-Nose Pliers; Metal, 7in";
	};
	
	class VQI_TOOLS_ESD_NNPliers: ItemCompass
	{
		displayName = "Long-Nose Pliers; ESD";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_esd_needlenose_pliers.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 7in";
	};
	
	class VQI_TOOLS_ESD_Tweezers_R: ItemMap
	{
		displayName = "Tweezers; Round";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_esd_tweezers_round.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 5in";
	};
	
	class VQI_TOOLS_ESD_Tweezers_F: ItemMap
	{
		displayName = "Tweezers; Fine";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_esd_tweezers_fine.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 5in";
	};
	
	class VQI_TOOLS_ESD_Tweezers_C: ItemMap
	{
		displayName = "Tweezers; Curved";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_esd_tweezers_curved.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 5in";
	};

	class VQI_TOOLS_Spudger_Set: ItemMap
	{
		displayName = "Spudger Set; ESD";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_spudger_set.paa";
		descriptionShort = "Electro-Static-Discharge Safe; Plastic, 5in";
	};

	class VQI_TOOLS_Mini_inspection_Mirror: ItemMap
	{
		displayName = "Mini Inspection Mirror";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_inspection_mirror.paa";
		descriptionShort = "Telescopic Mirror; 180* Head, ~24in";
	};	
	
	class VQI_TOOLS_Screwdriver_Phillips: ItemRadio
	{
		displayName = "Screwdriver; Phillips";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_screwdriver_phillips.paa";
		descriptionShort = "Standard Phillips Screwdriver; Metal, 7in";
	};	
	
	class VQI_TOOLS_Screwdriver_Flathead: ItemRadio
	{
		displayName = "Screwdriver; Flathead";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_screwdriver_flathead.paa";
		descriptionShort = "Standard Flathead Screwdriver; Metal, 7in";
	};	

	class VQI_TOOLS_Ceramic_Knife: ItemWatch
	{
		displayName = "Ceramic Knife";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_ceramic_knife.paa";
		descriptionShort = "High Grade Polymer, Non-Conductive; Black, 7in";
	};

	class VQI_TOOLS_Fuse_CrimperCutter: ItemCompass
	{
		displayName = "Fuse Crimper/Cutter";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_fusecrimper.paa";
		descriptionShort = "Non-Magnetic; Anodized Aluminium, 10in";
	};

	class VQI_TOOLS_Hex_Keys: ItemMap
	{
		displayName = "Hex Key Set";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_hex_keys.paa";
		descriptionShort = "Standard Hex (Allen) Set, Hexagonal; Steel Oxide";
	};
	
	class VQI_TOOLS_Alligator_Clips: ItemGPS
	{
		displayName = "Wire: Alligator";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_alclips.paa";
		descriptionShort = "Stainless, Insulated; Multi-Colored, 4-24in";
	};	

	class VQI_TOOLS_Jumper_Wires: ItemGPS
	{
		displayName = "Wire: Jumpers";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_jumperwires.paa";
		descriptionShort = "M/M, F/F, M/F; Multi-Packs, 4-12in";
	};

	class VQI_TOOLS_Multi_Tool: ItemWatch
	{
		displayName = "Multi-Tool, S.O.G";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_multi_tool.paa";
		descriptionShort = "Multi-Purpose, Portable, Versatile; Black Satin, 8in";
	};

	class VQI_TOOLS_PryBar: ItemMap
	{
		displayName = "Mini PryBar";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_prybar.paa";
		descriptionShort = "Flat, Forked with Curve; Titanium, 8-15in";
	};

	class VQI_TOOLS_Reamer: ItemWatch
	{
		displayName = "Reamer";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_reamer.paa";
		descriptionShort = "Non-Precision, Tapered; Carbide, 6in";
	};
	
	class VQI_TOOLS_MultiMeter: ItemGPS
	{
		displayName = "Multi-Meter";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_multimeter.paa";
		descriptionShort = "Volt-Ohm Meter, Fluke 80 Series; Waterproof, ~80V";
	};	

	class VQI_TOOLS_Shock_Initiator: ItemGPS
	{
		displayName = "Shock Initiator";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\CrateGear\Tools\tools_shockini.paa";
		descriptionShort = "Duel Shock Tube, Royal Arms; Zinc Coated, 6in";
	};	
};


class CfgVehicles
{
	class NATO_Box_Base;
	class VQI_Bomb_Box: NATO_Box_Base
	{
		scope = 2;
		vehicleClass = "Von_Quest_Industries";
		displayName = "Bomb Box";
		model = "\A3\weapons_F\AmmoBoxes\AmmoBox_F";
		icon = "iconCrateWpns";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems
		{
			class _xx_VQI_BombBuddy_1
			{
				name = "VQI_BombBuddy_1";
				count = 4;
			};
			class _xx_VQI_TOOLS_DSNIPS
			{
				name = "VQI_TOOLS_DSNIPS";
				count = 4;
			};
			class _xx_VQI_TOOLS_ESD_DSNIPS
			{
				name = "VQI_TOOLS_ESD_DSNIPS";
				count = 4;
			};
			class _xx_VQI_TOOLS_NNPliers
			{
				name = "VQI_TOOLS_NNPliers";
				count = 4;
			};
			class _xx_VQI_TOOLS_ESD_NNPliers
			{
				name = "VQI_TOOLS_ESD_NNPliers";
				count = 4;
			};
			class _xx_VQI_TOOLS_Screwdriver_Phillips
			{
				name = "VQI_TOOLS_Screwdriver_Phillips";
				count = 4;
			};
			class _xx_VQI_TOOLS_Screwdriver_Flathead
			{
				name = "VQI_TOOLS_Screwdriver_Flathead";
				count = 4;
			};			
			class _xx_VQI_TOOLS_ESD_Tweezers_R
			{
				name = "VQI_TOOLS_ESD_Tweezers_R";
				count = 4;
			};
			class _xx_VQI_TOOLS_ESD_Tweezers_F
			{
				name = "VQI_TOOLS_ESD_Tweezers_F";
				count = 4;
			};
			class _xx_VQI_TOOLS_ESD_Tweezers_C
			{
				name = "VQI_TOOLS_ESD_Tweezers_C";
				count = 4;
			};
			class _xx_VQI_TOOLS_Spudger_Set
			{
				name = "VQI_TOOLS_Spudger_Set";
				count = 4;
			};
			class _xx_VQI_TOOLS_Mini_Inspection_Mirror
			{
				name = "VQI_TOOLS_Mini_Inspection_Mirror";
				count = 4;
			};
			class _xx_VQI_TOOLS_Ceramic_Knife
			{
				name = "VQI_TOOLS_Ceramic_Knife";
				count = 4;
			};
			class _xx_VQI_TOOLS_Fuse_CrimperCutter
			{
				name = "VQI_TOOLS_Fuse_CrimperCutter";
				count = 4;
			};
			class _xx_VQI_TOOLS_Hex_Keys
			{
				name = "VQI_TOOLS_Hex_Keys";
				count = 4;
			};
			class _xx_VQI_TOOLS_Alligator_Clips
			{
				name = "VQI_TOOLS_Alligator_Clips";
				count = 4;
			};
			class _xx_VQI_TOOLS_Jumper_Wires
			{
				name = "VQI_TOOLS_Jumper_Wires";
				count = 4;
			};
			class _xx_VQI_TOOLS_Multi_Tool
			{
				name = "VQI_TOOLS_Multi_Tool";
				count = 4;
			};
			class _xx_VQI_TOOLS_PryBar
			{
				name = "VQI_TOOLS_PryBar";
				count = 4;
			};
			class _xx_VQI_TOOLS_Reamer
			{
				name = "VQI_TOOLS_Reamer";
				count = 4;
			};
			class _xx_VQI_TOOLS_MultiMeter
			{
				name = "VQI_TOOLS_MultiMeter";
				count = 4;
			};
			class _xx_VQI_TOOLS_Shock_Initiator
			{
				name = "VQI_TOOLS_Shock_Initiator";
				count = 4;
			};
			class _xx_Chemlight_Red
			{
				name = "Chemlight_Red";
				count = 24;
			};
			class _xx_SmokeShellRed
			{
				name = "SmokeShellRed";
				count = 5;
			};			
		};
	};
};