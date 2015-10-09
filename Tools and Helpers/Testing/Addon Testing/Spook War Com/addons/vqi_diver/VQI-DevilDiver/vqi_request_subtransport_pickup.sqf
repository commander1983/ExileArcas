// Request Submarine Transport with Wet Dock Capabilities;  Min:-30mASL 
//-----WIP-----------by R.Von Quest aka 'Goblin'--------------WIP-------
//:::::::::::::::::::::::: S H A L L O W :::::::::::::::::::::::::::::::


hint "Open Map, 'CLICK' to request Submarine Surface Pick-Up \n Min Depth: -20m MSL Required";
openMap true;
sleep 1;


MapClickedSUBpu = false;
publicVariableServer "MapClickedSUBpu";

onMapSingleClick "clickPosPU = _pos; MapClickedSUBpu = true; onMapSingleClick {};";
publicVariableServer "clickPosPU";

waitUntil {MapClickedSUBpu};
sleep 1;


deleteVehicle newClickSUBpu;
deleteVehicle VQISUBpu;

newClickSUBpu = "Sign_Sphere25cm_F" createVehicle clickPosPU;
publicVariable "newClickSUBpu";
hideObjectGlobal newClickSUBpu;
	
_depthCheck = ((getPosASLW newClickSUBpu) select 2);	
	hint "Stand-By....";

	sleep 1;
	
	
_dxx = 5000;	// 5km buffer SafeZone	
_pos = getPos newClickSUBpu;
_n50 = _pos nearEntities _dxx;
_grn = resistance countSide _n50;
_red = east countSide _n50;
_bad = _grn + _red;	

_obj = nearestObjects [newClickSUBpu, [], 5000];
//_loc	= newClickSUBpu distance _obj;
	
sleep 1;


	
	
if (_depthCheck <= -20) then { // Minimum Depth BELOW SEA LEVEL

	if (_bad == 0) then {
		
		//if (_loc >= 5000) then {
			VQISUBpu = "Submarine_01_F" createVehicle clickPosPU;
			publicVariable "VQISUBpu";
			VQISUBpu allowDamage false;
			
			sleep 1;

			//find sea surface (shallow option)
			newClickSUBpu setPosASL [position newClickSUBpu select 0, position newClickSUBpu select 1, 0];

			//_xX = random 11; // random area
			//_yY = random 11; // x+y=area
			//_zZ = -10 + random -5; // z is your height

			
			newClickSUBpu setVectorUp [0,0,1];
			VQISUBpu setDir random 359;	
			VQISUBpu attachTo [newClickSUBpu,[0,0,0]];

			
			//_mkAltSUB = round (((getPosASLW VQISUB1) select 2)*3.2808);

			deleteMarker "mkrSUBpu";

			sleep 2;
			detach VQISUBpu;

			hint "Request Approved. Adjusting Course... See you there, Sir.";

			_mkrSUB = createMarker["mkrSUBpu", getPos VQISUBpu];
			"mkrSUBpu" setMarkerShape "ICON";
			"mkrSUBpu" setMarkerType "selector_selectedMission";
			"mkrSUBpu" setMarkerColor "ColorBlack";
			"mkrSUBpu" setMarkerText format [" HMS Proteus: Pick-Up"];
			"mkrSUBpu" setMarkerAlpha 1;

			subTransport = true; 
			sleep 5;

			[[VQISUBpu, ["Board Submarine", "execVM 'vqi_diver\VQI-DevilDiver\vqi_pickup_int_sub.sqf'; [VQISUBpu, 1]"]], "addAction", true, true] call BIS_fnc_MP;
			
		//} else {
		//hint "Negative. Request: Denied. Find another spot. We need open sea to reduce risk and avoid mission compromise.";
		//};
	
	} else {
	sleep 2;
	hint "NOTICE: Intel reports too close to Enemy. We need a minimum of 5km buffer zone to surface.";
	};
	
} else {
	sleep 2;
	hint "Too shallow. Sorry Sir, We need a MINIMUM Operational Depth of least -20 Meters.";
};
//WIP v0



/*
TEST = "B_SDV_01_F" createVehicle position (player); 
TEST attachTo [VQISUBpu,[0,-20,-10]]; 
TEST setMass [999999,10];
*/