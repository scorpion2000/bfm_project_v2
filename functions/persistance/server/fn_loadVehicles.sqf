_inidbi = ["new", "BFM_WorldDetails"] call OO_INIDBI;

_allKeys = ["getKeys", "vehicles"] call _inidbi;

{
	sleep 0.1;
	if (_x != "index") then {
		_keyIndex = _x;
		_key = ["read", ["vehicles", _keyIndex]] call _inidbi;
		_vehicle = _key#0 createVehicle _key#1;
		_vehicle setDir _key#2;
		_vehicle setFuelCargo _key#3;
		_vehicle setDamage _key#4;
		{
			_vehicle setHitIndex [_forEachIndex, _x, false];
		} forEach _key#5#2;
		clearItemCargoGlobal _vehicle;
		_vehicle setVariable ["vehicleIndex", _keyIndex];
		missionNamespace setVariable [format ["vehicle_%1", _keyIndex], _vehicle];
	} else {
		_keyIndex = _x;
		_key = ["read", ["vehicles", _keyIndex]] call _inidbi;
		VEH_IND_COUNT = _key;
	}
} forEach _allKeys;