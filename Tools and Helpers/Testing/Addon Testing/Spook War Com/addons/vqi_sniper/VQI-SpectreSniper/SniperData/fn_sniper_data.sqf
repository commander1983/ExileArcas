disableSerialization;

private ["_display","_x","_y","_w","_h","_centerX","_centerY","_hitX","_hitY"];

_hitX = (_this select 0);
_hitY = (_this select 1);

// scale
//_hitX = (_hitX * 0.9 * 2 / 3) - 0.00;
//_hitY = (_hitY * 0.9) - 0.01;
_hitX = (_hitX * 0.20 * 2 / 3) - 0.015;
_hitY = (_hitY * 0.20) - 0.01;

20 cutRsc ["VQI_DATACARD_V1","PLAIN"];
21 cutRsc ["VQI_RscHitMarker","PLAIN"];
waitUntil {!isNull (uiNamespace getVariable "VQI_RscHitMarker")};
_display = uiNamespace getVariable "VQI_RscHitMarker";

_x = safezoneX + 0.393;
_y = safezoneY + safezoneH - (0.4 * 4 / 3) + 0.045;
_w = 0.4;
_h = 0.4 * 4 / 3;

_centerX = _x + _w / 2;
_centerY = _y + _h / 2;

//player globalchat format ["_centerX:%1, _centerY:%2", str _centerX, str _centerY];

(_display displayCtrl 3024) ctrlSetText "vqi_sniper\VQI-SpectreSniper\SniperData\marker2_ca.paa";
(_display displayCtrl 3024) ctrlSetFade 0;
(_display displayCtrl 3024) ctrlSetPosition [_hitX + _centerX, _hitY + _centerY];
(_display displayCtrl 3024) ctrlCommit 0;


_datacard = uiNamespace getVariable "VQI_DATACARD_V1";
//_disT = player distance [getPos _tHit select 0, getPos _tHit select 1, getPos _tHit select 2];
_disT = round (player distance VQI_sniperTarget);
_pASL = round ((getPosASL player) select 2);
_mTmp = "~";
_mHum = fog;
_mHyd = rain;
_wDir = round (windDir);
_wStr = windStr;
_knots  = 3.6 * sqrt ((wind select 0)*(wind select 0) + (wind select 1)*(wind select 1));

_weaponClass	= currentWeapon (vehicle player);
_magClass	= currentMagazine (vehicle player);

_weaponZero	= currentZeroing (vehicle player);
_Wdg	 = "N/A";

_Wepn = getText (configFile >> "CfgWeapons" >> _weaponClass >> "displayName"); 
_Magz = getText (configFile >> "CfgMagazines" >> _magClass >> "displayName");

_weaponItems 	= [];
_weaponItems 	= primaryWeaponItems player;
_wOptic	= _weaponItems select 2;
_Optc	= getText (configFile >> "CfgWeapons" >> _wOptic >> "displayName");

_Mfg	 = getText (configFile >> "CfgWeapons" >> _weaponClass >> "author");

_Date 	= date;
_Day 	= _Date select 2;
_Month 	= _Date select 1;
/*
if (_Month == 1) then {_Month = "JAN";};
if (_Month == 2) then {_Month = "FEB";};
if (_Month == 3) then {_Month = "MAR";};
if (_Month == 4) then {_Month = "APR";};
if (_Month == 5) then {_Month = "MAY";};
if (_Month == 6) then {_Month = "JUN";};
if (_Month == 7) then {_Month = "JUL";};
if (_Month == 8) then {_Month = "AUG";};
if (_Month == 9) then {_Month = "SEP";};
if (_Month == 10) then {_Month = "OCT";};
if (_Month == 11) then {_Month = "NOV";};
if (_Month == 12) then {_Month = "DEC";};
*/
_Hour	= _Date select 3;
_Min		= _Date select 4;

(_datacard displayCtrl 4000) ctrlSetText format["%1",_disT];
(_datacard displayCtrl 4001) ctrlSetText format["%1m",_pASL];
(_datacard displayCtrl 4002) ctrlSetText format["%1F",_mTmp];
(_datacard displayCtrl 4003) ctrlSetText(format["%1",(round(_mHum*100))]+"%");
(_datacard displayCtrl 4004) ctrlSetText format[".%1in",(round(_mHyd*100))];
(_datacard displayCtrl 4005) ctrlSetText format["%1",_wDir];
(_datacard displayCtrl 4006) ctrlSetText format["%1",(round(_knots/1.852))];
(_datacard displayCtrl 4007) ctrlSetText format["%1",_Wepn];
(_datacard displayCtrl 4008) ctrlSetText format["%1",_weaponZero];
(_datacard displayCtrl 4009) ctrlSetText format["%1",_Magz];
(_datacard displayCtrl 4010) ctrlSetText format["%1",_Optc];
(_datacard displayCtrl 4011) ctrlSetText format["%1",_Mfg];
(_datacard displayCtrl 4012) ctrlSetText format["%1",_Wdg];
(_datacard displayCtrl 4013) ctrlSetText format["%1h%2",_Hour,_Min];
(_datacard displayCtrl 4014) ctrlSetText format["%1/%2",_Day,_Month];




//[] spawn {
//    sleep 30;
//	99 cutRsc ["Default","plain"];
//}