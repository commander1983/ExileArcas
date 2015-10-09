//-------------VQI SniperSystem 0.5---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//
//missionNamespace setVariable ["ScoutSniperStealth",false];
//missionNamespace setVariable ["SniperBlindSkill",1];

hint "vqi_debug_stealth";
missionNamespace setVariable ["DebugKeyToggle",true];



private ["_blindDist","_ghillieX","_ghillie","_blindPos","_onAlertR","_onAlertG","_onAlertX","_dxx","_pos","_n50","_grn","_red","_bad"];
sleep 1;

//_ssStealth = missionNamespace getVariable "ScoutSniperStealth";
//_blindHide = missionNamespace getVariable "SniperBlindSkill";

_deBug = 0;
if (VQI_HINTS_SNIPER == 1) then {_deBug = 1;};

if (_deBug == 1) then {

	while {true} do {

		_camoType = 1;
		_ghillieX = 3; // 75% boost if ghillie? (0-8 combined)
		_blindPos = 100;
		_blindPox = ">";
		
		
		if (!isNull (sniperVeg5)) then {
			_blindPos = round ((player distance sniperVeg5) * 100) / 100; 
			_blindPox = "";
		}; //
		
		
		_onAlertR = round ((east knowsAbout player) * 100) / 100; // 
		_onAlertG = round ((resistance knowsAbout player) * 100) / 100; //
		_onAlertX = _onAlertR + _onAlertG;
		
		
		_ssStatus = "Exposed/Vulnerable"; _pSSG = ""; _pSSW = "*";
		if (ScoutSniperStealth) then { _ssStatus = "Normal/Good"; _pSSG = "*"; _pSSW = "";}; 
		
		_dxx = 300; // 50/200 ScoutSniper split
		
		_pGhillie = "NO";
		if ("U_B_GhillieSuit" == uniform player) then {
		_onAlertX = _onAlertR + _onAlertG - _ghillieX; 
		_dxx = 100; _camoType = 2; _pGhillie = "YES";}; //200m boost
		
		_inBlind = "YES";
		if (_blindPos > _camoType) then { _inBlind = "NO"; };

		_blindType = "n/a";
		if (SniperBlindSkill == 1) then { _blindType = "Sparse"; };
		if (SniperBlindSkill == 2) then { _blindType = "Normal"; };
		if (SniperBlindSkill == 3) then { _blindType = "Thick"; };
		if (SniperBlindSkill == 4) then { _blindType = "Urban"; };

		

		_pos = getPos player;
		_n50 = _pos nearEntities _dxx;
		_grn = resistance countSide _n50;
		_red = east countSide _n50;
		_bad = _grn + _red; 
		
		
		_ssColorG = "|";
		_ssColorB = "|";
		_ssColorW = "|";
		_ssColorR = "|";
		
		_sniperStealth = "";
		
		
		//------------------------------------------------------------------------------------------------
		// SniperStealth System Readout & Experimenting
		_sssG = 0;
		_modP = 0;
		_modG = 0;
		_modB = 1;
		_modS = 1;
		
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
			_modP = 5;
		};
		
		if ("U_B_GhillieSuit" == uniform player) then { _modG = 5; };
		//if (_blindPos > 45) then { _blindPos = 0; };
		
		if (SniperBlindSkill == 1) then { _modB = 2; };
		if (SniperBlindSkill == 2) then { _modB = 3; };
		if (SniperBlindSkill == 3) then { _modB = 4; };
		if (SniperBlindSkill == 4) then { _modB = 4; };
		
		if (ScoutSniperStealth) then { _modS = 10; };
		
		_sssG = ((_modS * _modB) + (_modP + _modG)) / (_blindPos * .01);
		
		if (_sssG >=  0) then { _ssColorG = "|"; };
		if (_sssG >=  1) then { _ssColorG = "|"; };
		if (_sssG >=  2) then { _ssColorG = "||"; };
		if (_sssG >=  3) then { _ssColorG = "|||"; };
		if (_sssG >=  4) then { _ssColorG = "||||"; };
		if (_sssG >=  5) then { _ssColorG = "|||||"; };
		if (_sssG >=  6) then { _ssColorG = "||||||"; };
		if (_sssG >=  7) then { _ssColorG = "|||||||"; };
		if (_sssG >=  8) then { _ssColorG = "||||||||"; };
		if (_sssG >=  9) then { _ssColorG = "|||||||||"; };
		if (_sssG >= 10) then { _ssColorG = "||||||||||"; };
		if (_sssG >= 11) then { _ssColorG = "|||||||||||"; };
		if (_sssG >= 12) then { _ssColorG = "||||||||||||"; };
		if (_sssG >= 13) then { _ssColorG = "|||||||||||||"; };
		if (_sssG >= 14) then { _ssColorG = "||||||||||||||"; };
		if (_sssG >= 15) then { _ssColorG = "|||||||||||||||"; };
		if (_sssG >= 16) then { _ssColorG = "||||||||||||||||"; };
		if (_sssG >= 17) then { _ssColorG = "|||||||||||||||||"; };
		if (_sssG >= 18) then { _ssColorG = "||||||||||||||||||"; };
		if (_sssG >= 19) then { _ssColorG = "|||||||||||||||||||"; };
		if (_sssG >= 20) then { _ssColorG = "||||||||||||||||||||"; };
		if (_sssG >= 21) then { _ssColorG = "|||||||||||||||||||||"; };
		if (_sssG >= 22) then { _ssColorG = "||||||||||||||||||||||"; };
		if (_sssG >= 23) then { _ssColorG = "|||||||||||||||||||||||"; };
		if (_sssG >= 24) then { _ssColorG = "||||||||||||||||||||||||"; };
		if (_sssG >= 25) then { _ssColorG = "|||||||||||||||||||||||||"; };
		if (_sssG >= 26) then { _ssColorG = "||||||||||||||||||||||||||"; };
		if (_sssG >= 27) then { _ssColorG = "|||||||||||||||||||||||||||"; };
		if (_sssG >= 28) then { _ssColorG = "||||||||||||||||||||||||||||"; };
		if (_sssG >= 29) then { _ssColorG = "|||||||||||||||||||||||||||||"; };
		if (_sssG >= 30) then { _ssColorG = "||||||||||||||||||||||||||||||"; };
		if (_sssG >= 31) then { _ssColorG = "|||||||||||||||||||||||||||||||"; };
		if (_sssG >= 32) then { _ssColorG = "||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 33) then { _ssColorG = "|||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 34) then { _ssColorG = "||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 35) then { _ssColorG = "|||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 36) then { _ssColorG = "||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 37) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 38) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 39) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 40) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 41) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 42) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 43) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 44) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 45) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 46) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 47) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 48) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 49) then { _ssColorG = "|||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_sssG >= 50) then { _ssColorG = "||||||||||||||||||||||||||||||||||||||||||||||||||"; };
		
		
		//---------------------------------------------------------------------------------------
		// Caution Red + Grn Total within 1000m
		_cauO = 0;
		_dxxT = 1000;
		_n50T = _pos nearEntities _dxxT;
		_grnT = resistance countSide _n50T;
		_redT = east countSide _n50T;
		
		_cauO = _grnT + _redT;
		
		if (_cauO >=  0) then { _ssColorW = "|"; };
		if (_cauO >=  1) then { _ssColorW = "|"; };
		if (_cauO >=  2) then { _ssColorW = "||"; };
		if (_cauO >=  3) then { _ssColorW = "|||"; };
		if (_cauO >=  4) then { _ssColorW = "||||"; };
		if (_cauO >=  5) then { _ssColorW = "|||||"; };
		if (_cauO >=  6) then { _ssColorW = "||||||"; };
		if (_cauO >=  7) then { _ssColorW = "|||||||"; };
		if (_cauO >=  8) then { _ssColorW = "||||||||"; };
		if (_cauO >=  9) then { _ssColorW = "|||||||||"; };
		if (_cauO >= 10) then { _ssColorW = "||||||||||"; };
		if (_cauO >= 11) then { _ssColorW = "|||||||||||"; };
		if (_cauO >= 12) then { _ssColorW = "||||||||||||"; };
		if (_cauO >= 13) then { _ssColorW = "|||||||||||||"; };
		if (_cauO >= 14) then { _ssColorW = "||||||||||||||"; };
		if (_cauO >= 15) then { _ssColorW = "|||||||||||||||"; };
		if (_cauO >= 16) then { _ssColorW = "||||||||||||||||"; };
		if (_cauO >= 17) then { _ssColorW = "|||||||||||||||||"; };
		if (_cauO >= 18) then { _ssColorW = "||||||||||||||||||"; };
		if (_cauO >= 19) then { _ssColorW = "|||||||||||||||||||"; };
		if (_cauO >= 20) then { _ssColorW = "||||||||||||||||||||"; };
		if (_cauO >= 21) then { _ssColorW = "|||||||||||||||||||||"; };
		if (_cauO >= 22) then { _ssColorW = "||||||||||||||||||||||"; };
		if (_cauO >= 23) then { _ssColorW = "|||||||||||||||||||||||"; };
		if (_cauO >= 24) then { _ssColorW = "||||||||||||||||||||||||"; };
		if (_cauO >= 25) then { _ssColorW = "|||||||||||||||||||||||||"; };
		if (_cauO >= 26) then { _ssColorW = "||||||||||||||||||||||||||"; };
		if (_cauO >= 27) then { _ssColorW = "|||||||||||||||||||||||||||"; };
		if (_cauO >= 28) then { _ssColorW = "||||||||||||||||||||||||||||"; };
		if (_cauO >= 29) then { _ssColorW = "|||||||||||||||||||||||||||||"; };
		if (_cauO >= 30) then { _ssColorW = "||||||||||||||||||||||||||||||"; };
		if (_cauO >= 31) then { _ssColorW = "|||||||||||||||||||||||||||||||"; };
		if (_cauO >= 32) then { _ssColorW = "||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 33) then { _ssColorW = "|||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 34) then { _ssColorW = "||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 35) then { _ssColorW = "|||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 36) then { _ssColorW = "||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 37) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 38) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 39) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 40) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 41) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 42) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 43) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 44) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 45) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 46) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 47) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 48) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 49) then { _ssColorW = "|||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_cauO >= 50) then { _ssColorW = "||||||||||||||||||||||||||||||||||||||||||||||||||"; };
		
		//---------------------------------------------------------------------------------------------
		// Red Bar - Total Red + Grn within SniperStealthSystem "spot range"
		_warR = 0;
		_warR = _onAlertX * _bad;
				
		if (_warR >=  0) then { _ssColorR = "|"; };
		if (_warR >=  1) then { _ssColorR = "|"; };
		if (_warR >=  2) then { _ssColorR = "||"; };
		if (_warR >=  3) then { _ssColorR = "|||"; };
		if (_warR >=  4) then { _ssColorR = "||||"; };
		if (_warR >=  5) then { _ssColorR = "|||||"; };
		if (_warR >=  6) then { _ssColorR = "||||||"; };
		if (_warR >=  7) then { _ssColorR = "|||||||"; };
		if (_warR >=  8) then { _ssColorR = "||||||||"; };
		if (_warR >=  9) then { _ssColorR = "|||||||||"; };
		if (_warR >= 10) then { _ssColorR = "||||||||||"; };
		if (_warR >= 11) then { _ssColorR = "|||||||||||"; };
		if (_warR >= 12) then { _ssColorR = "||||||||||||"; };
		if (_warR >= 13) then { _ssColorR = "|||||||||||||"; };
		if (_warR >= 14) then { _ssColorR = "||||||||||||||"; };
		if (_warR >= 15) then { _ssColorR = "|||||||||||||||"; };
		if (_warR >= 16) then { _ssColorR = "||||||||||||||||"; };
		if (_warR >= 17) then { _ssColorR = "|||||||||||||||||"; };
		if (_warR >= 18) then { _ssColorR = "||||||||||||||||||"; };
		if (_warR >= 19) then { _ssColorR = "|||||||||||||||||||"; };
		if (_warR >= 20) then { _ssColorR = "||||||||||||||||||||"; };
		if (_warR >= 21) then { _ssColorR = "|||||||||||||||||||||"; };
		if (_warR >= 22) then { _ssColorR = "||||||||||||||||||||||"; };
		if (_warR >= 23) then { _ssColorR = "|||||||||||||||||||||||"; };
		if (_warR >= 24) then { _ssColorR = "||||||||||||||||||||||||"; };
		if (_warR >= 25) then { _ssColorR = "|||||||||||||||||||||||||"; };
		if (_warR >= 26) then { _ssColorR = "||||||||||||||||||||||||||"; };
		if (_warR >= 27) then { _ssColorR = "|||||||||||||||||||||||||||"; };
		if (_warR >= 28) then { _ssColorR = "||||||||||||||||||||||||||||"; };
		if (_warR >= 29) then { _ssColorR = "|||||||||||||||||||||||||||||"; };
		if (_warR >= 30) then { _ssColorR = "||||||||||||||||||||||||||||||"; };
		if (_warR >= 31) then { _ssColorR = "|||||||||||||||||||||||||||||||"; };
		if (_warR >= 32) then { _ssColorR = "||||||||||||||||||||||||||||||||"; };
		if (_warR >= 33) then { _ssColorR = "|||||||||||||||||||||||||||||||||"; };
		if (_warR >= 34) then { _ssColorR = "||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 35) then { _ssColorR = "|||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 36) then { _ssColorR = "||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 37) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 38) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 39) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 40) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 41) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 42) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 43) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 44) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 45) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 46) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 47) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 48) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 49) then { _ssColorR = "|||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_warR >= 50) then { _ssColorR = "||||||||||||||||||||||||||||||||||||||||||||||||||"; };

		
		//-------------------------------------------------------------------------------------------------
		// Blue Total
		_bluT = 0;
		_dxxB = 1000;
		_n50T = _pos nearEntities _dxxB;
		
		_bluT = west countSide _n50T;
		
		if (_bluT ==  0) then { _ssColorB = "|"; };
		if (_bluT >=  1) then { _ssColorB = "|"; };
		if (_bluT >=  2) then { _ssColorB = "||"; };
		if (_bluT >=  3) then { _ssColorB = "|||"; };
		if (_bluT >=  4) then { _ssColorB = "||||"; };
		if (_bluT >=  5) then { _ssColorB = "|||||"; };
		if (_bluT >=  6) then { _ssColorB = "||||||"; };
		if (_bluT >=  7) then { _ssColorB = "|||||||"; };
		if (_bluT >=  8) then { _ssColorB = "||||||||"; };
		if (_bluT >=  9) then { _ssColorB = "|||||||||"; };
		if (_bluT >= 10) then { _ssColorB = "||||||||||"; };
		if (_bluT >= 11) then { _ssColorB = "|||||||||||"; };
		if (_bluT >= 12) then { _ssColorB = "||||||||||||"; };
		if (_bluT >= 13) then { _ssColorB = "|||||||||||||"; };
		if (_bluT >= 14) then { _ssColorB = "||||||||||||||"; };
		if (_bluT >= 15) then { _ssColorB = "|||||||||||||||"; };
		if (_bluT >= 16) then { _ssColorB = "||||||||||||||||"; };
		if (_bluT >= 17) then { _ssColorB = "|||||||||||||||||"; };
		if (_bluT >= 18) then { _ssColorB = "||||||||||||||||||"; };
		if (_bluT >= 19) then { _ssColorB = "|||||||||||||||||||"; };
		if (_bluT >= 20) then { _ssColorB = "||||||||||||||||||||"; };
		if (_bluT >= 21) then { _ssColorB = "|||||||||||||||||||||"; };
		if (_bluT >= 22) then { _ssColorB = "||||||||||||||||||||||"; };
		if (_bluT >= 23) then { _ssColorB = "|||||||||||||||||||||||"; };
		if (_bluT >= 24) then { _ssColorB = "||||||||||||||||||||||||"; };
		if (_bluT >= 25) then { _ssColorB = "|||||||||||||||||||||||||"; };
		if (_bluT >= 26) then { _ssColorB = "||||||||||||||||||||||||||"; };
		if (_bluT >= 27) then { _ssColorB = "|||||||||||||||||||||||||||"; };
		if (_bluT >= 28) then { _ssColorB = "||||||||||||||||||||||||||||"; };
		if (_bluT >= 29) then { _ssColorB = "|||||||||||||||||||||||||||||"; };
		if (_bluT >= 30) then { _ssColorB = "||||||||||||||||||||||||||||||"; };
		if (_bluT >= 31) then { _ssColorB = "|||||||||||||||||||||||||||||||"; };
		if (_bluT >= 32) then { _ssColorB = "||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 33) then { _ssColorB = "|||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 34) then { _ssColorB = "||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 35) then { _ssColorB = "|||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 36) then { _ssColorB = "||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 37) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 38) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 39) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 40) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 41) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 42) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 43) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 44) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 45) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 46) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 47) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 48) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 49) then { _ssColorB = "|||||||||||||||||||||||||||||||||||||||||||||||||"; };
		if (_bluT >= 50) then { _ssColorB = "||||||||||||||||||||||||||||||||||||||||||||||||||"; };
		
		_pProne = "NO";
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {	
				_pProne = "YES";
		};
		
		
	hintSilent parseText format["
	<t size='1' font='LucidaConsoleB' color='#ffffff'> = EXPERIMENTAL = <br/></t>
	<t size='2.5' font='Zeppelin32' color='#ffffff'>-------------------<br/></t>
	<t size='1' font='Zeppelin32' color='#ffffff'>Goblin's SpookWarCom:<br/></t>
	<t shadow='1' shadowColor='#008000' size='1' font='Zeppelin33'>SpectreSniper v0.5<br/></t>
	<t size='2.5' font='Zeppelin32' color='#ffffff'>-------------------<br/><br/></t>


	<t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'>THREAT </t>
	<t align='left' size='0.8' font='Zeppelin32' color='#ffffff'> ( 0 - 4 )<br/></t>
	
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	OPFOR Intel/Alert Rating:</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %1<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	GUERR Intel/Alert Rating:</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %2<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	==========================<br/>
	Total Combined Rating:</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %3/8<br/><br/><br/></t>

	<t size='1' font='Zeppelin32' color='#ffffff'>
	~ Player Scout/Sniper Status ~<br/></t>
	<t size='1.3' font='Zeppelin32' color='#00CC00'>%19</t>
	<t size='1' font='Zeppelin32' color='#ffffff'>%4</t>
	<t size='1.3' font='Zeppelin32' color='#FF9900'>%20<br/><br/></t>
	

	<t size='0.75' font='LucidaConsoleB' color='#ffffff'>
	Threats Within [ %5m ]:<br/>
	OPFOR: %6 | GUERR: %7<br/><br/></t>

	<t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'>BLIND<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	Player Near/In a ''Blind'':</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %8<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	Player-to-Blind Distance:</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %9%10<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	Last Build Type:</t> <t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'> %11<br/><br/><br></t>

	<t align='left' size='1' font='Zeppelin32' color='#808080'>%16<br/></t>
	<t align='left' size='0.75' font='LucidaConsoleB' color='#ffffff'>
	ACME SCOUT-O-METER:<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#008000'>%12<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#FF9900'>%14<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#FF0000'>%15<br/></t>
	
	<t align='left' size='1' font='Zeppelin32' color='#808080'>Total BLUFOR within 1000m:<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#336699'>%13<br/></t>
	
	<br/><br/>

	<t align='center' size='0.75' font='LucidaConsoleB' color='#ffffff'>
	-Stealth Modifiers-<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	1. Ghillie Worn:</t> <t align='right' size='0.75' font='LucidaConsoleB' color='#ffffff'> %17<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	2. Player Prone:</t> <t align='right' size='0.75' font='LucidaConsoleB' color='#ffffff'> %18<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	3. Misc Equip:</t> <t align='right' size='0.75' font='LucidaConsoleB' color='#505050'> tba<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	4. FacePaint:</t> <t align='right' size='0.75' font='LucidaConsoleB' color='#505050'> tba<br/></t>
	<t align='left' size='1' font='Zeppelin32' color='#ffffff'>
	5. Scent Blocker:</t> <t align='right' size='0.75' font='LucidaConsoleB' color='#505050'> tba<br/></t>

	",_onAlertR,_onAlertG,_onAlertX,_ssStatus,_dxx,_red,_grn,_inBlind,_blindPox,_blindPos,_blindType,_ssColorG,_ssColorB,_ssColorW,_ssColorR,_sniperStealth,_pGhillie,_pProne,_pSSG,_pSSW];




	sleep 0.5;
	if (DebugPause) then { sleep 10; };
	};
} else {
	hint "DEBUG is set OFF";
};


/*
		/*
		if (_blindPos <= 4) then {
		
			if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
			 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
				if (_blindPos <= _camoType) then {
					if (_onAlertX >= 2 && _bad >= 1) then {
						_sniperStealth = "Near Enemy On-Alert!"; _ssColorR = "||||||||||||||||||||";
						if (_onAlertX >= 2 && _bad >= 2) then {
							_sniperStealth = "Multiple Enemy On-Alert!"; _ssColorR = "||||||||||||||||||||";
						};
					} else {
					_sniperStealth = "Sneaky Bastard, Sir"; _ssColorG = "|||||";
						if (_onAlertX <= 2 && _bad == 0) then { _ssColorG = "||||||||||"; sleep 2;
							if (ScoutSniperStealth == true) then { _ssColorG = "||||||||||||||||||||"; }; sleep 2;
						};
					};
				} else {
				_sniperStealth = "Too far from SniperBlind"; _ssColorW = "|||";
				};
			} else {
			_sniperStealth = "Player Moved / NOT Prone"; _ssColorW = "||||||";
			};
		} else {
			if (_onAlertX >= 1 && _bad >= 1) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorW = "|||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorW = "||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorW = "|||||||||"; };
			};
			if (_onAlertX >= 1 && _bad >= 2) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorW = "||||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorW = "|||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorW = "||||||||||||"; };
			};
			if (_onAlertX >= 1 && _bad >= 3) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorW = "|||||||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorW = "||||||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorW = "|||||||||||||||"; };
			};
			if (_onAlertX >= 2 && _bad >= 1) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "|||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "||||||"; };
			};
			if (_onAlertX >= 2 && _bad >= 2) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "|||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "|||||||||"; };
			};
			if (_onAlertX >= 2 && _bad >= 3) then {
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "|||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "|||||||||||"; };
			};
			if (_onAlertX >= 3 && _bad >= 2) then { //
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "||||||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "|||||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "||||||||||||||"; };
			};
			if (_onAlertX >= 3 && _bad >= 4) then { //
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "|||||||||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "||||||||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "|||||||||||||||||"; };
			};
			if (_onAlertX >= 3 && _bad >= 6) then { //
				if (_blindpos >=  4 && _blindPos <= 20) then { _ssColorR = "||||||||||||||||||"; };
				if (_blindpos >= 20 && _blindPos <= 50) then { _ssColorR = "|||||||||||||||||||"; };
				if (_blindpos >= 50 && _blindPos <= 99) then { _ssColorR = "||||||||||||||||||||"; };
			};

		};
		

if (VQI_HINTS_SNIPER == 1) then {hint format ["if-1 \n Blind: %1",_blindPos]; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint "if-2 \n Prone: YES"; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint format ["if-3 \n Red: %1 + Grn: %2 = Intel: %3",_onAlertR, _onAlertG, _onAlertX]; sleep 1; hint "ScoutSniperHidden: FALSE"; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint "ScoutSniperHidden: TRUE"; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint "ScoutSniperHidden: TRUE \n sneaky bastard, sir..."; sleep 2; hint format [" - DEBUG - \n RedAlert + GrnAlert = onAlert \n ------------------------------------------ \n %1 + %2 = %3 \n ( Range 0 - 4 ) \n \n Enemy within: %6: \n OPFOR: %4 \n GUER: %5 \n \n Note: Unable to Re-Hide IF onAlert is > 2 AND enemy is within xRange \n \n Ghillie/Bonus/xRange: \n %7",_onAlertR, _onAlertG, _onAlertX, _red, _grn, _dxx, _ghillie]; sleep 5;};

if (VQI_HINTS_SNIPER == 1) then {hint "ScoutSniperHidden = false \n NOT Prone"; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint "ScoutSniperHidden = false \n Too far from Blind/Hide"; sleep 1;};

if (VQI_HINTS_SNIPER == 1) then {hint "looping..."; sleep 1; hint format [" - STEALTH - \n Red: %1 + Grn: %2 = onAlert: %3 \n \n RedGuys: %4 \n GreenGuys: %5 \n \n Dist: %6",_onAlertR, _onAlertG, _onAlertX, _red, _grn, _dxx]; sleep 5;};
*/