sleep 1;

[] execVM "scripts\playerSave.sqf";
[] execVM "scripts\registerConstructionObjects.sqf";

//Load all necessary server settings from database
sleep 3;
[] remoteExec ["bfm_fnc_loadBuildingDamage", 2, false];
[] remoteExec ["bfm_fnc_loadAreas", 2, false];
[] remoteExec ["bfm_fnc_loadTime", 2, false];
[] remoteExec ["bfm_fnc_loadVehicles", 2, false];

//Prepairing HC Connection
addMissionEventHandler ["HandleDisconnect",
{
	//params ["_unit", "_id", "_uid", "_name"];
	[(_this select 0)] remoteExec ["bfm_fnc_savePlayerStats", 2, false];
	false;
}];

addMissionEventHandler ["BuildingChanged",
{
	//params ["_previousObject", "_newObject", "_isRuin"];
	if (_this select 2) then {
		[(_this select 0)] remoteExec ["bfm_fnc_saveBuildingDamage", 2, false];
	};
}];

sleep 1;
[] execVM "scripts\saveDateTime.sqf";