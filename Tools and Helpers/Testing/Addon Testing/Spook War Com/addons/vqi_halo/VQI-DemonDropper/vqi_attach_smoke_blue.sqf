// ChemLight to Left Ankle
// Night-Ops Option
private ["_distJP"];

_distJP = player distance VQIHALO2;

if (_distJP < 50) then {
	deleteVehicle smokeRED; 
	smokeRED = "SmokeShellBlue" createVehicle (position player); 
	smokeRED attachTo [vehicle player,[-0.05,-0.09,0.1],"lankle"];
} else {
	hint "Unable to attach";
};