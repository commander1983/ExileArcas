//[startingPosition, direction, objectClass, repeats, offsetX, offsetY, offsetZ]

fnc_bridgeA3 = {
    private ["_start","_obj","_objPos","_objDir"];
    _start = createVehicle [
        _this select 2,
        _this select 0,
        [],
        0,
        "CAN_COLLIDE"
    ];
    _start setVectorUp [0,0,1];
    _start setDir (_this select 1);
    _start setPosATL (_this select 0);
    for "_i" from 1 to (_this select 3) do {
        _obj = createVehicle [
            _this select 2,
            _this select 0,
            [],
            0,
            "CAN_COLLIDE"
        ];
        _obj attachTo [_start, [
            _i*(_this select 4),
            _i*(_this select 5),
            _i*(_this select 6)
        ]];
        _objPos = getPosATL _obj;
        _objDir = getDir _obj;
        detach _obj;
        _obj setDir _objDir;
        _obj setPosATL _objPos;
    };
};

[
    [14619.6,10675.7,0],
    153,
    "Land_nav_pier_m_F",
    47,
    40,
    0,
    0
] call fnc_bridgeA3;


private ["_objs"];
_objs = [
	["Land_nav_pier_m_F",[12914.6,9806.98,-3.37135],153,[[0.45399,-0.891007,0],[-0.219,-0.111586,0.969323]],false],
	["Land_nav_pier_m_F",[14649.5,10690.9,-2.56037],153.186,[[0.451095,-0.892476,0],[0.217722,0.110046,0.969787]],false],
	["Land_nav_pier_m_F",[14683.9,10708.4,-4.5193],152.751,[[0.457858,-0.889025,0],[0,-0,1]],false]
];

{
	private ["_obj"];
	_obj = createVehicle [_x select 0, [0,0,0], [], 0, "CAN_COLLIDE"];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
} foreach _objs;
