
_script_target = _this select 0;
//hint format ["Script target : %1", _script_target];

// Uncomment to show the arguments passed to the script
// hint format["gen %1, caller %2, id %3", _this select 0, _this select 1, _this select 2];

if (_script_target == CIA_Contact) then {
	["TalkToContact", "succeded"] call SHK_TaskMaster_upd;
	
	task3 call SHK_TaskMaster_Add;
	sleep 1;
	task2 call SHK_TaskMaster_Add;
	
	sleep 1;
	Note0 call SHK_TaskMaster_addNote;
	Note1 call SHK_TaskMaster_addNote;
	Note2 call SHK_TaskMaster_addNote;
	
	Civilian_Pilot addAction ["We're ready to take off", "ManageObjectives.sqf", "", 6, false];
};

if (_script_target == Civilian_Pilot) then {
	["GetInChopper", "succeded"] call SHK_TaskMaster_upd;
	Civilian_Pilot moveInDriver Civilian_Helo;
	
	hint "Now we count players before takeoff";
};

if (_script_target == CIA_Attache) then {
	["TalkToAttache", "succeded"] call SHK_TaskMAster_upd;
	task4 call SHK_TaskMasterAdd;
};