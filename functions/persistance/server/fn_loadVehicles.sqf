_inidbi = ["new", "BFM_WorldDetails"] call OO_INIDBI;

_allKeys = ["getKeys", "vehicles"] call _inidbi;
_vehicleArray = [];
VEH_IND_COUNT = 0;

{
	sleep 0.1;
	if (_x != "index") then {
		_keyIndex = _x;
		systemChat _keyIndex;
		_key = ["read", ["vehicles", _keyIndex]] call _inidbi;
		_vehicle = createVehicle [_key#0, _key#1, [], 0, "CAN_COLLIDE"];
		_vehicle setDir _key#2;
		_vehicle setFuelCargo _key#3;
		_vehicle setDamage _key#4;
		{
			_vehicle setHitIndex [_forEachIndex, _x, false];
		} forEach _key#5#2;
		clearItemCargoGlobal _vehicle;
		_vehicle setVariable ["vehicleIndex", _keyIndex];
		missionNamespace setVariable [format ["vehicle_%1", _keyIndex], _vehicle];
		_vehicleArray pushback _vehicle;
		_vehicle addEventHandler ["GetIn", {
			[(_this select 0)] remoteExec ["bfm_fnc_saveVehicle", 2, false];
			[(_this select 2)] remoteExec ["bfm_fnc_savePlayerStats", 2, false];
		}];
		_vehicle addEventHandler ["GetOut", {
			[(_this select 0)] remoteExec ["bfm_fnc_saveVehicle", 2, false];
			[(_this select 2)] remoteExec ["bfm_fnc_savePlayerStats", 2, false];
		}];
	} else {
		_keyIndex = _x;
		_key = ["read", ["vehicles", _keyIndex]] call _inidbi;
		VEH_IND_COUNT = _key;
	}
} forEach _allKeys;

missionNamespace setVariable ["vehicleList", _vehicleArray];