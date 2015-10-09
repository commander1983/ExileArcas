// Request Submarine Transport with Wet Dock Capabilities;  Min:-50mASL 
//-----WIP-----------by R.Von Quest aka 'Goblin'--------------WIP-------
//:::::::::::::::::::::::::: D E E P :::::::::::::::::::::::::::::::::::


hint "Open Map, 'CLICK' to request Submarine Transport \n Min Depth: -50m BSL Required";
openMap true;
sleep 1;


MapClickedSUB = false;
publicVariableServer "MapClickedSUB";

onMapSingleClick "clickPos = _pos; MapClickedSUB = true; onMapSingleClick {};";
publicVariableServer "clickPos";

waitUntil {MapClickedSUB};
sleep 1;


deleteVehicle newClickSUB;

newClickSUB = "Sign_Sphere25cm_F" createVehicle clickPos;
publicVariable "newClickSUB";
hideObject newClickSUB;
	
_depthCheck = ((getPosASLW newClickSUB) select 2);	
	hint "Stand-By....";
	sleep 1;
	
if (_depthCheck <= -50) then { // Minimum Depth BELOW SEA LEVEL

	_xX = random 11; // random area, apprx x?
	_yY = random 11; // x+y=area
	_zZ = 11 + random 33; // z is your height (?????)

	
	newClickSUB setVectorUp [0,0,1];
	newClickSUB setDir random 360;	
	VQISUB1 attachTo [newClickSUB,[_xX,_yY,_zZ]];

	
_mkAltSUB = round (((getPosASLW VQISUB1) select 2)*3.2808);

deleteMarker "mkrSUB";

sleep 2;
hint "Aye, Aye Sir! Setting Course...";
_mkrSUB = createMarker["mkrSUB", getPos VQISUB1];
"mkrSUB" setMarkerShape "ICON";
"mkrSUB" setMarkerType "selector_selectedMission";
"mkrSUB" setMarkerColor "ColorBlack";
"mkrSUB" setMarkerText format [" HMS Proteus: %1ft",_mkAltSUB];
"mkrSUB" setMarkerAlpha 1;

subTransport = true; 
sleep 5;

if (VQI_MKSUB_DIVER == 0) then {
hint "Note: Markers are temporary";
	sleep 600;
	deleteMarker "mkrN";};
	
	} else {
		sleep 2;
		hint "Sorry Sir, We need a MINIMUM Operational Combat Depth of least 50 Meters Below Sea Level";
	};
//WIP v0