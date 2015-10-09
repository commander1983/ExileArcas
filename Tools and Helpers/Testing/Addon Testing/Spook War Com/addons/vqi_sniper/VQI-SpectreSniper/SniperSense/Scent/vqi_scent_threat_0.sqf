//Scent, Odor, Probable Human/Threat; Synthetic
//

sleep 1;

private ["_rScent"];


_rScent = [1,20] call BIS_fnc_randomInt;
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
};
  
  

/* Notes:


*/