//---- WIP-------------VQI-SpectreSniper-v0.1--------------WIP----//
//
hint "SpectreSniper: NO-Ghillie-WITHBLIND 85";
sleep 1;

terminate WG; terminate NG; //terminate SNIPERSENSE; sleep 2;
//SNIPERSENSE = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersense.sqf";

sleep 2;

//IF in Ghillie Suit AND NOT Moving --> then Stealth
scopeName "stealth_main";
while {true} do
{

	
	
	
	scopeName "stealth_loop";
	if (true) then
	{
	
		
		while {((!isOnRoad position player) && (random 1 <= 0.85))} do 
		{ //setGusts???? BIS wind is kinda funky and erratic!
		
			if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
			 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then 
			{
			hint "Mostly Sneaky, Sir...";
			player setCaptive true;
			sleep 5; //loop stealth check
				
			} else {
			
			hint "Movement Detection Possible!"; //IF you move, you're able to be spotted!
			player setCaptive false;
			SNIPERBREAK1 = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense.sqf";
			//sleep (20 + random 90); //HOW long BEFORE you can 'RE-HIDE' again?
			sleep 2;
			 
			};
		//sleep .02;	
		};
		
		
	};
	hint "SpectreSniper: Stealth OFF";
	player setCaptive false;
	SNIPERBREAK1 = [] execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_breaksense.sqf";
	//sleep (20 + random 120); //HOW long BEFORE re-activates!!! (timeout x%)
	sleep 2; 
};
