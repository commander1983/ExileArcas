//Set Enemy Training Levels?
//
//hint "setFNC";
sleep 1;

_r1 = random 1;
_r2 = random 1;
_r3 = random 1;
_r4 = random 1;
_r5 = random 1;
_r6 = random 1;
_r7 = random 1;
_r8 = random 1;

VQI_fnc_Xskill = {
	//hint "test_fnc_setskills.sqf START";
	_squadX = _this select 0;
	//_leader1 = leader _squadX;
	//_leader1 setSkill 0.55;
	sleep 3;
			
		{
			_x setSkill ["commanding", _r1];
			_x setSkill ["courage", _r2];
			
			_x setSkill ["spotDistance", _r3];
			_x setSkill ["spotTime", _r4];
			
			_x setSkill ["aimingAccuracy", _r5];
			_x setSkill ["aimingShake", _r6];
			_x setSkill ["aimingSpeed", _r7];

			_x setSkill ["reloadSpeed", _r8];
			
			
			//modifiers, misc, NV, etc
			//_x setDamage 1;
		} forEach Units _squadX;
		

	sleep 3;
	//hint "test_fnc_setskills.sqf END";
};



//_x setSkill ["endurance", 0.50];	NOT Used in A3
//_x setSkill ["general", 0.50];	NOT Needed?
//https://community.bistudio.com/wiki/AI_Sub-skills