sleep 3;
//hint "Radio 7";


private ["_pRadioChatter", "rRadio1", "_pRadioloop"];
_pRadioloop = true;


while {_pRadioloop} do {
_pRadioChat = player distance VQIHALO2;

	if (_pRadioChat < 30) then {
		
		_rRadio1 = [1,25] call BIS_fnc_randomInt;
		switch (_rRadio1) do
		{
			case 1 : { playSound "RadioChatter_2BirdsDown"; };
			case 2 : { playSound "RadioChatter_14Garble"; };
			case 3 : { playSound "RadioChatter_23mmRiver"; };
			case 4 : { playSound "RadioChatter_29er"; };
			case 5 : { playSound "RadioChatter_29onFire"; };
			case 6 : { playSound "RadioChatter_106"; };
			case 7 : { playSound "RadioChatter_220FoxGirl"; };
			case 8 : { playSound "RadioChatter_220RogerThat"; };
			case 9 : { playSound "RadioChatter_714"; };
			case 10 : { playSound "RadioChatter_2236"; };
			case 11 : { playSound "RadioChatter_ClearToDefend"; };
			case 12 : { playSound "RadioChatter_DME"; };
			case 13 : { playSound "RadioChatter_Fox6TakingFire"; };
			case 14 : { playSound "RadioChatter_GoodInst"; };
			case 15 : { playSound "RadioChatter_JesusChrist"; };
			case 16 : { playSound "RadioChatter_MiG23s"; };
			case 17 : { playSound "RadioChatter_OneExplode"; };
			case 18 : { playSound "RadioChatter_RedTracers"; };
			case 19 : { playSound "RadioChatter_RoadRiver"; };
			case 20 : { playSound "RadioChatter_SteelRain"; };
			case 21 : { playSound "RadioChatter_TakingFire"; };
			case 22 : { playSound "RadioChatter_ThatsYourTarget"; };
			case 23 : { playSound "RadioChatter_TookHit"; };
			case 24 : { playSound "RadioChatter_UnderOurControl"; };
			case 25 : { playSound "RadioChatter_VectorInbound"; };
		};
		
	} else {_pRadioloop = false;};
	
sleep (30 + random 120);
};