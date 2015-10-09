// SURVEILLANCE: SpyWare
//
// BACKGROUND: Hack into a D.R.A.C. Node and install bug...
//-------------------------------------------------------------------------------------
//delete Marker
deleteMarker "mkr1";

		
//Search for nearest X objects
_nearest1 = nearestObjects [Loc1, ["Land_spp_Transformer_F"], 10000];

//Have we found any?
if (count _nearest1 > 0) then {
	//The nearest object
	_nearest1 = _nearest1 select 0;
	

	hint "HACK: TROJAN SPYWARE";
	
	sleep 5; //Mark TARGET
	_mkr1 = createMarker["mkr1", getPos _nearest1];
	"mkr1" setMarkerShape "ICON";
	"mkr1" setMarkerType "mil_triangle";
	"mkr1" setMarkerColor "ColorRed";
	"mkr1" setMarkerText " Hack: D.R.A.C. Node";
	"mkr1" setMarkerAlpha 1;
		
		
	//------------------------WIP-------------------------------//
	sleep 1; //MISSION: Create Target/Objectives/Intel/AO/ECT...

	dracMac1 = "Land_Laptop_Device_F" createVehicle (getMarkerpos "mkr1");
	publicVariable "dracMac1";
	dracCone = "RoadCone_F" createVehicle (getMarkerPos "mkr1");
	dracCord = "Land_ExtensionCord_F" createVehicle (getMarkerPos "mkr1");
	dracDril = "Land_DrillAku_F" createVehicle (getMarkerPos "mkr1");
	dracMetr = "Land_MultiMeter_F" createVehicle (getMarkerPos "mkr1");
	dracNpad = "Land_Notepad_F" createVehicle (getMarkerPos "mkr1");

	sleep 1;
	dracMac1 setDir (random 359); // -F/B, -R/L, -D/U 
	dracMac1 setPos (_nearest1 modeltoWorld [-3,-1.5, 0]);
	dracCone setPos (_nearest1 modeltoWorld [-4, 0.0, 0]);
	dracCord setPos (_nearest1 modeltoWorld [-2,-1.5, 0]);
	dracDril setPos (_nearest1 modeltoWorld [-2,-2.1, 0]);
	dracMetr setPos (_nearest1 modeltoWorld [-3,-1.0, 0]);
	dracNpad setPos (_nearest1 modeltoWorld [-3,-1.9, 0]);


	//add Menu Options
	[[dracMac1, ["Laptop - Power Button", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 1]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Press Enter", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 4]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Ctrl+Alt+Delete", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 5]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Check D Drive", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 6]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Open Desktop", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 7]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - USB In Back", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgBug.sqf'; [dracMac1, 2]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - USB In Front", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 3]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Open Folder XXX", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 8]"]], "addAction", true, true] call BIS_fnc_MP;
	[[dracMac1, ["Laptop - Unplug", "execVM 'vqi_socom\VQI-SOCOM\Surveillance\drac_node_1_trgAlarm.sqf'; [dracMac1, 9]"]], "addAction", true, true] call BIS_fnc_MP;	


	//--Briefing---------------------------------------------------------------------------------------------------//
	player createDiaryRecord ["Diary",["SOCOM - MISSION:","<font size=15>
	Through a local CIA asset, we have been able to obtain a daily maintenance roster on OPFOR's highly secured Defence, Research, and Communications Network; aka D.R.A.C.
	<br/><br/>
	Sneak into the area, locate the Node Unit, and Hack the Network by placing Spyware into this system.
	<br/><br/>
	There may or may not be a technician on site. DO NOT engage this personnel. If ANY suspicious activity is suspected, the Network will be reconfigured within an hour, and breach protocols enacted making the entire mission void.
	<br/><br/>
	The technician must stay alive and go about his business uninterrupted. If necessary, you are free to engage any other enemy personnel as you deem required to accomplish the mission. Use discretion. DO NOT break Stealth!
	<br/><br/>
	We have solid Intel that during this daily update, the DRAC System will ALWAYS have its core security software in place and running, ...BUT the remote Unit Box and hardware will be unlocked and off-line at the work site.
	<br/><br/>
	To hack the Network, get to his Laptop while the technician is away. He will be going back and forth to another nearby in-ground Junction Box during this process for at least a good hour or two.
	<br/><br/>
	Plug the USB FlashDrive into the BACK of the laptop, wait for it to download the Trojan SpyWare. 
	<br/><br/>
	Then proceed to Exfil at least 1km away to avoid arousing any suspicion.
	<br/><br/>
	When the technician eventually re-boots that Node, the virus will activate and run within their system. With any luck, nobody should ever notice that you were ever there.</font>"]];

	sleep 5;
	hint "* BREIFING DOWNLOADED *";
	//-------------------------------------------------------------------------------------------------------------//
	
	
	sleep 1; //Alarm Trigger
	trg1 = createTrigger ["EmptyDetector", getPos dracMac1]; 
	sleep 1;
	trg1 setTriggerArea [20,20,0,false];
	trg1 setTriggerActivation ["WEST","PRESENT",false];
	trg1 setTriggerTimeout [5,10,20,false];
	trg1 setTriggerStatements ["({_x in thisList} count (playableUnits + switchableUnits) > 0) && ((getposASL Player select 2) < 33) && (EAST knowsAbout player);", 
	"[] execVM 'vqi_socom\VQI-SOCOM\Surveillance\wire_tap1_trgAlarm.sqf';", "hint 'X'"];
		
		
		
	if (VQI_MKMISSION_SOCOM == 0) then {
	hint "Note: Markers are temporary";
		sleep 600;
		deleteMarker "mkr1";};
		
} else { //map check fail - try new mission
	hint "RE-TASK: NEW MISSION"; sleep 2;
	execVM "\vqi_socom\VQI-SOCOM\vqi_socom.sqf";
};
	
	
	
/* NOTES:
object modelToWorld modelPos 
_aboveAndBehindPlayer = player modelToWorld [0,-1,3];
*/