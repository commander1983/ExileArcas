//Scent, Odor, Probable Human/Threat; Synthetic
//
if (VQI_HINTS_SNIPER == 1) then {
hint "1 Detects... Possible Threat?";};
sleep 2;


// 70% probability
if (random 1 <= 0.70) then {

	_rScent = [1,32] call BIS_fnc_randomInt;
	switch (_rScent) do
	{
   case 1 : { hint "Bodyodor; Human"; };
   case 2 : { hint "Bodyodor; Sweat"; };
   case 3 : { hint "Bodyodor; Feet"; };
   case 4 : { hint "Chemical; Cleaner"; };
   case 5 : { hint "Chemical; Chlorine"; };
   case 6 : { hint "Chemical; Clorox"; };
   case 7 : { hint "Chemical; Dryer Sheet"; };
   case 8 : { hint "Chemical; Shampoo"; };
   case 9 : { hint "Chemical; Toothpaste"; };
   case 10 : { hint "Chemical; Antiseptic"; };
   case 11 : { hint "Chemical; Iodine"; };
   case 12 : { hint "Chemical; Soap, Washed"; };
   case 13 : { hint "Chemical; Bug Spray"; };
   case 14 : { hint "Chemical; Gasoline"; };
   case 15 : { hint "Chemical; Oil, Synthetic"; };
   case 16 : { hint "Chemical; Bleach"; };
   case 17 : { hint "Chemical; Deodorant"; };
   case 18 : { hint "Chemical; Metal Polish"; };
   case 19 : { hint "Chemical; Lighter Fluid"; };
   case 20 : { hint "Gun Oil; foreign"; };
   case 21 : { hint "Shoe Leather; foreign"; };
   case 22 : { hint "Cotton, fabric; foreign"; };
   case 23 : { hint "non-descript; human"; };
   case 24 : { hint "Tobacco; Cuban"; };
   case 25 : { hint "Tobacco; foreign"; };
   case 26 : { hint "Tobacco; unknown"; };
   case 27 : { hint "Smoke; general"; };
   case 28 : { hint "Smoke; Cigarette"; };
   case 29 : { hint "Cotton; wet"; };
   case 30 : { hint "Spearmint; Chewing Gum"; };
   case 31 : { hint "Alcohol; Beer"; };
   case 32 : { hint "Alcohol; Liquor"; };
   };
   
	} else {
	execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\environment.sqf";
};