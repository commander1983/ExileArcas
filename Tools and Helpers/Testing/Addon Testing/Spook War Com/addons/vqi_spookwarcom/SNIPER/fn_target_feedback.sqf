//
//
_logic = _this select 0;

_this = "VQI_Target_Black" createVehicle (position _logic);
_this addEventHandler ["HitPart", { _this call VQI_eh_hitlocation; }];