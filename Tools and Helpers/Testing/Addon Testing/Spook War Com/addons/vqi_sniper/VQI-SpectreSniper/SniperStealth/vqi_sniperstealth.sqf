//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//

//hint "vqi_sniperstealth";

private ["_blindDist","_ghillieX","_ghillie","_blindPos","_onAlertR","_onAlertG","_onAlertX","_dxx","_pos","_n50","_grn","_red","_bad"];
sleep 1;


//use call function?

while {true} do {


_ghillieX = 2; // 50% deduction (knowsAbout) if ghillie (0-8 combined)
_blindPos = round ((player distance sniperVeg5) * 100) / 100; //
_camoType = 1; //reduce? Too big?

_onAlertR = round ((east knowsAbout player) * 100) / 100; // 
_onAlertG = round ((resistance knowsAbout player) * 100) / 100; //
_onAlertX = _onAlertR + _onAlertG;

_dxx = 300; // 50/200 ScoutSniper split?

if ("U_B_GhillieSuit" == uniform player) then {
_onAlertX = _onAlertR + _onAlertG - _ghillieX; 
_dxx = 100; _camoType = 2;}; //200m boost

_pos = getPos player;
_n50 = _pos nearEntities _dxx;
_grn = resistance countSide _n50;
_red = east countSide _n50;
_bad = _grn + _red;


	
	if (_blindPos < _camoType) then {
	
	
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
		 
		 
			if (_onAlertX > 2 && _bad >= 1) then {
			
				player setCaptive false;
				
			} else { 
				player setCaptive true;  	//SniperStealth ON
				ScoutSniperStealth = true; //SniperStealth ON
				
				while {ScoutSniperStealth} do {
					if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
					 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
					 
						sleep 0.5;
						
					} else { 
						ScoutSniperStealth = false; 
					};
				};
			};
		
		} else { 
			//terminate BUILDBLIND;
			//terminate SNIPER_SENSES;
			//player setCaptive false;
			//RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";
		};
	
	} else {
		//terminate BUILDBLIND;
		//terminate SNIPER_SENSES;
		//player setCaptive false; 
		//RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";
	};

	
//terminate BUILDBLIND;
//terminate SNIPER_SENSES;
//player setCaptive false;
RESETSNIPER = [] execVM "\vqi_sniper\VQI-SpectreSniper\vqi_reset_snipersystem.sqf";

sleep 3;
if (ScoutSniperFiredxx) then { sleep 10 + random 60; };
};


/* Notes:

ADD: ScoutSniperFired = true; (for the delays?)










_ghillieX = 1; // 25% boost if ghillie
_blindPos = player distance sniperVeg1;

_onAlertR = east knowsAbout player;
_onAlertG = resistance knowsAbout player;
_onAlertX = _onAlertR + _onAlertG;

if ("U_B_GhillieSuit" == uniform player) then {
_onAlertX = _onAlertR + _onAlertG - _ghillieX; 
_dxx = 100; } else { _dxx = 300; }; //200m boost

_pos = getPos player;
_n50 = _pos nearEntities _dxx;
_grn = resistance countSide _n50;
_red = east countSide _n50;
_bad = _grn + _red;
hint format [" - STEALTH - \n Red: %1 + Grn: %2 = onAlert: %3 \n \n RedGuys: %4 \n GreenGuys: %5 \n \n Dist: %6",_onAlertR, _onAlertG, _onAlertX, _red, _grn, _dxx];
*/