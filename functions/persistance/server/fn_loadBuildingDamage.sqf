_inidbi = ["new", "BFM_WorldDetails"] call OO_INIDBI;
_keysArray = ["getKeys", "destroyed_buildings"] call _inidbi;

DESTROYED_BUILDINGS = 0;
//Old method
/*_centerposition = [worldSize / 2, worldsize / 2, 0];

_asd = [];
_allMObjects = nearestTerrainObjects [_centerposition, [], (worldSize / 2)];
{
	if (_forEachIndex != 0) then {
		//_result = (["read", ["destroyed_buildings", _x]] call _inidbi);
		_key = _result splitString " ";
		if (["#", (_key select 0)] call BIS_fnc_inString) then {
			_key deleteAt 0;
			_key = _key joinString " ";
		};

		systemChat str _key;

		//This method takes forever
		{
			if (((str _x) find _key) != -1) then { _x setDamage [1, false] };
		} forEach _allMObjects;
	};
} forEach _keysArray;*/

//New method
{
	if (_forEachIndex != 0) then {
		_result = (["read", ["destroyed_buildings", _x]] call _inidbi);
		_found = nearestTerrainObjects [[_result#0, _result#1], [], 10];
		_found#0 setDamage [1, false];
	};
} forEach _keysArray;
missionNamespace setVariable ["loadingBuildingDamage", false];