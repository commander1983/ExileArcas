class CfgPatches {
	class repair_items {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F"};
	};
};

class CfgMagazines {
	class CA_Magazine;
	class PartFueltank : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 20;
		displayName = "Fuel Tank Parts";
		model = "\repair_items\models\fueltank.p3d";
		picture = "\repair_items\textures\equip_fueltank_ca.paa";
		descriptionShort = "Various parts to repair or replace broken fuel tanks on vehicles";
	};

	class PartWheel : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 15;
		displayName = "Vehicle Tire Wheel";
		model = "\repair_items\models\wheel.p3d";
		picture = "\repair_items\textures\equip_wheel_ca.paa";
		descriptionShort = "A spare vehicle tire wheel, useful for repairing or replacing damaged tires";
	};

	class PartGeneric : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 10;
		displayName = "Generic Metal Parts";
		model = "\repair_items\models\genericparts.p3d";
		picture = "\repair_items\textures\equip_genericparts_ca.paa";
		descriptionShort = "A pile of various metal parts. Not really sure what half of these are for, but I might be able to repair a vehicles hull with this";
	};

	class PartEngine : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 30;
		displayName = "Engine Parts";
		model = "\repair_items\models\engine.p3d";
		picture = "\repair_items\textures\equip_engine_ca.paa";
		descriptionShort = "An intact engine with extra parts, I can repair a vehicles engine with this";
	};

	class PartVRotor : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 40;
		displayName = "Helicopter Rotor Parts";
		model = "\repair_items\models\vrotor.p3d";
		picture = "\repair_items\textures\equip_vrotor_ca.paa";
		descriptionShort = "I do not know how I am going to lift it, but I can repair/replace the rotor assemblies on a helicopter with this";
	};

	class PartGlass : CA_Magazine {
		scope = 2;
		count = 1;
		mass = 25;
		displayName = "Vehicle Safety Glass";
		model = "\repair_items\models\carglass.p3d";
		picture = "\repair_items\textures\equip_carglass_ca.paa";
		descriptionShort = "Not broken safety glass, I can replace the ones in vehicles with this";
	};
};
