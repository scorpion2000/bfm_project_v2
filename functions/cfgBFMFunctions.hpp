class BFMFunctions {
	tag = "BFM";

	class BFM_Random
	{
		file = "functions";
		
		class deployPlayer {};
		class applyCratePreset {};
	};
	
	class BFM_PlayerPersistance 
	{
		file = "functions\persistance\player";
		
		class deletePlayer {};
		class savePlayerStats {};
		class loadPlayerStats {};
		class welcomeMessage {};
		class respawnMessage {};
	};

	class BFM_ServerPersistance 
	{
		file = "functions\persistance\server";
		class deleteVehicle {};
		class loadPatrols {};
		class savePatrol {};
		class saveVehicle {};
		class saveTime {};
		class saveConstruction {};
		class saveBuildingDamage {};
		class loadBuildingDamage {};
		class loadAreas {};
		class loadVehicles {};
		class loadTime {};
		class loadConstructions {};
	};

	class BFM_Debug
	{
		file = "functions\debug";
		
		class perfMeter {};
	};
};