//-------------VQI SniperSystem 0.4---------------//
//		  by R. Von Quest aka "Goblin"
//------------------------------------------------//
//

//hint "vqi_triggers_stealthcheck";

private ["_ssStealthBlind","_ssStealthCheck","_ssModifiyBonus","_ssSkillz"];

_ssStealthBlind = 0;
_ssStealthCheck = 40; // 40% Default (+/- BlindCheck)
_ssModifiyBonus = 0; // W-I-P Coming Soon...

if ("U_B_GhillieSuit" == uniform player) then { _ssStealthCheck = 20; };

if (SniperBlindSkill == 1) then { _ssStealthBlind = +10; }; // Sparse SniperBlind: 10% penalty
if (SniperBlindSkill == 2) then { _ssStealthBlind =  +0; }; // Normal SniperBlind: --
if (SniperBlindSkill == 3) then { _ssStealthBlind = -15; }; // Thick SniperBlind: 15% bonus

_ssSkillz = _ssStealthCheck + _ssStealthBlind;
// Ghillie, N: 50%, 40%, 25% StealthSkillz Range
// Ghillie, Y: 30%, 20%,  5% StealthSkillz Range

if (random 100 <= _ssSkillz) then {
	player setCaptive false; 
	ScoutSniperStealth = false;
	missionNamespace setVariable ["ScoutSniperStealth", false];
};




/* Notes:
W-I-P 
StealthModifers Coming Soon...



*/