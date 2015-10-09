	while {true} do
	{
	
	scopeName "helmet_loop";
	if ("H_CrewHelmetHeli_B" == Headgear player) then
		{	
			
			
disableSerialization; 
11 cutRsc ["GOGGLES_FROST_EFX", "PLAIN"];

			while {"H_CrewHelmetHeli_B" == Headgear player} do
			{
			hint "Hey, it Fogged up!";
			sleep 10;
			};


		};

		11 cutText ["","PLAIN"];
		showMAP true;
		showCompass true;
		thirdperson_allowed = true;
		
	};