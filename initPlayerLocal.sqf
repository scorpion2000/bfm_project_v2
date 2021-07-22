enableEnvironment [false, true];

titleText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>You are being deployed to the battlefield!</t>"], "BLACK FADED", -1, false, true];

disableUserInput true;
sleep 3;
/*_serverIsLoadign = missionNamespace getVariable ["serverIsLoading", false];
if (_serverIsLoadign) then {
	sleep 10;
};*/

[player] remoteExec ["bfm_fnc_loadPlayerStats", 2, false];
disableUserInput false;
