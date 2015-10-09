// Turn ON SDV/Submarine Ext Lighting - BLU - HIGH Visibility
//



deleteVehicle SUBLIGHT_BLU_LF; //SDV - LEft Front
deleteVehicle SUBLIGHT_BLU_RF; //SDV - Right Front
deleteVehicle SUBLIGHT_BLU_LR; //SDV - Left Rear
deleteVehicle SUBLIGHT_BLU_RR; //SDV - Right Rear
sleep 1;
deleteVehicle SUBLIGHT_BLU_BS; //SUB Bottom Stern
deleteVehicle SUBLIGHT_BLU_BA; //SUB Bottom Aft
deleteVehicle SUBLIGHT_BLU_BC; //SUB Bottom Centre
deleteVehicle SUBLIGHT_BLU_BF; //SUB Bottom Front
deleteVehicle SUBLIGHT_BLU_BB; //SUB Bottom Bow
sleep 1;

//SDV: Front Lighting------------------------------------------------
SUBLIGHT_BLU_LF = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_LF attachTo [VQISUB1,[ 1.89, -7, 2.82]];

SUBLIGHT_BLU_RF = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_RF attachTo [VQISUB1,[-1.85, -7, 2.82]];



//SDV: Rear Lighting-------------------------------------------------
SUBLIGHT_BLU_LR = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_LR attachTo [VQISUB1,[ 1.26, 7, 3.61]];

SUBLIGHT_BLU_RR = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_RR attachTo [VQISUB1,[-1.22, 7, 3.61]];





/////////////////////////////////////////////////////////////////////
//SUB: Bottom Lighting ----------------------------------------------
SUBLIGHT_BLU_BS = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_BS attachTo [VQISUB1,[0, 25, -7.83]];

SUBLIGHT_BLU_BA = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_BA attachTo [VQISUB1,[0, 15, -7.83]];

SUBLIGHT_BLU_BC = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_BC attachTo [VQISUB1,[0,  0, -7.83]];

SUBLIGHT_BLU_BF = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_BF attachTo [VQISUB1,[0, -15, -7.83]];

SUBLIGHT_BLU_BB = "chemlight_blue" createVehicle (position VQISUB1);
SUBLIGHT_BLU_BB attachTo [VQISUB1,[0, -25, -7.83]];