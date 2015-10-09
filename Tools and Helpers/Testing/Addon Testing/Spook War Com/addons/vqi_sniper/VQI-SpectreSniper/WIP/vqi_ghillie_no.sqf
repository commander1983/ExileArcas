//---- WIP-------------VQI-SpectreSniper-v0.1--------------WIP----//
//
hint "SpectreSniper: NO-Ghillie 0";
sleep 1;

SNIPERSENSE = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersense.sqf";



//IF in Ghillie Suit AND NOT Moving --> then Stealth
scopeName "stealth_main";
while {true} do
{

	
	
	
	scopeName "stealth_loop";
	if (true) then
	{
	
		
		while {((!isOnRoad position player) && (random 1 <= 0.95))} do 
		{ //setGusts???? BIS wind is kinda funky and erratic!
		
			if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
			 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then 
			{
			hint "Cocky Bastard, Sir...";
			player setCaptive false;
			sleep 5; //loop stealth check
				
			} else {
			
			hint "Movement Detection Possible!"; //IF you move, you're able to be spotted!
			player setCaptive false; terminate NG;
			SNIPERBREAK1 = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense.sqf";
			//sleep (20 + random 90); //HOW long BEFORE you can 'RE-HIDE' again?
			sleep 2;
			 
			};
		//sleep .02;	
		};
		
		
	};
	hint "SpectreSniper: Stealth OFF";
	player setCaptive false; terminate NG;
	SNIPERBREAK1 = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense.sqf";
	//sleep (20 + random 120); //HOW long BEFORE re-activates!!! (timeout x%)
	sleep 2; 
};
