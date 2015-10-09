sleep 3;

if (("Vest_VQI_Stingray" == Vest player) || ("V_RebreatherB" == Vest player)) then {
	_O2Tank = (round((random 50) + 45));
	hint (format ["O2 Tank: %1",_O2Tank]+"%");
};


//reBreather System WIP
/*
if ("Vest_VQI_Stingray" == Vest player) then 
	{
		while {(("Vest_VQI_Stingray" == Vest player) && (cameraView == "INTERNAL") && ((getPosATL player select 2) > 33))} do {
			playSound "rebreather_breath";
			sleep 4;};
		} else {
	hint "";	//set O2
	sleep 0.2;
	};
*/
_pHeight = ((getPosATL player) select 2);

while {_pHeight > 10} do {
	if ((cameraView == "INTERNAL") && (("Vest_VQI_Stingray" == Vest player) || ("V_RebreatherB" == Vest player))) then {
	playSound "rebreather_breath";
	sleep 4;
	
	//} else {
	//	hint "";
	};
	sleep 1;
};