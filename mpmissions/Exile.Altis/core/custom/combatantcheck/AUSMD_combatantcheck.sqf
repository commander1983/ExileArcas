player addEventHandler["Respawn",{execVM "core\custom\combatantcheck\AUSMD_combatantcheck.sqf";}];
while{alive player} do
{
	notCombatant = true;
	player setcaptive true;
	waitUntil{primaryWeapon player != "" || secondaryWeapon player != ""};
	player setcaptive false;
	notCombatant = false;
	sleep 5;
};
