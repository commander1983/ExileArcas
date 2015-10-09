// Turn ON SDV/Submarine Ext Lighting - RED - Low Visibility
//



deleteVehicle SUBLIGHT_RED_LF;
deleteVehicle SUBLIGHT_RED_RF;
deleteVehicle SUBLIGHT_RED_LR;
deleteVehicle SUBLIGHT_RED_RR;
deleteVehicle SDVLIGHT1;
deleteVehicle DDSLIGHT1;
sleep 1;

//SDV: Front Lighting-----------------------------------------------
SUBLIGHT_RED_LF = "chemlight_red" createVehicle (position VQISUB1);
SUBLIGHT_RED_LF attachTo [VQISUB1,[ 1.89,-4,3.03]];

SUBLIGHT_RED_RF = "chemlight_red" createVehicle (position VQISUB1);
SUBLIGHT_RED_RF attachTo [VQISUB1,[-1.85,-4,3.03]];

//SDV: Rear Lighting-----------------------------------------------
SUBLIGHT_RED_LR = "chemlight_red" createVehicle (position VQISUB1);
SUBLIGHT_RED_LR attachTo [VQISUB1,[ 1.26,4,3.49]];

SUBLIGHT_RED_RR = "chemlight_red" createVehicle (position VQISUB1);
SUBLIGHT_RED_RR attachTo [VQISUB1,[-1.22,4,3.49]];

//Start/SDV and DDS Lighting----------------------------------------
SDVLIGHT1 = "chemlight_red" createVehicle (position VQISUB1);
SDVLIGHT1 attachTo [VQISUB1,[0.05,-4.35,3.14]];

DDSLIGHT1 = "chemlight_red" createVehicle (position VQISUB1);  
DDALIGHT1 attachTo [VQISUB1,[0.05,17,3.83]];

