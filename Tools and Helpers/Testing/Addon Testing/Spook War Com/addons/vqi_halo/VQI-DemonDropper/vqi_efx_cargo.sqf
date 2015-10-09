//----WIP-----WIP------WIP-----WIP--------WIP----WIP---
//JumpLighting/While players in Cargo set-up for SP/MP
//if (VQI_HINTS_HALO == 1) then {
//hint "DO NOT Jump too soon - will be OFF COURSE \n WAIT for GREEN/GO Signal";};
//hint "EFX Cargo!";

if (VQI_TravelTime_HALO == 1) then {
_jumpPlaneTravel = 1;
if (isServer) then {skipTime _jumpPlaneTravel}; };

if (VQI_TravelTime_HALO == 2) then {
_jumpPlaneTravel = (1 + random 2);
if (isServer) then {skipTime _jumpPlaneTravel}; };

if (VQI_TravelTime_HALO == 3) then {
_jumpPlaneTravel = (2 + random 4);
if (isServer) then {skipTime _jumpPlaneTravel}; };


deleteVehicle trgCargo;
sleep 1;
//waitUntil {((getposASL Player select 2) > 3333);};

//Blue lighting - en route...
lightBLUE = 'chemlight_blue' createVehicle [getPos VQIHALO2 select 0, getPos VQIHALO2 select 1,0.15]; 
publicVariable "lightBlue"; 
lightBLUE attachTo [VQIHALO2,[0,7,0.85]];		//-4
if (!isNull(VQI_HALO_C17))  then {   lightBLUE attachTo [VQIHALO2,[0, 7, 3]]; };
if (!isNull(VQI_HALO_XHR1)) then {   lightBLUE attachTo [VQIHALO2,[0, -4, 0.85]]; };

sleep 30;



//Red 1 Light: de-pressurize, Get Ready! Stand by... 
sleep 65 + random 45; // (65-110sec AFTER Blue)
deleteVehicle lightBLUE;
lightRED1 = 'chemlight_red' createVehicle [getPos VQIHALO2 select 0, getPos VQIHALO2 select 1,0.15];
publicVariable "lightRED1"; 
lightRED1 attachTo [VQIHALO2,[0,7,0.85]];
if (!isNull(VQI_HALO_C17))  then {   lightRED1 attachTo [VQIHALO2,[2.7,-11,2]];  };
if (!isNull(VQI_HALO_XHR1)) then {   lightRED1 attachTo [VQIHALO2,[0, -4, 0.85]]; };
[lightRED1,"ns_depress"] call CBA_fnc_globalSay3d;
//hint "De-pressurize...";
sleep 6; //de-pressurize efx


//Red 2 Light: Open Ramp, Get into position, WAIT for GREEN!!
sleep 40 + random 10; // (40-50sec AFTER Red1)
deleteVehicle lightRED1;
lightRED2 = 'chemlight_red' createVehicle [getPos VQIHALO2 select 0, getPos VQIHALO2 select 1,0.15];
publicVariable "lightRED2"; 
lightRED2 attachTo [VQIHALO2,[0,7,0.85]];
if (!isNull(VQI_HALO_C17))  then {   lightRED2 attachTo [VQIHALO2,[2.7,-11,2]];  };
if (!isNull(VQI_HALO_XHR1)) then {   lightRED2 attachTo [VQIHALO2,[0, -4, 0.85]]; };
[lightRED2,"ns_ongreen"] call CBA_fnc_globalSay3d;
sleep 3;
[lightRED2,"CargoDoor_Open_HALO"] call CBA_fnc_globalSay3d;



if (!isNull(VQI_HALO_XHR1)) then {
	VQIHALO2 animate ["AnimateRAMP1", 1]; 		// Vampyre
};
if (!isNull(VQI_HALO_C130)) then {
	VQIHALO2 animate ["ramp_bottom", 1];		// MC-130J Commando II
	VQIHALO2 animate ["Ramp_top", 1];			// MC-130J Commando II
};
if (!isNull(VQI_HALO_C17))	then {
	VQIHALO2 say "globemaster_c17_doors";			// C-17 Globemaster III
	VQIHALO2 animate ["back_ramp_half",1];			// C-17 Globemaster III
	VQIHALO2 animate ["back_ramp_st_half",1];		// C-17 Globemaster III
	VQIHALO2 animate ["back_ramp_p",1];				// C-17 Globemaster III
	VQIHALO2 animate ["back_ramp_p_2",1];			// C-17 Globemaster III
	VQIHALO2 animate ["back_ramp_door_main",1]		// C-17 Globemaster III
};

sleep 2;
addCamShake [2,2,7];
//hint "Open Ramp - Get into position...";


//Green Light: GO-GO-GO!!!
sleep 40 + random 10; // (40-50sec AFTER Red2)
deleteVehicle lightRED2;
lightGREEN = 'chemlight_green' createVehicle [getPos VQIHALO2 select 0, getPos VQIHALO2 select 1,0.15];
publicVariable "lightGREEN";
lightGREEN attachTo [VQIHALO2,[0,7,0.85]];
if (!isNull(VQI_HALO_C17))  then {   lightGREEN attachTo [VQIHALO2,[2.7,-11,2]];  };
if (!isNull(VQI_HALO_XHR1)) then {   lightGREEN attachTo [VQIHALO2,[0, -4, 0.85]]; };
[lightGREEN,"ns_gogogo"] call CBA_fnc_globalSay3d;





// W-I-P