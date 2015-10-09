waitUntil {!isNil "bis_fnc_init"};
sleep 1;
//
//
sleep 1;
// Vanity Tag & Intro --------------------------------------------------------------------------
if (VQI_HINTS_HALO == 1) then { sleep 10;
hint "Von Quest Industries Presents: \n DemonDropper v1.6 \n by: R. Von Quest aka 'Goblin'";};
//----------------------------------------------------------------------------------------------


// XHR-1:Vampyre
if (!isNull(VQI_HALO_XHR1)) then { execVM "\vqi_halo\VQI-DemonDropper\vqi_demondropper_XHR1.sqf"; };
sleep 1;
// C-130
//if (!isNull(VQI_HALO_C130)) then { execVM "\vqi_halo\VQI-DemonDropper\vqi_demondropper_C130.sqf"; };
if (!isNull(VQI_HALO_C130)) then { execVM "\vqi_halo\VQI-DemonDropper\GroundStart\vqi_halo_groundcraft_C130.sqf"; };
sleep 1;
// C-17
if (!isNull(VQI_HALO_C17)) then { execVM "\vqi_halo\VQI-DemonDropper\vqi_demondropper_C17.sqf"; };
sleep 1;
// IL-76
if (!isNull(VQI_HALO_IL76)) then { execVM "\vqi_halo\VQI-DemonDropper\vqi_demondropper_IL76.sqf"; };


sleep 2;


missionNamespace setVariable ["AltimeterKeyToggle", false];


//User Custom KeyBinding ----> set config?
execVM "\vqi_halo\XEH_postClientInit.sqf";



//-----------------------------------------------------------------------------------------------------------------------------------------------------
// Ignore all this hocus pocus!
//jumpHALO = compile preprocessFileLineNumbers "vqi_halo\VQI-DemonDropper\vqi_efx_cargo.sqf";
//"jumpCargo" addPublicVariableEventHandler {[_this select 1] execVM "vqi_halo\VQI-DemonDropper\vqi_efx_cargo.sqf";}; //event handler on all machines

/*
"paramsHALO" addPublicVariableEventHandler {
   //The variable name and value are returned by the event handler
   _name = _this select 0; 	//This will return "jumpHALO"
   _params = _this select 1; 	//This will be the parameters received from the publicVariableServer
   
   _params spawn jumpHALO;
}; 
*/
//JB1 = compile preprocessFileLineNumbers "\vqi_halo\VQI-DemonDropper\Altimeter\vqi_altimeter.sqf";
//sleep 1;