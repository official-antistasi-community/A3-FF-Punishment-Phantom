class CfgFunctions
{
	class PREFIX
	{
		class common
		{
			file = "z\ffpp\addons\main\functions\common";

			class postInit { postInit = 1; };

			class dataGet {};
			class dataNamespace {};
			class dataRem {};
			class dataSet {};
			class addEH {};
			class checkIncident {};
			class notify {};
		};
		class UI
		{
			file = "z\ffpp\addons\main\functions\ui";
			class customHint {};
		};
		class Utility
		{
			file = "z\ffpp\addons\main\functions\utility";
			class getAdmin {};
			class log {};
		};
	};
};