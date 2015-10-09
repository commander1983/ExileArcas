//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//SniperBlind - THICK - 10min Build-Time

//hint "vqi_build_sniperblind_thick";



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
		 
		if (VQI_HINTS_SNIPER == 1) then {hint "Building Sniper Hide/Blind... \n Thick: upto 10 minutes (appx) \n work-in-progress"; sleep 1;}; 

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
		sleep 60;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg4 = 'Plant_Germander_Group' createVehicle getPos player;
		sniperVeg4 attachTo [player,[0.4,0.4,0.3]]; 
		detach sniperVeg4; sniperVeg4 setDir random 359; };
		sleep 60;

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg5 = 'Plant_Green_Shrub' createVehicle getPos player;
		sniperVeg5 attachTo [player,[0,-0.5,0.2]]; 
		detach sniperVeg5; sniperVeg5 setDir random 359; };
		sleep (random 60);
		
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg6 = 'Plant_Germander_Group' createVehicle getPos player;
		sniperVeg6 attachTo [player,[1,0.4,0.3]]; 
		detach sniperVeg6; sniperVeg6 setDir random 359; };
		sleep (random 60);

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg7 = 'Plant_Green_Shrub' createVehicle getPos player;
		sniperVeg7 attachTo [player,[-1,-0.5,0.2]]; 
		detach sniperVeg7; sniperVeg7 setDir random 359; };
		sleep (random 60);
		
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg8 = 'Plant_Germander_Group' createVehicle getPos player;
		sniperVeg8 attachTo [player,[0.4,1,0.3]]; 
		detach sniperVeg8; sniperVeg8 setDir random 359; };
		sleep (random 60);

		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
		sniperVeg9 = 'Plant_Green_Shrub' createVehicle getPos player;
		sniperVeg9 attachTo [player,[0,-1,0.2]]; 
		detach sniperVeg9; sniperVeg9 setDir random 359; };
		
		
		sleep 1;
		
		//StealthBuild Modifier
		missionNamespace setVariable ["SniperBlindSkill",3];
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