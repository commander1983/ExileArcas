//Original "Sink the Trawler" Script by Magirot - Modified slightly by Goblin
//--------------------------------------------------------------------------- 
//Explosive Set... Timer Set... Exfil!

hint "Setting Charge...";
sleep 3;

hint "Setting Timer...";
sleep 3;
//_null = [Trawler1, "RANDOM", 0] execVM "SOCOM\Destroy\trawler_1b.sqf";

private ["_id", "_magaz", "_sinkside", "_attachpos", "_uy", "_relativedir", "_democharge"];

_id     	= _this select 0;
_magaz  	= magazines player;

if (!("DemoCharge_Remote_Mag" in _magaz)) then { 
	hint "You have no charges to place"; 
	
} else {

    hint "Timer Set - 20 Minutes..."; 
    player removeMagazine "DemoCharge_Remote_Mag";
	//add more immersion EFX?
    
    Trawler1 removeAction _id;
    
    _relativedir = [Trawler1, player] call BIS_fnc_relativeDirTo;
    
    _sinkside 	= "RANDOM";
    _attachpos 	= [0, 0, 0];
    _uy        	= -1;

    if (_relativedir <= 359 && _relativedir >= 274) 	then { _sinkside = "LEFT FRONT";  	_attachpos = [-4.42,  8, -6]; _uy = -1 }; 
    if (_relativedir >= 0   && _relativedir <= 94)  	then { _sinkside = "RIGHT FRONT"; 	_attachpos = [ 4.42,  8, -6]; _uy =  1 };
    if (_relativedir >= 229 && _relativedir <= 273) 	then { _sinkside = "LEFT";        	_attachpos = [-4.75, -2, -6]; _uy = -1 };
    if (_relativedir >= 95  && _relativedir <= 139) 	then { _sinkside = "RIGHT";       	_attachpos = [ 4.42, -2, -6]; _uy =  1 };
    if (_relativedir <= 228 && _relativedir >= 185) 	then { _sinkside = "LEFT BACK";   	_attachpos = [-4.75, -9, -6]; _uy = -1 };
    if (_relativedir >= 140 && _relativedir <= 186) 	then { _sinkside = "RIGHT BACK";  	_attachpos = [ 4.42, -9, -6]; _uy =  1 };
    
	//Set Charge
    _democharge = "DemoCharge_Remote_Ammo_Scripted" createVehicle getPosATL Trawler1;
    
    _democharge attachTo [Trawler1, _attachpos];
    _democharge setVectorDirAndUp [[0, 1, 0], [_uy, 1, 0]];

	//Timer Countdown
    sleep 1200;
    
	
	
	//Explosion!
    if (!isNull _democharge) then {
        _democharge setDamage 1;
        sleep 1;
        
        // only call for the client where the ship is local
        [[[Trawler1, _sinkside], { [_this select 0, _this select 1] execVM "\vqi_socom\VQI-SOCOM\Destroy\trawler_1b.sqf" } ], "BIS_fnc_spawn", Trawler1] spawn BIS_fnc_MP;
    };

};

/* Notes:

*/