//MISSION: Assassinate the Russian Spetsnaz Leader/Team
//
hint "";

//Mission Briefing & INTEL
player createDiaryRecord ["Diary",["SPECWARCOM:","NO FURTHER INTEL AVAILIABLE"]];

//Create Markers & Map INTEL
_markerHK1 = createMarker["HK1Marker", getPos HKx];
"HK1Marker" setMarkerShape "ICON";
"HK1Marker" setMarkerType "hd_flag";
"HK1Marker" setMarkerColor "ColorRed";
"HK1Marker" setMarkerText "Officer: Spetsnaz";
"HK1Marker" setMarkerAlpha 1;
[] spawn {
while {not isNull HKx} do {"HK1Marker" setMarkerPos getPos HKx; sleep 66;};
};


sleep 666;

//Spetsnaz leader Patrol to 1 then 2
_null = [] spawn {
   while {true} do {
      _null = [group HKx, getPos DAdest1, 200] call BIS_fnc_taskPatrol;
      sleep (666 + random 3333);
	  _null = [group HKx, getPos DAdest2, 200] call BIS_fnc_taskPatrol;
   };
};

//Delete Marker? Have to FIND target?
sleep 1111;
deleteMarker "HK1Marker";