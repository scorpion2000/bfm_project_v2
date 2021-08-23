params ["_fromArea", "_toArea", "_type", "_amount"];

_fromAreaPos = getMarkerPos ((missionNamespace getVariable _fromArea) select 1);
_toAreaPos = getMarkerPos ((missionNamespace getVariable _toArea) select 1);

_key = missionNamespace getVariable _fromArea;
if (_type == "mat") then {
	_key set [12, (_key#12 - _amount)];
	_key = missionNamespace setVariable [_fromArea, _key];
} else {
	_key set [13, (_key#13 - _amount)];
	_key = missionNamespace setVariable [_fromArea, _key];
};
[] remoteExec ["bfm_fnc_saveAreas", 2, false];

_fromAreaRoad = objNull;
_toAreaRoad = objNull;

while {isNull _fromAreaRoad} do {
	_fromAreaRandom = [[[], [((missionNamespace getVariable _fromArea) select 1)]], []] call BIS_fnc_randomPos;
	_fromAreaRoad = [_fromAreaRandom, 250] call BIS_fnc_nearestRoad;
};

while {isNull _toAreaRoad} do {
	_toAreaRandom = [[[], [((missionNamespace getVariable _toArea) select 1)]], []] call BIS_fnc_randomPos;
	_toAreaRoad = [_toAreaRandom, 250] call BIS_fnc_nearestRoad;
};

_fromAreaRandomRoad = getPos _fromAreaRoad;
_roadDir = getDir _fromAreaRoad;

_truck = (selectRandom opf_suppyTruck) createVehicle _fromAreaRandomRoad;
_truck setDir _roadDir;
_group = createGroup east;
_sold = _group createUnit [(selectRandom opf_logistic), [0, 0, 0], [], 0, "CAN_COLLIDE"];
_sold moveInDriver _truck;
_group setBehaviour "CARELESS";

_wp = _group addWaypoint [getPos _toAreaRoad, 5];

//waitUntil {sleep 1; (_truck distance _wp < 20 || !(alive _truck || alive _sold))};
_waiting = true;
while {_waiting} do {
	sleep 10;
	if ((getPos _truck) distance (getPos _toAreaRoad) < 20) then {
		_waiting = false;
	};
	if (!alive _truck || !alive _sold) then {
		_waiting = false;
	};
};

if (alive _truck && alive _sold) then {
	deleteVehicle _truck;
	deleteVehicle _sold;

	_key = missionNamespace getVariable _toArea;
	if (_type == "mat") then {
		_key set [12, (_key#12 + _amount)];
		_key = missionNamespace setVariable [_toArea, _key];
	} else {
		_key set [13, (_key#13 + _amount)];
		_key = missionNamespace setVariable [_toArea, _key];
	};
	[] remoteExec ["bfm_fnc_saveAreas", 2, false];
} else {
	systemChat "ded, not big suprise";
};
