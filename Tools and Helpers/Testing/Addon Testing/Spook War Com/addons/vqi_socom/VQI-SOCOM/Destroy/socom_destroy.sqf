//MISSION TYPE: Destroy
//
hint "MISSION: DESTROY";
sleep 5;

_rMission1 = [1,6] call BIS_fnc_randomInt;
switch (_rMission1) do
{
	case 1 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\trawler_1.sqf"; };
	case 2 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\transmitter_tall_1.sqf"; };
	case 3 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\bridge_1.sqf"; };
	case 4 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\lighthouse_1.sqf"; };
	case 5 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\chapel_1.sqf"; };
	case 6 : { execVM "\vqi_socom\VQI-SOCOM\Destroy\building_1.sqf"; };
}; 