//Helmet-View
//

disableSerialization;

while {true} do {
	if ((cameraView == "INTERNAL") && ("Helmet_VQI_HALO" == Headgear player)) then {
	222 cutRsc ["VQI_HALO_HELMET_CLASSII", "PLAIN"];
	sleep 0.1;
	
	} else {
		cutText ["","PLAIN"];
		222 cutText ["","PLAIN"];
		3 cutText ["","PLAIN"];
		4 cutText ["","PLAIN"];
	};
};