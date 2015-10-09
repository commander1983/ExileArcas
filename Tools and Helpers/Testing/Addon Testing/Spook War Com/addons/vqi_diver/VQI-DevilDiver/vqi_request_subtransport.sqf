// Request Submarine Transport with Dry Dock Capabilities; Min:-???mASL 
//-----WIP-----------by R.Von Quest aka 'Goblin'--------------WIP-------
//


hint "Open Map, 'CLICK' to request Submarine Transport \n Min Depth: -50m BSL Required";
sleep 1;


MapClicked = false;
publicVariableServer "MapClicked";

onMapSingleClick "clickPos = _pos; MapClicked = true; onMapSingleClick {};";
publicVariableServer "clickPos";

waitUntil {MapClicked};
sleep 1;


deleteVehicle newClick;

newClick = "Sign_Sphere25cm_F" createVehicle clickPos;
publicVariable "newClick";
hideObject newClick;
	
_depthCheck = ((getPosASLW newClick) select 2);	
	hint "Stand-By....";
	sleep 1;
	
if (_depthCheck <= -50) then { // Minimum Depth BELOW SEA LEVEL

	_xX = random 11; // random area, apprx x?
	_yY = random 11; // x+y=area
	_zZ = 11 + random 33; // z is your height (?????)

	
	newClick setVectorUp [0,0,1];
	newClick setDir random 360;	
	VQISUB1 attachTo [newClick,[_xX,_yY,_zZ]];

	
_mkAlt	= round (((getPosASLW VQISUB1) select 2)*3.2808);

deleteMarker "mkrN";

sleep 2;
hint "Eye,Eye Sir! Setting Course...";
_mkrN = createMarker["mkrN", getPos VQISUB1];
"mkrN" setMarkerShape "ICON";
"mkrN" setMarkerType "selector_selectedMission";
"mkrN" setMarkerColor "ColorBlack";
"mkrN" setMarkerText format [" HMS Proteus: %1ft",_mkAlt];
"mkrN" setMarkerAlpha 1;

subTransport = true; 
sleep 5;

if (VQI_MARKER_DIVER == 0) then {
	hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkrN";};
	
	} else {
		sleep 2;
		hint "Sorry Sir, We need a MINIMUM Operational Combat Depth of least 50 Meters Below Sea Level";
	};
//WIP v0