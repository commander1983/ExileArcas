/*

 	Name: init.sqf


 	Author(s):
    Exile Mod Team
    WolfkillArcadia

 	Description:
    init

*/

//_________Igiload_________//
[] execVM "core\IgiLoad\IgiLoadInit.sqf";

//_________Nightime by WolfkillArcadia_________//
if (hasInterface) then {
//    [] execVM "core\night\initNight.sqf";
};

//__________Combatant Check by AUSMD___________//
notCombatant = false;
execVM "core\custom\combatantcheck\AUSMD_combatantcheck.sqf";
execVM "core\custom\combatantcheck\AUSMD_AINonCombatantCheck.sqf";
{if(!isPlayer _x) then {nul = [_x] execVM "core\custom\combatantcheck\AUSMD_AINonCombatantCheck.sqf";};} foreach allUnits;

//__________Dyanmic Weather by tortuosit___________//
/*
RANGES:
- weighting [-1..1]
- turbulence [0..1]
- wind speed in m/s
- wind dir [0..360]
- everything else [0..1]
*/

tort_island_overcast = [0.5, 0, 1, -0.5, 0.05];          //init, min, max, weight, turbulence
tort_island_fog =   [0.05, 0, 0.2, -0.7, 0];             //init, min, max, weight, turbulence
tort_island_wind =  [random 5, random 360, 0, 12, 0, 360, -0.3, 0.2]; //initS, initD, minS, maxS, minD, maxD, weight, turbulence
tort_island_rain =  [0, 0, 1, -0.5, 0, 0.8];          //init, min, max, weight, turbulence, overcastthreshold
tort_island_breakout = [0.2, 0.2, 300, 1500];

//tort_overcast_now = 0.6;
tort_overcast_min = 0;
tort_overcast_max = 1;
tort_overcast_weighting = -0.5;
tort_overcast_turbulence = 0.05;

//tort_fog_now = random 1;
tort_fog_min = 0;
tort_fog_max = 0.2;
tort_fog_weighting = -0.7;
tort_fog_turbulence = 0;

//tort_wind_speed_now = random 6;
tort_wind_speed_min = 0;
tort_wind_speed_max = 12;
tort_wind_dir_min = random 5;
tort_wind_dir_max = random 360;
tort_wind_weighting = -0.3;
tort_wind_turbulence = 0.2;

//tort_rain_now = random 1;
tort_rain_min = 0;
tort_rain_max = 1;
tort_rain_threshold = 0.8;

tort_breakout_p1 = 0.2;
tort_breakout_p2 = 0.2;
tort_breakout_s1 = 300;
tort_breakout_s2 = 1500;
//tort_breakout_changenow = true;
[] execVM "core\dynamicweather\init.sqf";


//______Little immersion Tweaks [lit]___//
/*
0: Bool; whether to leave these scripts on after player dies; default false.
    1: Map Subtractions Array (leave empty to disable):
        0: Bool; whether to remove "Show player on map" button; default true.
        1: Bool; whether to remove and disable map textures; default true.
        2: Bool; whether to remove cursor grid ref; default true.
        3: Bool; whether to use alternative cursor type; default true.
    2: Map Additions Array (leave empty to disable):
        0: Scalar: flashlight size to use (0 = normal, 1 = large); default 0.
        1: Bool: whether to enable NVG on map; default true.
        2: Bool: whether player starts with flashlight item; default true.
    3: NVG Array (leave empty to disable):
        0: Array (leave empty to disable):
            0: Scalar; max viewdistance of NVG; default 1000.
        1: Bool; whether to enable NVG grain; default true.
        2: Bool; whether to turn off NVG when using non-collimator optics; default true.
*/
if (!isDedicated and hasInterface) then {
    [true,[true,true,true,true],[0,true,false],[[1000],true,false]] execVM "core\vip_lit\vip_lit_init.sqf";
};

///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////

// Taken away for now
//#include "initServer.sqf"

if (!hasInterface || isServer) exitWith {};

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 45.4546;
_workBench setPosATL [14587.8, 16758.7, 0.0938587];

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 131.818;
_cashDesk setPosATL [14589.8, 16778.2, -0.0701294];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;
_microwave disableCollisionWith _cashDesk;
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;
_ketchup disableCollisionWith _cashDesk;
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;
_mustard disableCollisionWith _cashDesk;
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 208.182;
_chair setPosATL [14568.1, 16764.3, 0.084837];

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["InBaseMoves_Lean1"],
    [14571.5, 16759.1, 0.126438],
    0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [14566.3, 16773.2, 0.126438],
    140
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [14599.6, 16774.6, 5.12644],
    220
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [14608.4, 16901.3, 0],
    270
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [14596.5, 16752.9, 0.12644],
    133
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [14635, 16790.3, 0],
    156.294
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader =
[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [14603.7, 16877.3, 0.00143433],
    90
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 355.455;
_carWreck setPosATL [14605.6, 16877.3, 0.0208359];

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [14617.2, 16888.4, 0],
    269.96
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 01
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Guard_01",
    "WhiteHead_17",
    ["InBaseMoves_patrolling1"],
    [14564.9,16923.4,0.00146294],
    323.53
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 02
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Guard_02",
    "WhiteHead_03",
    ["InBaseMoves_patrolling2"],
    [14626.3,16834.6,4.72644],
    326.455
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 03
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Guard_03",
    "AfricanHead_03",
    ["InBaseMoves_patrolling1"],
    [14577.1,16793.1,3.75118],
    313.349
]
call ExileClient_object_trader_create;












///////////////////////////////////////////////////////////////////////////
// Western Guard 01
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Guard_02",
    "WhiteHead_03",
    ["InBaseMoves_patrolling2"],
    [2950.52,18195.3,4.93399],
    179.092
]
call ExileClient_object_trader_create;



///////////////////////////////////////////////////////////////////////////
// Western Boat Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2914.35,18192.9,8.51858],
    88.3346
]
call ExileClient_object_trader_create;




















///////////////////////////////////////////////////////////////////////////
// Western Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader =
[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [2980.19,18146.2,1.06391],
    222.352
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 130.966;
_carWreck setPosATL [2978.76,18144.5,1.13293];

///////////////////////////////////////////////////////////////////////////
// Western Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [2984.05,18133.4,0.00107765],
    29.3856
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Fast Food Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2979.87,18184.9,2.55185],
    89.2952
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Equipment Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2980.7,18192.9,2.49853],
    130.535
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Western Armory Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2986.43,18178.5,1.66267],
    296.855
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Western Guard 02
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Guard_03",
    "AfricanHead_03",
    ["InBaseMoves_patrolling1"],
    [2993.2,18167,0.353821],
    109.888
]
call ExileClient_object_trader_create;






///////////////////////////////////////////////////////////////////////////
// Eastern Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 222.727;
_cashDesk setPosATL [23353.1, 24168, 0.16585];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;
_microwave disableCollisionWith _cashDesk;
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;
_ketchup disableCollisionWith _cashDesk;
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;
_mustard disableCollisionWith _cashDesk;
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Boat Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [23296.6,24189.8,5.61213],
    96
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader =
[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [23385.6,24191.6,0.00136566],
    123
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 47.2728;
_carWreck setPosATL [23387.3, 24190.3, 0.05];

///////////////////////////////////////////////////////////////////////////
// Eastern Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 279.545;
_workBench setPosATL [23371.6, 24188, 0.89873];

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [23379.9, 24169.3, 0.199955],
    206
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 12.7272;
_chair setPosATL [23379.6, 24169.3, 4.56662];

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [23336.6,24214.4,0.00115061],
    346
]
call ExileClient_object_trader_create;
_chair setDir 12.7272;
_chair setPosATL [23379.6, 24169.3, 4.56662];

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;
