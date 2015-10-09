//HALOSystem Key-binding User Setup
//

//Key, [Shift, Ctrl, Alt]: H
//["SpookWarCom - HALO/ParaJump", "HALO/ParaJump Menu (full)", { _this execVM ""; }, [31, [false, true, true]]] call CBA_fnc_registerKeybind;

["SpookWarCom - HALO/ParaJump", "menu_halo_full", "HALO/ParaJump Menu (full)", {_this execVM "\vqi_halo\VQI-DemonDropper\vqi_addAction_halomenu.sqf";}, {}, [35, [true, false, false]]] call CBA_fnc_addKeybind;



//Key, [Shift, Ctrl, Alt]: H
//["SpookWarCom - HALO/ParaJump", "Altimeter (Temporary)", { _this execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_temp.sqf"; }, [35, [false, false, true]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: A
//["SpookWarCom - HALO/ParaJump", "Altimeter (Toggle On/Off)", { _this execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_key_toggle.sqf"; }, [30, [false, false, true]]] call CBA_fnc_registerKeybind;

//Key, [Shift, Ctrl, Alt]: O
//["SpookWarCom - HALO/ParaJump", "Altimeter (hold)", { _this execVM "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter_hold.sqf"; }, [24, [false, false, false]]] call CBA_fnc_registerKeybind;