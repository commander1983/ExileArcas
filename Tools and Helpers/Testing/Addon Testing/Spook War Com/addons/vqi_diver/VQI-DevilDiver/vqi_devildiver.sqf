/////////////////////////////////////////////////////////////////////////////
/*	ADDON: VQI-DEVILDIVER-v0		BY: R.Von Quest  aka the "Goblin"
	------------------------------------------------------------------------
	DEPT.: Von Quest Industries		STATUS: WORK-IN-PROGRESS
	PROJECT: DIVER SYSTEM			SERIES: SPOOKWARCOM
	ADDON NAME: DevilDiver			VERSION: v0 - 20.OCT.2014
	------------------------------------------------------------------------
	CREATOR: R. Von Quest - aka the "Goblin"
	CREDITS: n/a
	------------------------------------------------------------------------
	NOTES: WORK-IN-PROGRESS!
	
*/
/////////////////////////////////////////////////////////////////////////////



if (isServer) then  {
_subStart = [   0 ,0 ,0];
_sdvStart = [ 111, 0, 0];
_ddsStart = [-111, 0, 0];

//locSystem = "Sign_Sphere25cm_F" createVehicle _ddsStart;

locSystem = "B_SDV_01_F" createVehicle _ddsStart;
publicVariable "locSystem"; 
locSystem allowDamage false;
locSystem setPosASL [position locSystem select 0, position locSystem select 1, -5];


DDSLC = "VQI_DDS_LockoutChamber" createVehicle _ddsStart;
publicVariable "DDSLC";
DDSCL allowDamage false;
DDSLC attachTo [locSystem,[0,0,5]]; 
DDSLC setVectorUp [0,0,1];


VQISUB1 = "Submarine_01_F" createVehicle _subStart;
publicVariable "VQISUB1";
VQISUB1 allowDamage false; sleep 1;
VQISUB1 setDir random 360;



sleep 1;

VQISDV1 = "B_SDV_01_F" createVehicle _sdvStart;
publicVariable "VQISDV1";
VQISDV1 allowDamage false; sleep 1;
VQISDV1 attachTo [VQISUB1,[1.21,-2,5]]; sleep 1; 
VQISDV1 setDir 180; 
VQISDV1 setVectorUp [0,-0.06,1];
VQISDV1 animate ["Periscope", 3];
VQISDV1 animate ["Antenna", 3];

sleep 1;

VQISDV2 = "B_SDV_01_F" createVehicle _sdvStart;
publicVariable "VQISDV2";
VQISDV2 allowDamage false; sleep 1;
VQISDV2 attachTo [VQISUB1,[-1.22,-2,5]]; sleep 1; 
VQISDV2 setDir 180; 
VQISDV2 setVectorUp [0,-0.06,1];
VQISDV2 animate ["Periscope", 3];
VQISDV2 animate ["Antenna", 3];


sleep 1;
SDVLOCK = "Land_MetalWire_F" createVehicle _subStart;
publicVariable "SDVLOCK";
SDVLOCK attachTo [VQISUB1,[0.05,-4.33,3.15]];
sleep 1;
LOCLOCK = "Land_MetalWire_F" createVehicle (position player);
publicVariable "LOCLOCK";
LOCLOCK attachTo [DDSLC,[-4.3,-0.4,3.8]];
sleep 1;
LOCFLOOR = "Land_MetalWire_F" createVehicle (position player);
publicVariable "LOCFLOOR";
LOCFLOOR attachTo [DDSLC,[-4.3,-0.4,-20]];
sleep 1;
LOCFLOOD = "Land_CarBattery_01_F" createVehicle (position player);
publicVariable "LOCFLOOD";
LOCFLOOD attachTo [DDSLC,[-2.75,-3.8,-1.28]];
sleep 1;
LOCENTER = "Land_MetalWire_F" createVehicle (position player);
publicVariable "LOCENTER";
LOCENTER attachTo [VQISUB1,[0.05,17,3.83]];


sleep 5; //Build "Gear-Up" Room
execVM "vqi_diver\VQI-DevilDiver\vqi_HMSproteus_readyroom.sqf";




sleep 5;
VQISUB1 allowDamage false;
VQISDV1 allowDamage true;
VQISDV2 allowDamage true;

sleep 1;
//old MP addActions - Broke last Update!
//[VQI_DIVER_HMSPROTEUS,"fnc_MPaddAction1",nil,true] call BIS_fnc_MP;
//[SDVLOCK,"fnc_MPaddAction2",true,true] call BIS_fnc_MP;
//[LOCLOCK,"fnc_MPaddAction3",nil,true] call BIS_fnc_MP;
//[LOCFLOOD,"fnc_MPaddAction4",nil,true] call BIS_fnc_MP;


sleep 120;

//new MP addAction
[[VQI_DIVER_HMSPROTEUS, ["HMS Proteus: Request Submarine - Surface", "execVM 'vqi_diver\VQI-DevilDiver\vqi_request_subtransport_pickup.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["HMS Proteus: Request Submarine - Shallow", "execVM 'vqi_diver\VQI-DevilDiver\vqi_request_subtransport_shallow.sqf'; [VQI_DIVER_HMSPROTEUS, 2]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["HMS Proteus: Request Submarine - Deep", "execVM 'vqi_diver\VQI-DevilDiver\vqi_request_subtransport_deep.sqf'; [VQI_DIVER_HMSPROTEUS, 3]"]], "addAction", true, true] call BIS_fnc_MP;

sleep 1;
if (VQI_DIVER_BOARDING == 2) then {
	[[VQI_DIVER_HMSPROTEUS, ["HMS Proteus: Board Submarine", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_int_sub.sqf'; [VQI_DIVER_HMSPROTEUS, 4]"]], "addAction", true, true] call BIS_fnc_MP;
};
sleep 1;
/*
[[VQI_DIVER_HMSPROTEUS, ["SDV L - Loadout: Standard", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_standard.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV R - Loadout: Standard", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_standard.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV L - Loadout: Demolition", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_demo.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV R - Loadout: Demolition", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_demo.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV L - Loadout: Explosives", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_explosives.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV R - Loadout: Explosives", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_explosives.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV L - Loadout: Scout/Sniper", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_gear_scoutsniper.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
[[VQI_DIVER_HMSPROTEUS, ["SDV R - Loadout: Scout/Sniper", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_gear_scoutsniper.sqf'; [VQI_DIVER_HMSPROTEUS, 1]"]], "addAction", true, true] call BIS_fnc_MP;
*/
sleep 1;
[[SDVLOCK, ["SDV L: Disengage Lock", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_detach.sqf'; [SDVLOCK, 3]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["SDV L: Re-Engage Lock", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_l_attach.sqf'; [SDVLOCK, 3]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["SDV R: Disengage Lock", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_detach.sqf'; [SDVLOCK, 3]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["SDV R: Re-Engage Lock", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sdv_r_attach.sqf'; [SDVLOCK, 3]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["CRRC: Inflate Craft", "execVM 'vqi_diver\VQI-DevilDiver\vqi_crrc_inflate.sqf'; [SDVLOCK, 4]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["CRRC: Detach Craft", "execVM 'vqi_diver\VQI-DevilDiver\vqi_crrc_detach.sqf'; [SDVLOCK, 5]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["Lighting: Ext.RED - LOW VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_red.sqf'; [SDVLOCK, 6]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["Lighting: Ext.GRN - MED VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_grn.sqf'; [SDVLOCK, 7]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["Lighting: Ext.BLU - HIGH VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_blu.sqf'; [SDVLOCK, 8]"]], "addAction", true, true] call BIS_fnc_MP;
[[SDVLOCK, ["Lighting: Ext.OFF - BLACKOUT", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_off.sqf'; [SDVLOCK, 9]"]], "addAction", true, true] call BIS_fnc_MP;
sleep 1;
[[LOCLOCK, ["Open Hatch: Disembark", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_ext_sub.sqf'; [LOCLOCK, 10]"]], "addAction", true, true] call BIS_fnc_MP;
sleep 1;
[[LOCFLOOD, ["LOC System Valves: Flood Chamber", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_flood.sqf'; [LOCFLOOD, 11]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCFLOOD, ["LOC System Valves: Drain Chamber", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_drain.sqf'; [LOCFLOOD, 11]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCFLOOD, ["Lighting: Ext.RED - LOW VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_red.sqf'; [LOCFLOOD, 6]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCFLOOD, ["Lighting: Ext.GRN - MED VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_grn.sqf'; [LOCFLOOD, 7]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCFLOOD, ["Lighting: Ext.BLU - HIGH VIS", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_blu.sqf'; [LOCFLOOD, 8]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCFLOOD, ["Lighting: Ext.OFF - BLACKOUT", "execVM 'vqi_diver\VQI-DevilDiver\vqi_sub_extlight_off.sqf'; [LOCFLOOD, 9]"]], "addAction", true, true] call BIS_fnc_MP;
sleep 1;
[[LOCENTER, ["LOC: Enter Submarine", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_int_sub_enterloc.sqf'; [LOCENTER, 11]"]], "addAction", true, true] call BIS_fnc_MP;
[[LOCENTER, ["LOC System Valves: Flood Chamber", "execVM 'vqi_diver\VQI-DevilDiver\vqi_lockoutchamber_flood.sqf'; [LOCENTER, 10]"]], "addAction", true, true] call BIS_fnc_MP;


//sleep 1;
//hint "DDSLC Done";
};
/*  NOTES: ///////////////////////////////////////////////////////////////////
[[VQI_DIVER_HMSPROTEUS, ["Menu Text Here", "execVM '.sqf'; [VQI_DIVER_HMSPROTEUS, 2]"]], "addAction", true, true] call BIS_fnc_MP;

*/