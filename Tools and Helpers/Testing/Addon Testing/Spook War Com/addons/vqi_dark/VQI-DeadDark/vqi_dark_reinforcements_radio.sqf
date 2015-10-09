//
//
if (VQI_DARK_HINTS == 1) then {
hint "reinforcements_radio.sqf"; };
sleep 1;


private ["_radioCall","_callTypeX"];

_radioCall = random 100;
_callTypeX = 0;

if ((_radioCall >= 0)  && (_radioCall < 50))		then { _callTypeX = 1; };	// 50% 
if ((_radioCall >= 50) && (_radioCall < 80))  	then { _calltypeX = 2; };	// 30% 
if ((_radioCall >= 80) && (_radioCall <= 100)) 	then { _callTyPeX = 3; };	// 20% 

if (_callTypeX == 1) then {
	if (VQI_DARK_RADIO_QRFH == 1) then {
	[] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_reinforcements_heli_cargotroops.sqf"; };
};

if (_callTypeX == 2) then {
	if (VQI_DARK_RADIO_QRFP == 1) then {
	[] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_reinforcements_heli_paratroops.sqf"; };
};

if (_callTypeX == 3) then {
	if (VQI_DARK_RADIO_QRFA == 1) then {
	[] execVM "\vqi_dark\VQI-DeadDARK\vqi_dark_reinforcements_arty.sqf"; };
};



sleep 1;
if (VQI_DARK_HINTS == 1) then {
hint "reinforcements_radio.sqf -END-"; };