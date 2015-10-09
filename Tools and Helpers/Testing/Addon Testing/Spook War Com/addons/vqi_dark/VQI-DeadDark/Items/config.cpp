class CfgPatches 
{
	class VQI_DARK_Items
	{
		units[] = {"VQI_DARK_Items"};
		weapons[] = {};
		requiredVersion = 0.1;
	};
};

class CfgWeapons
{
	class ItemCompass;
	class ItemWatch;
	class ItemMap;
	class ItemRadio;
	class ItemGPS;
	//class ItemMap; //?
	
	class VQI_Bugspray_Off: ItemMap //
	{
		displayName = "Bug Spray: Off!";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_bugspray_off.paa";
		descriptionShort = "Small; Insect Repellent";
	};
	
	class VQI_DogTags: ItemMap //VQI_DARK_DogTags? classname include sub-mod ID?
	{
		displayName = "Military Dogtags";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_dogtags.paa"; //vqi_dark_dogtags.paa ?
		descriptionShort = "Name, Rank, Serial #, etc";
	};
	
	class VQI_Money_US_1: ItemMap //
	{
		displayName = "$1.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_1.paa";
		descriptionShort = "US One Dollar Bill";
	};
	
	class VQI_Money_US_5: ItemMap //
	{
		displayName = "$5.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_5.paa";
		descriptionShort = "US Five Dollar Bill";
	};
	
	class VQI_Money_US_10: ItemMap //
	{
		displayName = "$10.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_10.paa";
		descriptionShort = "US Ten Dollar Bill";
	};
	
	class VQI_Money_US_20: ItemMap //
	{
		displayName = "$20.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_20.paa";
		descriptionShort = "US Twenty Dollar Bill";
	};
	
	class VQI_Money_US_50: ItemMap //
	{
		displayName = "$50.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_50.paa";
		descriptionShort = "US Fifty Dollar Bill";
	};
	
	class VQI_Money_US_100: ItemMap //
	{
		displayName = "$100.00";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_money_us_100.paa";
		descriptionShort = "US One Hundred Dollar Bill";
	};
	
	class VQI_Magazine_Playboy1: ItemMap //
	{
		displayName = "Playboy Magazine";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_magazine_playboy1.paa";
		descriptionShort = "December 1997";
	};
	
	class VQI_Comic_Superman1: ItemMap //
	{
		displayName = "Comic Book";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_comic_superman1.paa";
		descriptionShort = "Superman #82";
	};
	
	class VQI_MRE_Meatballs: ItemMap //
	{
		displayName = "MRE: Meatballs";
		count = 1;
		class ItemInfo
        	{
            	mass = 2;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_mre_meatballs.paa";
		descriptionShort = "Meal-Ready-To-Eat";
	};
	
	class VQI_MRE_PorkChops: ItemMap //
	{
		displayName = "MRE: Pork Chops";
		count = 1;
		class ItemInfo
        	{
            	mass = 2;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_mre_porkchops.paa";
		descriptionShort = "Meal-Ready-To-Eat";
	};
	
	class VQI_Gun_CleaningKit: ItemMap //
	{
		displayName = "Gun Cleaning Kit";
		count = 1;
		class ItemInfo
        	{
            	mass = 4;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_gun_cleaningkit.paa";
		descriptionShort = "Medium Case; All-in-One";
	};
	
	class VQI_FM531_BoobyTraps: ItemMap //
	{
		displayName = "FM 5-31: BOOBYTRAPS";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_fm531_boobytraps.paa";
		descriptionShort = "Field Manual, Army; Sept '65";
	};
	
	class VQI_Notebook_Blue: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_blue.paa";
		descriptionShort = "Blue Notebook; Small";
	};
	
	class VQI_Notebook_Green: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_green.paa";
		descriptionShort = "Green Notebook; Small";
	};
	
	class VQI_Notebook_Orange: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_orange.paa";
		descriptionShort = "Orange Notebook; Small";
	};
	
	class VQI_Notebook_Pink: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_pink.paa";
		descriptionShort = "Pink Notebook; Small";
	};
	
	class VQI_Notebook_Purple: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_purple.paa";
		descriptionShort = "Purple Notebook; Small";
	};
	
	class VQI_Notebook_Red: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_red.paa";
		descriptionShort = "Red Notebook; Small";
	};
	
	class VQI_Notebook_Teal: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_teal.paa";
		descriptionShort = "Teal Notebook; Small";
	};
	
	class VQI_Notebook_Freq_Arty: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_orange.paa";
		descriptionShort = "Radio Frequencies: Artillery";
	};
	
	class VQI_Notebook_Freq_QRF_HeliTeam: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_green.paa";
		descriptionShort = "Radio Frequencies: QRF HeliTeam";
	};
	
	class VQI_Notebook_Freq_QRF_Paratroops: ItemMap //
	{
		displayName = "Notebook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_notebook_teal.paa";
		descriptionShort = "Radio Frequencies: QRF Paratroops";
	};
	
	class VQI_Food_JuiceBox1: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox1.paa";
		descriptionShort = "Hi-C: Orange LavaBlast";
	};
	
	class VQI_Food_JuiceBox2: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox2.paa";
		descriptionShort = "Hi-C: Fruit Punch";
	};
	
	class VQI_Food_JuiceBox3: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox3.paa";
		descriptionShort = "Hi-C: Kiwi Kraze";
	};
	
	class VQI_Food_JuiceBox4: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox4.paa";
		descriptionShort = "Hi-C: Mogwai Melon";
	};
	
	class VQI_Food_JuiceBox5: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox5.paa";
		descriptionShort = "Hi-C: Sam's Orangeade Stand";
	};
	
	class VQI_Food_JuiceBox6: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox6.paa";
		descriptionShort = "Hi-C: Beetle Juice";
	};
	
	class VQI_Food_JuiceBox7: ItemMap //
	{
		displayName = "JuiceBox";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_food_juicebox7.paa";
		descriptionShort = "Hi-C: Jason's Machete Cherry";
	};
	
	class VQI_Lighter_Blue: ItemMap //
	{
		displayName = "Lighter";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_lighter_blue.paa";
		descriptionShort = "BIC Lighter, Blue";
	};
	
	class VQI_Lighter_Green: ItemMap //
	{
		displayName = "Lighter";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_lighter_green.paa";
		descriptionShort = "BIC Lighter, Green";
	};
	
	class VQI_Lighter_Metal: ItemMap //
	{
		displayName = "Lighter";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_lighter_metal.paa";
		descriptionShort = "Metal Lighter";
	};
	
	class VQI_Matchbook1: ItemMap //
	{
		displayName = "Matchbook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_matchbook1.paa";
		descriptionShort = "Matchbook, Vintage";
	};
	
	class VQI_Matchbook2: ItemMap //
	{
		displayName = "Matchbook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_matchbook2.paa";
		descriptionShort = "Matchbook, Vintage";
	};
	
	class VQI_Matchbook3: ItemMap //
	{
		displayName = "Matchbook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_matchbook3.paa";
		descriptionShort = "Matchbook, Vintage";
	};
	
	class VQI_Matchbook4: ItemMap //
	{
		displayName = "Matchbook";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_matchbook4.paa";
		descriptionShort = "Matchbook, Vintage";
	};
	
	class VQI_Medical_Band_Aid: ItemMap //
	{
		displayName = "Band-Aid";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_medical_band-aid.paa";
		descriptionShort = "Bandages, Small Box";
	};
	
	class VQI_Radio_Weather: ItemMap //
	{
		displayName = "Radio";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_radio_weather.paa";
		descriptionShort = "Weather Radio";
	};
	
	class VQI_Schematic1: ItemMap //
	{
		displayName = "Schematic";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_schematic1.paa";
		descriptionShort = "Blueprint: Unknown";
	};
	
	class VQI_Schematic2: ItemMap //
	{
		displayName = "Schematic";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_schematic2.paa";
		descriptionShort = "Blueprint: Unknown";
	};
	
	class VQI_Schematic3: ItemMap //
	{
		displayName = "Schematic";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_schematic3.paa";
		descriptionShort = "Blueprint: Submarine";
	};
	
	class VQI_Schematic_X1: ItemMap //
	{
		displayName = "Schematic";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_dark\VQI-DeadDARK\Items\images\vqi_schematic_x1.paa";
		descriptionShort = "Blueprint: Unknown";
	};
};

