private["_objects"];
while {alive player} do {
   _objects = nearestObjects [player, [], 5];
   hintsilent format["%1",_objects];
   sleep 5;
   
   

hint "Object?";
sleep 5;
};
_plant = "camoNet_BLUFOR_F" createVehicle (position player);
_sub = "Submarine_01_F" createVehicle (getMarkerPos "mkr1");
//Sign_Sphere25cm_F
//b_ficus2d_f
//cl_grass1
