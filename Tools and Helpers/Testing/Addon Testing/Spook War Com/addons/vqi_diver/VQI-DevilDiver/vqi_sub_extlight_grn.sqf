// Turn ON SDV/Submarine Ext Lighting - GRN - Medium Visibility
//



deleteVehicle SUBLIGHT_GRN_LF;
deleteVehicle SUBLIGHT_GRN_RF;
deleteVehicle SUBLIGHT_GRN_LR;
deleteVehicle SUBLIGHT_GRN_RR;
sleep 1;

//Front Lighting
SUBLIGHT_GRN_LF = "chemlight_green" createVehicle (position VQISUB1);
SUBLIGHT_GRN_LF attachTo [VQISUB1,[ 1.89,-5,2.97]];

SUBLIGHT_GRN_RF = "chemlight_green" createVehicle (position VQISUB1);
SUBLIGHT_GRN_RF attachTo [VQISUB1,[-1.85,-5,2.97]];



//Rear Lighting
SUBLIGHT_GRN_LR = "chemlight_green" createVehicle (position VQISUB1);
SUBLIGHT_GRN_LR attachTo [VQISUB1,[ 1.26,5,3.53]];

SUBLIGHT_GRN_RR = "chemlight_green" createVehicle (position VQISUB1);
SUBLIGHT_GRN_RR attachTo [VQISUB1,[-1.22,5,3.53]];