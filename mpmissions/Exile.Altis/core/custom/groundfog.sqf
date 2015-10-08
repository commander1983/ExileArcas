[] spawn {
//--- Bodendunst

_ran = ceil random 5;
_obj = vehicle player;
_pos = position _obj;
_delay = 3;

//--- BodenDunst
setwind [0.201112*2,0.204166*2,false];
_velocity = [random 10,random 10,-1];
_color = [1.0, 0.9, 0.8];
_alpha = 0.02 + random 0.02;
_ps = "#particlesource" createVehicleLocal _pos;
_ps setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8,0], "", "Billboard", 1, 7, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
_ps setParticleCircle [0.1, [0, 0, 0]];
_ps setDropInterval 0.01;

sleep (random 0.4);
deletevehicle _ps;
_delay = 10 + random 20;
sleep _delay;

//Schnee

_obj = player;
_pos = position (vehicle _obj);

_d = 15;
_h = 12;
_h1 = 8;
_h2 = 0;
_density = 5000;


_fog1 = "#particlesource" createVehicleLocal _pos;
_fog1 setParticleParams [
["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
_fog1 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog1 setParticleCircle [0.001, [0, 0, -0.12]];
_fog1 setDropInterval 0.01;

_fog2 = "#particlesource" createVehicleLocal _pos;
_fog2 setParticleParams [
["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
_fog2 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog2 setParticleCircle [0.001, [0, 0, -0.12]];
_fog2 setDropInterval 0.01;

};
