//
//

//hint "deadbody.sqf";
sleep 1;


deadBodyX = _this select 0;




sleep 5;





// bugs on deadbodies
[deadBodyX] execVM "\vqi_dark\VQI-DeadDARK\efx\vqi_dark_bugs.sqf";

sleep 1;

// random loot on dead bodies NOT work!
//[deadBodyX] call VQI_dark_fnc_Xitems;








sleep 1;
//hint "deadbody.sqf -END-";