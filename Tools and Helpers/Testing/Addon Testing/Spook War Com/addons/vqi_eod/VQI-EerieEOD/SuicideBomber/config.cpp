class CfgPatches 
{
	class VQI_IED_Gear
	{
		units[] = {"VQI_IED_Gear"};
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
	class VQI_EXP_PipeBomb: ItemCompass
	{
		displayName = "IED: PipeBomb";
		count = 1;
		class ItemInfo
        	{
            	mass = 20;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_exp_pipebomb.paa";
		descriptionShort = "Crude Explosive Device";
	};
	
	class VQI_EXP_Clacker: ItemWatch
	{
		displayName = "Trigger: Clacker";
		count = 1;
		class ItemInfo
        	{
            	mass = 5;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_exp_clacker.paa";
		descriptionShort = "Handheld Mil-Spec Trigger";
	};
	
	class VQI_Cellphone1_silver: ItemRadio
	{
		displayName = "Cellphone";
		count = 1;
		class ItemInfo
        	{
            	mass = 2;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cellphone1_silver.paa";
		descriptionShort = "774-895-6660";
	};
	
	class VQI_Cig_Camel: ItemGPS
	{
		displayName = "Cigarettes";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cig_camel.paa";
		descriptionShort = "Crude Cancer-Causing Device";
	};
	
	class VQI_Cig_Marlboro: ItemGPS
	{
		displayName = "Cigarettes";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cig_marlboro.paa";
		descriptionShort = "Crude Cancer-Causing Device";
	};
	
	class VQI_Cig_LuckyStrike: ItemGPS
	{
		displayName = "Cigarettes";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cig_luckystrike.paa";
		descriptionShort = "Crude Cancer-Causing Device";
	};
	
	class VQI_Cig_Mild7: ItemGPS
	{
		displayName = "Cigarettes";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cig_mild7.paa";
		descriptionShort = "Crude Cancer-Causing Device";
	};
	
	class VQI_Cig_PaulMall: ItemGPS
	{
		displayName = "Cigarettes";
		count = 1;
		class ItemInfo
        	{
            	mass = 1;
        	}; 
		picture = "\vqi_eod\VQI-EerieEOD\SuicideBomber\images\vqi_cig_paulmall.paa";
		descriptionShort = "Crude Cancer-Causing Device";
	};
};