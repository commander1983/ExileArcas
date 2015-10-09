//-------------VQI SniperSystem 0.5---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//All-In-One MENU Setup...Only 1 Key to memorize!

//hint "vqi_addAction _snipermenu";


private ["_sniperMenuQ","_sniperMenu1","_sniperMenu2","_sniperMenu3","_sniperMenu5"];

_sniperMenuQ = player addAction ["Scout/Sniper: Questrel - Toggle ON/OFF","\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_toggle.sqf"];
//_sniperMenuW = player addAction ["Scout/Sniper: Guess Wind","hint 'coming soon...'"];
//_sniperMenuL = player addAction ["Scout/Sniper: LogBook","hint 'coming soon...'"];
//_sniperMenuX = player addAction ["Scout/Sniper: ???????","hint 'coming soon...'"];
_sniperMenu1 = player addAction ["Build Sniper Blind: Sparse","BUILDBLIND = [] execVM ""\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_sparse.sqf"""];
_sniperMenu2 = player addAction ["Build Sniper Blind: Normal","BUILDBLIND = [] execVM ""\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_normal.sqf"""];
_sniperMenu3 = player addAction ["Build Sniper Blind: Thick","\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_thick.sqf"];
//_sniperMenu4 = player addAction ["Build Sniper Blind: Urban","\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_urban.sqf"];
_sniperMenu5 = player addAction ["Scout/Sniper: Sniff","\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersniff.sqf"];
//_sniperMenu6 = player addAction ["Scout/Sniper: Apply FaceCamo","hint 'coming soon...'"];
//_sniperMenu7 = player addAction ["Scout/Sniper: Spray Scent Blocker","hint 'coming soon...'"];
//_sniperMenu8 = player addAction ["Scout/Sniper: Spray BugSpray","hint 'coming soon...'"];

sleep 20;

player removeAction _sniperMenuQ;


player removeAction _sniperMenu1;
player removeAction _sniperMenu2;
player removeAction _sniperMenu3;

player removeAction _sniperMenu5;














//hint "addActionSniperMenu END";