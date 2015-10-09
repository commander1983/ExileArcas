//START: BOMB Device L1:T1:H
//
if (VQI_HINTS_EOD == 1) then {
hint "BOMB: Level 1 - Type 1 - H";};
sleep 1;

private ["_bomb"];

// IED, ERW, EOD Device!
_bomb = createDialog "VQI_BOMB_L1_T1h";