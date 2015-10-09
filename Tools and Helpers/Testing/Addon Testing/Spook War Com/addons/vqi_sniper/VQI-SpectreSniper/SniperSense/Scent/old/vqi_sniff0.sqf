// SniperSense - Keen sense of smell/detection/scent/chemicals/etc...
//
if (VQI_HINTS_SNIPER == 1) then {
hint "Sniff 0 Start \n Range: 100m \n Prob: 20%";};
sleep 1;
				
				
				
				
				
while {true} do
{
	if (inputAction "Adjust" > 0) then {
	addCamShake [1,1,2]; playSound "sniff1_quick2"; //p,d,f
		if ((animationState player == "AmovPpneMstpSrasWrflDnon") || (animationState player == "AmovPpneMstpSrasWpstDnon") 
		 || (animationState player == "AmovPpneMstpSoptWbinDnon") || (animationState player == "AmovPpneMstpSnonWnonDnon")) then {
		
		_dxx = 100; //distance check
		_pos = getPos player;
		_n50 = _pos nearEntities _dxx;
		_grn = resistance countSide _n50;
		_red = east countSide _n50; //countEnemy NOT work???
		_bad = _grn + _red;
			if (_bad == 0) then {execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\environment0.sqf";} //feedback multiplier with enemy?
				else{
			if (_bad >= 1) then {execVM "vqi_sniper\VQI-SpectreSniper\SniperSense\Scent\vqi_sniff0threat.sqf";}
				};
			sleep (20 + random 20); // 20sec - 40sec
		
		} else {
		hint "You smell nothing...";
		};
		sleep 1;
	};
	sleep 1;
};