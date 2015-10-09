/////////////////////////////////////////////////////////////////////////////
/*	ADDON: VQI-SPECTRESNIPER-v0.4	BY: R.Von Quest  aka the "Goblin"
	------------------------------------------------------------------------
	DEPT.: Von Quest Industries		STATUS: WORK-IN-PROGRESS
	PROJECT: SNIPER SYSTEM			SERIES: SPOOKWARCOM
	ADDON NAME: SpectreSniper		VERSION: v0.4 - 01.FEB.2015
	------------------------------------------------------------------------
	CREATOR: R. Von Quest - aka the "Goblin"
	CREDITS: thanks to mrflay (assist with target code)
	------------------------------------------------------------------------
	NOTES: SNIPER = A sniper is a highly trained marksman who operates alone, 
	in a pair, or within a sniper team to maintain close visual contact with 
	the enemy and engage targets from concealed positions or distances exceeding 
	the detection capabilities of enemy personnel. These sniper teams operate 
	independently, with little combat asset support from their parent units.
	
	Snipers typically have highly selective and specialized training and use 
	high-precision/special application rifles and optics, and often have 
	sophisticated communication assets to feed valuable combat information 
	back to their units. In addition to marksmanship, military snipers are 
	trained in camouflage, field craft, infiltration, special reconnaissance 
	and observation, surveillance and target acquisition. (Wikipedia)
*/
/////////////////////////////////////////////////////////////////////////////
missionNamespace setVariable ["QuestrelKeyToggle", true];

private ["_unit","_windStr","_windDir","_bearing","_knots","_pDirC","_pDirL","_pDirR","_pHdg","_elevation","_humidity","_hydrometeor","_display"];



//
if ("VQI_SniperBuddy_1" in assignedItems player) then {

if (VQI_HINTS_SNIPER == 1) then { hint "Questrel: SniperBuddy I"; };

	
	
	disableSerialization; 
	22 cutRsc ["VQI_QUESTREL_1", "PLAIN"];

	while {"VQI_SniperBuddy_1" in (assignedItems player)} do {
	
		_unit = _this select 0;
		_bearing = windDir;	
		//_knots  = 3.6 * sqrt ((wind select 0)*(wind select 0) + (wind select 1)*(wind select 1));
		//_windF = windStr * 10;
		_windF = call ace_weather_fnc_calculateWindSpeed;
		_pDirC = round (getDir player);
		_pDirL = round (getDir player);
		_pDirR = round (getDir player);
		_pHdg  = round (getDir player);

		if(windStr >= 0.00 && windStr <= 0.15) then {_windStr = "0-3mph | 0-5kph";};
		if(windStr >= 0.16 && windStr <= 0.25) then {_windStr = "3-5mph | 5-8kph";};
		if(windStr >= 0.26 && windStr <= 0.40) then {_windStr = "5-8mph | 8-13kph";};
		if(windStr >= 0.41 && windStr <= 0.60) then {_windStr = "8-12mph | 13-19kph";};
		if(windStr >= 0.61 && windStr <= 0.75) then {_windStr = "12-15mph | 19-24kph";};
		if(windStr >= 0.76 && windStr <= 0.95) then {_windStr = "15-19mph | 24-31kph";};
		if(windStr >= 0.96 && windStr <= 1.00) then {_windStr = "20+mph | 31+kph";};

		if(windDir >= 00.000 && windDir <= 11.250) then {_windDir = "S to N";};
		if(windDir >= 11.260 && windDir <= 33.750) then {_windDir = "SSW to NNE";};
		if(windDir >= 33.760 && windDir <= 56.250) then {_windDir = "SW to NE";};
		if(windDir >= 56.260 && windDir <= 78.750) then {_windDir = "WSW to ENE";};
		if(windDir >= 78.760 && windDir <= 101.25) then {_windDir = "W to E";};
		if(windDir >= 101.26 && windDir <= 123.75) then {_windDir = "WNW to ESE";};
		if(windDir >= 123.76 && windDir <= 146.25) then {_windDir = "NW to SE";};
		if(windDir >= 146.26 && windDir <= 168.75) then {_windDir = "NNW to SSE";};
		if(windDir >= 168.76 && windDir <= 191.25) then {_windDir = "N to S";};
		if(windDir >= 191.26 && windDir <= 213.75) then {_windDir = "NNE to SSW";};
		if(windDir >= 213.76 && windDir <= 236.25) then {_windDir = "NE to SW";};
		if(windDir >= 236.26 && windDir <= 258.75) then {_windDir = "ENE to WSW";};
		if(windDir >= 258.76 && windDir <= 281.25) then {_windDir = "E to W";};
		if(windDir >= 281.26 && windDir <= 303.75) then {_windDir = "ESE to WNW";};
		if(windDir >= 303.76 && windDir <= 326.25) then {_windDir = "SE to NW";};
		if(windDir >= 326.26 && windDir <= 348.75) then {_windDir = "SSE to NNW";};
		if(windDir >= 348.76 && windDir <= 360.00) then {_windDir = "S to N";};

	
		
		if(_pHdg >= 00.000 && _pHdg <= 11.250) then {_pDirL = "NNW";};
		if(_pHdg >= 11.260 && _pHdg <= 33.750) then {_pDirL = "N";};
		if(_pHdg >= 33.760 && _pHdg <= 56.250) then {_pDirL = "NNE";};
		if(_pHdg >= 56.260 && _pHdg <= 78.750) then {_pDirL = "NE";};
		if(_pHdg >= 78.760 && _pHdg <= 101.25) then {_pDirL = "ENE";};
		if(_pHdg >= 101.26 && _pHdg <= 123.75) then {_pDirL = "E";};
		if(_pHdg >= 123.76 && _pHdg <= 146.25) then {_pDirL = "ESE";};
		if(_pHdg >= 146.26 && _pHdg <= 168.75) then {_pDirL = "SE";};
		if(_pHdg >= 168.76 && _pHdg <= 191.25) then {_pDirL = "SSE";};
		if(_pHdg >= 191.26 && _pHdg <= 213.75) then {_pDirL = "S";};
		if(_pHdg >= 213.76 && _pHdg <= 236.25) then {_pDirL = "SSW";};
		if(_pHdg >= 236.26 && _pHdg <= 258.75) then {_pDirL = "SW";};
		if(_pHdg >= 258.76 && _pHdg <= 281.25) then {_pDirL = "WSW";};
		if(_pHdg >= 281.26 && _pHdg <= 303.75) then {_pDirL = "W";};
		if(_pHdg >= 303.76 && _pHdg <= 326.25) then {_pDirL = "WNW";};
		if(_pHdg >= 326.26 && _pHdg <= 348.75) then {_pDirL = "NW";};
		if(_pHdg >= 348.76 && _pHdg <= 360.00) then {_pDirL = "NNW";};
		
		if(_pHdg >= 00.000 && _pHdg <= 11.250) then {_pDirC = "N";};
		if(_pHdg >= 11.260 && _pHdg <= 33.750) then {_pDirC = "NNE";};
		if(_pHdg >= 33.760 && _pHdg <= 56.250) then {_pDirC = "NE";};
		if(_pHdg >= 56.260 && _pHdg <= 78.750) then {_pDirC = "ENE";};
		if(_pHdg >= 78.760 && _pHdg <= 101.25) then {_pDirC = "E";};
		if(_pHdg >= 101.26 && _pHdg <= 123.75) then {_pDirC = "ESE";};
		if(_pHdg >= 123.76 && _pHdg <= 146.25) then {_pDirC = "SE";};
		if(_pHdg >= 146.26 && _pHdg <= 168.75) then {_pDirC = "SSE";};
		if(_pHdg >= 168.76 && _pHdg <= 191.25) then {_pDirC = "S";};
		if(_pHdg >= 191.26 && _pHdg <= 213.75) then {_pDirC = "SSW";};
		if(_pHdg >= 213.76 && _pHdg <= 236.25) then {_pDirC = "SW";};
		if(_pHdg >= 236.26 && _pHdg <= 258.75) then {_pDirC = "WSW";};
		if(_pHdg >= 258.76 && _pHdg <= 281.25) then {_pDirC = "W";};
		if(_pHdg >= 281.26 && _pHdg <= 303.75) then {_pDirC = "WNW";};
		if(_pHdg >= 303.76 && _pHdg <= 326.25) then {_pDirC = "NW";};
		if(_pHdg >= 326.26 && _pHdg <= 348.75) then {_pDirC = "NNW";};
		if(_pHdg >= 348.76 && _pHdg <= 360.00) then {_pDirC = "N";};
		
		if(_pHdg >= 00.000 && _pHdg <= 11.250) then {_pDirR = "NNE";};
		if(_pHdg >= 11.260 && _pHdg <= 33.750) then {_pDirR = "NE";};
		if(_pHdg >= 33.760 && _pHdg <= 56.250) then {_pDirR = "ENE";};
		if(_pHdg >= 56.260 && _pHdg <= 78.750) then {_pDirR = "E";};
		if(_pHdg >= 78.760 && _pHdg <= 101.25) then {_pDirR = "ESE";};
		if(_pHdg >= 101.26 && _pHdg <= 123.75) then {_pDirR = "SE";};
		if(_pHdg >= 123.76 && _pHdg <= 146.25) then {_pDirR = "SSE";};
		if(_pHdg >= 146.26 && _pHdg <= 168.75) then {_pDirR = "S";};
		if(_pHdg >= 168.76 && _pHdg <= 191.25) then {_pDirR = "SSW";};
		if(_pHdg >= 191.26 && _pHdg <= 213.75) then {_pDirR = "SW";};
		if(_pHdg >= 213.76 && _pHdg <= 236.25) then {_pDirR = "WSW";};
		if(_pHdg >= 236.26 && _pHdg <= 258.75) then {_pDirR = "W";};
		if(_pHdg >= 258.76 && _pHdg <= 281.25) then {_pDirR = "WNW";};
		if(_pHdg >= 281.26 && _pHdg <= 303.75) then {_pDirR = "NW";};
		if(_pHdg >= 303.76 && _pHdg <= 326.25) then {_pDirR = "NNW";};
		if(_pHdg >= 326.26 && _pHdg <= 348.75) then {_pDirR = "N";};
		if(_pHdg >= 348.76 && _pHdg <= 360.00) then {_pDirR = "NNE";};
	
		_pAltF		= round (((getPosASL player) select 2)*3.2808);
		_pAltM		= (getPosASL player) select 2;
		_humidity	= fog;
		_hydrometeor	= rain;
		_pBaro	 	= _pAltM call ace_weather_fnc_calculateBarometricPressure;
		_pTempC 		= _pAltM call ace_weather_fnc_calculateTemperatureAtHeight;
		_pMapGd		= mapGridposition player;


		_display = uiNamespace getVariable "VQI_QUESTREL_1";  

		//(_display displayCtrl 2000) ctrlSetText format["%1~%2",(round(_bearing)),(round(_knots/1.852))];
		(_display displayCtrl 2000) ctrlSetText format["%1~%2",(round(_bearing)),(round(_windF * 10) / 10)];
		(_display displayCtrl 2001) ctrlSetText format["%1",_pDirC];
		(_display displayCtrl 2002) ctrlSetText format["%1",_pDirL];
		(_display displayCtrl 2003) ctrlSetText format["%1",_pDirR];
		(_display displayCtrl 2004) ctrlSetText format["%1°",_pHdg];
		(_display displayCtrl 2005) ctrlSetText format["%1",_windDir];
		(_display displayCtrl 2006) ctrlSetText format["%1",_windStr];
		(_display displayCtrl 2007) ctrlSetText format["%1 hPA",(round(_pBaro * 10) / 10)];
		(_display displayCtrl 2008) ctrlSetText (format["%1",(round(_humidity*100))]+"%");
		(_display displayCtrl 2009) ctrlSetText format["%1C",(round(_pTempC * 10) / 10)];
		(_display displayCtrl 2010) ctrlSetText format["%1",[daytime] call bis_fnc_timetostring];
		(_display displayCtrl 2011) ctrlSetText format["%1m : %2",(round(_pAltM)),_pMapGd];
		
	sleep 0.5;
	};

	
	} else { 
		hint "Questrel: SniperBuddy Missing \n Used in Items (compass) slot";
};
		



	
//NOTES:
/*
hint parseText  format [
						"<t align='center' size='2' shadow='true'>Questrel<br /></t>
						<t align='center' size='1' shadow='true'>==========================<br /></t>
						<t align='left' size='1' shadow='true'>VELOCITY :...... %1<br /></t>
						<t align='left' size='1' shadow='true'>DIRECTION :......... %2<br /></t>
						<t align='left' size='1' shadow='true'>BEARING :............. %3*<br /><br /></t>
						
						<t align='Left' size='1' shadow='true'>:: Force Effect ::<br /></t>
						<t align='left' size='1' shadow='true'>22*=1/4, 45*=1/2, 67*=3/4, 90*=F<br /><br /></t>
						
						<t align='left' size='1' shadow='true'>HUMIDITY :........... %4<br /></t>
						<t align='left' size='1' shadow='true'>HYDROMETER :... %5<br /></t>
						<t align='left' size='1' shadow='true'>ELEVATION :........ %6m ASL<br /><br /></t>
						
						",
				
				   _windstr,_pDirC,_bearing,_humidity,_hydrometeor,_elevation select 2];
*/