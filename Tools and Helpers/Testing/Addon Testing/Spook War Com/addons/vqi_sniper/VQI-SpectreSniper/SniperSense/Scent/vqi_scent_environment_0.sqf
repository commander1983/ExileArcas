//Scent, Odor, Environment, Terrain - NON Threat
//

sleep 1;

private ["_rScent"];


_rScent = [1,20] call BIS_fnc_randomInt;
switch (_rScent) do
{
   case 1 : { hint "Xeric Pine; tree"; };
   case 2 : { hint "Aleppo Pine; tree"; };
   case 3 : { hint "Holm Oak; tree"; };
   case 4 : { hint "Sea Salt; ocean"; };
   case 5 : { hint "Limestone; soil"; };
   case 6 : { hint "Siliceous Rock; soil"; };
   case 7 : { hint "Vegetation; general"; };
   case 8 : { hint "non-descript; unknown"; };
   case 9 : { hint "Cork, Holm, Kermes; mixed"; };
   case 10 : { hint "non-descript; scrub"; };
   case 11 : { hint "non-descript; pollen, dust"; };
   case 12 : { hint "non-descript; pollen, dust"; };
   case 13 : { hint "non-descript; pollen, dust"; };
   case 14 : { hint "Dust, Sand; mixed, soil"; };
   case 15 : { hint "bodyodor; self"; };
   case 16 : { hint "bodyodor; self"; };
   case 17 : { hint "bodyodor; self"; };
   case 18 : { hint "bodyodor; self"; };
   case 19 : { hint "Gun Oil; self"; };
   case 20 : { hint "Gun Oil; self"; };
};