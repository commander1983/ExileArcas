class CfgPatches
{
	class scorch_invitems
	{
		units[] = {"scorch_invitems"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgWeapons
{
	class ItemWatch;
	class Exile_AbstractItem_Interaction_Eating;
	class Exile_AbstractItem_Interaction_Consuming;
	class Exile_AbstractItem_Interaction_Drinking;

	/////////////////////
	// MEDICAL SUPPLIES//
	/////////////////////
	class sc_bandage: ItemWatch
	{
		displayName = "Bandage";
		count = 1;
		class ItemInfo
        	{
            		mass = 1;
        	};
		picture = "\scorch_invitems\images\bandage.paa";
		descriptionShort = "A cloth bandage, provides minimal health but stops bleeding. <br/>Health: +10%/10s ";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Consuming
		    {
		        animations[] = {"AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPpneMstpSlayWnonDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWpstDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWnonDnon_medic"};
		        stopBleeding = 1;
		        effects[] = {{ 0,10,10 }};
		    };
		};
	};
	class sc_elasticbandage: ItemWatch
	{
		displayName = "Elastic Bandage";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\elasticbandage.paa";
		descriptionShort = "An elastic bandage, provides some health and stops bleeding. <br/>Health: +25%/15s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Consuming
		    {
		        animations[] = {"AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPpneMstpSlayWnonDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWpstDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWnonDnon_medic"};
		        stopBleeding = 1;
		        effects[] = {{ 0,25,15 }};
		    };
		};
	};
	class sc_blood: ItemWatch
	{
		displayName = "Blood Bag";
		count = 1;
		class ItemInfo
			{
					mass = 6;
			};
		picture = "\scorch_invitems\images\blood.paa";
		descriptionShort = "A bag of blood, eww. Brings the user to full health but doesn't stop the bleeding.<br/>Health: +100%/30s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Consuming
		    {
		        animations[] = {"AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWpstDnon_medic","AinvPknlMstpSlayWrflDnon_medic","AinvPknlMstpSlayWnonDnon_medic","AinvPpneMstpSlayWnonDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWpstDnon_medic","AinvPpneMstpSlayWrflDnon_medic","AinvPpneMstpSlayWnonDnon_medic"};
		        stopBleeding = 0;
		        effects[] = {{ 0,100,30 }};
		    };
		};
	};

	//////////////////////
	// GENERIC SUPPLIES //
	//////////////////////
	class sc_cloth: ItemWatch
	{
		displayName = "Cloth";
		count = 1;
		class ItemInfo
        	{
            		mass = 1;
        	};
		picture = "\scorch_invitems\images\cloth.paa";
		descriptionShort = "Scraps of cloth, useful for making some bandages";
	};
	class sc_dogtag: ItemWatch
	{
		displayName = "Dogtag";
		count = 1;
		class ItemInfo
        	{
            		mass = 1;
        	};
		picture = "\scorch_invitems\images\dogtag.paa";
		descriptionShort = "A marker of a fallen inmate";
	};
	class sc_schematic: ItemWatch
	{
		displayName = "Schematic";
		count = 1;
		class ItemInfo
			{
					mass = 1;
			};
		picture = "\scorch_invitems\images\schematic.paa";
		descriptionShort = "A schematic for a bunch of useful items";
	};
	class sc_teddybear: ItemWatch
	{
		displayName = "Teddy Bear";
		count = 1;
		class ItemInfo
			{
					mass = 1;
			};
		picture = "\scorch_invitems\images\teddybear.paa";
		descriptionShort = "Reminds you of a simplier time, it's fur is still soft.";
	};

	///////////////////
	// 		FOOD  	 //
	///////////////////
	class sc_cannedfood: ItemWatch
	{
		displayName = "Canned Food";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\cannedfood.paa";
		descriptionShort = "An unlabled can of food, hopefully it's still good.<br/>Hunger: +45%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,45,60 };
		    };
		};
	};
	class sc_rawmeat: ItemWatch
	{
		displayName = "Raw Meat";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\rawmeat.paa";
		descriptionShort = "Raw meat, why would you carry this around? It would be better if you cooked it.<br/>Hunger: +25%/30s<br/>Health: -10%/20s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,25,30 },{0,-10,20}};
		    };
		};
	};
	class sc_cookedmeat: ItemWatch
	{
		displayName = "Cooked Meat";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\cookedmeat.paa";
		descriptionShort = "Nothing like cooked mystery meat!<br/>Hunger: +70%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,70,60 }};
		    };
		};
	};
	class sc_mre: ItemWatch
	{
		displayName = "MRE";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\mre.paa";
		descriptionShort = "An opened Meal, Ready-to-Eat. Provides maximum hunger and thirst replenishment.<br/>Hunger: +80%/60s<br/>Thirst: +80%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,80,60 },{3,80,60}};
		    };
		};
	};
	class sc_candybar: ItemWatch
	{
		displayName = "Candy Bar";
		count = 1;
		class ItemInfo
			{
					mass = 1;
			};
		picture = "\scorch_invitems\images\snickers.paa";
		descriptionShort = "A candy bar from your childhood, reminds you of daddy beating mommy.<br/>Hunger: +10%/30s<br/>Feelings: Forever Hurt";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,10,30 }};
		    };
		};
	};
	class sc_cereal: ItemWatch
	{
		displayName = "Cereal";
		count = 1;
		class ItemInfo
			{
					mass = 2;
			};
		picture = "\scorch_invitems\images\cereal.paa";
		descriptionShort = "A box of generic brand cereal. A bit dry, but will satisfy hunger.<br/>Hunger: +20%/20s<br/>Thirst: -10%/20s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,20,20 },{3,-10,20}};
		    };
		};
	};
	class sc_carrot: ItemWatch
	{
		displayName = "Carrot";
		count = 1;
		class ItemInfo
			{
					mass = 1;
			};
		picture = "\scorch_invitems\images\carrot.paa";
		descriptionShort = "A raw carrot, great for your eyes!<br/>Hunger: +15%/10s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,15,10 }};
		    };
		};
	};
	class sc_potato: ItemWatch
	{
		displayName = "Potato";
		count = 1;
		class ItemInfo
			{
					mass = 2;
			};
		picture = "\scorch_invitems\images\potato.paa";
		descriptionShort = "A starchy raw potato, great with sour cream and bacon... Mmm bacon...<br/>Hunger: +40%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,40,60 }};
		    };
		};
	};
	class sc_salisbury_steak: ItemWatch
	{
		displayName = "Salisbury Steak";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\salisburysteak.paa";
		descriptionShort = "Quite a fine meal, yes yes. A bit messy though, I do say.<br/>Hunger: +75%/120s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,75,120 }};
		    };
		};
	};
	class sc_snack_cakes: ItemWatch
	{
		displayName = "Snack Cakes";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\snackcakes.paa";
		descriptionShort = "A quick snack for the murderer that never stops!<br/>Hunger: +30%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,30,60 }};
		    };
		};
	};

	class sc_pet_treats: ItemWatch
	{
		displayName = "Pet Treats";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\pettreats.paa";
		descriptionShort = "I'm not sure why I would eat these, but desparate times...<br/>Hunger: +10%/30s<br/>Thirst: -25%/10s<br/>Health: -10%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,10,30 },{1,-10,60},{3,-25,10}};
		    };
		};
	};
	class sc_twinkies: ItemWatch
	{
		displayName = "Twinkies";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\twinkies.paa";
		descriptionShort = "A fluffy cake snack that has a half life. What's the odds of that?<br/>Hunger: +25%/60s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Eating
		    {
		        effects[] = {{ 2,25,60 }};
		    };
		};
	};


	/////////////////////
	// 		DRINKS	   //
	/////////////////////
	class sc_juicebox: ItemWatch
	{
		displayName = "Juice Box";
		count = 1;
		class ItemInfo
        	{
            		mass = 1;
        	};
		picture = "\scorch_invitems\images\juicebox.paa";
		descriptionShort = "An unopened juice box. Pair this with a teddy bear and a candy bar, you would be just at home.<br/>Thirst: +50%/20s<br/>Happiness: Forever A Child";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Drinking
		    {
		        effects[] = {{ 3,50,20 }};
		    };
		};
	};
	class sc_soda: ItemWatch
	{
		displayName = "Soda Can";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\soda.paa";
		descriptionShort = "A sugary drink with not much else.<br/>Thirst: +25%/20s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Drinking
		    {
		        effects[] = {{ 3,25,20 }};
		    };
		};
	};
	class sc_whiskey: ItemWatch
	{
		displayName = "Whiskey";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\whiskey.paa";
		descriptionShort = "Smells like what dad used to drink.<br/>Thirst: +35%/30s<br/>Alc. Vol.: 15â€°";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Drinking
		    {
		        effects[] = {{ 3,35,30 }, {4,0.6,0}};
		    };
		};
	};
	class sc_energy_drink: ItemWatch
	{
		displayName = "Energy Drink";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\energydrink.paa";
		descriptionShort = "Gotta run fast, gotta murder faster!<br/>Thirst: +50%/20s";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Drinking
		    {
		        effects[] = {{ 3,50,20 }};
		    };
		};
	};
	class sc_moonshine: ItemWatch
	{
		displayName = "Moonshine";
		count = 1;
		class ItemInfo
        	{
            		mass = 2;
        	};
		picture = "\scorch_invitems\images\moonshine.paa";
		descriptionShort = "Distilled in the country, drank in the country. Yeehaw!<br/>Thirst: +75%/20s<br/>Alc. Vol.: 35â€°";
		class Interactions
		{
		    class Consuming: Exile_AbstractItem_Interaction_Drinking
		    {
		        effects[] = {{ 3,75,20 },{4,0.9,0}};
		    };
		};
	};
};
