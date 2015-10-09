// ChemLight to Left Ankle
// Night-Ops Option
private ["_distJP"];

_distJP = player distance VQIHALO2;

if (_distJP < 30) then {
	deleteVehicle jumpLightRED; 
	jumpLightRED = "chemlight_red" createVehicle (position player); 
	jumpLightRED attachTo [vehicle player,[-0.05,-0.09,0.1],"lankle"];
} else {
	hint "Unable to attach";
};