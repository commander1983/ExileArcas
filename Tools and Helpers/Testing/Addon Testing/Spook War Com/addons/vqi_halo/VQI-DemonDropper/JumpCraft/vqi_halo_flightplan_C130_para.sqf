//
//
//hint "C130_para.sqf";
sleep 1;
deleteVehicle VQIHALO2;
deleteVehicle trgCargo;
deleteMarker "mkrFP";


_mapSize = call BIS_fnc_mapSize;
_mapHalf = _mapSize / 2;
_mapCent = [_mapHalf,_mapHalf,1000];
_jumpAlt = random 2222;		// 7200'
_typeAlt = 2222 + _jumpAlt; 	// MC-130J Commando II		7200' - 14,400'


openMap true;
hint "L-Click to File Flight Plan";


// Map Click Option ///////////////------------------------------------------------
MapClickedHALO = false;
onMapSingleClick "posHALO = _pos; MapClickedHALO = true; onMapSingleClick {};";

waitUntil {sleep .02; MapClickedHALO};

deleteVehicle locHALO;
locHALO = "Sign_Sphere25cm_F" createVehicle posHALO;
locHALO hideObjectGlobal true;
locHALO setVectorUp [0,0,1];
///////////////////////////////////------------------------------------------------

hint "Stand by...";
sleep 1;


// Create the MC-130J Commando II Jump Craft!
VQIHALO2 = "USAF_MC130" createVehicle _mapCent;
publicVariable "VQIHALO2";

sleep 1;

VQIHALO2 allowDamage false; 
VQIHALO2 setVectorUp [0,0,1];
VQIHALO2 attachTo [locHALO,[0,0,_typeAlt]];
VQIHALO2 engineOn true;
VQIHALO2 setDamage 0;

sleep 1;

// Set Marker Setup
_altFP = round (((getPosASL VQIHALO2) select 2)*3.2808);
_mkrFP = createMarker["mkrFP", getPos VQIHALO2];
"mkrFP" setMarkerShape "ICON";
"mkrFP" setMarkerType "mil_end";
"mkrFP" setMarkerColor "ColorGreen";
"mkrFP" setMarkerText format ["PARA - %1ft",_altFP];
"mkrFP" setMarkerAlpha 1;

sleep 1;

// setVelocity Ref
jumpV = "Sign_Sphere25cm_F" createVehicle _mapCent;
jumpV attachTo [VQIHALO2,[0,0,0]];
jumpV setDir -180;
jumpV hideObjectGlobal true;

sleep 1;

// Add Altimeters to JumpCraft?
VQIHALO2 addItemCargoGlobal ["VQI_JumpBuddy_1",8];




hint "SAM Sites Detected: \n -UNKNOWN-";












sleep 1;

//Fix the Damn Floor, or you'll trip and go into FreeFall animation!
_floorfix1 = "Box_NATO_WpsSpecial_F" createVehicle _mapCent; //HotFix
_floorfix2 = "Box_NATO_WpsSpecial_F" createVehicle _mapCent; //HotFix
clearWeaponCargoGlobal _floorfix1;
clearWeaponCargoGlobal _floorfix2;
clearMagazineCargoGlobal _floorfix1;
clearMagazineCargoGlobal _floorfix2;
clearItemCargoGlobal _floorfix1;
clearItemCargoGlobal _floorfix2;
_floorfix1 enableSimulation false;
_floorfix2 enableSimulation false;

_floorfix1 attachTo [VQIHALO2,[ 0.8,7.8,-4.7]];		// -3.1
_floorfix2 attachTo [VQIHALO2,[-0.8,7.8,-4.7]];










sleep 1;
//hint "7.sqf -END-";