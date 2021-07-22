params ["_vehicle"];
_inidbi = ["new", "BFM_WorldDetails"] call OO_INIDBI;

if (parseNumber (_vehicle getVariable ["vehicleIndex", "-1"]) == -1) then {
	_vehicle setVariable ["vehicleIndex_", VEH_IND_COUNT];
	missionNameSpace setVariable [format ["vehicle_%1", VEH_IND_COUNT], _vehicle];
	[
		"write",
		[
			"vehicles", 
			VEH_IND_COUNT, 
			[
				typeOf _vehicle, 
				getposATL _vehicle, 
				getDir _vehicle, 
				getFuelCargo _vehicle,
				damage _vehicle,
				getAllHitPointsDamage _vehicle,
				getItemCargo _vehicle
			]
		]
	] call _inidbi;
	VEH_IND_COUNT = VEH_IND_COUNT + 1;
	["write", ["vehicles", "index", VEH_IND_COUNT]] call _inidbi;
	_vehicleArray = missionNamespace getVariable ["vehicleList", []];
	_vehicleArray pushBack _vehicle;
	missionNamespace setVariable ["vehicleList", _vehicleArray];
	_vehicle addEventHandler ["GetIn", {
		[(_this select 0)] remoteExec ["bfm_fnc_saveVehicle", 2, false];
		[(_this select 2)] remoteExec ["bfm_fnc_savePlayerStats", 2, false];
	}];
	_vehicle addEventHandler ["GetOut", {
		[(_this select 0)] remoteExec ["bfm_fnc_saveVehicle", 2, false];
		[(_this select 2)] remoteExec ["bfm_fnc_savePlayerStats", 2, false];
	}];
} else {
	[
		"write",
		[
			"vehicles", 
			parseNumber (_vehicle getVariable "vehicleIndex"), 
			[
				typeOf _vehicle, 
				getpos _vehicle, 
				getDir _vehicle, 
				getFuelCargo _vehicle,
				damage _vehicle,
				getAllHitPointsDamage _vehicle,
				getItemCargo _vehicle
			]
		]
	] call _inidbi;
}