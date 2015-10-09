private ["_logic","_units","_activated","_socomHints","_socomMarker","_socomMission","_socomDASR","_socomEnemy"];

_logic = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_units = [_this,1,[],[[]]] call BIS_fnc_param;
_activated = [_this,2,true,[true]] call BIS_fnc_param;



if (isServer) then {
	//---SOCOM Setup------------------------------------------
	_socomHints	= _logic getVariable "vqi_socom_debughints"; 	//vqi_module_socom_debughints --> update all!
	_socomMarker	= _logic getVariable "vqi_socom_tempmarker";
	_socomMission	= _logic getVariable "vqi_socom_missiontype";
	_socomDASR	= _logic getVariable "vqi_socom_dasr";
	_socomEnemy	= _logic getVariable "vqi_module_socom_enemy";	//

	if (_socomHints == 1) then { //Debug/Hints
	missionNamespace setVariable ["VQI_HINTS_SOCOM", 1];};
	publicVariable "VQI_HINTS_SOCOM";

	if (_socomMarker == 0) then { //Temp Marker
	missionNamespace setVariable ["VQI_MKMISSION_SOCOM", 0];};
	publicVariable "VQI_MKMISSION_SOCOM";

	if (_socomMission == 0) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 0];};
	if (_socomMission == 1) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 1];};
	if (_socomMission == 2) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 2];};
	if (_socomMission == 3) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 3];};
	if (_socomMission == 4) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 4];};
	if (_socomMission == 5) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 5];};
	if (_socomMission == 6) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 6];};
	if (_socomMission == 7) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 7];};
	if (_socomMission == 8) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 8];};
	if (_socomMission == 9) then { //User Mission
	missionNamespace setVariable ["VQI_MISSION_SOCOM", 9];};
	publicVariable "VQI_MISSION_SOCOM";
	
	if (_socomDASR == 1) then { //User DASR Mission
	missionNamespace setVariable ["VQI_DASR_SOCOM", 1];};
	if (_socomDASR == 2) then { //User DASR Mission
	missionNamespace setVariable ["VQI_DASR_SOCOM", 2];};
	if (_socomDASR == 3) then { //User DASR Mission
	missionNamespace setVariable ["VQI_DASR_SOCOM", 3];};
	if (_socomDASR == 4) then { //User DASR Mission
	missionNamespace setVariable ["VQI_DASR_SOCOM", 4];};
	if (_socomDASR == 5) then { //User DASR Mission
	missionNamespace setVariable ["VQI_DASR_SOCOM", 5];};
	publicVariable "VQI_DASR_SOCOM";
	
	//--------------------------------------------------
	// Note to Self: Standardize Format!
	// User Select Enemy Faction
	if (_socomEnemy == 1) then { //CSAT - RED - OPFOR
	missionNamespace setVariable ["VQI_SOCOM_ENEMY", 1];};
	if (_socomEnemy == 2) then { //AAF - GREEN - IND
	missionNamespace setVariable ["VQI_SOCOM_ENEMY", 2];};
	if (_socomEnemy == 3) then { //NATO - BLUE - BLUFOR
	missionNamespace setVariable ["VQI_SOCOM_ENEMY", 3];};
	
	//--------------------------------------------------
	
	sleep 5;
	[] spawn VQI_fnc_SOCOMinit;
};