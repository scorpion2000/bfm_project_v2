missionNamespace setVariable ["serverIsLoading", true];
sleep 1;

//Load all necessary server settings from database
sleep 3;
_return = [] remoteExec ["bfm_fnc_loadBuildingDamage", 2, false];
_return = [] remoteExec ["bfm_fnc_loadAreas", 2, false];
_return = [] remoteExec ["bfm_fnc_loadTime", 2, false];
_return = [] remoteExec ["bfm_fnc_loadVehicles", 2, false];
_return = [] remoteExec ["bfm_fnc_loadConstructions", 2, false];

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


["acex_fortify_objectPlaced", {[(_this select 2)] remoteExec ["bfm_fnc_saveConstruction", 2, false];}] call CBA_fnc_addEventHandler;

missionNamespace setVariable ["serverIsLoading", false];

sleep 1;
[] execVM "scripts\saveDateTime.sqf";
[] execVM "scripts\playerSave.sqf";