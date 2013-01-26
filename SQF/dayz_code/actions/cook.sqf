private["_hasFoodMeat","_hasFoodTin","_item","_wait"];

player removeAction s_player_cook;
s_player_cook = -1;

//_qty = {_x == "FoodSteakRaw"} count magazines player;
_wait = 5 - _qty;

if ("FoodSteakRaw" in magazines player) then {
_qty = {_x == "FoodSteakRaw"} count magazines player;
	player playActionNow "Medic";
	[player,"cook",0,false] call dayz_zombieSpeak;
	_id = [player,70,true,(getPosATL player)] spawn player_alertZombies;
	sleep _wait;
	for "_x" from 1 to _qty do {
		_hasFoodMeat = 	"FoodSteakRaw" in magazines player;
		if (!_hasFoodMeat) exitWith {cutText [format[(localize "str_player_31"),_text,"cook"] , "PLAIN DOWN"]};
		player removeMagazine "FoodSteakRaw";
		player addMagazine "FoodSteakCooked";
		sleep 1;
	};	
	cutText [format[(localize  "str_success_cooked"),_qty,(localize  "STR_EQUIP_NAME_24")], "PLAIN DOWN"];
};

//FoodmuttonRaw > FoodmuttonCooked
if ("FoodmuttonRaw" in magazines player) then {
_qty = {_x == "FoodmuttonRaw"} count magazines player;
	player playActionNow "Medic";
	[player,"cook",0,false] call dayz_zombieSpeak;
	_id = [player,70,true,(getPosATL player)] spawn player_alertZombies;
	sleep _wait;
	for "_x" from 1 to _qty do {
		_hasFoodMeat = 	"FoodmuttonRaw" in magazines player;
		if (!_hasFoodMeat) exitWith {cutText [format[(localize "str_player_31"),_text,"cook"] , "PLAIN DOWN"]};
		player removeMagazine "FoodmuttonRaw";
		player addMagazine "FoodmuttonCooked";
		sleep 1;
	};	
	cutText [format[(localize  "str_success_cooked"),_qty,(localize  "STR_EQUIP_NAME_24")], "PLAIN DOWN"];
};

//FoodchickenRaw > FoodchickenCooked
if ("FoodchickenRaw" in magazines player) then {
_qty = {_x == "FoodchickenRaw"} count magazines player;
	player playActionNow "Medic";
	[player,"cook",0,false] call dayz_zombieSpeak;
	_id = [player,70,true,(getPosATL player)] spawn player_alertZombies;
	sleep _wait;
	for "_x" from 1 to _qty do {
		_hasFoodMeat = 	"FoodchickenRaw" in magazines player;
		if (!_hasFoodMeat) exitWith {cutText [format[(localize "str_player_31"),_text,"cook"] , "PLAIN DOWN"]};
		player removeMagazine "FoodchickenRaw";
		player addMagazine "FoodchickenCooked";
		sleep 1;
	};	
	cutText [format[(localize  "str_success_cooked"),_qty,(localize  "STR_EQUIP_NAME_24")], "PLAIN DOWN"];
};

//FoodrabbitRaw > FoodBaconCooked
if ("FoodrabbitRaw" in magazines player) then {
_qty = {_x == "FoodrabbitRaw"} count magazines player;
	player playActionNow "Medic";
	[player,"cook",0,false] call dayz_zombieSpeak;
	_id = [player,70,true,(getPosATL player)] spawn player_alertZombies;
	sleep _wait;
	for "_x" from 1 to _qty do {
		_hasFoodMeat = 	"FoodrabbitRaw" in magazines player;
		if (!_hasFoodMeat) exitWith {cutText [format[(localize "str_player_31"),_text,"cook"] , "PLAIN DOWN"]};
		player removeMagazine "FoodrabbitRaw";
		player addMagazine "FoodRabbitCooked";
		sleep 1;
	};	
	cutText [format[(localize  "str_success_cooked"),_qty,(localize  "STR_EQUIP_NAME_24")], "PLAIN DOWN"];
};

//FoodbaconRaw > FoodRabbitCooked
if ("FoodbaconRaw" in magazines player) then {
_qty = {_x == "FoodbaconRaw"} count magazines player;
	player playActionNow "Medic";
	[player,"cook",0,false] call dayz_zombieSpeak;
	_id = [player,70,true,(getPosATL player)] spawn player_alertZombies;
	sleep _wait;
	for "_x" from 1 to _qty do {
		_hasFoodMeat = 	"FoodbaconRaw" in magazines player;
		if (!_hasFoodMeat) exitWith {cutText [format[(localize "str_player_31"),_text,"cook"] , "PLAIN DOWN"]};
		player removeMagazine "FoodbaconRaw";
		player addMagazine "FoodBaconCooked";
		sleep 1;
	};	
	cutText [format[(localize  "str_success_cooked"),_qty,(localize  "STR_EQUIP_NAME_24")], "PLAIN DOWN"];
};

/*
_hasFoodMeat = 	"FoodSteakRaw" in magazines player;
_qty = {_x == "ItemWaterbottleUnfilled"} count magazines player;

if (_hasFoodMeat) then {
	player removeMagazine "FoodSteakRaw";
	player playActionNow "Medic";
	[player,"eat",0,false] call dayz_zombieSpeak;
	sleep 6;
	player addMagazine "FoodSteakCooked";
	cutText [localize "str_success_cooked_steak", "PLAIN DOWN"];
};
*/
