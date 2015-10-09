//Inside Lighting for ground Plane

private ["_light"];

deleteVehicle lightXHR1;
_light = "chemlight_blue" createVehicle (position player);
  
if (!isNull(VQI_HALO_XHR1)) 	then { _light attachTo [VQI_HALO_XHR1,[0,-4,0.85]]; };
if (!isNull(VQI_HALO_C130)) 	then { _light attachTo [VQI_HALO_C130,[0,4,-1.5]]; };
if (!isNull(VQI_HALO_C17)) 	then { _light attachTo [VQI_HALO_C17,[0,9,-1.5]]; };
if (!isNull(VQI_HALO_IL76)) 	then { _light attachTo [VQI_HALO_IL76,[0,9,-1.5]]; };