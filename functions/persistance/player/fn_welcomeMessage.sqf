params ["_exists"];

if (_exists) then {
	titleText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>Welcome back, Soldier!</t>"], "PLAIN DOWN", 1, false, true];
	sleep 3;
	titleFadeOut 1;
} else {
	titleText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>Welcome to the battlefield, Soldier!</t>"], "BLACK FADED", 6, false, true];
	sleep 3;
	titleFadeOut 1;
}
