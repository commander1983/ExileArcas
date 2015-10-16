/*

 	Name: wka_repair.hpp

 	Author(s): WolfkillArcadia
    Copyright (c) 2015 WolfkillArcadia

 	Description: The gui dialogs for wka_repairVehicle script. 

*/

class wka_repair
{
    idd=-1
    movingEnable= 0;

    class Controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by WolfkillArcadia, v1.063, #Nycalu)
        ////////////////////////////////////////////////////////

        class MainFrame: RscFrame
        {
        	idc = 1800;
        	x = 0.412343 * safezoneW + safezoneX;
        	y = 0.269 * safezoneH + safezoneY;
        	w = 0.180469 * safezoneW;
        	h = 0.473 * safezoneH;
        	colorBackground[] = {1,1,1,0.5};
        	colorActive[] = {1,1,1,0.5};
        };
        class TopText: RscText
        {
        	idc = 1000;
        	text = "Available Parts for Repair"; //--- ToDo: Localize;
        	x = 0.443281 * safezoneW + safezoneX;
        	y = 0.269 * safezoneH + safezoneY;
        	w = 0.118594 * safezoneW;
        	h = 0.066 * safezoneH;
        };
        class RepairButton: RscButton
        {
        	idc = 1600;
        	text = "Repair"; //--- ToDo: Localize;
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.687 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.033 * safezoneH;
        };
        class CloseButton: RscButton
        {
        	idc = 1601;
        	text = "Close"; //--- ToDo: Localize;
        	x = 0.515469 * safezoneW + safezoneX;
        	y = 0.687 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.033 * safezoneH;
        };
        class RepairCombo: RscCombo
        {
        	idc = 2100;
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.643 * safezoneH + safezoneY;
        	w = 0.128906 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class AvailablePartsList: RscListbox
        {
        	idc = 1500;
        	x = 0.438125 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.128906 * safezoneW;
        	h = 0.297 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////

    };
};
