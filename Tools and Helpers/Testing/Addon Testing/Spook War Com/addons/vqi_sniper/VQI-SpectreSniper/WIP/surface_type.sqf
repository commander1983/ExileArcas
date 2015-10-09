private["_surface"];
while {alive player} do {
   _surface = surfaceType getPosATL player;
   hintsilent format["%1",_surface];
   sleep 1;
};