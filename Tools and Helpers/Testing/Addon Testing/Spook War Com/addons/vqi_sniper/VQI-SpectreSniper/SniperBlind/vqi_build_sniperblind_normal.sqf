//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//SniperBlind - NORMAL - 2min Build-Time

//hint "vqi_build_sniperblind_normal";



//System Reset, Clear & Start...
execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";
sleep 1;


private ["_surface"];

_surface = surfaceType position player;

if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {


	// NO Roads   <------nor------>   Low Veg, Sandy, or Rocky Areas!
	if (!isOnRoad position player && _surface != "#GdtStratisConcrete" && _surface != "#GdtStratisRocky" && _surface != "#GdtStratisBeach" && _surface != "#GdtStratisDirt"
		 && _surface != "#GdtBeach" && _surface != "#GdtDirt" && _surface != "#GdtSoil" && _surface != "#GdtStony" && _surface != "#GdtConcrete" && _surface != "#GdtDead" 
		 && _surface != "#GdtSeabed") then {
		 
		if (VQI_HINTS_SNIPER == 1) then {hint "Building Sniper Hide/Blind... \n Normal: 2 minutes (appx)"; sleep 1;}; 

		//The Blind/Hide: Vegetation, Plants, Terrain, etc
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
		sniperVeg0 = 'Str_Grass_Dry' createVehicle getPos player;
		sniperVeg0 attachTo [player,[0.3,0.3,0]]; 
		detach sniperVeg0; sniperVeg0 setDir random 359; };
		sleep 10;
		
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
		sniperVeg1 = 'Str_Grass_Dry' createVehicle getPos player;
		sniperVeg1 attachTo [player,[0.3,0.3,0]]; 
		detach sniperVeg1; sniperVeg1 setDir random 359; };
		sleep 25;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg2 = 'Str_WeedBrown_Tall' createVehicle getPos player; 
		sniperVeg2 attachTo [player,[0,0,0.3]]; 
		detach sniperVeg2; sniperVeg2 setDir random 359; };
		sleep 25;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg3 = 'Str_WeedGreen_Tall' createVehicle getPos player;
		sniperVeg3 attachTo [player,[0,0.3,0.3]]; 
		detach sniperVeg3; sniperVeg3 setDir random 359; };
		sleep 25;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg4 = 'Plant_Germander_Group' createVehicle getPos player;
		sniperVeg4 attachTo [player,[0.4,0.4,0.3]]; 
		detach sniperVeg4; sniperVeg4 setDir random 359; };
		sleep 25;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg5 = 'Plant_Green_Shrub' createVehicle getPos player;
		sniperVeg5 attachTo [player,[0,-0.5,0.2]]; 
		detach sniperVeg5; sniperVeg5 setDir random 359; };
		
		
		sleep 1;
		
		//StealthBuild Modifier
		missionNamespace setVariable ["SniperBlindSkill",2];
		sleep 1;
		missionNamespace setVariable ["ScoutSniperFiredxx", false];
		sleep 1;
		
		
		//Start SniperStealth, SniperSense, trgCheck
		if (VQI_SENSES_SNIPER == 1) then {
		SNIPER_SENSES = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersenses.sqf"; sleep 2;};
		
		if (VQI_STEALTH_SNIPER == 1) then { terminate SNIPERSTEALTH;
		SNIPERSTEALTH = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_sniperstealth.sqf"; sleep 1;
		SNIPERTRIGGER = [] execVM "\vqi_sniper\VQI-SpectreSniper\SniperStealth\vqi_triggers_sniperstealth.sqf";};

	} else {
		hint "Insufficient Vegetation";
	};

};











//sleep 5;
//hint "vqi_build_sniperblind END";


/* Notes:
Find Surface & Objects:
_surface = surfaceType position player; _objects = nearestObjects [player, [], 3]; hint format ["Surface: %1 \n \n Objects: %2", _surface, _objects];

Use SPAWN if Debug Console!
null = [] spawn { _spotted = east knowsAbout player; if (_spotted > 2) then {   hint "Spotted";  } else {   hint "Sneaky...";  };   sleep 1;   hint format ["knowsAbout: %1", _spotted]; };



_spottedR = east knowsAbout player;
_spottedG = resistance knowsAbout player;
_spottedE = _spottedR + _spottedG;

_dxx = 100;
_pos = getPos player;
_n50 = _pos nearEntities _dxx;
_grn = resistance countSide _n50;
_red = east countSide _n50;
_bad = _grn + _red;

if (_spottedE > 2 && _bad >= 1) then {
	hint "Spotted";
} else {
	hint "Sneaky...";
};
*/