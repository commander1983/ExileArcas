//Scent, Odor, Environment, Terrain - NON Threat
//

sleep 1;

private ["_rScent"];


_rScent = [1,60] call BIS_fnc_randomInt;
switch (_rScent) do
{
   case 1 : { hint "Xeric Pine; tree"; };
   case 2 : { hint "Aleppo Pine; tree"; };
   case 3 : { hint "Holm Oak; tree"; };
   case 4 : { hint "Xeric Junipers; tree"; };
   case 5 : { hint "Cistus; shrub"; };
   case 6 : { hint "Genista; shrub"; };
   case 7 : { hint "Rosemary; shrub"; };
   case 8 : { hint "Terra Rossa, soil"; };
   case 9 : { hint "Limestone; soil"; };
   case 10 : { hint "Berber Thuya; conifer"; };
   case 11 : { hint "Siliceous Rock; soil"; };
   case 12 : { hint "Cork Oak; tree"; };
   case 13 : { hint "Bay Laurel; shrub"; };
   case 14 : { hint "Strawberry Tree; shrub"; };
   case 15 : { hint "Tree Heath; shrub"; };
   case 16 : { hint "Holly; shrub"; };
   case 17 : { hint "Phillyrea; shrub"; };
   case 18 : { hint "Laurustinus; shrub"; };
   case 19 : { hint "Harry Broom; shrub"; };
   case 20 : { hint "Common Myrtle; shrub"; };
   case 21 : { hint "Holm Oak; tree"; };
   case 22 : { hint "Kermes Oak; tree"; };
   case 23 : { hint "Wild Olive; plant"; };
   case 24 : { hint "Carob; plant"; };
   case 25 : { hint "Sea Salt; ocean"; };
   case 26 : { hint "Limestone; soil"; };
   case 27 : { hint "Siliceous Rock; soil"; };
   case 28 : { hint "Vegetation; general"; };
   case 29 : { hint "non-descript; unknown"; };
   case 30 : { hint "Cork, Holm, Kermes; mixed"; };
   case 31 : { hint "non-descript; scrub"; };
   case 32 : { hint "Dust, Sand; mixed, soil"; };
   case 33 : { hint "Decay, weak; flesh"; };
   case 34 : { hint "Decay, strong; flesh"; };
   case 35 : { hint "Decay, mixed; plant"; };
   case 36 : { hint "Wheat; farmland"; };
   case 37 : { hint "Barley; farmland"; };
   case 38 : { hint "Sesame; farmland"; };
   case 39 : { hint "Animal, varied; farmland"; };
   case 40 : { hint "non-descript; farmland"; };
   case 41 : { hint "Cooking; mediterranean"; };
   case 42 : { hint "bodyodor; self"; };
   case 43 : { hint "Gun Oil; self"; };
   case 44 : { hint "non-descript; scrub"; };
   case 45 : { hint "non-descript; pollen, dust"; };
   case 46 : { hint "non-descript; pollen, dust"; };
   case 47 : { hint "non-descript; pollen, dust"; };
   case 48 : { hint "Dust, Sand; mixed, soil"; };
   case 49 : { hint "bodyodor; self"; };
   case 50 : { hint "bodyodor; self"; };
   case 51 : { hint "bodyodor; self"; };
   case 52 : { hint "bodyodor; self"; };
   case 53 : { hint "Gun Oil; self"; };
   case 54 : { hint "Gun Oil; self"; };
   case 55 : { hint "Cooking; mediterranean"; };
   case 56 : { hint "bodyodor; self"; };
   case 57 : { hint "Gun Oil; self"; };
   case 58 : { hint "Terra Rossa, soil"; };
   case 59 : { hint "Limestone; soil"; };
   case 60 : { hint "Berber Thuya; conifer"; };
};