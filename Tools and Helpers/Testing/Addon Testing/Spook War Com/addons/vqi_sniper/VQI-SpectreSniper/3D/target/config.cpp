class CfgPatches{
	class VQI_Targets {
		units[] = {""};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgAddons {
	class VQI_Targets {
		list[]={VQI_Target_Black};
	};
};

class CfgVehicleClasses {
	class VQI_Targets {
	// name in editor
	displayName="VQI Sniper Targets";
	};
};

class CfgVehicles {
	class Building;	// External class reference
	class FloatingStructure_F;	// External class reference
	class Thing;	// External class reference
	class ThingX;	// External class reference
	class Wall_F;	// External class reference
	
	class NonStrategic : Building {
		class AnimationSources;	// External class reference
	};
	class FlagCarrierCore;	// External class reference
	
	class VQI_Target_Black: NonStrategic {
		scope=2;
		author="R.Von Quest aka 'Goblin'";
		model="\vqi_sniper\VQI-SpectreSniper\3D\target\target.p3d"; //note: for image path, remove the first
		icon="\vqi_sniper\VQI-SpectreSniper\3D\iconTARGET.paa";
		armor=5555;
		displayName="VQI Target (black)";
		vehicleClass="VQI_Targets";
		destrType = "DestructTree";
		//class eventHandlers 
		//{
		//	init = "[_this select 0] execVM '\vqi_sniper\VQI-SpectreSniper\SniperData\moduleEH.sqf'";
		//};
	}
}