//Pretty Pink Mist - Detonate the Device!!!
//
if (VQI_HINTS_EOD == 1) then {
hint "L1-T1 Wrong - RUN!";};
sleep 1;


//Explosive Material, Warhead, Energy, etc
//L1 = "M_Mo_82mm_AT_LG" createVehicle [(getPos VQI_EOD_1 select 0),(getPos VQI_EOD_1 select 1), 0];
//deleteVehicle VQI_EOD_1;

 C4_demoCharge = "DemoCharge_Remote_Ammo_Scripted" createVehicle getPosATL VQI_EOD_1;
 C4_demoCharge setDamage 1;
 deleteVehicle VQI_EOD_1;
 
 
 
 
 
 
/* Notes:


*/