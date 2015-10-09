
/*
class CfgPatches 
{
	class VQI_SniperRifle 
	{
		requiredaddons[] = {"A3_Weapons_F"};
		requiredversion = 0.1;
		units[] = {};
		weapons[] = {"VQI_SniperRifle"};
		magazines[] = {""};
	};
};


class CfgWeapons 
{
	class arifle_MX_Base_F;

	class VQI_SniperRifle : arifle_MX_Base_F 
	{
		scope = 2;
	};
};
*/





/*
class CfgMagazines {
	///external class 30Rnd_556x45_Stanag;
	class tb_30Rnd_556x45_B_Stanag : 30Rnd_556x45_Stanag {
		ammo = "TB_556x45_Ball";
		count = 30;
		descriptionshort = "Caliber: 45 ACP UMP Mag<br />Rounds: 30<br />Used in: HK UMP-45";
		displayname = "45 ACP 30rnd UMP Mag (Ball)";
		initspeed = 930;
		lastroundstracer = 0;
		picture = "\tb_arifle_hkump45\UI\gear_hkump45_mag_ca";
		model = "tb_arifle_hkump45\hkump_mag";
		scope = 2;
		tracersevery = 0;
	};
	class tb_30Rnd_556x45_T_Stanag : tb_30Rnd_556x45_B_Stanag {
		ammo = "TB_556x45_Tracer";
		descriptionshort = "Caliber: 45 ACP UMP Mag<br />Rounds: 30<br />Used in: HK UMP-45";
		displayname = "45 ACP 30rnd UMP Mag (Tracer)";
		lastroundstracer = 0;
		scope = 2;
		tracersevery = 1;
	};
};
class CfgAmmo {
	////external class B_556x45_Ball;
	class TB_556x45_Ball : B_556x45_Ball {
		airfriction = -0.001425;
		caliber = 0.5;
		cost = 1;
		deflecting = 20;
		hit = 8;
		indirecthit = 0;
		indirecthitrange = 0;
		model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
		nvgonly = 1;
		tracerendtime = 1;
		tracerscale = 1;
		tracerstarttime = 0.05;
	};
	class TB_556x45_Tracer : TB_556x45_Ball {
		airfriction = -0.001425;
		caliber = 0.4;
		model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
		nvgonly = 0;
		tracerendtime = 1.4;
		tracerscale = 1;
		tracerstarttime = 0.06;
	};
};		

*/