//DiverSystem Key-binding User Setup
//

//Key, [Shift, Ctrl, Alt]: S
//["SpookWarCom - Scout/Sniper", "Scout/Sniper Menu (full)", { _this execVM "\vqi_sniper\VQI-SpectreSniper\vqi_addAction_snipermenu.sqf"; }, [31, [true, false, false]]] call CBA_fnc_registerKeybind;
//["My Awesome Mod","show_breathing_key", "Show Breathing", {_this call mymod_fnc_showGameHint}, {}, [DIK_B, [true, true, false]]] call CBA_fnc_addKeybind;
["SpookWarCom - Combat Diver","menu_diver_full", "Combat Diver Menu (full)", {_this execVM "\vqi_diver\VQI-DevilDiver\vqi_addAction_divermenu.sqf";}, {}, [32, [true, false, false]]] call CBA_fnc_addKeybind;


/*

//Key, [Shift, Ctrl, Alt]: D
["SpookWarCom - Scout/Sniper", "- - -", { _this execVM "\vqi_sniper\VQI-SpectreSniper\debug\vqi_debug_key_toggle.sqf"; }, [32, [false, false, true]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: Q
["SpookWarCom - Scout/Sniper", "Questrel: Meter (temp)", { _this execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_temp.sqf"; }, [16, [true, false, false]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: Q
["SpookWarCom - Scout/Sniper", "Questrel: Meter (toggle)", { _this execVM "\vqi_sniper\VQI-SpectreSniper\Questrel\vqi_questrel_key_toggle.sqf"; }, [16, [false, true, false]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: W
["SpookWarCom - Scout/Sniper", "Estimate: Wind Check", { hint "coming soon..."; }, [17, [true, false, false]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: L+Ctrl
["SpookWarCom - Scout/Sniper", "SniperSense: Sniff", { _this execVM "\vqi_sniper\VQI-SpectreSniper\SniperSense\vqi_snipersniff.sqf"; }, [29, [true, false, false]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: B
["SpookWarCom - Scout/Sniper", "Build Sniper Blind: Quick", { terminate BUILDBLIND; sleep 1; BUILDBLIND = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_sparse.sqf"; }, [48, [true, false, false]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: U
["SpookWarCom - Scout/Sniper", "Build Sniper Blind: Urban", { terminate BUILDBLIND; sleep 1; BUILDBLIND = [_this] execVM "\vqi_sniper\VQI-SpectreSniper\SniperBlind\vqi_build_sniperblind_urban.sqf"; }, [22, [true, false, false]]] call CBA_fnc_registerKeybind;


*/