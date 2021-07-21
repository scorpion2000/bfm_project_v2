enableEnvironment [false, true];

titleText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>You are being deployed to the battlefield!</t>"], "BLACK FADED", -1, false, true];

sleep 3;
[player] remoteExec ["bfm_fnc_loadPlayerStats", 2, false];
