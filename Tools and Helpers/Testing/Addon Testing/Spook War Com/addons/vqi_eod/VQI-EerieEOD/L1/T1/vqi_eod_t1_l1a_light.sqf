//---Improvised Explosive Device---Explosive Remnants of War---Explosive Ordnance Removal
//---Level 1---Bells & Whistles
hint "~Blinking Light~";

while {true} do {
	11 cutRsc ["ARMED_LIGHT_1ON", "PLAIN"];
	hint "ON";
	sleep 0.5;
	11 cutRsc ["ARMED_LIGHT_1OFF", "PLAIN"];
	hint "OFF";
	sleep 0.5;
	//11 cutRsc ["WORLD_MAP_1", "PLAIN"];
	//hint "OFF";
	//sleep 0.5;
	//11 cutText ["", "PLAIN"];
	//hint "OFF";
	
	sleep 2;
};