_areaCount = missionNamespace getVariable "areaCount";
for "_i" from 0 to (_areaCount -1) do {
	_areaName = format ["area_%1", _i];
	_key = missionNamespace getVariable _areaName;

	if (_key#12 > _key#10 && !_key#5 && !_key#14) then {
		_min = _key#10;
		_stored = _key#12;
		_toSupply = _stored - _min;

		if (_toSupply > 50) then {
			[_areaName, missionNamespace getVariable "areaCapital", "mat", _toSupply] remoteExec ["bfm_fnc_createSupplyRun", 2, false];
		};
	};
};