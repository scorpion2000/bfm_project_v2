_inidbi = ["new", "BFM_OpforDetails"] call OO_INIDBI;

if ("exists" call _inidbi) then {
	_keysArray = ["getKeys", "Areas"] call _inidbi;
	{
		_result = (["read", ["Areas", _x]] call _inidbi);
		missionNamespace setVariable [_x, _result];
	} forEach _keysArray;
} else {
	[] execVM "scripts\gatherAreas.sqf";
};